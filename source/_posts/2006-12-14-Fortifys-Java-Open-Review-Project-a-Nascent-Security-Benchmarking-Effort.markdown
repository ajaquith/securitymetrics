---
title: Fortify’s Java Open Review Project&#58; a Nascent Security Benchmarking Effort?
author: Andrew Jaquith
created_at: 2006-12-14 13:54:33 -0500
layout: post
categories: 
- security
- metrics
comments: true
---

Today I stumbled upon Fortify&rsquo;s [Java Open Review Project](http://opensource.fortifysoftware.com/welcome.html), whose goal is to count security defects in popular Java projects.

I&rsquo;d like to tip my cap to Brian Chess and the folks at Fortify for this. It&rsquo;s not quite a proper benchmark, but it is very interesting indeed. I&rsquo;d like to ask him (or others associated with the project) for his perspective on the project &#x2014; how it came about, where it&rsquo;s going, and what the feedback has been like.

Also &#x2014; and Brian, feel free to file this in the &ldquo;unsolicited advice&rdquo; drawer &#x2014; I think Fortify could turn the crank on this a little and get some really interesting insights. For example:

* It would be great to have a bivariate plot showing size of code base (KLOC) versus the defect rate
* Maybe the plot divides itself into a 2x2 grid (&ldquo;complex, hairy, ugly, big&rdquo; v. &ldquo;simple and secure&rdquo; v &ldquo;large-scale engineered&rdquo; v. &ldquo;small and sloppy&rdquo;)
* Would like to see a friendlier format for defects (defects/KLOC is ok, but defects per million might be better)
* I&rsquo;d love to see Coverity, Secure Software, Ounce Labs, Klocwork and others run their tools on the same code bases and see what they find

But these are nits. Overall, I am a big fan of public data. Nice work!

I nominate Brian to present a prettified version of this work at [mini-Metricon](http://securitymetrics.org) at RSA 2007.
