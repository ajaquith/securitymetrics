---
title: Voting With Your Feet
author: Andrew Jaquith
created_at: 2004-12-02 21:55:31 -0500
layout: post
categories: 
- security
- Windows
- Mac
comments: true
---
Most people know that the dominant computing platform has a little problem with security. It&rsquo;s a little problem with big consequences. Recently, research firm IDC released a report indicating that two thirds of PCs -- including those deployed within companies -- are affected by some sort of spyware. IDC&rsquo;s report, _Worldwide SpyWare 2004-2008 Forecast and Analysis: Security and System Management Sharing Nightmares_, projects that companies will spend over $305 million on anti-spyware software and services by 2008, up from $12 million now.

It is always useful to consider the source of this information -- IDC&rsquo;s targeted customer base is hardware and software companies, not end-customers. _Caveat vendor._ But take the figures at face value: $300 million is a lot of money -- about 1/3 of the revenue of a software company the size of Novell, or 1/2 the size of Compuware. If the IDC projections hold up, that means that over the next four years, Windows platform vulnerabilities will indirectly fund the creation of many new companies seeking to feed at a $300 million trough. That is enough money for a medium-sized venture capital fund. But that&rsquo;s not all. Over the last year, Windows anti-virus and patch management vendor revenues likely exceeded $650 million, based on my conservative estimates. Neither of these categories would have been able to grow to meaningful sizes unless there hadn&rsquo;t been, ahem, a sizable market opportunity.

<!--more-->

Now go back and re-read that last paragraph. In case the point isn&rsquo;t clear, nearly $1 billion in economic value has either been created (or destroyed, depending on your point of view) entirely by accident, because of what economists would call an _externality._ In the same way that industrial polluters created a market for smokestack scrubbers and emissions permits, so it has been with operating system security. The metaphor falls short, however, when one realizes that these new security markets did not need to exist at all. All Microsoft would have needed to do was design better products.

It doesn&rsquo;t have to be this way, and on operating systems such as Apple&rsquo;s OS X, it isn&rsquo;t. Consider three fundamental aspects of Windows (including 2000 and XP) that show just how much design, not installed base, drives vulnerabilities:

* __Windows registry__. All users (and by extension all programs) need read-write access by default to a small number of files that are critical for system functioning: the Windows registry. All the houses in the neighborhood, so to speak, are emptying their sewage onto the same grassy field. Why commingle security concerns this way? In OS X, by contrast, applications manage their own preferences, and these are in almost all cases stored in the user&rsquo;s home directory in separate files. This makes security issues potentially much easier to compartmentalize, because applications are (or can be) restricted at the file system level.
* __Vulnerable services run by default__. Much ink has been spilled in other places about how Windows (especially pre-XP SP2) leaves vulnerable network services listening by default, even in an out-of-the box install. Under such conditions, the half-life of a virgin XP desktop is what, 15 minutes? In contrast, the Mac ships with exactly zero ports open.
* __No &ldquo;speed bump&rdquo; for administrative operations__. Windows doesn&rsquo;t have the concept of Unix `sudo`. Instead, users with administrative privileges can do anything without being challenged or even audited. Privileged users typically include Windows service accounts, application runtime accounts, and even Aunt Millie -- who granted herself admin rights at install just like the nice wizard told her to do. This, combined with the integration of ActiveX controls into Internet Explorer, is _the_ reason why spyware is pervasive. Compare this to OS X (or Linux). An operation requiring extra privileges forces the user to re-authenticate interactively; the command itself is logged for posterity.
None of these issues have anything to do with the language they were coded in. For that matter, they could have been done in .NET. But they do help explain how certain design choices have helped create the Windows Security Pandemic. That monoculture&rsquo;s one hell of a petri dish.

What to make of all this?

First of all, companies should __stop what they&rsquo;re doing and run the numbers__. Add up what the total cost of desktop platform insecurity is costing you. Third-party desktop firewalls, anti-virus, anti-spyware and patch management software all count towards the total. Then, make a conservative estimate of what the monthly patch-and-pray ambulance drill is costing you in labor soft dollars. It&rsquo;s a safe bet that the costs of coping with insecurity are &ldquo;crowding out&rdquo; expenditures in other areas. One person I spoke with at a large bank indicated that ASN.1 SSL encoding vulnerability, for example, cost the firm more than $1.5 million in hard and soft dollars to handle, including considerable expenses for temporary labor. That money was almost certainly carved out of the operational budget.

Second, companies with survival instincts should __seriously consider an alternative platform strategy__. A small pilot program of alternative desktop operating systems could be a useful way of determining whether a less costly, albeit different, platform would make sense. My personal experience with Mac OS X and various Linux distributions has led me to conclude that OS X offers a larger variety of compatible desktop software and better user experience than Linux, but your mileage may vary. 

There is evidence that some forward-looking companies have reached similar conclusions. According to a [story originally published in NewsFactor](http://enterprise-linux-it.newsfactor.com/story.xhtml?story_title=AT-T-Considering-Mac-OS-X--Linux&story_id=27406), AT&T is currently evaluating both Linux and OS X to determine whether &ldquo;hedging their bets&rdquo; makes sense. In addition, IBM has previously stated that it will [migrate to a Linux-based desktop](http://www.theinquirer.net/?article=13485) by the end of 2005.

Microsoft is not the devil, and Bill Gates does not have horns and a tail. But prior mistakes in the designs of the company&rsquo;s products are costing some companies astounding amounts of real money -- and making others rich. Customers should &ldquo;get the facts&rdquo; and consider alternative strategies.
