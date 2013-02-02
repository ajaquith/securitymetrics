---
title: The Symantec Threat Report&#58; Read Between the Lines
author: Andrew Jaquith
created_at: 2005-09-22 09:51:39 -0400
layout: post
categories: 
- security
- vendor-bashing
comments: true
---

Like many other people, I've downloaded and read the semi-annual Symantec Threat Report. I've always been a fan of this publication, which provides a level of texture, richness and depth about malware and threat trends that isn't easy to get anywhere else. Symantec understands they've got an exploitable asset -- their DeepSight sensor network -- and they're flogging it for all it's worth. Good on 'em.

There's been plenty of ink spilled in the press (e.g., [Computerworld](http://www.computerworld.com/securitytopics/security/story/0,10801,104785,00.html), [El Reg](http://www.theregister.co.uk/2005/09/19/symantec_threat_report/) ) about what the latest report means. Controversies and headlines abound: is Firefox really less secure than IE? Are Mac users living in a "false paradise" as the report claims? Are botnets running the universe?

All of these are important questions, and the report gives information on all of them. I recommend you read the report for yourself, and reach your own conclusions. That said, I find the report more interesting for what it _doesn't_ say. Reading between the lines is the best way to read the Symantec Threat Report.

<!--more-->

First, __understand the report's motive__: to sell Symantec gear, software and services. Throughout the report, Symantec doesn't miss a single opportunity to sell its wares. Enterprises are explicitly advised to purchase:

* antivirus software
* vulnerability alerting services
* traffic shaping hardware/software
* anti-spam software
* e-mail filtering software
* managed security services
* personal firewalls

...all of which SYMC sells. Now, they aren't quite brazen enough to recommend their own products, but it is clearly implied. Interestingly, SYMC _does not_ recommend patch management software -- something that isn't in their portfolio. 

Second, the best way to interpret the Symantec data itself is for __trending information__, not for absolute numbers. For example, it's interesting that:

* the number of unique Spybot variants has increased by nearly 6,300 variations, to over 8,800
* the percentage of vulnerabilities that were "easy to exploit" (no exploit needed, or had exploit code) was 73%
* 13% of vulnerabilities had exploit code available
* 8 out of 10 adware/spyware products were installed via ActiveX or browser help objects (BHOs)
* Rental pricing for a 150k-strong botnet is $300 (for some unclear period of time)
* Implied DDOS attacker profile is 15 bots (15k average active bots daily divided by 1,000 detected attacks/day)

But some of the other statistics raise more questions than answers. Symantec tells us, for example, that it detects  just under 10,000 active zombie PCs on a daily basis. That sounds impressive, but it's hard to tell what percentage of their sample base this represents. It's not even clear that the measured increase in the number is relevant either, since we don't know whether they've increased their sensor network during the reporting period. Thus, we have no real way of knowing exactly how big the botnet problem really is, nor can we tell whether there are more botnets, or fewer. 

Third, if you interpret the numbers a certain way, they would appear to expose some __deficiencies and blind spots in Symantec's portfolio__. For example, the huge increase in the number of malware variations begs the question of exactly how close to the limits of signature-based technologies we might be. I was at Peter Szor's recent presentation last week at the RSA Power Day event in NY, and he told me that Symantec is seeing close to 4,000 new variations a month. If you fast-forward a bit, suppose the number  trends to 10,000 a month.  That's an implied _net_ number of new signatures of 120,000 annually. There's just no way a signature-based product is going to be able to cope with the memory demands this implies, never mind the disk space usage. Of course, signatures are at the core of SYMC's business. 

Another potential blind spot is exposed by their spam numbers. In contrast to every other message security vendor I've spoken to, SYMC says that the percentage of mail that is spam, as reported by BrightMail is actually _decreasing_. They attribute the decrease to the use of traffic-shaping products (more subtle plugging, this time for TurnTide boxen). I think attributing the decrease to traffic-shaping may be disingenuous; it could also signal a decrease in effectiveness of their core content-filtering software. This is almost certainly true in any case; detection strategies that look at sender traffic patterns are a [much more prominent part of modern anti-spam architectures](http://www.yankeegroup.com/public/research/author_page.jsp?ID=E6175864177D44AD). Thus, we have yet another example where the numbers tell us more about Symantec's aging product line than they do about the actual threat landscape.

Fourth, I can't figure out why Symantec seems to have a __bee in their bonnet__ with respect to Apple. For the second straight report, they take great pains to point out how Mac users ought to be quavering in their boots, instead of blissfully living in a "false paradise". What, is Cupertino, California not big enough for the both of them? They seem to be perfectly willing to grant Mozilla a pass, in spite of the increased number of vulnerabilities relative to IE. But when it comes to Macs, they gravely intone the specter of "increased vulnerabilities" and attacks. (NB: they do not, in fact, document a single actual _attack_.) So why the double standard?

To be fair, Symantec does mention in passing a _bona fide_ rootkit for OS X ("Weapox"). But there's no analysis whatsoever about its threat vectors, infection prerequisites, propagation frequency, or prevalence in the wild. There's no question that this rootkit is real, but its significance is minimal. In general, Symantec's Ahab-like quest to harpoon Jobs' White Whale seems like __FUD FUD FUD__ to me.

Joe Wilcox has arguably the [best take on the subject](http://www.microsoftmonitor.com/archives/010615.html):

> Then there is the Mac question. Apparently, the report warned that Mac users are living in lala land, assuming that they are safe from all those pesky viruses, worms and spyware infections. Symantec warned that Mac OS X's day of reckoning is coming, when virus writers turn their attention to Apple's Unix-based operating system. OK, so why is it then that Symantec has basically pulled out of the Mac security market, or that the report conceded that there was no real change in Mac OS X security risk from the previous six months?

Why not turn the issue on its head? If the Mac is free of malware at the present time and will be into the near future, then it's _free of malware_. It seems to me the most intellectually honest recommendation Symantec could make -- after enumerating in ridiculous detail all of the various species, genotypes and mutations of Windows malware -- would be to tell customers to buy Macs.

Yet another thing Symantec's Threat Report doesn't say.
