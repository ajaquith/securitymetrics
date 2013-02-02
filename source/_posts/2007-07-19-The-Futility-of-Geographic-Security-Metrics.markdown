---
title: The Futility of Geographic Security Metrics
author: Andrew Jaquith
created_at: 2007-07-19 11:47:49 -0400
layout: post
categories: 
- security
- metrics
- vendor-bashing
comments: true
---

While I would not call this a trend, I have noticed that lots of security companies like to put together impressive-looking charts, graphs and reports that purport to compare various metrics by country. Here are two recent examples:

<!--more-->

* Sophos released its [list of Dirty Dozen spam-relaying countries](http://www.computerworld.com.au/index.php/id;1529124582;fp;16;fpid;1). The avoweded goal of the report is to "name and shame" the countries whose servers are apparently the biggest spammers, and by implication, the most sloppily managed and secured.
* Symantec's semi-annual [Internet Security Threat Report](http://eval.symantec.com/mktginfo/enterprise/white_papers/ent-whitepaper_internet_security_threat_report_xi_03_2007.en-us.pdf), an otherwise fairly interesting read most of the time, always devotes about three pages to documenting the "top attacking countries," a subset of whose citizens have been determined to be involved in a variety of detectable online hijinks.

Now, I don't want to get off on a rant here, but I have three problems with these sorts of country metrics: accuracy, lack of throats to choke, and general pretentiousness of the whole exercise.

### Accuracy 
Nearly every report that calculates country metrics relies on the same technique for determining geography: doing a WHOIS netblock search for the IP address in question, and using the record's registration address as the source for the country. This is essentially how gambling sites, for example, figure out that Johnny is really from Queens and not from Bermuda, and therefore not able to gamble in virtual offshore casinos. Needless to say, this particular method of inferring the country of origin is not exactly reliable. What if the user or domain is using a foreign ISP? (Example: securitymetrics.org was originally hosted in Ireland. It is now hosted in Atlanta, even though I live in Boston.) What about multinational corporations who centralize operations in a particular locality, but have distributed operations? And most important, what about persons who use relay machines (such as bots) as launching points for spam or attacks?

### Lack of throats to choke
In my book, [Security Metrics: Replacing Fear, Uncertainty, and Doubt](http://www.amazon.com/Security-Metrics-Replacing-Uncertainty-Doubt/dp/0321349989), I note that good security metrics need to have five properties:

* __Consistently measured__,without subjective criteria 
* __Cheap to gather__, preferably in an automated way 
* __Expressed as a cardinal number or percentage__,not with qualitative labels like “high,” “medium,”and “low” 
* __Expressed using at least one unit of measure,__ such as “defects,”“hours,”or “dollars” 
* __Contextually specific__: relevant enough to decision-makers so that they can take action 
Without question, metrics on which countries are attacking with the most gusto, or spamming the most frequently, aren't _totally_ horrible because they satisfy the first four properties. But they fail the last test miserably. 

Exactly who is going to benefit from the knowledge that, say, "the US" (note the scare-quotes) is the most aggressive spammer? Who will take action? Will it be...

* _The president, George W. Bush?_ Will he direct the SEC, GAO, FCC and the Treasury to declare a Global War on Spam Relays? Certainly not.
* _The captains of industry_, such as the member companies that comprise the Dow Jones industrial average? Do you think this information would cause the respective CEOs to call their CISOs on the carpet and get them inspect and correct all of their security systems so that the US, as a whole, would rank better in next month's report? Nope.
* _Foreign multinationals?_ Will they suddenly start curtailing their e-mail and web traffic to US companies, for fear of catching cooties? Meh.
* _Consumers?_ Do you think Johnny is going to pack up his tent and move to Lower Slobovia because the US is now far too dangerous a place to own a computer in, according to something he reads in _The Register_? Probably not, unless he wants to evade Bermudan gambling controls.

These are admittedly silly examples, but the point I am making is more serious. Namely, it is that _no single decision-maker gains anything useful_ from country-by-country metrics. There is nothing here that a CISO, security director or individual consumer could use to make smarter decisions, allocate their dollars more wisely, or change behaviors for the better. Which brings me to objection three, which is...

### The pretentiousness of the whole exercise 
Although I have been in the security business for a few years now, it seems like I missed a memo somewhere. Exactly where does it say that in order to be taken seriously as a Security Authority, one must produce country-by-country graphs? Did marketeers watch War Games too many times? Do they have unrequited desires to work at NORAD? And where does the fixation from blaming countries come from? Does Carole Theriault wish to petition the UN so that she can be appointed High Commissioner for Internet Security? (She'd probably be good at it, but that's a different story.)

The more I think about it, the more irritated I get. Creating geographic charts with impressive numbers on them, knowing full well that nobody can use the information on them to make better decisions, is a really nice, neat way to have one's cake and eat it too. Symantec, Sophos and the like can marshal impressive statistics about particular countries, but they can't be used by anybody for any purpose. Because nobody can gain any benefit from them, nobody can possibly be offended, either. Thus: country-by-country metrics are a safe way to display apparent expertise without rocking the boat.

These reports might make for good PR. But where's the courage in them?

### J'accuse!
Here's a better alternative: _actually naming names_. Rather than "shaming countries," why not use cross-sectional analysis to shame corporations, ISPs, and government agencies? These organizations have actual budgets, information security staffs, and public relations problems to worry about. When named publicly as nasty spammers, data leakers or clueless configurers, they will generally take action to fix the problems.

In other words, security metrics produced by parties who are willing to stand up and say, "J'accuse!" would be useful to those responsible parties _who can actually do something with the information_.

Here are two example of real courage:

* __Spamhaus__. They have the _de rigeur_ country-by-country report, of course, but they also [report by ISP](http://www.spamhaus.org/statistics/networks.lasso). Now that's more like it — somebodies we can finger!
* __Support Intelligence__. Their [Month of 0wned Corporations](http://blog.support-intelligence.com/2007/03/30-days-of-bots.html) blog initiative was a brilliant public relations move, and it got them [written up in the New York Times](http://www.nytimes.com/2007/01/07/technology/07net.html?ex=1325826000&en=cd1e2d4c0cd20448&ei=5090). How much would you like to bet that most of these companies have found and eliminated most of the botnets that Support Intelligence documented?

I know that this post won't affect the prevailing sentiments or practices of the most aggressive marketeers in the security industry. We will keep seeing more useless country metrics. But I thought I'd mention it...
