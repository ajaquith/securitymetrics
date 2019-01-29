---
title: Metricon X &mdash; Agenda
author: Andrew Jaquith
created_at: 2019-01-28 00:00:00 -0400
layout: post
categories:
- metricon
comments: true
---
Metricon X will be held on March 21st and 22nd at the Stevens Institute of Technology in Jersey City, NJ.

The theme of the conference is: &ldquo;Metrics that Matters - Help Management with Decision Making and Improve Security Posture of the Organization&rdquo;

The agenda follows. [Chatham House Rules](https://www.chathamhouse.org/chatham-house-rule) apply.

<!-- more -->

## Agenda

The location of Metricon X is the Babbio Center at the Stevens Institute of Technology, Castle Point on the Hudson, Hoboken, NJ.

### Day 1: March 21, 2019

Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Session
-------------------|-----------------------
  8:30&ndash;9:00  | Continental breakfast
  9:00&ndash;9:45  | Welcome <br> Andrew Jaquith
  9:45&ndash;10:30 | [A Calibrated Severity Score for Breach Impacts](#widup) <br> Suzanne Widup, Verizon Business <br> Russell Thomas, Zions Bancorporation
 10:30&ndash;11:15 | [Defensible Metrics for Improved Network Resilience Scoring to Include Lateral Movement Detection and Susceptibility](#fractal) <br> Dean Allen, Fractal Industries
 11:15&ndash;11:30 | Break
 11:30&ndash;12:15 | [Metrics and Standards: Report From the Trenches](#walt) <br> Walt Williams, Monotype
 12:15&ndash;13:00 | Lunch
 13:00&ndash;13:30 | Birds of a Feather Discussions
 13:30&ndash;14:15 | [Metrics for Vulnerability Response](#christa) <br> Christa Anderson, Microsoft
 14:15&ndash;15:00 | [Integrating Cyber Insurance Into Your Cyber Security Arsenal](#mokhov) <br> Serguei Mokhov, Concordia University
 15:00&ndash;15:15 | Break
 15:15&ndash;16:00 | [Metrics that Matter: Help Management Improve Decision-Making and Improve the Organization&rsquo;s Security Posture](#imf) <br> Sanaz Sadoughi, International Monetary Fund
 16:00&ndash;16:45 | [Communicating Cyber Risk to the Board of Directors](#wade) <br> Wade Baker, Cyentia Institute
 16:45&ndash;17:30 | Break
 17:30&ndash; | Conviviality, conversation, chow and not a hint of _covfefe_

Breakfast and lunch will be provided. Dinner Thursday night will be self-funded at a local restaurant.


### Day 2: March 22, 2019

Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Session
-------------------|-----------------------
  8:30&ndash;9:00  | Continental breakfast 
  9:00&ndash;9:45  | [Why Does Application Security Take So Long?](#eng) <br> Chris Eng, Veracode <br> Jay Jacobs, Cyentia Institute
  9:45&ndash;10:30 | [Assigning Probability to Cybersecurity Risk](#jen) <br> Jennifer Bayuk, Decision Framework Systems
 10:30&ndash;10:45 | Break
 10:45&ndash;11:30 | [Metrics and Standards: Can Data Science Help Understand Privileged Access?](#panaseer) <br> Mike McIntire, Panaseer
 11:30&ndash;13:00 | [Lunch and Open Mic (Metrics Freestyle Rapping)](#mic)
 13:00&ndash;13:45 | [If KPIs are KRIs, Then We&lsquo;re Measuring It All Wrong](#alex) <br> Alex Hutton, ne&rsquo;er-do-well
 13:45&ndash;14:00 | Break
 14:00&ndash;14:45 | [Metrics for Organizational Cybersecurity Practices](#bcd) <br> Benjamin Charles Dean, Columbia University
 14:45&ndash;15:30 | [Tactical Metrics Don&rsquo;t Lead to Strategic Investments](#abt) <br> Brian Gay, Northramp LLC <br> Sean Owen, Abt Associates
 15:30&ndash;15:45 | Closing <br> Andrew Jaquith

Breakfast and lunch will be provided.

## Logistics

### Venue

Stevens Institute of Technology, Babbio Center, Castle Point on the Hudson, Hoboken, NJ

### Directions

To drive, see the Stevens Institue [official driving directions](https://www.stevens.edu/visit/driving-directions-stevens). Parking deck entrance on Sinatra Drive is behind the Babbio building. Take the garage elevator to the lobby.

For public transit, see the Stevens Institute [official public transportation directions](https://www.stevens.edu/visit/public-transportation). From Hoboken Station, walk 4 blocks from campus along the river on Sinatra Drive. Turn left on 4th Street, right into Stevens Park, abd continue onto River Street. Babbio Center is on the right.

### Accommodations

Nearby hotels include: 

- The [W in Hoboken](https://www.marriott.com/hotels/travel/ewrhb-w-hoboken/) is within walking distance of Stevens
- The [Westin](https://www.marriott.com/hotels/travel/ewrwj-the-westin-jersey-city-newport/), [Marriott Courtyard](https://www.marriott.com/hotels/travel/ewrnw-courtyard-jersey-city-newport/), and [Hyatt](https://www.hyatt.com/en-US/hotel/new-jersey/hyatt-regency-jersey-city-on-the-hudson/newjp) in Jersey City are a PATH Station or two away (Newport or Exchange Place)

## Session Descriptions

### <a name="widup"></a>A Calibrated Severity Score for Breach Impacts
_Presenters_: Suzanne Widup, Verizon Business and Russell Thomas, Zions Bancorporation

_Abstract_: We present a method for scoring the severity of information security breaches based on observable evidence (“Indicators of Impact”) associated with post-breach activity and consequences. Our data is 3,620 US breach episodes recorded in the VERIS Community Database Project. Each breach episode has been hand-coded with one or more publicly reported Indicators of Impact (36 categories), e.g. “Consent decree”, “Executive churn”, “Language in 8K or 10K [report to the SEC]”, and “Business relationship ended”. Ideally, we want to use these Indicators of Impact help us estimate a probabilistic cost model for each breach episode. As a steppingstone toward this goal, we have 1) developed an interval-scale severity scoring system; and 2) calibrated scoring system by the estimating the relative contribution of each Indicator of Impact as well as their functional interactions. The resulting severity scores should be useful to practitioners and policy makers for those decisions that can be made based on categorical distinctions – i.e. “bigger than a bread box”. We will also share lessons we have learned regarding how to make quantitative inferences from sparse, incomplete, and perhaps erroneous open source data.

### <a name="fractal"></a>Evolving Lateral Movement Detection Metrics: Deterministic Golden and Silver Ticket Attack Detection
_Presenter_: Dean Allen, Fractal Industries

_Abstract_: Traditional efforts to define metrics to describe the resilience of networks against different attacks have been plagued by a lack of generality, challenges with data availability or quality, and narrow effectiveness around specific types of attacks or vulnerabilities.  We review an extensible approach to compiling both real and synthetic data from multiple sources, propose a generalized scoring methodology using graph-based methods, show a complementary and common approach to attack path determination and planning, apply the technique to several representative test networks, demonstrate the scaling of the methodology to larger paradigmatic networks, and explore how specific detection/response capabilities can be used to reduce the overall state space which must be considered during event set generation.  The talk includes a demonstration of detecting complex credential compromise attacks (e.g. Golden Ticket, Silver Ticket, DC Sync and DC Shadow) and uses the presence of such detections on the same reference networks to demonstrate the impact on network resilience scores due to the increased confidence in authentication which constrains post-exploitation attack paths considered in the overall scoring methodology.

### <a name="walt"></a>Metrics and Standards: Report From the Trenches
_Presenter_: Walt Williams, Monotype

_Abstract_: This presentation will provide a critical review of the state of compliance frameworks and information security metrics, as well as a discussion on what success within each looks like and if it is worth the journey to get to that destination.

### <a name="christa"></a>Metrics for Vulnerability Response
_Presenter_: Christa Anderson, Microsoft

_Abstract_: I use data heavily in my role to keep tabs on the security landscape. I have used security metrics to help other engineering teams determine the effectiveness of their proactive work, to support engineering groups in determining risk and keeping to SLAs for vulnerability response, and inform vulnerability response staffing decisions. My current area of exploration is how to apply text analytics to public and private data sources to gain better insight into the threat landscape.

### <a name="mokhov"></a>Integrating Cyber Insurance Into Your Cyber Security Arsenal
_Presenter_: Serguei Mokhov, Concordia University

_Abstract_: Regardless of how the cyber-interloper gets into your network, the next step taken by your IT staff can determine the severity and consequences of the intrusion. It is generally acknowledged that better security and training are needed since the number of cyber attackers continue to overtake cyber defenders, it is becoming more and more difficult to improve the situation because attackers are looking for one flaw in a system’s defenses while defenders need to find and fix them all. As IT practitioners we can take all the precautions necessary for a safe and secure environment and still fail to keep unwanted intruders out. In these instances a new trend of insurance has slowly developed. This paper looks at the role of cyber insurance and its place in security environments.

### <a name="imf"></a>Metrics that Matter: Help Management Improve Decision-Making and Improve the Organization's Security Posture
_Presenter_: Sanaz Sadoughi, International Monetary Fund

_Abstract_: Information Security Metrics present a holistic view of the information security posture of the organization. it is critical to analyze and aggregate "metrics that matter" to provide an overall security risk scorecard to the Management to help them with decision making. This presentation explains how metrics were implemented at the International Monetary Fund to drive action and demonstrate return on investment.

### <a name="wade"></a>Communicating Cyber Risk to the Board of Directors
_Presenter_: Wade Baker, Cyentia Institute

_Abstract_: For the last two years, I’ve been doing research into communicating cyber risk to the Board of Directors. Metrics are a major part of this. While this research has been published (https://go.focal-point.com/cyber-balance-sheet-report), I think summarizing findings for and hearing feedback from a room of experts would make for a strong session. I’ve also had the opportunity to implement this research in at least one major organizations and can share some lessons learned from that experience.

### <a name="eng"></a>Why Does Application Security Take So Long?
_Presenters_: Chris Eng, Veracode and Jay Jacobs, Cyentia Institute

_Abstract_:  Why does it take so long to fix insecure code? We pair new data about the lifecycle of a vulnerability with learnings from application security programs to answer this perennial question. Our data comprises 700,000 individual assessments and a population of over 22 million unique security findings over a 12-month period, easily the largest application security data set of its size. Chris will discuss outcomes of this study with a particular focus on identifying the factors that correlate most strongly (or not at all!) with fix rates. He’ll also provide data-backed insights into the contentious question of whether DevOps is a boon or a burden for security. Jay will do a deep dive into the analysis process and some of the techniques, such as survival analysis, he applied to the data set in order to measure and visualize the outcomes we were interested in. We’ll also describe how we identified and handled anomalous customer data that would have otherwise produced skewed representations of developer behaviors.

### <a name="jen"></a>Assigning Probability to Cybersecurity Risk
_Presenter_: Jennifer Bayuk, Decision Framework Systems

_Abstract_: The session describes a cybersecurity decision support framework using risk management methodology developed in the professional practice of operational risk management. Operational risk (“ops risk”) is inherently low on quantitative measures in comparison with its more mature risk industry counterparts: credit risk and market risk. However, in the past few decades, professionals in the field have developed systematic data collection methods, control evaluation criteria, and risk analysis techniques that are directly applicable to cybersecurity decision support. Cybersecurity risk managers have gained immediate value from adopting these techniques. An ops risk framework allows cybersecurity risk to be analyzed in the context of both industry standards and organizational attributes. It provides precise definitions for information relevant to decisions and a methodology for using that information in the context of cybersecurity risk management. This session will provide an overview of how an ops risk framework helps organizations with cyber risk identification, classification, quantification, and monitoring.

### <a name="panaseer"></a>Metrics and Standards: Can Data Science Help Understand Privileged Access?
_Presenter_: Mike McIntire, Panaseer

_Abstract_: Privileged access is increasingly understood as a challenging problem for organizations to solve. Even Board members understand what privileges "superusers" possess and the potential impact they can have on critical business systems — for good or ill. As one CISO put it, privileged access is “at the intersection of human behavior and technical controls, and often brings IT and security into conflict”. Tools for privileged access management (PAM) exist to manage privileged access, but installing a tool is just the beginning. Once you’ve identified how people should be accessing assets, how do you clean up the tangled web of permissions that exists in your organization, without hindering by business as usual? In this talk, we’ll reframe PAM as a data science problem and explore what insight you can glean from your data, about where the problem lies and how to fix it.

### <a name="mic"></a>Lunch and Open Mic (Metrics Freestyle Rapping)
_Abstract_: From 11:30 through lunch, we will be providing an open mic for on the spot or improv presentations, questions for the community, rants (within reason) and other discussion topics.

### <a name="alex"></a>If KPIs are KRIs, Then We&lsquo;re Measuring It All Wrong
_Presenter_: Alex Hutton, ne'er-do-well

_Abstract_: What are we measuring, what are we auditing?  If the performance of our security teams are of tantamount performance, then they become our KRIs.  This talk discusses how we can measure the human performance elements of risk reduction.

### <a name="bcd"></a>Metrics for Organizational Cybersecurity Practices
_Presenter_: Benjamin Charles Dean, Columbia University

_Abstract_: To be supplied, based on OECD paper.

### <a name="abt"></a>Tactical Metrics Don&rsquo;t Lead to Strategic Investments
_Presenters_: Brian Gay, Northramp LLC and Sean Owen, Abt Associates

_Abstract_: Traditional cybersecurity metrics programs are overloaded with streams of data that focus on tactical decisions that don't allow senior leadership to understand how to make smart risk-focused decisions. In addition, industry has developed tools to reflect this same desire and cater to a highly technical audience primarily focused on self-measurement. In this session, we are proposing a different approach which has been successful at Abt Associates that focuses on a metrics program for non-technical decision makers and risk owners using uncomplicated metrics that are focused on communicating risk and guiding investments.
