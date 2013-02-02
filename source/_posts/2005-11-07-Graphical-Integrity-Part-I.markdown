---
title: Graphical Integrity, Part I
author: Andrew Jaquith
created_at: 2005-11-07 10:38:12 -0500
layout: post
categories: 
- security
- visualization
comments: true
---

The folks at the NY Times have put together a nifty interactive graphic that diagrams the various data breach cases that have been disclosed since January. It breaks down when each incident occurred, and categorizes the incidents by industrial sector and geography of the disclosed parties:

[Stolen Identites: data breaches since January 2005](http://www.nytimes.com/packages/html/business/20051002_IDTHEFT_GRAPHIC/index.html)

The graphic is interesting for two reasons. First, there's the obvious one: it's gives us a sense of the problem, quantitatively speaking.

For example -- not surprisingly, financial services appears to have suffered the most: 46m, or 12% of the total account disclosures. With regard to type of account, most of the problems were related to credit cards, phone records and the like. E-mail/online payment accounts only comprised about 14% of the issues.

The second reason this graphic is interesting -- and this is, in fact, the real point of this post -- is the third graphic ("Case By Case"). The incidents are arranged horizontally, left-to-right, with shaded bubbles placed on the timelines at their respective dates. Cases with larger numbers of affected records have bigger bubbles. This is a pretty good time-series technique, in my opinion. Nice, but do you want to know what's even better than that?

Here's where our friends at the Times get all sorts of bonus points. As I mentioned, the bubbles are sized in proportion to the number of affected account records. But the bubble's size is _not_ a simple linear mapping of records to diameter -- but to AREA. Thus, for a given number of records, the radius of the circle is `sqrt( records / ( _n_ x Pi ) )`, where _n_ is a scaling factor. 

Per [Edward Tufte](http://www.edwardtufte.com), scaling in proportion to area is a much more honest and appropriate technique to use than by diameter, due to the way the eye perceives such things. When @stake introduced its infamous 2x2 bubble chart back in early 2000, we scaled the "business impact" ratings in exactly the same way, using area scaling. We wanted issues scored a "5" to be perceived as 5x bigger than the "1" issues, not 25x. 

On a side note, Tufte has been known to consult for the NY Times on occasion. This graphic would seem to have his fingerprints on it; I wonder if he had a hand in it. Anybody know?
