---
title: Good Metrics
author: Andrew Jaquith
created_at: 2006-10-15 20:48:35 -0400
layout: post
categories: 
- security
- metrics
- books
comments: true
---

_Note from Andrew Jaquith: this essay is adapted from __Chapter 2: Defining Security Metrics__ of my forthcoming book, [Security Metrics: Replacing Fear, Uncertainty and Doubt](http://www.amazon.com/Security-Metrics-Replacing-Uncertainty-Doubt/dp/0321349989/sr=8-1/qid=1160958409/ref=sr_1_1/102-6105084-9603316?ie=UTF8&s=books) from Addison-Wesley and Symantec Press, expected in early 2007. Small portions of this appeared in __The Future Belongs to the Quants__, an IEEE article co-authored by me, Dan Geer and Kevin Soo Hoo._

Information security is one of the few management disciplines that has yet to submit itself to serious analytic scrutiny. In security, business leaders ask:

<!--more-->

* How secure am I?  
* Am I better off than I was this time last year?  
* How do I compare with my peers?  
* Am I spending the right amount of money?  
* What are my risk transfer options?  

Were we talking about some other field, we could look to prior art and industry-specific knowledge &#x2014; for example, derivatives pricing in vertical industries like finance, health and safety in pharmaceutical manufacture, and reliability in power distribution. Likewise, most enterprises&rsquo; horizontal functions &#x2014; human resources, finance, manufacturing, supply chain, call center, e-commerce and operations  &#x2014; measure their performance by tracking a handful of key performance indicators. These indicators include statistics such as call volumes per associate, inventory turns, customer conversion percentages, manufacturing defect rates and employee turnover.  
 
<table class="table table-striped"><thead><tr><th>Discipline or Vertical Market</th><th>Key Metrics</th></tr></thead>
<tr><td>Freight</td><td>Freight cost per mile  
 
 Load factor</td></tr>
<tr><td>Warehousing</td><td>Cost per square foot   
 
 Inventory turns</td></tr>
<tr><td>E-Commerce</td><td>Website conversion rate</td></tr>
<tr><td>Cable and satellite</td><td>Subscription cost-to-acquire</td></tr>
</table>
 
These indicators all share two characteristics. First, they are simple to explain and straightforward to calculate. Their transparency facilitates adoption by management. The second characteristic these indicators share is that they readily lend themselves to benchmarking.

On occasion, enterprises will share them as part of a management consulting survey, and will attempt to compare their own key indicators against those of other companies they know. In so doing, they gain insights about their own performance relative to peers and other industries. A quick glance at the _Harvard Business Review_ or _McKinsey Quarterly_ confirms that benchmarking in enterprises continues to be a healthy, vibrant, established pillar of modern management.

Information security has no equivalent of _McKinsey Quarterly_, nor of the time-honored tradition of benchmarking organizational performance. Analytical rigor receives little attention, while nebulous, non-quantitative mantras rule: &ldquo;defense in depth&rdquo;, &ldquo;security is a process&rdquo; and &ldquo;there is no security by obscurity&rdquo; to name a few. What numbers do exist, such as those provided in vulnerability and threat reports from Symantec, Webroot, Qualys and others, provide macro-level detail about the prevalence of malware but little else that enterprises can use to assess their effectiveness comparatively against others.  Numbers provided by anti-malware, vulnerability management systems, and SIM/SEM systems certainly  add value &#x2014; but to date, no entity has yet attempted to aggregate and compare these data across enterprises. 
 
So what makes a good metric, and what should we measure? Let&rsquo;s address the first part of that question in this post &#x2014; we will address the second in the subsequent one. 

### &ldquo;Metric&rdquo; defined 
I was curious to see if I could find a consensus definition of what a &ldquo;metric&rdquo; is.  According to _Oxford&rsquo;s American Dictionary_, a metric is &ldquo;a system or standard of measurement.&rdquo; In mathematics and physics, it is &ldquo;a binary function of a topological space that gives, for any two points of the space, a value equal to the distance between them, or to a value treated as analogous to distance for the purpose of analysis.&rdquo;
 
Specific to IT metrics, Maizlitsh and Handler further discriminate between metrics used for quantifying value versus those used to measure performance: 
 
> There are two fundamental types of metrics that must be considered before commencing with IT portfolio management: value delivery and process improvement. Value delivery consists  of cost reduction, increase in revenue, increase in productivity, reduction of cycle time, and reduction in downside risk. Process improvement refers to improvements in the IT portfolio management process. While the metrics are similar and in many ways interrelated, process metrics focus on... effectiveness. Is the process improving? Is the process providing perceived value? Is the process expanding in scope? More and more, leaders are looking into the metrics microscope to eliminate non-value-added activity and focus on value-added activity.
>
> -- B. Maizlitsh and R. Handler, &ldquo;IT Portfolio Management: Step By Step&rdquo;, p.53. 

These two definitions certainly help, but like most definitions it grants us a rather wide scope for discussion. Just about anything that quantifies a problem space and results in a value could be considered a metric. Perhaps we ought to re-focus the discussion on the goals of what a metric should help an organization do. The primary goal of metrics is to quantify data, thus yielding insight. Metrics do this by: 

* Helping an analyst diagnose a particular subject area, or understand its performance 
* Quantifying particular characteristics of the chosen subject area 
* Facilitating &ldquo;before-and-after,&rdquo; &ldquo;what-if&rdquo; and &ldquo;why/why not&rdquo; inquiries  
* Focusing discussion about the metrics themselves on causes, means and outcomes rather than on methodologies used to derive them 

As an analyst, I&rsquo;m keenly interested in making sure that persons examining a &ldquo;metric&rdquo; for the first time should see it for what it is &#x2014; a standard of measurement &#x2014; rather than as something confusing that prompts a dissection of the measurer&rsquo;s methods.

Metrics suffer when readers perceive them to be vague. For example, I have seen a widely publicized paper that proposes benchmark security effectiveness, but in its key graphical exhibit, the author&rsquo;s metric is described only as a &ldquo;benchmark&rdquo; with a scale from 1 to 5; it does not contain a unit of measure or further explanation. The authors undoubtedly intended to spark discussion around the causes and drivers for the metric &#x2014; but the exhibit instead makes readers scratch their heads about what the metric is and how it was defined.

To keep organizations from trapping themselves in tar-pits of hand-wavery and vagueness, metrics should be clear and unambiguous. Specifically, good metrics should be _consistently measured_, _cheap to gather_, be expressed as a _number or percentage_, and expressed using _at least one unit of measure_. A &ldquo;good metric&rdquo; should also ideally be _contextually specific_.

### Consistently measured 
Metrics confer credibility when they can be measured in a consistent way. Different people should be able to apply the method to the same data set and come up with equivalent answers. &ldquo;Metrics&rdquo; that depend on the subjective judgments of those ever-so-reliable creatures, humans, aren&rsquo;t metrics at all. They&rsquo;re ratings. The litmus test is simple: if you asked two different persons the same measurement question, would they 
produce the same answer?

Metrics will either be computed by hand or by machine. In the former case, one can ensure consistency by documenting the measurement process in a transparent and clear way. When people understand how and why to do something, they tend to do it in a more consistent fashion. Keeping measurement questions short and factual (yes/no oriented) helps, too.

Even better than manual data sources, however, are automated ones. One programmed, machines will faithfully execute their instructions as provided by their programmers. They will execute their tasks the same way each time, without mistakes. 

### Cheap to gather 
Every metric takes time to compute. All metrics start their lives as raw source data, then&#x2014; through the magic of computation &#x2014; become something more insightful. That means that somebody or something needs to obtain the data from a source, massage and transform the data as needed, and compute and format the results. For some metrics, these steps collapse into a single, fast process; a simple SQL statement or API method call delivers the goods. But other metrics require screen-scraping, phone calls, and  spreadsheet hackery. Inefficient methods of gathering data cost organizations valuable time that they could have put to better use on analysis.

I firmly believe that metrics ought to be computed often. Metrics with short sampling intervals help companies analyze their security effectiveness on a day-to-day and week-to-week basis rather than through a yearly rear-view mirror. It stands to reason that if a metric needs to be frequently computed, the source data for the metric should be cheap to gather in terms of time or money.

Before-and-after comparisons aren&rsquo;t something organizations should be forced to do once a year because of inefficient data gathering. For a given metric, ask yourself: could you compute it once a week? How about every day? If not, you might want to re-consider the metric &#x2014; or consider methods of speeding up the measurement process. As with the point about consistency, the criterion that good metrics ought to be cheap to gather favors automation. 

### Expressed as a number or percentage 
Good metrics should be expressed as a number or percentage. By &ldquo;expressed as a number,&rdquo; I mean a cardinal number &#x2014; something that counts how many of something there are &#x2014; rather than an ordinal number that denotes which position that something is in.

For example, &ldquo;number of application security defects&rdquo; evaluates to a cardinal number that can be counted. By contrast, high-medium-low ratings that evaluate to 1, 2 and 3 are ordinal numbers that grade relative performance scores but don&rsquo;t count anything.

Metrics that aren&rsquo;t expressed as numbers don&rsquo;t qualify as good metrics. &ldquo;Traffic lights&rdquo; (red-yellow-green) are not metrics at all. They contain neither a unit of measure nor a numerical scale. 

### Expressed using at least one unit of measure 
Good metrics should evaluate to a number. They should also contain at least one associated unit of measure that characterizes the things being counted. For example, the metric &ldquo;number of application security defects&rdquo; expresses one unit of measure, namely defects. By using a unit of measure, the analyst knows how to consistently express results of a measurement process that looks for defects.

My definition of a good metric holds that it&rsquo;s often better to use more than a single unit of measure. The single unit of measure for &ldquo;number of application security defects&rdquo; metric makes it hard to compare dissimilar applications on an apples-to-apples basis. But if one unit of measure is good, two is better. For example, a better metric might be &ldquo;number of application security defects per 1000 lines of code,&rdquo; which provides two units of measure. By incorporating a second dimension (dividing by KLOC), we have 
constructed a metric that can be used for benchmarking. 

### Contextually specific 
Good metrics mean something to the persons looking at them: they shed light on an underperforming part of the infrastructure under their control, chronicle continuous improvement or demonstrate the value their people and processes bring to the organization. Although specificity is not required for all good metrics, it helps to keep each of them scoped in such a way that a reader could receive enough insight to make 
decisions based on the results.

&ldquo;Contextually specific&rdquo; is a shorthand way of saying that a good metric ought to pass the &ldquo;smell test.&rdquo; You don&rsquo;t want managers wrinkling their noses and asking belligerent questions like &ldquo;and this helps me exactly... how?&rdquo;

For example, defining an &ldquo;average number of attacks&rdquo; metric for an entire organization doesn&rsquo;t help anybody do their jobs better &#x2014; unless the indirect goal is an increased security budget. But scoping the same metric down to the level of a particular business unit&rsquo;s e-commerce servers can help much more, because they can make specific decisions about security provisioning and staffing for these servers based on the data. 

### Wrap-up
Well, that's it for this post. Next time, we will consider what makes a _bad_ metric. I reserve special venom for ALE, so you won't want to miss it.
