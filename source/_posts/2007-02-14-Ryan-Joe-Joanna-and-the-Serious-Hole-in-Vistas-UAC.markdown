---
title: Ryan, Joe, Joanna, and the “Serious Hole” in Vista's UAC
author: Andrew Jaquith
created_at: 2007-02-14 11:21:22 -0500
layout: post
categories: 
- security
- Windows
- Mac
comments: true
---
ZDNet's Ryan Naraine [blogs about Joanna Rutkowska's blog post](http://blogs.zdnet.com/security/?p=29) on Vista security. Joanna pointed out that Vista's Mandatory Integrity Control feature [has a few implementation flaws](http://theinvisiblethings.blogspot.com/2007/02/running-vista-every-day.html) and seems to default to prompting for admin credentials whenever setup apps run. EWeek's Joe Wilcox [asked me to comment on the imbroglio](http://www.microsoft-watch.com/content/vista/gaging_vistas_integrity.html) which I was happy to do. I also posted a lengthy comment on Joe's story, which for posterity I reprint here.

<!--more-->

### Reprinted from eWeek posting
>One point of clarification about Joanna's comment on setup programs needing admin permission. The issue is that Vista doesn't necessarily know what permissions the files in an application might need. That's because legacy setup programs are just big executables (EXEs). InstallShield, for example, will take a developer's application and jam it into a big program. To Vista, the EXE is opaque, a blob. It can't know that the files the setup program wants to install need to go into Windows System32, for example — which would need elevated privileges to install. Or, the files could be 100% local, and not need extra privileges to install. So, to be safe, Vista takes the position that it will need admin permissions to run.
>
> This behavior is basically Microsoft needing to deal with how older setup applications have always worked since the early days of Windows. (Vista *does* have a newer format that allows permissions to be explicitly defined ahead of time, but few applications use this... today.) Other operating systems do things differently, which was the point of my comments to Joe.
>
> Example: OS X has two installation methods: drag-install or via a setup package. The drag-install method is what you see in 75% of the apps out there: you mount the disk image and simply drag the application icon to where you want it. Because the icon is actually a directory, all of its contents come with it. Assuming you don't drag the application to a sensitive directory, you won't get prompted. Personally, I love this feature and think it's incredibly intuitive and natural — why "run a setup program" when you can simply move the app to where you want it?
>
> The second OS X method involves running an actual setup program. In this case, the installer inspects what is called a Bill of Materials (BOM) that specifies exactly what files should be installed, and what privileges they require. The installer uses the BOM to determine whether it needs elevated privilges to install the app. Apple's BOM method [isn't perfect](http://projects.info-pull.com/moab/MOAB-05-01-2007.html), but it works quite well for the most part.
>
> In UNIX, the prevailing installer methods are either simply file copies (like when you compile an application and type "make install") or a package format like Debian's APT or Red Hat's RPM, which have "manifests" in them enumerating what files need to be installed. In these cases, the installers either will make a determination that you need (or don't need) elevated privileges, or will simply fail to install unless you elevate.

My point with this lengthy post isn't to suggest that Linux or Mac are better, although I do believe in this case they've had the benefit of learning from the legacy Windows installer experiences. Vista's [next-generation technologies](http://msdn2.microsoft.com/en-us/library/aa480150.aspx) for this are promising, but for now we've got a whole boatload of legacy stuff to deal with. Hence Joanna's objection.
