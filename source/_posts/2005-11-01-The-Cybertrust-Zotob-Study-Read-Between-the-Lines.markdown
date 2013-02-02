---
title: The Cybertrust Zotob Study&#58; Read Between the Lines
author: Andrew Jaquith
created_at: 2005-11-01 22:39:57 -0500
layout: post
categories: 
- security
- Windows
- research
comments: true
---

Rudolph Araujo, a contributor to the securitymetric.org mailing list, forwarded on a [link to a Red Herring article](http://www.redherring.com/article.aspx?a=14206) about a [new Cybertrust study on the impact of the Zotob worm](http://cybertrust.com/pr_events/2005/20051026.shtml) by Russ Cooper.

Cybertrust has an interesting model... when major security incidents happen, they make a habit of canvassing a wide group of companies that have agreed to participate. Looks like they are up to about 700 or so participants, not all of which are their customers. I actually really like and appreciate that Cybertrust takes the time to do this, although in this particular example I think they raised more questions than they answered.

<!--more-->

_Exhibit A._ Where's the report, exactly? Annoyingly, the Cybertrust press release references the study, written by Russ Cooper, but doesn't tell you how to get it. No hyperlink, no phone number, nothing. All of which makes me suspicious. And since I'm suspicious, let me throw some darts. Let's look at the money quote:

> Specifically, about 13 percent of organizations surveyed reported that they experienced at least some adverse impact from Zotob, defined as spending time, resources or money fighting or recovering from the worm. About 6 percent had a moderate or major impact from Zotob -- more than $10,000 in losses and at least one business critical system affected (e.g. email, commerce, Internet connectivity). This compares to a moderate or major impact of more than 60 percent of organizations due to Nimda, and more than 30 percent of organizations due to Blaster. No Cybertrust customers reported moderate or major impact to their organizations due to Zotob.

I don't have the survey, so I can't really tell what's the difference between "at least some adverse impact" and "moderate or major impact," other than the broad thresholds of $10K in "losses" and "one critical business system" affected. But these thresholds are less useful than they appear. For example, Citigroup has a lot of servers, and many are internet-facing. It's conceivable that one minute of downtime might cost them $10,000. So is that a "major" impact relative to their daily revenue-generating, or just "moderate" -- or even "minor"? On the other hand, I'm less bothered by the potential slipperiness of their non-definition of "business-critical system", since that's likely to be left to the customer to define -- as it should be.

From a spin-meister's perspective, it's always interesting when a vendor makes an absolutist claim like "No Cybertrust customers reported..." because it all depends on where one draws the lines -- and one can always figure out a way to draw a line that facilitates such a claim. In this case, it's between the "low" and "moderate" impact buckets. Although Cybertrust doesn't tell us how many of the 700 organizations it surveyed are its customers, it's clearly a small subset: let's assume 1/3. Does that mean that _all_ 230 of its customers could have sustained time, resource or hard-dollar losses of $9,999 _and_ also the loss of, say, 100 "non-critical" systems each? That would still allow Cybertrust to credibly claim that "none" of its customers were particularly affected.

Then there's this quote at the bottom:

> Cybertrust customers experienced about 50 percent less time to recover from Zotob, 55 percent less costs of recovery, 66 percent less network performance degradation, and 76 percent less desktop impact. In addition, Cybertrust customers had zero impact to critical business partner, email, Internet connectivity, remote user connectivity or other critical business functions.

I won't get into a detailed discussion of this one, other than offer a six word critique of what's missing here: numerators, denominators, and units of measure. 

I take that back; two more words are needed: _secret sauce,_ or rather lack thereof. Even if Cybertrust customers _did_ experience fewer issues than other companies, surely the reason wasn't merely because of the fact that they had a commercial relationship with Cybertrust. They must have, you know, _done something_ to make themselves more secure -- changed their processes, taken advantage of some marvelous Cybertrust technology, or availed themselves of their big brains. What might these things be?

To be fair to Cybertrust, they've got a marvelous asset that they're anxious to exploit: a well-honed mechanism for gathering security operational practice data, and on a scale that's large enough to suggest that it might be representative. No doubt it provides Cybertrust with a wealth of information. But all of that tantalizing goodness is obscured by the opacity of their methods and data. Let in the sunshine!

Now, it's easy to trash-talk someone when they aren't here to defend themselves. (Says `HomerSimpson`: Fun, too! ARJ: yes, sometimes) That's not what I meant to do. But I would like to suggest, simply, that studies like these aren't as helpful as they could be -- nay, _should_ be. Any studies deemed fit to publicize over the newswires should also be fit for scrutiny from academe, competitors and uh, cranks like me.

Anybody got the survey on hand? I'd be happy to eat my words.
