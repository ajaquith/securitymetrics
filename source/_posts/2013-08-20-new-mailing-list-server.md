---
title: New Mailing List Server
author: Andrew Jaquith
created_at: 2013-08-20 18:00:00 -0500
layout: post
categories:
- news
comments: true
---
I am pleased to announce that securitymetrics.org has moved to a new virtual hosting system. The primary benefit is that we have a new mailing list server that uses Mailman, rather than Majordomo. Other changes include:

<!-- More -->

* Members will receive copies of their own posts (!). The #1 question I used to get was, "was my post actually sent to the list?" That is because Majordomo didn't send a copy to the sender. Mailman is much better about this.
* We now have a members-only [mailing list archive](http://securitymetrics.org:8081/mailman/private/discuss/). It is password-protected; you will log in with your email address and mailing list password. The password will be sent out to you when you enroll with the new list server, and every 30 days thereafter.
* The mail server's DNS includes resource records for SPF and DKIM signing. If you validate SPF or DKIM signatures, you can be sure that emails from securitymetrics.org actually came from us… assuming our hosting provider's DNS servers aren't hijacked.
* We validate SPF for inbound email. If someone sending mail to the list isn't authorized to send the email according to their DNS SPF record, the message is rejected.
* DKIM signature validation will be coming for inbound email as well at a later point.
* SSL encryption for the mailing list website, and archives, will be coming soon.

The new [mailing list information page](http://securitymetrics.org:8081/mailman/listinfo/discuss) includes a subscription request form. You can also self-subscribe using this page. Note that David Mortman and I will continue to vet prospective members when they apply.

There are likely to be a few bumps in the road, which we'll handle with humor and grace.