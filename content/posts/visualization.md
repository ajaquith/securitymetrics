---
title: Visualization
author: Donal
date: 2007-01-25 16:27:44 -0500
categories:
- visualization
---
This page catalogs techniques for representing security data visually. Clear, cogent, meaningful visual displays of information enable the audience to rapidy grasp the essence of security issues and trends. Below are some examplars, many of which come from _outside_ the world of information security. ( [Wikipedia](http://en.wikipedia.org) definition: [Information Visualization](http://en.wikipedia.org/wiki/Information_visualization) )

# Charts and Graphs

* __Summarizing Clinical Psychiatric Data__ (November 1997) - [Edward Tufte](http://www.edwardtufte.com) popularized a highly efficient charting technique called "small multiples." The technique essentially graphs multiple items together, by compressing identically-scaled and labeled graphs onto a single chart. Tufte's [article on visualizing clinical patient data](http://www.edwardtufte.com/tufte/psysvcs_p1) shows the small-multiple technique in action. With a little imagination it is easy to see how this can be applied to security. As an example, see Jaquith's [Application Security: Not All Are Created Equal](http://atstake.com/research/reports/acrobat/atstake_app_unequal.pdf) paper.

##  Graphs and Network Visualization

* NetworkViz [http://networkviz.sourceforge.net/](http://networkviz.sourceforge.net/) 
* OpenQVIS  [http://openqvis.sourceforge.net/](http://openqvis.sourceforge.net/) 
* Large Graph Layout [http://bioinformatics.icmb.utexas.edu/lgl/](http://bioinformatics.icmb.utexas.edu/lgl/) 
* GINY [http://csbi.sourceforge.net/](http://csbi.sourceforge.net/) 
* JUNG [http://jung.sourceforge.net/](http://jung.sourceforge.net/) 
* Rules to Make a Bad Graphic, Juan C. D&uuml;rsteler – Exactly what [the title](http://www.infovis.net/E-zine/2002/num_109.htm) says.

## Security Dashboards

* __InfoVis.net__. Juan C. D&uuml;rsteler has put together a [short list of digital dashboard examples](http://www.infovis.net/printMag.php?num=143&lang=2) (screencaps). None of these are security-specific.

## Small Multiples

* __The New York Times Election Graphics__. InfoWorld columnist and blogger Jon Udell scanned in a stunning chart {{< figure src="/images/electoral.jpg" >}} that displays the "small multiple" technique plus some extremely creative "geographic" visualization. This appeared recently in the NYT's print edition as part of the 2004 US election coverage. Jon believes his scan falls into the realm of fair use. We hope so too.

## Pattern Visualization

* __Google News Graph__, Michal Migurski, Stamen Design. A [Flash-based dynamic graph displaying Google's top news stories](http://news.stamen.com). An excellent demonstration of large-scale data reduction.
* __Newsmap__, The Hive Group. Intriguing, compact [dynamic 'treemap' graph showing Google News' top stories](http://www.marumushi.com/apps/newsmap/index.cfm). Each story is represented by a block; the size is determined by the number of links to each story; the color saturation, by the 'newness' of the story. This is a tour de force demonstration of what an effective [treemap](http://www.cs.umd.edu/hcil/treemap/index.shtml) should look like. An excellent paper published by researchers at the University of Maryland [explain the visual model of treemaps](/attachments/2001-18.htm).

{{< figure src="/images/newsmap.png">}}

## Rendering Hierarchical Data

* __Wijk, J.J. van__, F. van Ham, H.M.M. van de Wetering. Dr. van Wijk's "squarification" algorithm (as used by Newsmap, above) is already the _de facto_ standard for treemaps. What do do for an encore? In this [short ACM paper](http://www.win.tue.nl/~vanwijk/rhd.pdf), he and colleagues examine strategies for visualizing large, tree-like structures: treemaps, beamtrees, and  "botanical" graphs.
* __Map of the Market__, Smartmoney.com. Java-applet-based [treemap of stock market activity](http://www.smartmoney.com/marketmap). 
* __Freshcookies Treemap Library__, Andrew Jaquith. As part of the research effort for his book on security metrics, Mr. Jaquith has created an [open-source treemap library](http://freshcookies.org/jtreemap/) and a sample file-parsing application that reads tab-delimited text files. The library was used to produce the treemap graphics attached to this page. It is easy to use, well documented and free (as in beer). 

## Three-Dimensional Visualization

* __The Spinning Cube of Potential Doom__, Stephen Lau, Lawrence Berkeley National Labs. The author's custom [three dimensional visualizer](http://www.nersc.gov/nusers/security/TheSpinningCube.php) charts intrusion activity, based on output from the Bro network intrusion detection system. The [related presentation](http://www.lbl.gov/ITSD/Security/news/spincube.ppt) explains the rationale. Yes, yes, one does appreciate the irony of linking to a PowerPoint presentation on the same page as a Tufte article.
* __Visitorville Weblog Analysis__, visitorville.com. As covered in Slashdot, [weblog analysis meets SimCity](http://www.visitorville.com/screenshots.html). This product aggregates web log information and displays it as a three-dimensional cityscape. Very interesting; its potential utility to security metrics seems pretty clear. The [ensuing Slashdot discussion thread](http://slashdot.org/articles/04/06/09/1041220.shtml?tid=126&tid=127&tid=186&tid=95) was entertaining also.
