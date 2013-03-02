---
title: Mini-Metricon 5.5
created_at: 2011-07-28 04:58:28 -0400
layout: post
categories:
- metricon
comments: true
---

Mini-Metricon 5.5 was a one-day event, Monday, February 14, 2011, co-located with the RSA Conference, in San Francisco, CA. This page contains a description of the event, presentations, and the original CFP.

<!-- more -->

## Program
 
* Wade Baker and Alex Hutton, Verizon Business -- [Veris Data/Veris Community](/attachments/Metricon-5.5-Baker-Hutton-Veris-Community.pdf)
* Chris Eng, Veracode -- [Critical Consumption of Infosec Stats](/attachments/Metricon-5.5-Eng-Critical-Consumption-of-Infosec-Stats.pdf)
* Juhani Eronen, CERT-FI, Finnish Communications Regulatory Authority -- [On (Automated) Incident Reporting](/attachments/Metricon-5.5-Eronen-CERT-FI.pdf)
* Christian Frühwirth, Aalto University Finland and Christian Proschinger, Otmar Lendl, CERT.at, Austria -- [Name Server Log Data](/attachments/Metricon-5.5-Fruhwirth-Proschinger-Lendl-NameServer-Log-Data.pdf)
* Alfonso De Gregorio -- Software Security's Futures Plural
* Greg Shannon, CERT Carnegie Mellon and Dan Geer, In-Q-Tel and Alex Hutton, Verizon Business -- [The Security Predictions Market](/attachments/Metricon-5.5-Geer-Hutton-Shannon-Predictions-Information-Security.pdf)
* Fred Cohen, California Sciences Institute -- [An Insider is About to Go Bad](/attachments/Metricon-5.5-Cohen-Insider.pdf)
* Matthew Finifter, UC Berkeley -- [Influence of Programming Language and Framework](/attachments/Metricon-5.5-Finifter-Influence-of-Programming-Language.pdf)
* Jared Pfost, Third Defense -- [Measuring Metrics Programs](/attachments/Metricon-5.5-Pfost-Measuring-Metrics-Programs.pdf)
* Miles McQueen, Idaho National Library -- [Measurements from Vendor Notification to Public Disclosure](/attachments/Metricon-5.5-McQueen-Vendor-Notification-Disclosure.pdf)
* Chris Walsh -- [Nudges and Incentives](/attachments/Metricon-5.5-Walsh-Nudges-and-Incentives.pdf)
* John Nye -- Third Party Service Evaluation
* Fred Cohen, California Sciences Institute -- [Metrics in Digital Forensics](/attachments/Metricon-5.5-Cohen-Metrics-in-Digital-Forensics.pdf)
* Jennifer Bayuk, Stevens Institute of Technology -- [Verification versus Validation](/attachments/Metricon-5.5-Bayuk-Verification-Versus-Validation.pdf)
* Davi Ottenheimer -- Message in a Bottle (planned)

Full program [in pdf format](/attachments/Metricon-5.5-Program.pdf).

## Digest
 
Hutton began by comparing security to Kuhn&rsquo;s definition of protoscience, evidence-based practices in a given domain that do not bring the overall level of knowledge in the field forward. He described the Veris community consensus on incident definition as a step in the direction of bringing the overall level of security knowledge forward. Incident data on agent, action, asset, and attribute construct an event chain that can then be further broken down and studied, allowing for correlation across cases as well as investigative domains. The US Secret Service had contributed its case data to the Veris study. More information may be found on: https://verisframework.wiki.zoho.com 

Eng called upon security professionals to identify the storyline behind a company&rsquo;s portrayal of security metrics and to &ldquo;recognize the narrative.&rdquo; He said that every company that produces metrics for public consumption should be required to state the statistician&rsquo;s name and contact information so that challenges to conclusions may be openly debated.
 
Eronen described security incident reporting processes and discussed the factors that influence the data. While the overall incident data is going up, the details on incident types should be interpreted in the context of current events. For example, a huge spike in the number of identify theft incidents reported in a given time period could be explained as perhaps one hero who finished an investigation of a criminal syndicate and thereafter reported all the incidents as independent occurrences of identity theft.
 
Fruhwirth described the information in DNS logs and suggested ways that they could be mined to support security investigations. He suggested a color-coded system that could be employed to indicate when data from neighboring DNS servers/countries could be justifiably employed to assist in investigations. An informal poll in the room revealed that DNS data is currently not typically shared in support of security investigations.
 
De Gregorio introduced BeeWise, a testbed for a security-event futures exchange, where participants trade contracts whose payoffs are tied to future events in information security scenarios. This led to a debate on the wisdom of incentivizing people to bet on security failures as they may subsequently create them to win the bet. A discussion on the potential legal issues ensued. More information on the concept may be found here: http://blog.beewise.com
 
Shannon represented the application of prediction markets to security events, whereby security experts would be able to establish beliefs as probabilities. There was a discussion of the utility of this approach for various security-related industries, e.g., to form the basis of security product roadmaps, cybersecurity insurance prices, etc. More information on the concept may be found here: http://www.sourceconference.com/boston/speakers_2011.asp#market
 
Cohen described studies that show that insiders try to cover up their misdeeds, and suggested that an approach to detecting them would be to look for the cover-ups. He gave a few examples and discussed work in progress.
 
McQueen discussed the problem of security bugs not being fixed by vendors, and proposed a metrics-based solution wherein security testers and vendor could share a collaborative website in which progress was posted on the status of security fixes. This would create transparency on security issues that currently are sometimes obscured by conflicting claims of testers and vendor without common references to evidence.
 
Finifter described a study wherein nine teams of professional software developers were given the same programming assignment and chose different programming languages.  Vulnerabilities in the resulting software were
identified using both black box and white box testing. The study looked for evidence of differences in security that were associated with programming language or development framework.  The study yielded some preliminary results,
but not as many as desired due to the limited size of the data set.  Ideas for acquiring larger data sets and strengthening the study were debated. 
 
Pfost cited a private Pete Lindstrom blog entitled, &ldquo;Do Security Metrics Matter?&rdquo; The theme was that there are not enough examples of successful enterprise security metrics programs to make study of them valuable, and that the first and foremost concern of most programs is basic blocking and tackling of low-hanging vulnerability fruit, and consequently any holistic security metrics would be a distant and low priority goal. Pfost suggested that for metrics to be useful, a security program has to be mature enough to accumulate historical measurement correlation with incident root cause analysis.
 
Nye described his experiences as a service provider being audited by information security due diligence programs. He pointed out that some programs identified many more security issues than others, but no program found all of the vulnerabilities that he was tracking internally. He described the range of activities in due diligence reviews, with the result that only ~20% of the efforts found any vulnerabilities and the vast majority found 6% or fewer of the vulnerabilities he knew existed. The conclusion is that the state of the art in vendor due diligence is very immature.
 
Walsh recommended a book called Nudge by Thaler  and Sunstein. An example of a cyber nudge is when an advertising company tries to guess where a user lives in order to confirm user demographics, and displays the guess as if the guess was a fact that needs correcting, for example, &ldquo;Your hometown is Newton, NJ. To correct, enter your hometown here:________&rdquo;  It is called a nudge because the user is nudged into giving up information without hesitation. Walsh recommends that InfoSec use nudges as a tool, and this triggered a brainstorming session.

Cohen discussed the use of security metrics in digital forensics and pointed out that there is no industry consensus that a judge and jury can rely upon as adequate to support a claim and meet legal requirements for measurable reliability, authenticity, accuracy, precision, etc. These are currently elusive and must be constructed on a case-by-case basis.

Bayuk described the history of information security technology (same segment captured on video at: http://techchannel.att.com/play-video.cfm/2011/2/17/Science-&-Technology-Author-Series-Jennifer-Bayuk-Enterprise-Security-for-the-Executive:-Setting-the-Tone-from-the-Top ). She claimed that security implementations lose sight of security goals and compared the security literature&rsquo;s concepts of correctness versus effectiveness (e.g. NISTIR 7564) to the systems engineering literature&rsquo;s concepts of verification versus validation (e.g. www.incose.org). Correctness and verification are affirmations that designs for system security are well executed, which is different from the corresponding concepts of effectiveness and validation, as these imply that the design achieves security goals.
 
Ottenheimer &#x2013; due to a mixup in email communications, Ottenheimer did not realize he was on the agenda of the event. He was missed. Bayuk humbly apologizes for his presentation not being included in the program, and we all hope to see it at Metricon 6. 

## Program Committee

* Jennifer Bayuk
* Anton Chuvakin
* Chris Clymer
* Mike Dahn
* Alfonso De Gregorio
* Dan Geer
* Andrew Jaquith
* Ray Kaplan
* Joe Magee
* David Mortman
* Elizabeth Nichols
* John Nye
* Reijo Savola
* Russell Thomas
* Benjamin Tomhave
* Chris Walsh
* Walt Williams

## Original Call for Participation

Potential Mini-Metricon participants are expected to submit a discussion topic. Abstracts of papers, research projects, or practitioner presentations are encouraged and may result in a session allocation devoted to the submission topic. We also welcome ideas for 5-to-10-minute lightning talks on topics such as security-related data sets or key problems and challenges in security metrics. Collections of these talks are expected to result in group discussion on the submitter's topic of interest.

Submissions should be sent to `metricon5.5@securitymetrics.org` by November 12, 2010. We anticipate sending notification of proposal acceptance on or about December 1, 2010.
