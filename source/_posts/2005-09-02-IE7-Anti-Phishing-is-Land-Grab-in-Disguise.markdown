---
title: IE7 Anti-Phishing is Land-Grab in Disguise?
author: Andrew Jaquith
created_at: 2005-09-02 10:03:51 -0400
layout: post
categories: 
- security
- Windows
comments: true
---

Have you been following Microsoft's plans for IE7? I have, and a blog post I read about their [anti-phishing plans](http://blogs.msdn.com/ie/archive/2005/08/31/458663.aspx) just about made me spit out my coffee. I'm going to do a research note for Yankee Group (my employer) on this soon, but in the interim I thought I'd pass this along.

The gist of it is that the IE browser will keep a cache of "trusted sites", and if you browse to a site that's not in the cache your browser will phone Microsoft and ask. Pretty scary stuff, in the sense that a monopolist (MS) will be judging who's trustworthy (or not). Entirely proprietary, and not peer-reviewed as a standard or anything. At least digital certificates have a standard real-time protocol for identifying revoked certificates: OCSP. (Not that people use it much.)

Oh, and check out this excerpt from the [IE7 privacy statement](http://www.microsoft.com/windowsvista/privacy/ieprivacy_pr7.mspx) about Phishing Filter:

> Phishing Filter can warn you if the Web site you are visiting might be impersonating a trusted Web site. Phishing Filter does this by first checking the address of the Web site you are visiting against a list of Web site addresses stored on your computer that have been reported to Microsoft as legitimate ("legitimate list"). The first time you attempt to visit a Web site that is not on the legitimate list, you will be asked whether you would like to have Phishing Filter automatically check all Web sites you visit. If you opt in, addresses not on the legitimate list will be sent to Microsoft and checked against a frequently updated list of Web sites that have been reported to Microsoft as phishing, suspicious, or legitimate Web sites. You may also choose to use Phishing Filter manually to verify individual sites.
>
> When you use Phishing Filter to check Web sites automatically or manually, the address of the Web site you are visiting will be sent to Microsoft, together with some standard information from your computer such as IP address, browser type, and Phishing Filter version number. To help protect your privacy, the address information sent to Microsoft is encrypted using SSL and limited to the domain and path of the web site. Other information that may be associated with the address, such as search terms, data you entered in forms, or cookies, will not be sent.
>
> For example, if you visited the MSN search web site at http://search.msn.com and entered "MySecret" as the search term, instead of sending the full address "http://search.msn.com/results.aspx?q=MySecret&FORM=QBHP", Phishing Filter would remove the search term and only send "http://search.msn.com/results.aspx".
>
> Anonymous statistics about your usage of Phishing Filter will also be sent to Microsoft such as the time and total number of Web sites browsed since an address was sent to Microsoft for analysis. This information, along with the information described above, will be used to analyze the performance and improve the quality of the Phishing Filter service. Microsoft will not use the information it receives to personally identify you.

This is a pretty large land grab, and nobody seems to have grasped it yet. Among other things they'll be able to track where people surf (by IP address and some other "standard information", but "without personally identifying you"). All of this in the guise of "safety." The cheek -- no wonder they didn't buy Claria. They won't need to.

Of course, I could just be paranoid.
