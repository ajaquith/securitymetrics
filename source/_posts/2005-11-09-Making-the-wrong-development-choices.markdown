---
title: Making the wrong development choices
author: Andrew Jaquith
created_at: 2005-11-09 23:24:55 -0500
layout: post
categories: 
- applications
- security
- web security
comments: true
---

I hate to be a curmudgeon about this, but this fellow needs a beat-down:

[Fixing AJAX: XmlHttpRequest Considered Harmful](http://www.xml.com/pub/a/2005/11/09/fixing-ajax-xmlhttprequest-considered-harmful.html)

I offer this as exhibit A (as in AJAX) about why application security may well be intractable, in part because we've got mainstream technical outlets teaching techniques to evade well-founded security principles.

> AJAX applications wouldn't be possible (or, at least, wouldn't be nearly as cool) without the XMLHttpRequest object that lets your JavaScript application make GET, POST, and other types of HTTP requests from within the confines of a web browser.... But the kind of AJAX examples that you don't see very often (are there any?) are ones that access third-party web services, such as those from Amazon, Yahoo, Google, and eBay. That's because all the newest web browsers impose a significant security restriction on the use of XMLHttpRequest. That restriction is that you aren't allowed to make XMLHttpRequests to any server except the server where your web page came from... Too bad -- your application is on www.yourserver.com, but their web service is on webservices.amazon.com (for Amazon). The XMLHttpRequest will either fail or pop up warnings, depending on the browser you're using.

(quick cut to Andy spitting up his coffee in disbelief at what he thinks he's about to read)

> On Microsoft's IE 5 and 6, such requests are possible provided your browser security settings are low enough (though most users will still see a security warning that they have to accept before the request will proceed). On Firefox, Netscape, Safari, and the latest versions of Opera, the requests are denied...

(sounds like good security engineering to me... what's the problem?)

> There is hope, or rather, there are gruesome hacks, that can bring the splendor of seamless cross-browser XMLHttpRequests to your developer palette. The three methods currently in vogue are:

(Danger, Will Robinson! Glad I didn't refill the coffee cup...)

> _Application proxies_. Write an application in your favorite programming language that sits on your server, responds to XMLHttpRequests from users, makes the web service call, and sends the data back to users.
>
> _Apache proxy_. Adjust your Apache web server configuration so that XMLHttpRequests can be invisibly re-routed from your server to the target web service domain.
>
> _Script tag hack with application proxy_ (doesn't use XMLHttpRequest at all). Use the HTML script tag to make a request to an application proxy (see #1 above) that returns your data wrapped in JavaScript. This approach is also known as On-Demand JavaScript.
>
> The basic idea of all three hacks is the same: fool your user's web browser into thinking that the data is coming from the same domain as the web page.

(Excellent. A good summation of potential threat vectors. But I can't believe we're about to read a serious discussion, signed-off by a serious publisher, about how to evade security protections.)

> A word of caution here: there is a good reason why XMLHttpRequests are restricted. Allowing them to freely access any domain from within a web page opens up users to potential security exploitation. Not surprisingly, these three hacks, which offload the request to your web server, potentially threaten to disparage your web server's identity, if not its contents. Caution is advised before deploying them.

(The obligatory "Kids, don't try this at home" message.... followed by the Snake River motorcycle jump.)
