---
title: "Outsource your web risks with a static website"
created_at: 2013-01-11 00:00:00 +0000
layout: post
categories: 
- security
- web websites
- applications
comments: true
---

A few weeks ago I put together my annual [Predictions blog post](https://blog.perimeterusa.com/3180/) for the coming year. In that post and accompanying [webinar](http://www.perimeterusa.com/knowledge-center/webinars/on-demand), I suggested five emerging risk areas that CISOs need to pay attention to in the coming year. These are:

1. CISOs will wrestle with the risks of “as-a-Service” platforms
2. Android’s security issues will force CISOs to take action
3. Cloud application vendors will compete on metrics
4. California will become the _de facto_ privacy regulator
5. Your password policy will undergo a major overhaul

<!--more-->

Of these, prediction numbers 1 and 3 both related to cloud services, and to the security thereof. The first one, about Platform-as-a-Service (PaaS) was by far the one that I spent the most time thinking about. That is because PaaS is the one that CISOs have the least amount of control over. It is the sneakiest. From CISO's standpoint, knowing that large parts of your developer toolchain (source code repository, test VMs) and runtime environment (web servers, databases) is sitting out there in "the cloud" is scary, not least because these parts didn't exactly go through the traditional procurement channel. Even worse, your typical IT security auditor isn't really going to know what to do with PaaS, other than slap hands on face, MacCauley Culkin-style, and make a beeline for the exit.

{% img /images/paas-2013.png Platform-as-a-Service Ecosystem %}

However, in this post I will describe one way in which the use of pervasive — and free — platform cloud services can actually _reduce_ risk. That may sound ridiculous on its face, but I offer one worked example that proves the point: static websites.

<!--more-->

_Static websites_ are exactly what you might think: websites whose content is entirely static. The server never executes any business logic: it simply retrieves whatever is asked for and serves it up to the client. By "whatever is asked for" we mean plain-old HTML, images, cascading style sheets, JavaScript or anything else that makes up the website. Static websites depend on four principles:

1. Websites are "compiled" offline on a workstation, and "published" by uploading to the server
2. Servers execute no code, and only serve static resources
3. All dynamic features execute on the browser via JavaScript
4. Third party services provide "outsourced" commenting, social and analytics features via JavaScript, which are removed from the server's areas of concern

Because the web server is not doing anything other than serving up static resources, it can be dumb as a bag of hammers, and locked down within an inch of its life. Even better, the simplicity of the server results in a radically reduced attack surface; there are no "user accounts," no databases, and no middleware. Because the server does not need to, and indeed cannot, accept any user input, no application code needs to be audited.

### A new wrinkle on an old idea
Static websites are not new. They have been around for a long, long time — as long as the World Wide Web. In fact, prior to the invention of CGI and early server-side scripting languages like Cold Fusion, _all_ websites were static. But in the mid-1990s, developers began adding server-side languages and scripting frameworks to make websites more dynamic. These include PHP, ASP, JSP, and more recently, server-side JavaScript implementations like [Node.JS](http://nodejs.org).

Developers have also increased the number of components that collaborate server-side, too. In the early days, simple static websites required only a web server. But modern dynamic web applications are composed from many architectural components in addition to the web servers themselves. These additions include the various server-side scripting languages, plus application servers, application code, databases, and directories. And that is just for the simple applications. Even the humblest business website that serves up nothing more than corporate information from a content management system (CMS) needs most of these components. A site like that needs a web server (for example, [Apache](http://httpd.apache.org)), scripting language ([PHP](http://php.net)), content management system ([Drupal](http://drupal.org)), database (MySQL) and a directory for authentication (Active Directory). That's five components, and collectively they aren't doing all that much.

In contrast to the complexity of modern web applications, static websites turn back the clock on the web. The static website philosophy mixes old-school web publishing and new-school DevOps. If you want an example of old school, for example, look at my friend Dan Geer's [website](http://geer.tinho.net) or a [representative posting](http://geer.tinho.net/geer.suitsandspooks.8ii12.txt) on it. Dan's site is just text; no flashiness, and no graphics. On its face, Dan's site and mind are similar in one major respect. Both offer the same thing: static resources served up by a dumb server.

### Why not compile your website instead?
Modern static websites differ from their old-school cousins in two ways. First, the highly automated, explicitly developer-centric processes used to produce them feature many of the same tools used to produce code. Authors write posts using plain text editors rather than a WYSIWYG editor or CMS. They "check in" their posts into code versioning repositories the same way they check in their code. After the post or page is ready to publish, a designated DevOps person — perhaps the author — types a few commands to "compile" the site and upload it. Some static website aficionados have automated the process completely: one simply saves a new version of a post to a designated directory, and the website compiler automatically checks the page into GitHub, regenerates the site from scratch, publishes it to the web server.

The second difference between modern static websites and their old-school cousins is inclusion of dynamic features by deliberately "outsourcing" them to other, usually free, service providers. Instructions on the static web page cause JavaScript code to be loaded and executed, which communicates with the provider's service and provides the illusion of dynamic behavior. This allows site owners to include modern features would ordinarily require server-side code. Years ago, if you needed analyze website visitor traffic, you would install WebTrends on the server. Today, you just pop in a couple of lines of JavaScript for [Google Analytics](http://www.google.com/analytics/) (free). If you wanted commenting features with protections against spam, you needed an application that had a back-end database and a decent anti-spam filter, like [WordPress](http://wordpress.org). Now, you can simply embed [Disqus](http://disqus.com) (which is also free). Or suppose you wanted to allow visitors to recommend and share items on your website. Traditionally, you'd need to create a web form, hook it up to an email server, and create scripts to send recommendations via email. Now, all you need are a few JavaScript statements to load up Facebook's "Like" button, Twitter tweet and follow buttons, or Google's +1.

Dynamic features aren't just the only parts of the website that can be outsourced. The underlying web servers can be, too. For example, [GitHub](https://github.com) provides a free service called GitHub Pages that allows developers to upload HTML and other static resources. These are served up just like a website. [Amazon S3](http://aws.amazon.com/s3/) provides a similar service. For low-volume websites like this one (ha!), Amazon S3 is completely free.

### Outsourcing risk
Static websites are simple, and require just one architectural component: a web server. By contrast, the typical corporate website that does nothing more than serve up company information, and forward leads to [Salesforce](http://www.salesforce.com), nonetheless requires five. The simpler website is better because it is less complex, and less complex is good.

But that is not the only advantage static websites have. Modern web applications aren't just complex, but risky as well. They typically need to reach beyond the DMZ's back-side firewall to resources inside the company; for example, to a database or three, or to an Active Directory forest. These additional network connections confer a corresponding amount of risk. Then there's the setup, operations and maintenance tasks. Each architectural component needs to be configured, hardened, horizontally scaled, patched and monitored — forever.

But when you create a static website, most of the complexity goes away, along with the cost and risk associated with each. If you choose to outsource the remaining architectural component — the web server — to a third party, that goes away too. Why not let the fine folks at Amazon, [Heroku](http://www.heroku.com) or GitHub configure, harden, scale, patch and monitor the web server? They are likely to be better at it than you are.

Simplifying your architecture by eliminating complexity — and outsourcing the web server — eliminates a huge amount of security risk by cutting the attack surface nearly to zero. But the outsourcing of dynamic features such as user tracking, commenting, social sharing, analytics has another side-effect. Because the web server processes no user-generated content, a whole class of application and data-related security risks goes away. Cross-site scripting, SQL injection, parameter tampering, and the rest of the [OWASP Top Ten](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project) are no longer worries. You don't have any potential data breach obligations because you don't keep any data. There is nothing to steal.

Of course, just because _you_ no longer need to worry about application and data-related security risks, your outsourced comment-management service (Disqus) still does. They, and Facebook, Twitter and other providers your client-side JavaScript links to still need to police their members for spam, fraud, impersonation, and identity theft. They need to secure their JavaScript APIs and web applications. But you don't need to do any of these things any more; with a static website, you have essentially outsourced your risks to them. Indeed, it is more correct to say that you have _transferred_ them.

A few security risks remain. Access to servers that host static content must be controlled. If you manage those servers, you need to manage the SSH keys or passwords used for uploading content. And you should probably restrict the number of people allowed to operate the website compiler machinery to a few. And of course, you also need to worry about, um… a bunch of other, er… important stuff, like for example… let's see… 

Honestly, I can't think of anything else. Lock down the web servers and make sure only the right people can compile and post. That shouldn't be too hard, right?

Static websites aren't for everybody. They still require a certain amount of developer _savoir-faire_, and they won't reduce the need to build genuine web applications for business units. You can't build a static e-commerce site or anything stateful, for example. But if you are a security-conscious company that just needs an online presence, static websites might be just the thing.

If you disagree, feel let me know in the Comments section below. I'm using Disqus — of course!

### Coda: the making of this web page
I became interested in static websites several months ago when I read a few stray articles about the concept. But it wafted past me like so much second-hand smoke; I didn't really inhale. However, after I did my [Predictions webinar](http://www.perimeterusa.com/knowledge-center/webinars/on-demand) in December, I began spending more time digging into the capabilities of "new school" free-ish web service providers such as Heroku and GitHub. At a holiday party, my friend, neighbor and Drupal guru Stephan pointed out that these days it is pretty easy for a motivated developer to assemble a complete app infrastructure more-or-less for free.

A few weeks later, to support one of my professional hobbies, I opened a  repository on GitHub. Shortly thereafter, I read a few more articles about static blogging and started connecting the dots. I decided it would be fun to create my own static website to prove the concept. But to make it interesting, I wanted to create something representative of what most people would want. That meant that it needed to have the typical kinds of things you would expect, such as commenting features and social integration. I downloaded and started experimenting with two static blogging packages with a lot of buzz, [Nanoc](http://nanoc.stoneship.org) and [Jekyll](http://jekyllrb.com).

Both implement the "website compiler" strategy: you customize some templates, write a few posts in [Markdown](http://daringfireball.net/projects/markdown/) and then type a few commands to generate the site and upload the contents to a web server. After starting with Nanoc and finding myself a little frustrated, I moved on to Jekyll. I was halfway through my proof-of-concept with Jekyll when I discovered [Jekyll Bootstrap](http://www.jekyllbootstrap.com), a more kitted and polished version of Jekyll that didn't have the some-assembly-required feeling. But finally, I discovered [Octopress](http://octopress.org). It too is based on Jekyll, but includes pre-configured support for Google Analytics, Discus, Facebook, Twitter and Google+. In short, exactly what I wanted.

So I got to work getting a feel for the software, started drafting this post, and after about a day or two of after-hours work, things looked good. I needed to find a place to host the blog and decided on [GitHub Pages](http://pages.github.com), which is part of my GitHub account. While I was at it, I created Google Analytics and Disqus accounts. All pretty easy to do. Octopress worked pretty nicely once I got over a few self-imposed obstacles. What you see here, on this page, is a totally out-of-the box standard version of OctoPress, with nothing more than a few titles and text properties changed.

With a little more effort, maybe someday I'll be able to make something as nice-looking as the [Trail of Bits](http://www.trailofbits.com) website. One can but dream, no?

As for this blog post: I initially set out to write something very silly about how cool it was to try my hand at this. But the post kept getting longer. Whoops.