---
title: Meta-Conclusions from the Chinese Honeynet Project
author: Andrew Jaquith
created_at: 2007-12-04 23:43:42 -0500
layout: post
categories: 
- security
- bots
comments: true
---
If you are involved in your firm's desktop security strategies (Windows in particular), you should read this:

[Characterizing the IRC-based Botnet Phenomenon](http://honeyblog.org/junkyard/reports/botnet-china-TR.pdf)

This is a fact-filled but eminently readable paper about 3,290 IRC-based botnet command and control networks in China from June 2006 to June 2007. In addition to doing the normal things you'd expect to see in a botnet analysis, the researchers analyzed the extent of malware samples circulated within the botnets. They also attempted to determine the effectiveness of nine anti-virus engines in detecting the samples in circulation.

If you don't want to read the whole thing, I've put together the Cliff's Notes, at least from the perspective of a data junkie like me. Here are some of the more interesting metrics from the report. Some of these are from the report itself, and I've derived others. Editorial comments are in _italics._

<!--more-->

* Number of infected bot nodes: 1.5 million over the reporting period, for those 1904 botnets they could analyze in detail. Average botnet size over the period was about 800 nodes. Biggest was 50,000 nodes
* Botnet nodes are strongly diurnal, caused by infected machines being powered off at night
* Average lifetime of a botnet C&C server was 54 days
* Only 8.8% of the IP addresses of bots corresponded to blacklisted IPs on Spamhaus. _Not sure whether this means Spamhaus was ineffective, or just that bots have been getting sneakier. It does suggest that "reputation services" won't save us..._
* Of the activities seen on the botnet channels, "spreading" commands (finding new victims) were 28% of the commands executed. DDOS attacks were 25%; information theft, 9.8%; self-update activities, 14%. _This last figure is interesting; it tells me that bot executables on infected nodes are continually updating themselves to evade detection_
* Botnet spreading methods used exploits for the ASN1, DCOM, LSASS vulns in 50% of the spread commands executed. "Weak password" spreading methods were used, by contrast, only about 6% of the time.
* Very few bot commands (low hundreds) were executed for visiting websites (which you'd expect to see for creating fraudulent search result clicks). _That shoots my pet theory that bots are ideal "for distributed click fraud"... damn._
* Within the botnets, 2,000-4,000 samples of malware were collected every day, with peaks at 7,000 per day
* 90,000 unique samples collected overall (average 250 new/day)
* For unique samples seen for the first time (within 1 hour of collection) by an AV engine, the malware detection rate was 70% or higher for only 4 of the 9 AV engines used. The four were Kaspersky (92%), BitDefender (86%), Rising (79%) and Trend Micro (78%). The report did not disclose what the other five engines were, but they all came in at between 50.2% and 70% detection for new malware. 
* Even when samples were 30 days old, none of the top four AV engines topped 94% detection. _It's unclear how many engines would need to have been used together in order to catch "everything."_

The report offers plenty of conclusions. My own meta-conclusions are these:

* AV is missing a lot of malware
* Unpatched systems seem to be a key spreading vector... still
* Bot infections are becoming self-modifying to ensure that they evade detection
* Reputation services don't seem to help much
* Distributed click fraud is not yet a popular money-making technique

My last conclusion is perhaps the least intuitive: automated honeypot systems are cool. So cool, in fact, that I'm surprised that the big AV companies aren't selling them yet as a standard detection tool. But, of course, that would tend to undermine the public position that anti-virus products offer "total protection" (to quote a McAfee product name) or "mega detection" (to quote Panda).

On a side note, for my employer [Yankee Group](http://www.yankeegroup.com) I'm currently finishing up a report on the future of the anti-virus industry. Reports like these reinforce my view that security vendors will be forced to strengthen the detection and recovery parts of their product portfolios — and cool the silver-bullet rhetoric about perfect protection. But, that's thinking like a CISSP (the prevent-detect-recover triad), rather than like a desktop software vendor (software is installed, and problems are solved in one step).
