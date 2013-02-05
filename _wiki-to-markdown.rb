#!/usr/bin/ruby

#
# Fairly hack-y Ruby script that converts JSPWiki files to Markdown format.
#
# You can modify the global variables below to control where files are copied from/to. The
# default paths are relative to the current directory.
#

ROOT_DIR         = "securitymetrics-wiki"
COPY_DIR         = "converted"
COPY_IMAGES      = "converted/images"
COPY_PAGES       = "converted/pages"
COPY_POSTS       = "converted/posts"
COPY_ATTACHMENTS = "converted/attachments"
DEFAULT_AUTHOR   = "Andrew Jaquith"
DEFAULT_ALLOW_COMMENTS = "true"
DONT_COPY        = ["AndrewJaquith","Bibliography","BookChapter10","CitationGuidelines","Contributing","Editorials","LeftMenu","SandBox","TopTen","Welcome_blogentry_280805_1","Welcome_blogentry_281206_1","Welcome_blogentry_280406_1"]

# Regex constants
LINK_FINDER = /\[((.*?\s*\|){0,1}\s*[A-Za-z0-9\- _\.~\!\*\'\(\)\;\:\@\&\=\+\$,\/\?\%\#]*)?\](?!\()/
LINK_FINDER_NO_LOOKAHEAD = /\[((.*?\s*\|){0,1}\s*[A-Za-z0-9\- _\.~\!\*\'\(\)\;\:\@\&\=\+\$,\/\?\%\#]*)?\]/
IMAGE_MATCHER = /(png|jpg|jpeg|gif)$/

class State
	def initialize(table, codeblock, numberedlist)
		@table = table
		@codeblock = codeblock
		@numberedlist = numberedlist
		@listnumber = 1
	end

	attr_reader :table, :codeblock, :numberedlist, :listnumber
	attr_writer :table, :codeblock, :numberedlist, :listnumber
end

#
# Copies binary file
#
def copy_text(source, dest, metadata)

    # Read entire file first
    infile = File.new(source, "r:UTF-8")
    lines = []
    infile.each {
            |line|
            lines.push(line)
            }
    infile.close()
    
    outfile = File.new(dest, "w:UTF-8")
    
    # Write YAML header
    outfile.write("---\n")
    outfile.write "title: " + metadata['title'].gsub(/\:/,"&#58;") + "\n"
    outfile.write "author: " + metadata['author'] + "\n"
    modified = metadata['modified'].strftime('%Y-%m-%d %H:%M:%S %z')
    outfile.write "created_at: " + modified + "\n"
    outfile.write "layout: " + metadata['type'] + "\n"
    outfile.write "comments: " + DEFAULT_ALLOW_COMMENTS + "\n"
    outfile.write "---\n"
    
    # Remove first line if heading (it's the title)
    if lines.length > 0 && lines[0].start_with?("!")
        lines.shift
    end
    
    # Set up state object
    state = State.new(false, false, false)
    
    # Iterate through each line
    lines.each {
            |i|
            cleaned_i = clean_line(i, state)
            if cleaned_i
                outfile.write cleaned_i
            end
            }
    outfile.close()
    File.utime(metadata['modified'], metadata['modified'], dest)
end

#
# Converts hyperlinks based on [caption | url] or [url] or [page] wiki syntax.
# Images are special cases and are assumed to be on our webserver; we always
# re-write as being in the /images directory. Attatchments on internal pages are
# re-written as being in the /attachments directory (and flattened).
#
def linkify(match)

    # Do we have a link caption, or just a link?
    parts = match.split(/\s*\|\s*/)
    caption = nil
    if parts.length == 2
        caption = parts[0]
        link = parts[1]
    else
        caption = parts[0]
        link = parts[0]
    end
    
    # Is this an image link, link to external site, or internal?
    image = (link =~ IMAGE_MATCHER)
    external = (link =~ /^(http|https):\/\//)
    internal = !image && !external
    
    # Get resource name (everything past rightmost slash)
    lastslash = link.rindex('/')
    resource = lastslash ? link[(lastslash+1)..(link.length)] : link
    attachment = (resource =~ /\.[A-Za-z0-9]{3,20}$/)
    
    # Format image link
    if image
        link = "/images/" + clean_filename(resource,nil)
        return "{% img " + link + " %}"
        
    # Format external link
    elsif external
        return "[" + caption + "](" + link + ")"
    end
    
    # Format internal link
    caption = expand_camel_case(caption)
    resource = clean_filename(expand_camel_case(resource),nil)
    link = attachment ? "/attachments/" + resource : "/pages/" + resource + ".html"
    return "[" + caption + "](" + link + ")"
end

#
# Cleans a line of text, taking into account state of previous line(s)
#
def clean_line(i, state)
    
    # Swallow %%
    if i.start_with?("%%")
        return nil
    end
    
    # Make links
    i = i.gsub(LINK_FINDER_NO_LOOKAHEAD) { |match| linkify($1) }
    
    # Are we in a table?
    if i.lstrip.start_with?("||")
        i = i.strip[2..i.length-1].strip
        if state.table
            i = "<tr><th>" + i + "</th></tr>\n"
        else
            state.table = true
            state.codeblock = false
            i = "<table><thead><tr><th>" + i + "</th></tr></thead>\n"
        end
        i = i.gsub(/\s*\|\|\s*/, "</th><th>")
    elsif i.lstrip.start_with?("|")
        i = i.strip[1..i.length-1].strip
        if state.table
            i = "<tr><td>" + i + "</td></tr>\n"
        else
            state.table = true
            state.codeblock = false
            i = "<table><tr><td>" + i + "</td></tr>\n"
        end
        i = i.gsub(/\s*\|\s*/, "</td><td>")
        
    # Are we starting a block quote?
    elsif !state.codeblock && i.lstrip.start_with?("{{{")
        state.table = false
        state.codeblock = true
        i = "    " + i[3,i.length-1].lstrip
    
    # Are we ending a block quote?
    elsif state.codeblock
        i = "    " + i.lstrip
        if i.rstrip.end_with?("}}}")
            i = i.rstrip
            state.codeblock = false
            i = i[0..i.length-4]
        end

    # It's something else: so finish any tables & code blocks
    else
        if state.table
            i = "</table>\n" + i
        end
        state.table = false
    end
    
    # Are we in a numbered list?
    if !state.codeblock && !state.table && i.start_with?("#")
        if state.numberedlist
            state.listnumber = state.listnumber + 1
        else
            state.numberedlist = true;
            state.listnumber = state.listnumber + 1
        end
        i = state.listnumber.to_s + ". " + i[1..i.length-1].lstrip
    else
        state.numberedlist = false;
    end
    
    # Convert headings
    i = i.gsub(/^!!!/, "# ")
    i = i.gsub(/^!!/, "## ")
    i = i.gsub(/^!/, "### ")
    
    # Convert inline code
    i = i.gsub(/\{\{/, "`")
    i = i.gsub(/\}\}/, "`")
    
    # Remove DTs
    i = i.gsub(/^;:/, "")
    
    # Replace bad characters
    i = i.gsub(/\x97/, "--")
    i = i.gsub(/\xE2\x80\x94/, "&#x2014;")      # Em dash
    i = i.gsub(/\xE2\x80\x93/, "&#x2013;")      # En dash
    i = i.gsub(/\x92/, "&rsquo;")
    i = i.gsub(/\x93/, "&ldquo;")
    i = i.gsub(/\x94/, "&rdquo;")
    i = i.gsub(/\xE2\x80\x99/, "&rsquo;")
    i = i.gsub(/\xE2\x80\x9C/, "&ldquo;")
    i = i.gsub(/\xE2\x80\x9D/, "&rdquo;")
    i = i.gsub(/\xE2\x80\xA6/, "&hellip;")      # Ellipsis
    i = i.gsub(/\xC2\xA3/, "&pound;")
    i = i.gsub(/\xC3\xBC/, "&uuml;")            # u with umlaut

    # Convert italics
    i = i.gsub(/''(.*?)''/, "_\\1_")
    
    # Convery linebreaks
    i = i.gsub(/\\/, " \n")

    return i
end

#
# Makes a clean file name, based on the page title (preferred) or filename
#
def clean_filename(filename, metadata)
    name = metadata ? metadata['title'] : filename
    name = name.gsub(/[ _+]/,"-")
    name = name.gsub(/[^A-Za-z0-9_\/\.\-]/,"")
    name = name.gsub(/-{2,100}/,"-")
    if !metadata || metadata['type'] == "page"
        return name
    end
    modified = metadata['modified']
    return modified.strftime('%Y-%m-%d-') + name
end

def expand_camel_case(name)
    name = name.gsub(/([a-z])([A-Z])/, "\\1 \\2")
    name = name.gsub(/([a-z])([0-9])/, "\\1 \\2")
    name = name.gsub(/([0-9])([A-Z])/, "\\1 \\2")
    return name
end

#
# Copies wiki text file, with metadata
#
def copy_binary(source, dest)
    File.open(source, 'rb') do |infile|
        File.open(dest, 'wb') do |outfile2|
            while buffer = infile.read(4096)
                outfile2 << buffer
            end
        end
    end
end

#
# Extracts the metadata for a given page
#
def extract_metadata(name, itemPath)
    metadata = { "name"=>name, "source"=>itemPath }
    isBlog = File.fnmatch("*_blogentry_*", name)
    modified = File.mtime(itemPath)

    # Set default title to filename with Camel Case name expanded
    title = expand_camel_case(name)
    
    # If first line is ! !! or !!!, use that as the title instead
    itemContents = IO.readlines(itemPath)
    if titleMatch = itemContents[0].match('^!+(.*)')
        title = titleMatch[1].strip
    end
    
    metadata["title"] = title
    
    # Set type: blog or page
    metadata["type"] = isBlog ? "post" : "page"
    
    # Set default last-modified based on file timestamp
    metadata["modified"] = modified
    
    # If .properties file exists, use it to set author info
    propPath = itemPath[0,itemPath.length-4] + ".properties"
    if File.exists?(propPath)
        props = IO.readlines(propPath)
        for prop in props
            if authorMatch = prop.match('author=(.*)')
                author = authorMatch[1].gsub(/([^A-Z ])([A-Z])/, "\\1 \\2")
                metadata['author'] = author
            end
        end
    end
    
    # Make nice-looking destination file name
    metadata['dest'] = clean_filename(title, metadata)
    
    # Extract attachments
    attachments = extract_attachments(name, itemPath)
    if attachments.length > 0
        metadata['attachments'] = attachments
    end

    return metadata
end

#
# Extracts the attachment names for a given page
#
def extract_attachments(name, itemPath)
    attachmentsArray = []
    attachmentsPath = itemPath[0,itemPath.length-4] + "-att"
    if File.exists?(attachmentsPath) && File.directory?(attachmentsPath)
        attachments = Dir.new(attachmentsPath)
        for attachment in attachments
            if attachmentMatch = attachment.match('(.*?)-dir')
                versionsPath = File.join(attachmentsPath, attachment)
                if File.directory?(versionsPath)
                    # Iterate through each file; keep one with latest timestamp
                    versions = Dir.new(versionsPath)
                    a = {"name"=>clean_filename(attachmentMatch[1], nil)}
                    for version in versions
                        if version != "attachment.properties" && version != "." && version != ".."
                            versionPath = File.join(versionsPath, version)
                            lastModified = File.mtime(versionPath)
                            if !a['modified'] || a['modified'] < lastModified
                              a['modified'] = lastModified
                              a['source'] = versionPath
                            end
                        end
                    end
                    attachmentsArray.push(a)
                end
            end
        end
    end
    return attachmentsArray
end

#
# Main loop
#
rootDir = Dir.new(ROOT_DIR)
if !File.exists?(COPY_DIR)
    Dir.mkdir(COPY_DIR)
end
if !File.exists?(COPY_PAGES)
    Dir.mkdir(COPY_PAGES)
end
if !File.exists?(COPY_POSTS)
    Dir.mkdir(COPY_POSTS)
end
if !File.exists?(COPY_IMAGES)
    Dir.mkdir(COPY_IMAGES)
end
if !File.exists?(COPY_ATTACHMENTS)
    Dir.mkdir(COPY_ATTACHMENTS)
end
copyDir = Dir.new(COPY_DIR)

# Read in all page metadata
rootFiles = Dir.entries(rootDir.path)
files = [];
for item in rootFiles
    if File.extname(item) == ".txt"
        name = File.basename(item, ".txt")
        if DONT_COPY.include?(name)
            p "Skipped: " + item
        else
            itemPath = File.join(rootDir.path, item)
            metadata = extract_metadata(name, itemPath)
            if !metadata['author']
                metadata['author'] = DEFAULT_AUTHOR
            end
            files.push(metadata)
        end
    end
end

# Copy files
for file in files
    # Copy wiki text
    source = file['source']
    copyDir = file['type'] == 'post' ? COPY_POSTS : COPY_PAGES
    dest = File.join(copyDir, file['dest'])  + ".markdown"
    copy_text source, dest, file
    
    # Copy attachments
    attachments = file['attachments']
    if attachments
        for attachment in attachments
            source = attachment['source']
            name = attachment['name']
            image = (name =~ IMAGE_MATCHER)
            dest = File.join(image ? COPY_IMAGES : COPY_ATTACHMENTS, name)
            if File.exists?(dest)
                p "Did not copy attachment: " + name
            else
                copy_binary source, dest
                modified = File.mtime(source)
                File.utime(modified,modified,dest)
            end
        end
    end
end
