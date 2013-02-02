---
title: Metrics, Rothman and Gaming the System
author: Andrew Jaquith
created_at: 2006-11-18 10:27:51 -0500
layout: post
categories: 
- security
- metrics
comments: true
---

As usual, the purposefully provocative, belligerently blogging Mike Rothman has [gone and done it again](http://securityincite.com/blog/mike-rothman/the-daily-incite-november-14-2006#TBP2) &#x2014; aimed his treacly firehose at security metrics, Most recently, he's waded into the post-fest on the subject, of which [Amrit Williams](http://techbuddha.wordpress.com/2006/11/15/you-can-measure-security/), [Rich Mogull](http://securosis.com/2006/11/15/no-metrics-no-budget-or-paycheck/), [Pete Lindstrom](http://spiresecurity.typepad.com/spire_security_viewpoint/2006/11/security_metric.html) and [Alex Hutton](http://riskmanagementinsight.com/riskanalysis/?p=55) have been willing participants. 

Now, I recognize that Mike's stock-in-trade is hyperbole. He generally tells you exactly what he thinks, albeit with some slight exaggeration to get people's blood pumped up and their tongues wagging in reply. He wants spirited debate, and if it takes a little baiting to get it, he'll do it.

Alrighty then. I'll take that bait. Mike's been kind enough to reference my ongoing security metrics work over the last few months, and has been egging me on (privately) to convince him exactly what it is about security metrics that I find so compelling. Why, in essence, would I spend time researching a topic that has (for him) so little obvious value?

<!--more-->

I can't possibly convert Mike over to my way of thinking in a single blog post. But what I can do is tackle his latest "incite." Mike's most recent line of argument boils down to this: security metrics aren't too useful because they can be manipulated. His argument:

> We need to figure out what is the right security behavior and what metrics reflect that, and minimize the chances are that the system can be gamed. Time to patch and AV updates just don't feel right. I know that some folks (like Yankee's Andy Jaquith) are working on this, but suffice it to say - we need to be very careful. Define the wrong metrics and you'll be paying for a long time to come.

Mike frames the problem well... but he also provides strong clues about what the correct answer is. The key phrase here is "behavior." I think we would both agree that every metric has inputs that can be manipulated. And every measurement regime produces behavioral side-effects, some of which can be peverse. But how is security different in this respect than any other management concern?

First, let's consider the inputs to metrics and their potential for abuse by way of an example. Nearly every firm with an e-commerce presence watches a metric related to website uptime. It is common practice to tie operations bonuses to uptime. But carrots (bonuses) aren't the only way this can be done; sticks are often employed too. I know of a prominent Wall St. financial services firm that _personally fines_ senior operations management when their key systems have unscheduled downtime. 

Now, I would pose this question: do we think that operations managers game the uptime numbers? Sure they do. When the rules for counting downtime periods aren't clear, it makes it easy to fool around with the numbers that go into the uptime formula. But does that mean that because the potential for abuse exists, we would be better off simply tossing out the metric? 

Nobody I know would make that argument. That's because many organizations put checks in place to ensure that venality doesn't pollute reliability measures. And by "checks" I mean clear rules that govern what can and can't be counted as downtime, how to measure increments of time, and the scope of covered systems. Note also that _even those firms that don't do these things well still track uptime,_ because it provides a directionally correct historical record of their e-commerce systems' reliability. 

If we accept that uptime statistics can be gamed somewhat, but we still use them anyway, why would security be any different?

In other words: what we should shoot for are metrics whose utility exceed the harm caused by potential manipulation. Good managers put in scope, counting and procedural rules so that the ratio of (_utility / potential harm caused by abuse_) exceeds 1.0.

Now, on to the second part of Mike's objections: the observation that the metrics we select might cause organizations to exhibit perverse behaviors. The implication is that organizations aren't clever or wise enough to choose metrics that get us the behaviors we want. This is similar to the argument made by NEA members that we shouldn't use standardized tests to measure pupils' achievements because teachers will simply "teach to the test." Of course they will, and more to the point, they _should._ Nearly everyone across the political spectrum in Massachusetts I've spoken to (I'll allow that there's a selection bias here) seems to agree that despite its behavior-influencing side-effects, standardized testing and measurement is a good thing. Furthermore, most reasonable people agree that if we are testing our kids for the wrong things, we can also agree to _change the tests._

Again, why should security be any different?

Mike feels that because of the side-effects, the the only metric that we ought to be measuring is one that measures whether a firm has been compromised. I disagree, because that single metric is entirely backward-facing, and does not measure whether an organization has been successful in getting its staff to do the right things.

Just what are those "right things"? To my eyes, there are four perspectives that matter: financial, customer, internal process and learning/growth. For the sake of avoiding a rathole in this particular post I'm going to focus on the latter two.

For internal processes, which is where the bulk of security operations fall into, the behaviors we want are those that allow organizations to let trusted parties in, keep unwanted persons out, and reduce the chances that bad things will happen. Implied objectives are these:

* Protecting information asssets
* Ensuring the physical safety and security of people and assets
* Decreasing the damage incurred from security incidents
* Maximizing co-operation between the security team and business units
* Identifying security vulnerabilities
* Quickly granting or revoking access to systems and users
* Maximizing users&rsquo; access to appropriate systems
* Minimizing excess privileges granted to users and systems
* Fixing the highest-risk security vulnerabilities
* Identifying the highest-risk assets
* Maintaining a stable &ldquo;baseline&rdquo; for information assets
* Verifying the effectiveness of security controls
* Increasing the ability to respond to technological change
* Maximizing the reach of security controls

Likewise, for learning and growth, we want to spread responsibility for security, equip employees with the right security knowledge and skills, and promote adaptability in the face of changing threats. These themes imply the following typical objectives:

* Delegating responsibility for authoring user activities to business units
* Increasing collaboration between IT security and business units
* Ensuring effective levels of security certifications for security staff
* Promoting security awareness throughout the organization
* Integrating secure behaviors into employee&rsquo;s everyday activities
* Ensuring that security features are easily understood and adopted
* Heightening awareness of emerging security threats
* Exploring discretionary security frontiers
* Giving employees the skills needed to properly handle security incidents

I've purposefully listed the objectives for both perspectives (internal process and learning/growth) as _objectives_, not metrics, because they illustrate the behaviors that organizations should be encouraging. Every one of them can be readily mapped to process metrics &#x2014; key indicators &#x2014; that show whether an organization is achieving those objectives. Avoiding [Joel Spoelsky's "function point Olympics"](http://www.joelonsoftware.com/items/2006/11/10b.html) (gaming the system) depends on choosing metrics that bias an organization towards the behaviors they want, and away from the ones they don't.

I go into this topic (the Balanced Security Scorecard) in much more depth in my forthcoming book: _Security Metrics: Replacing Fear, Uncertainty and Doubt_, coming from Addison-Wesley in early 2007.

Nobody said this stuff would be easy. If it was, we'd have done it already. Frankly, I get tired of hearing that security metrics are too hard. It's a lot like going to dinner with a fussy friend who's been eating the same things since childhood. Instead of venturing forth and sampling from more adventurous menus, we slide back into the comfort food of "defense in depth", and "security is a process not a product." Those are the meat and potatoes of the security world, and as with everything, too much of it is bad for you.

I will post on this topic again soon.
