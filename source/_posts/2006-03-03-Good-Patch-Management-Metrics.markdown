---
title: Good Patch Management Metrics
author: Andrew Jaquith
created_at: 2006-03-03 23:12:13 -0500
layout: post
categories: 
- security
- metrics
comments: true
---

Earlier today I stumbled across the NIST [patch management pub](http://csrc.nist.gov/publications/nistpubs/800-40-Ver2/SP800-40v2.pdf); it was released in November 2005.

There's lots of goodness in this document. What I like best are the recommended program metrics, which I reprint here, lightly edited:

<!--more-->

<table class="table table-striped"><thead><tr><th>Metric Name</th><th>Units</th><th>Maturity Level</th></tr></thead>
<tr><td>Vulnerability ratio</td><td>Vulnerabilities/Host</td><td>3</td></tr>
<tr><td>Unapplied patch ratio</td><td>Patches/Host</td><td>3</td></tr>
<tr><td>Network services ratio</td><td>Network Services/Host</td><td>3</td></tr>
<tr><td>Response time for vulnerability and patch identification (triage processes)</td><td>Time</td><td>4</td></tr>
<tr><td>Patch response time (critical)*</td><td>Time</td><td>4</td></tr>
<tr><td>Patch response time (noncritical)*</td><td>Time</td><td>4</td></tr>
<tr><td>Emergency configuration response time (for zero-days)</td><td>Time</td><td>4</td></tr>
<tr><td>Cost of patch vulnerability group</td><td>Money (labor)</td><td>5</td></tr>
<tr><td>Cost of system administration support</td><td>Money (labor)</td><td>5</td></tr>
<tr><td>Cost of software</td><td>Money</td><td>5</td></tr>
<tr><td>Cost of program failures</td><td>Money</td><td>5</td></tr>
</table>

*In my own work, I've referred to these metrics as "patch latency".

Now, there are certainly folks who will state that patching doesn't matter much. They may be right. _But if you view patching as a discipline you need to get right regardless,_ I would suggest that these are pretty good metrics.

__Update 1__: Interestingly, [our friends at Microsoft](http://www.microsoft.com/technet/community/tnradio/rdotrns01.mspx), who (ahem) have some experience patching systems in large, complex environments, add these metrics to the mix:

> Two of the key business metrics that we use to measure our success is the number of servers that are patched outside of their maintenance windows. For example, if we apply a patch outside of a server&rsquo;s pre-defined maintenance window, that&rsquo;s going to be a ding against our success. Another metric is going to be the number of servers patched by deadline.

__Update 2__: We've had quite a bit of chatter about this on the securitymetrics.org mailing list. The inestimable Fred Cohen stated that some of these metrics are too hard to gather, or may not tell an enterprise much when taken in aggregate. He's right, in part. But I would suggest that the reason, say, the "cost of program failures" is rated a 5 on the process maturity scale _is precisely because it is difficult to measure._ Indeed, the numerical process maturity rating could be taken as a proxy for measurement difficulty. As for his question about the relative value of average measurements taken in aggregate (across multiple contexts, business units and threat environments) &#x2014; that is why cross-sectional analyses exist.

Good stuff.
