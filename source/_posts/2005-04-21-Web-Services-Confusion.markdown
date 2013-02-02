---
title: Web Services Confusion
author: Andrew Jaquith
created_at: 2005-04-21 00:47:59 -0400
layout: post
categories: 
- security
- humor
- applications
comments: true
---
[Scobleizer](http://radio.weblogs.com/0001011/) points out that the WS ReliableMessaging specification has been submitted to OASIS. 

With all due respect to the incredibly bright folks at the WS-I, I find the world of web services standards to be rather confusing. In addition to this new spec, we also have the WS-I Basic Profile (the initial version 1.0, plus the New and Improved!!! version that features "security"), WS-Federation (apparently a substitute for a perfectly good, and elegant, solution called the Liberty Alliance), WS-Transfer, WS-Conversation, WS-Security, and about a dozen others that I can't remember. About the only thing that's missing is the WS-LittleLessConversation specification, which (as I understand it) will feature hashed messages using secret, random salts that will ensure that nobody can talk to anybody else.

I'm not a web services guy; I just dabble in these things when the mood (or lighting) makes it worthwhile. But even so, it seems fairly obvious to me that the whole edifice is in danger of collapsing under its own weight. I made this point to an XML security vendor I spoke with the other day; I asked him this: do you really want to hitch your wagon to the whole web services phenomenon, especially since folks like Google are making a mockery of the whole thing by cobbling together allegedly "inelegant" solutions that (shudder) solve real problems and look terrific? He agreed with me, and said that yes, the REST protocol makes a lot of sense because people understand what it is, and how to use it. Isn't that the point?

Adam Bosworth and Tim Bray had it right: [keep it simple](http://www.adambosworth.net/archives/000031.html), and [have a few laughs about the subject](http://www.tbray.org/ongoing/When/200x/2004/09/18/WS-Oppo) when you can:

> I&rsquo;m going to stay out of the way and watch the WS-visionaries and WS-dreamers and WS-evangelists go ahead and WS-build their WS-future. Because I&rsquo;ve been wrong before, and maybe they&rsquo;ll come up with something that WS-works and people want to WS-use. And if they do that, I&rsquo;ll stand up and say &ldquo;I was WS-wrong.&rdquo;

The specs are certainly baroque enough, but from a security perspective, web services are a hard problem. The real issues boil down to mapping credentials expressed in message headers into the security regimes of the runtime environments. Put simply, you get a web services message with a header containing a Principal authorising the action. From the app's perspective it would be __really nice__ to be able to associate that with the roles you've spent so long baking into your application. The last time I checked, neither the WebSphere stack nor the .NET stack did a good job with this; there's so many Principals floating around it's like being back in high school. So at the end of the day this means we're wading through stacks of schema, huge XML files and incredibly detailed message structures just to parse a bloody payload. The roll-your-own REST approach looks decidedly more attractive by comparison, and one hell of a lot faster.
