---
layout: post
title: Interviewed by Gary Barber
---

As a prelude to the upcoming November Australian [Edge of the Web](http://www.edgeoftheweb.org.au/) conference I've kindly been interviewed by [Gary Barber](http://manwithnoblog.com/2009/10/11/simon-pascal-klein/). I've cross-published the interview below.

<p class="note"><a title="Raena Jackson-Armitage&rsquo; personal site" href="http://www.heyraena.com/">Raena Jackson-Armitage</a> from <a title="SitePoint&rsquo; interview with Simon Pascal Klein" href="http://articles.sitepoint.com/article/interview-simon-pascal-klein">SitePoint also interviewed me on the same note</a>. The interview touches on similar web typography and web fonts topics but focuses more on uptake, usage, licensing, and some recent inspirational sites I&rsquo;ve stumbled across.</p>

### Interview with Gary

<dl class="conversation">
<dt><span class="speaker">Gary</span>
<p>It&rsquo;s nothing new to most web designers that typography on the web just sucks. With the cripplingly limited number of cross platform typefaces available and the different ways font render on the browsers, it&rsquo;s enough to just make a designer give up in frustration. Discounting the use of the <acronym title="Cascading Style Sheets"><acronym title="Cascading Style Sheets">CSS</acronym></acronym> property &ldquo;font-face&rdquo; that only leaves the hacks from <a title="Cuf&oacute;n on GitHub.com" href="http://wiki.github.com/sorccu/cufon/about">Cuf&oacute;n</a> and <a title="Wikipedia (En): Scalable Inman Flash Replacement" href="http://en.wikipedia.org/wiki/Scalable_Inman_Flash_Replacement"><acronym title="Scalable Inman Flash Replacement">sIFR</acronym></a> to allow some alternative relief. Would you recommend these as solutions to overcome this problem or do you have some secret designer &ldquo;Foo&rdquo; hidden up your sleeve?</p></dt>

<dd><span class="speaker">Pascal</span>
<p>With no intention of being controversial right off the bat, I guess I would have to say I reject the premise of the question. I don&rsquo;t really accept that web typography sucks; sure, it could certainly be a lot better, and I have good hopes for the future, however a lot can be done with what is available to us currently, even as a web standards-devoted designer. We have a number <acronym title="Cascading Style Sheets"><acronym title="Cascading Style Sheets">CSS</acronym></acronym> Fonts options available to us, e.g. font-weight, font-style, font-variant, which combined with line-height, sizing, widths, and the actual font declared offer a lot of variety. Remember Jeff Croft&rsquo;s words: &ldquo;<q>[t]ypography is not picking a &lsquo;cool&rsquo; font</q>&rdquo;, or any font for that matter.</p></dd>


<dt><span class="speaker">Gary</span>
<p>Personally I&rsquo;m not a fan of the pre-rolled <acronym title="Cascading Style Sheets">CSS</acronym> grids that are now all the rage in some circles. Sure I know that they help people layout a web page, and they assist with getting the rhythm on a page right.  But still I suspect that they maybe allowing some designers to be lazy and not think outside the square of the <acronym title="Cascading Style Sheets">CSS</acronym> grid. What&rsquo;s your view on the use of <acronym title="Cascading Style Sheets">CSS</acronym> grids especially from a typography slant?</p></dt>

<dd><span class="speaker">Pascal</span>
<p>A grid exists to help provide structure and rhythm, and so directly relates to typography. Figuring out a good grid and then turning it into versatile, good <acronym title="Cascading Style Sheets">CSS</acronym> is effort, and in that regard I like the pre-rolled grid&thinsp;&mdash;&thinsp;they are great for those of us who want a grid but have time constraints, or just don&rsquo;t want to worry too much about them. I personally don&rsquo;t use them&thinsp;&mdash;&thinsp;I use my own grids. This comes down to my enjoyment in actual coming up with one and building it (yes, I probably ought to be clinical tested for some sort of mental ailment) and finding that the pre-rolled ones don&rsquo;t do things the way I want them to (usually they are over-kills for the projects I&rsquo;ve worked on).</p></dd>


<dt><span class="speaker">Gary</span>
<p>The debate on property font-face and the resultant licensing issues over <acronym title="Embedded OpenType">EOT</acronym> and <acronym title="OpenType Format">OTF</acronym>  has divided the typography community, especially the Type Foundries. Recent upgrades of FireFox has allow for the use of <code><span class="element">@font-face</span></code>, and with a few <acronym title="Cascading Style Sheets">CSS</acronym> tweak&rsquo;s its has now effectively remove the browser incompatibility. Personally I wasn&rsquo;t a fan of the use of <code><span class="element">@font-face</span></code> but I have learned to love it.  As a typeface guru how do you see this state of play?</p></dt>

<dd><span class="speaker">Pascal</span>
<p>Good generally. I see it as a step forward that we&rsquo;ll have access to a larger range of fonts, but I am worried about their usage&thinsp;&mdash;&thinsp;again this reflects off Jeff&rsquo;s earlier quote I noted. Many of the typefaces currently available for licensing from foundries are designed for print use, and differ from fonts that are designed and optimised for screen usage. There are a lot of fonts out there, and in relation only a small number of really good ones, and of that an even smaller number that have been optimised for screen use. Screen-optimised fonts need to cater for the lower resolutions of screens (apposed to printed material) and as such may feature thicker strokes and serifs (e.g. see Georgia) and good hinting tables to ensure readability at small sizes.</p>

<p>I am aware that <a title="Typotheque type foundry" href="http://typotheque.com/">Typotheque</a> are investing in creating screen-optimised versions of some of their typefaces. I believe this may be less of a problem in fonts available for web font licensing from foundries as they will be aware of this issue and more of freely-licensed or unlicensed, lower-quality fonts that are used directly via <code><span class="element">@font-face</span></code>.</p></dd>


<dt><span class="speaker">Gary</span>
<p>Are the days of Type Foundries numbered for web industry (I&rsquo;m excluding Print, here, ok)?  Do we really have to put up with the same old tired, font centralised ordering-distribution system?   What do you think of typographers that are shaking of shackles of the Type Foundries and marketing their works directly with designers via the likes of Typekit and League of Moveable Type?</p></dt>

<dd><span class="speaker">Pascal</span>
<p><a title="klepas.org: Web fonts&thinsp;&mdash;&thinsp;the death of type foundries?" href="http://klepas.org/web-fonts-the-death-of-type-foundries/">I wrote on this topic in November last year and echoed my belief in the rise of hosting and licensing service</a>. I think non-foundry controlled services like <a title="Typekit web font licensing and hosting service" href="http://typekit.com/">Typekit</a> and <a title="Fonddeck web font licensing and hosting service" href="http://fontdeck.com/">Fontdeck</a> who sub-license web fonts for foundries may distribute some of the centralised control that foundries historically possess. That said, I think the best way to give the foundries a run for their money and up the quality of type design all-round is for more high quality open source, freely-licensed typefaces to become available which may be freely distributed and hosted. Some in the type community see this venture as futile or even misguided but I believe it&rsquo;s the best way to &lsquo;democratise&rsquo; type and typography and educate folks about it&thinsp;&mdash;&thinsp;&lsquo;Hey, have you heard about typography? Check out this awesome example website of good typography that features a really well-done font&rsquo; is a saying amongst non-designers I can&rsquo;t imagine if &lsquo;well-done font&rsquo; is preceded by a dollar sign and figures ranging in three digits before the decimal point (if not more).</p></dd>


<dt><span class="speaker">Gary</span>
<p>Moving on further with groups like <a href="http://www.theleagueofmoveabletype.com/" title="The League of Moveable Type">The League of Moveable Type</a> popping up all over the place, what&rsquo;s your take on the matter? Are they providing for the service that designers need?  Do you see their product as a general benefit to fellow designers or are they simply ripping the bread and butter from the mouths of the typographers?</p></dt>

<dd><span class="speaker">Pascal</span>
<p>Yes, absolutely. Time to get a bit progressive and perhaps transgressive. Continuing on from the topics and organisations raised in the last question, I hold organisations, communities, and single type designers who provide considerable and usable parts of their work at no cost (gratis) and under licensing terms (libre) that make distribution and improvements viable in high regard. I think a simple comparison may be drawn here to the personal computer. The personal computer is largely responsible for many technological and general societal advancements due arguably to its increasing affordability. Likewise, the more affordable, or rather the more accessible typefaces and good typography becomes the better the state of typography will be&thinsp;&mdash;&thinsp;the more accessible something is the more attainable are the positives (and negatives) that that something provides. People, either individually, in commercial corporations or as self-structured communities who provide fonts, the means of making them, and educational material on the first two and their use for free will better the state of type, type design, and typography.</p>

<p>There is a common argument by critics who suggest that there is a lack of people to do this task or to do it well. I disagree; where there is a will there is a way&thinsp;&mdash;&thinsp;look at the many successful free and open source software (<acronym title="Free and Open Source Software">FOSS</acronym>) projects that have bettered the world in one way or another. I think to suggest that type designers are in some fundamental economic way different to programmers, web developers or other smart people who render their time and knowledge in some form to create or better free software to be false. For proof look at organisations like the League of Movable Type and the type designers behind it or working individually: <a href=
"http://linuxlibertine.sourceforge.net/Libertine-EN.html" title="Linux Liberation font super-family">Linux Libertine</a> by Philipp H. Poll, <a href="http://tinyurl.com/gentium" title="Gentium family">Gentium</a> by Victor Gaultney, and <a href="http://klepas.org/open-baskerville/#status-of-free-fonts" title="klepas.org: Open Baskerville &sect; The status of free fonts">a lot more</a>. It is true that the number of skilled type designers who release freely-licensed works is limited; there are less <acronym title="Free and Open Source Software">FOSS</acronym> type designers than <acronym title="Free and Open Source Software">FOSS</acronym> programmers or web developers, yet compared to software development or web development, type design is a relative niche industry.</p>

<p>Continuing and concluding with economics, of course free typefaces, freely-licensed written material, and type design software will compete in quality and price with commercially available equivalents. The better the quality and variety of these free things, the cheaper and/or higher in quality the equivalent or related commercial products will be need to be. Who benefits? &lsquo;Consumers&rsquo;&thinsp;&mdash;&thinsp;we do.</p></dd>


<dt><span class="speaker">Gary</span>
<p>Thanks Pascal, see you in few weeks.</p>
</dt>
</dl>

Thanks Gary!

The interview is licensed under  show otherwise is licensed under the [Creative Commons Attribution-Noncommercial-Share Alike 2.5 Australia](http://creativecommons.org/licenses/by-nc-sa/2.5/au/) license&thinsp;&mdash;&thinsp;take, share and be merry.