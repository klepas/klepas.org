---
layout: post
title: Versal letters on the web
---
Yesterday I was going through an old un-named sketch book. Right at the back were these beautiful hand-drawn versal letters and an entire page of weaving ornaments:

<img src="/files/images/inked-versal-lettering.jpg" alt="Photograph of some hand-drawn versals" title="inked-versal-lettering" width="624" height="416" />
<img src="/files/images/pencilled-versal-lettering.jpg" alt="Close-up photograph of an R versal" title="pencilled-versal-lettering" width="624" height="416" />

<p class="note">Versals, <em>drop capitals</em> or <em>raised capitals</em> are large and often ornately decorated capital letters marking the opening of a running body of text or a verse.</p>

Modern typography has discarded much of these classical decorations in favour of a more clinical page; these particular ornaments above aren't as multicultural and certainly not as neutral as modern typography which aims to better cater for a larger and more faceted audience.

I would like to see a revival of this form of decoration. I think a lot can be done with typography that currently scores of artists&thinsp;&mdash;&thinsp;particularly web designers&thinsp;&mdash;&thinsp;are trying to achieve with stock photography and ever popular vibrant, reflective and glossy elements.

Setting versals in <acronym title="Cascading Style Sheets">CSS</acronym> isn't particularly hard. A common method is to use the pseudo-selector <code><span class="element">:first-letter</span></code> to refer to the first letter of an element. You can combine this with other selectors to refer to the first letter of the first paragraph of a page, heading, or whatever else strikes your fancy (utilizing the <acronym title="Document Object Model">DOM</acronym> structure properly is helpful in making this work properly). Note Internet Explorer doesn't recognise many of the <a href="http://www.w3.org/TR/CSS21/selector.html" title="W3C: CSS 2.1 Selectors"><acronym title="Cascading Style Sheets">CSS</acronym> 2.1 selectors</a> (<abbr>IE</abbr> does however understand <code><span class="element">:first-letter</span></code>).

Another common method is to just manually wrap the first letter in span tags with a specific class of desired styling. Whichever you choose, the <acronym title="Cascading Style Sheets">CSS</acronym> styling may look something like this:

<pre><code><span class="element">div#content h2.entry-title + p:first-letter</span> {
    <span class="property">font-size:</span> <span class="attribute">4.2em</span>;
    <span class="property">float:</span> <span class="attribute">left</span>;
    <span class="property">display:</span> <span class="attribute">in-line</span>;
    <span class="property">text-transform:</span> <span class="attribute">uppercase</span>;
    }</code></pre>

You may also want to set margins and <code><span class="property">line-height</span></code> to better place the versal amongst the rest of the paragraph. The <code><span class="property">float:</span> <span class="attribute">left</span>;</code> is optional&thinsp;&mdash;&thinsp;it wraps the paragraph around the versal&thinsp;&mdash;&thinsp;if you want the versal to stand on the baseline of the opening line of the paragraph then don't set the float.

Targeting the first letter and styling it was simple; browser consistency is the hair-pulling part. Internet Explorer in particular complicates things because it doesn't understand the preceding selector (<code><span class="element">element + first-child</span></code>). If your versals are vital to the page, see Bill Weaver's article, <a href="http://bweaver.net/wrangling-drop-caps" title="Wrangling Drop Caps"><em>Wrangling Drop Caps</em></a>, which goes into closer detail on the subject including a JavaScript method.

<p class="note">A note of cautioon: when printing a page in Internet Explorer featuring a versal specified using the pseudo-selector <code><span class="element">:first-letter</span></code> <abbr>IE</abbr> bizarrely displaces other floated elements in proximity to the paragraph. See Nicholas Rougeux&rsquo;s article <a href="http://www.c82.net/posts.php?id=37" title="Drop caps in the wild"><em>Drop caps in the wild</em></a> for an example.</p>

Finding versal letters with further decoration done other than through size and placement is a rarity on the web. Replacing the first letter entirely with a graphic isn't impossible but you're bound to run into many accessibility issues using image replacement on the fly (and getting the right letter&thinsp;&mdash;&thinsp;that means designing twenty four versals and some scripting). I did however see a simple method last week of adding a bit more bling to versals by a bright Polish designer:

<img src="/files/images/designr-versal.png" alt="designr.com opening versal" title="designr-versal" width="624" height="136" />

Piotr Fedorczyk drew ornate background images and placed them behind the versal giving a them that extra love. The only issues here would be visibility of the background image depending on the letter size&thinsp;&mdash;&thinsp;an I is smaller in width than a R or Q, and of course text resizing. The <acronym title="Cascading Style Sheets">CSS</acronym> now would look something like this:

<pre><code><span class="element">div#content h2.entry-title + p:first-letter</span> {
    <span class="property">font-size:</span> <span class="attribute">4.2em</span>;
    <span class="property">float:</span> <span class="attribute">left</span>;
    <span class="property">display:</span> <span class="attribute">in-line</span>;
    <span class="property">text-transform:</span> <span class="attribute">uppercase</span>;
    <span class="property">background-image:</span> <span class="attribute">url(../images/versal-bg.png)</span>;
    <span class="property">background-repeat:</span> <span class="attribute">no-repeat</span>;
    <span class="property">background-position:</span> <span class="attribute">center center</span>;
    }</code></pre>

You can see them in action at <a href="http://designr.it/" title="Personal website and portfolio of Piotr Fedorczyk">Piotr&rsquo;s site</a>.