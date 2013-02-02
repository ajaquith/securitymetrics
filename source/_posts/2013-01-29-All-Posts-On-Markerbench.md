---
title: All Andy's Posts Now on Markerbench
created_at: 2013-01-29 07:00:00 -0500
layout: post
categories:
- blog
- applications
comments: true
---
As part of a continuing experiment with static blogging, I have moved all of my historical blog posts from [securitymetrics.org](http://www.securitymetrics.org) to Markerbench.com. Everything is now here, including the somewhat notorious essay [Escaping the Hamster Wheel of Pain](http://www.markerbench.com/blog/2005/05/04/Escaping-the-Hamster-Wheel-of-Pain/), which introduced a certain rodent-related metaphor to the security trade and served as the introduction to my book, ["Security Metrics: Replacing Fear, Uncertainty and Doubt"](http://www.amazon.com/Security-Metrics-Replacing-Uncertainty-Doubt/dp/0321349989).

For the curious, here's some background on why I moved everything here:

<!-- more -->

The securitymetrics.org site has for many years been running on [JSPWiki](http://incubator.apache.org/jspwiki/), a Java Enterprise Edition (JEE) application that uses "wiki text" as a markup language. It has served me well, and I am proud to have been one of the platform's primary authors. However, my (older) deployed version of JSPWiki has suffered from a slow memory leak that has required me to restart the web app container about once per month. I have also had to disable site registration and commenting features, due to the lack of a reasonably-bulletproof spam filtering system. That meant that securitymetrics.org had become essentially a static website. So, why go to the trouble and expense of hosting it on a complex web app server? Now that I've gotten the hang of [Octopress](http://octopress.org), a Jekyll-based static web publishing system, the time was right to make the move to a much simpler alternative. And because I had used securitymetrics.org as a personal blog, it seemed like a good idea to move all of the bloggish-type posts here.

Moving everything to Octopress means that I now write in Markdown, John Gruber's [elegant markup language](http://daringfireball.net/projects/markdown/). Among other things, that gives me the ability to use my preferred writing application, [iAWriter](http://www.iawriter.com) -- a beautiful writer's tool that synchronizes with iCloud and hence, with all my devices. Markdown is a simpler markup language than wiki text; similar in many respects but with some key differences:

* __Headings__: in Markdown, you create a new heading this way: `#` (Heading 1), `##` (Heading 2), etc whereas in wiki text you use are `!!!`, `!!`, and `!` respectively. I find the Markdown syntax a little more economical.
* __Emphasis__: in Markdown, you emphasis text by surrounding it with `_` (for _italics_) and `__` (for __bold__). In wiki text you use `''` for italics and `_` for bold. Not a big difference, but logically, it makes sense that more emphasis means more characters to type (2 for bold versus 1 for italics).
* __Code blocks and inline code__: In Markdown you indent text by four or more spaces to indicate a code block, and you indicate inline code by enclosing the text in back ticks (`` ` ``). In wiki text you enclose the text with triple and double curly braces: `{{{ code block }}}` and `{{ inline code }}`.
* __Hyperlinks__: You create links in Markdown with the hyperlinked text enclosed in square brackets, and the link itself in parentheses, for example this snippet `[link](http://www.markerbench.com)` links to my blog. In wiki text, you use square brackets separated by a pipe _eg,_ `[link | http://www.markerbench.com]`. Both are lightweight enough for my needs; the Markdown syntax is slightly easier.

I'll miss JSPWiki's neat table syntax, which allowed you to create tables simply and cleanly (`|| head 1 || head 2 || head 3` for header rows and `| cell 1 | cell 2 | cell 3` for regular rows), but you can create tables in Markdown simply by passing through HTML. That's ok with me; I haven't seen a clean way to do tables on any platform. Supposedly-"WYSIWYG" editors -- such as the one in Wordpress -- mess tables up regularly. Writing them out manually is a little more work, but not too much.

Apart from the syntax itself, one difference between Octopress and JSPWiki is the way post metadata is stored. In JSPWiki, metadata such as the author name is stored in `.properties` files; last-modified times are whenever the file was last touched. In Octopress, one stores this and other information in the Markdown document itself, right at the top, in YAML syntax. For example, here's the YAML for this post:

    ---
    title: All Andy's Posts Now on Markerbench
    created_at: 2013-01-29 07:00:00 -0500
    layout: post
    categories:
    - blog
    - applications
    comments: true
    ---

Pretty simple stuff; you need to remember a few basic rules. Beyond the syntax, though, I like the simplicity of the system as a whole. By turning the blog into something that I "publish" with simple command-line invocations, I get rid of a lot of headaches. Instead of worrying about a web application that I need to maintain, upgrade, and secure, I only need to worry about my writing. (And the occasional GitHub update.)

Being the industrious-lazy sort, to move the blog posts, I created a little Ruby script that munged the wiki markup and produced decent Markdown. All of the posts needed a little work done to them, mostly to fix a few bullet issues my script didn't account for, and to assign categories to each post. At some point I will post the script to GitHub, as soon as I get the hang of _that_. I'll also, for the sake of completeness, I will likely cross-post a few notable essays from my [work blog](http://blog.perimeterusa.com). 

After I have tinkered a bit more with the Markerbench site, I'll go ahead and move [http://securitymetrics.org](http://securitymetrics.org) to Octopress as well, right in time for Metricon 8! I may, or may not, put the site contents on GitHub pages, as I have with this blog. Regardless, making it a totally static website makes it simple to host and scale. In addition, moving the rest of the securitymetrics.org site will allow me to use a much less expensive hosting plan. The only thing I'll need a hosting subscription for, at that point, is to host the securitymetrics.org mailing list.