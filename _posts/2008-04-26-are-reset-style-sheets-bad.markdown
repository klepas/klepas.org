---
layout: post
title: Are &lsquo;reset&rsquo; style sheets bad?
---
It slipped by me that just last week&thinsp;&mdash;&thinsp;a few days before Canberra's first BarCamp&thinsp;&mdash;&thinsp;Eric Meyer wrote an <a href="http://meyerweb.com/eric/thoughts/2008/04/17/crafting-ourselves/" title="Eric Meyer: Crafting Ourselves">article</a> responding to Johnathan Snook's <a href="http://snook.ca/archives/html_and_css/no_css_reset/" title="Johnathan Snook: No CSS Reset">announcement that he doesn&rsquo;t use reset stylesheets</a>. Following that came Jens Meiert's <a href="http://meiert.com/en/blog/20080419/reset-style-sheets-are-bad/" title="Jens Meiert: Why &lsquo;Reset&rsquo; Stytle Sheets are bad">arguments that reset style sheets are bad</a>.

I can see where Jens is coming from but don't see any compelling reasons that would convince me they're inherently bad. Below I've tried to counter some of the common arguments that get raised against reset style sheets.

### Overriding the overridden
The addition of extra lines in the author's style sheet to override reset sheet definitions <em>can</em> become a waste of time and effort. The amount of definitions that need to be redefined comes down to two things: how many definitions are made in the reset sheet and the scope of the website.

A designer will need to decide how many definitions are going to be made in the reset style sheet and weigh that in turn to the redefinitions that need to be made. This should be combined with the use of optimization tools such as <a href="http://csstidy.sourceforge.net/" title="A CSS parser and optimizer."><acronym title="Cascading Style Sheets">CSS</acronym>Tidy</a> and of course the removal of redundant definitions from both the main style sheet(s) and reset sheet. See <em>Going nuts</em>, below.

<p class="note">Some large projects may even demand for an optimized production set of style sheets with a separate commented and split development set.</p>

### Latency
Another style sheet in the mix will definitely add to the full download size of a website&thinsp;&mdash;&thinsp;it is another <abbr>GET</abbr> request after all. Again this is relative to how large the reset sheet is. <span class="sidenote">It is possible to concatenate or <a href="http://www.fiftyfoureleven.com/weblog/web-development/css/the-definitive-css-gzip-method" title="FiftyFourEleven: The Definitive Post on Gzipping your CSS">compress <acronym title="Cascading Style Sheets">CSS</acronym></a>, <abbr>(X)HTML</abbr>, and Javascript files.</span> With the <acronym title="Yahoo! User Interface">YUI</acronym> reset style sheet sizing at around four kilobytes, the optimization of images and their are implementation within the design is a more prevalent issue.

### Removing functionality and usability
Removing usability through the reset sheet and neglecting to implement it by other means or redefining it is not an inherent fault of the reset sheet but of the designer; the designer should look into what elements the reset sheet is defining&thinsp;&mdash;&thinsp;never copy and paste blindly.

### Going nuts
Reset style sheets aren't bad because some are all-encompassing in their definitions and this certainly shouldn't be a case for never using them. Ultimately the number of definitions in a reset style sheet should come down to how useful each is going to be in your project.

I take Eric Meyer's position on this whereby we should use the tools that suit us and the job at hand best:

<blockquote cite="Eric Meyer">
    <p>The key here [&hellip;] is that you evaluate various tools by thinking about how they relate to the ways you do what you do&thinsp;&mdash;&thinsp;and then choose what tools to use, and how, and when. That&rsquo;s the mark of someone who thinks seriously about their craft and strives to do it better.</p>
</blockquote>

Thus:

1. Use what suits you best, even it's just the age old
<code><span class="element">*</span> { <span class="property">margin:</span> <span class="attribute">0</span>; <span class="property">padding:</span> <span class="attribute">0</span>; }</code>
2. If you use a reset style sheet make sure you know what you're resetting and why.