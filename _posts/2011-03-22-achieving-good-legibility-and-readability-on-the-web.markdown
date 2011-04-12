---
layout: post
title: Achieving good legibility and readability on the Web
published: yes
---
<style>
        @font-face {
            font-family: "Coelnische Fraktur M";
            src: url(/fonts/CoelnischeFraktur_M.otf) format("opentype");
            }
        p.prelude {
			font-size: 1.8em; /* 18 */
			float: right;
			text-indent: 0 !important;
			display: block;
			}
            p.prelude:first-letter {
				margin-left: -1.071em; /* We have 120 of space */
				margin-right: 100%;
				margin-bottom: -0.894em;
				font-size: 6.222em; /* 112 */
				padding-right: 0.071em; /* 8 */
				line-height: 0.9; /* Aligns to cap-height of para. */
				color: #BB0000;
				text-align: right;
				float: right;
				font-family: "Coelnische Fraktur M", Georgia, "DejaVu Serif", Times, "Times New Roman", serif;
				font-style: normal;
				}
			p.prelude:first-line {
				font-variant: small-caps;
				letter-spacing: 0.06em; /* 2 */
				text-indent: 0;
				}

    span.scale { color: #BB0000; padding-left: 2.4em; }
        span.scale-six { font-size: 0.6em; }
        span.scale-seven { font-size 0.7em; }
        span.scale-eight { font-size: 0.8em; }
        span.scale-nine { font-size: 0.9em; }
        span.scale-ten { font-size: 1em; }
        span.scale-eleven { font-size 1.1em; }
        span.scale-twelve { font-size: 1.2em; }
        span.scale-thirteen { font-size: 1.3em; }
        span.scale-fourteen { font-size: 1.4em; }
        span.scale-sixteen { font-size: 1.6em; }
        span.scale-eighteen { font-size: 1.8em; }
        span.scale-twenty-one { font-size: 2.1em; }
        span.scale-twenty-four { font-size: 2.4em; }
        span.scale-thirty-four { font-size: 3.4em; }
        span.scale-thirty-six { font-size: 3.6em; }
        span.scale-forty-eight { font-size: 4.8em; }
        span.scale-fifty-five { font-size: 5.5em; }
        span.scale-sixty { font-size: 6em; }
        span.scale-sixty-four { font-size: 6.4em; }
        span.scale-seventy-two { font-size: 7.2em; }
        span.scale-eighty-nine { font-size: 8.9em; }
    
    span.equation {&thinsp;&mdash;&thinsp;
        color: #555;
        font-size: 1.8em;
        font-family: Monaco, "Andale Mono", "Courier New", Courier, monospace;
        display: block;
        text-align: center;
        padding: 0.888em;
        }
        span.value { color: #111; }
        span.result { color: #4881D6; }
</style>

<p class="prelude">My last piece on web typography provided an exhaustive look at <em><a href="/getting-type-to-the-web/#notebook" title="klepas.org: Getting type to the Web">getting type to the Web</a></em>, covering the ins and outs of the <code><span class="element">@font-face</span></code> technology. Now that we can get the fonts we want rendered on the Web, let&rsquo;s examine legibility and readability more closely by covering the elementary typographic factors that affect them.</p>

At first, typography can seem like an inherently dull field&thinsp;&mdash;&thinsp;dealing with fonts and sizes, bolding this, and italicising that could come across as rather arbitrary, or as difficult: where does one start?

### Definition and purpose
Definitions avoid confusion, and purpose gives us a light at the end of the tunnel. Quite simply, _typography is the art of creating and setting type with the purpose of honoring the text it sets_.

You will have already made a "typographic" decision by selecting an adequate typeface (digitally, a font) for whatever project you have in mind. The next step is dealing with the headings, subheadings, paragraphs, lists, tables, excerpts, quotes, and their many siblings (the micro) by making choices about how they are organised on the page (the macro: grids, columns, and margins). Then we can highlight how they relate to each other (<em><a href="#typographic-hierarchy" title="klepas.org: Achieving good legibility and readability on the Web &sect; Highlight relationships and provide navigation">&sect; Highlight relationships and provide navigation</a></em>).

Typography exists everywhere where there is set type (i.e. [movable type](https://secure.wikimedia.org/wikipedia/en/wiki/Movable_type "Wikipedia (EN): Movable Type")): it pertains to financial reports, the local newspaper, cereal cartons, the novels on our bedside tables, religious scriptures, and by extension, "movable type" on the web.

Each of us probably has a good grasp of what we think constitutes good typography. Looking at the local newspaper, or cereal carton, or the books on the bookshelf, you'll probably be able to list a range of properties that make it "good".

The merits of our typographic choices are immediately apparent, and two of the most important are a text's legibility and its readability.

#### Legibility

Legibility refers to the recognizability of individual glyphs (the individual markings that signify the semantic character(s)). A range of factors influence a glyph's legibility: stroke, width, angle (of the stroke), style (e.g. roman, full-​​capitals), slant (of the whole style), color (actual color and typographic color, i.e. contrast of the letterform to its background), background color, and more.

#### Readability

Legibility is distinct from readability. Readability refers to the recognizability of whole words, sentences, paragraphs, tables, or whatever the text en masse constitutes. A range of macro factors affect readability: the measure (line length), the leading (line height or spacing), justification or alignment, the style of the typeface, the kerning and tracking, the size of the type, and more.

Of course, both are interrelated; changes to the point size will impact the legibility of both the individual glyphs, and the words they compose.

<h4 id="typographic-hierarchy">Highlight relationships and provide navigation</h4>

Just like <acronym title="Web Content Accessibility Guidelines">WCAG</acronym>'s (<a href="http://www.w3.org/TR/WCAG20/#navigation-mechanisms" title="w3.org: WCAG 2.0, &sect; 2.4 Navigation Mechanisms"><acronym title="Web Content Accessibility Guidelines">WCAG</acronym> 2.0, &sect; 2.4</a>) accessibility guidelines on ensuring that hyperlinks can be understood out of context, typographic hierarchy gives the text a certain "skimmability". Good typographic hierarchy allows the text as a whole to be navigated with ease, such that readers can find their places again, or skip superfluous introductory information and get straight to what they are browsing for.

A good typographic hierarchy will provide visual cues to readers: headings are sized and styled in a way that makes them immediately identifiable as headings; paragraphs are uniform in styling, and their beginnings and ends are well marked out; quotations are recognizable, separate from the paragraphs they are enclosed by, and so forth.

Such hierarchies will also highlight inherent relationships between elements on the page: labels are placed in proximity to graphs, charts, and graphics, and through their proximity, are identifiable as descriptive notations.

In another example, imagine a more complex, two-​​color design. A table holding quarterly profit figures could feature a light-​​blue background, whereas the nearby table of detailing the quarterly loss could have a soft red background, and the aggregate of the two, superimposed on top of one another in a line graph, would have the profit line in a strong blue, and the line depicting losses in a hard red. Graph notations should provide a legend, but color can also be used to signify the relationships.

Colour, font style, spacing, position, indentation, and a range of other stylistic variations can be used to signify a relationship between elements on the page or across pages — and over the entire website as a whole.

#### Earned or unearned qualities

As noted earlier, we consciously (and subconsciously) judge the typography of texts. Look back to the newspaper, or pull out a book from the bookshelf, and describe what the text looks like. The newspaper might be bold and almost cheap looking, whereas a book on social psychology might be clean and organised, complete with footnotes and easily looked-​​up references.

Typography imbues set text with qualities, or a certain interest. A text can appear inviting, graceful, serene, cartoony, dodgy, unbalanced, and/​or boring, and importantly these qualities can be both earned and unearned. A good typographer will humbly honor the text they are setting, in honor of the meaning of that text. Bad typography or a lack of care can discourage readers with a sense of boredom, inaccessibility, or cheapness.

#### Inducing a state of interest

Finally, good typography can induce interest among potential readers. Simply, grace the text with the respect it deserves; if the text is good, and intended to be read and understood,  give it the typographic respect it is entitled to. In doing so you will induce a state of interest in browsing readers.

<h3>Achieving good legibility <span class="amp">&amp;</span> readability</h3>

Let's now focus on achieving the first two core goals of good typography: legibility and readability. The basics of these are well understood given that typography is well over 400 years old in the world of print, but in a digital medium there are a few additional considerations to be made.

#### Typeface
As previously outlined typefaces have a significant impact on the virtue of the text they set. Selecting a good and applicable typeface that honors the copy and caters for its requirements (e.g. if you know you'll be setting mathematical symbols ensure the typeface has glyphs for them) is paramount.

Chances are you're setting larger blocks of text. You will want to pick a good text font: faces that are designed for setting lengthier blocks of text. The best way to test a typeface as a text face is to set a paragraph of [Lorem Ipsum](http://lipsum.lipsum.com/ "Lorem Ipsum: a placeholder text") in the basic roman at size 12px to 14px with a leading of 1 to 1.5 (see <em><a href="#leading" title="klepas.org: Achieving good legibility and readability on the Web &sect; Leading">&sect; Leading</a></em> below) and see how it reads. Text faces can be both serif (e.g. Georgia) or sanserif (e.g. Arial).

<p class="note">Lorem Ipsum is a useful placeholder text when testing stylistic attributes. For testing actual readability it was pointed out to me that one should select a text that has meaning and is intended to be read. Stuck for something to use? Grab an article from Wikipedia or from <a href="http://www.gutenberg.org/wiki/Main_Page" title="Gutenberg.org&thinsp;&mdash;&thinsp;A public, non-profit library of freely licensed cultural works">Project Gutenberg</a>. Thanks to <a href="http://fineartdavid.com/about/david-owens" title="fineartdavid.com: David Owens&rsquo; personal website">David Owens</a> for this suggestion.</p>

Typefaces are declared in <acronym title="Cascading Style Sheets">CSS</acronym> with the <a href="http://reference.sitepoint.com/css/font-family" title="SitePoint.com CSS Reference Guide: font-family property"><code><span class="property">font-family</span></code> property</a> and take descriptive values, either a generic family or specific font family, for example, a [transitional serif](https://secure.wikimedia.org/wikipedia/en/wiki/VOX-ATypI_classification#Transitional "Wikipedia (EN): VOX-ATypI classification: Transitional") font stack:

<pre><code><span class="element">p</span> {
    <span class="property">font-family:</span>
        <span class="attribute">Baskerville,
        Times
        'Times New Roman'
        serif</span>;
    }</code></pre>

#### Sizing
When setting type select a comfortable size: 14 pixels and up for most screen text fonts is a good rule of thumb. Not many of us have 20-20 vision and better a tad large than too small.

<p class="note"><strong>Note:</strong> JavaScript-powered text sizing widgets &ne; accessibility.</p>

Don't size text arbitrarily; try to stick to a scale:

<span id="classical-scale" class="scale">
    <span class="scale-six">6, </span>
    <span class="scale-seven">7, </span>
    <span class="scale-eight">8, </span>
    <span class="scale-nine">9, </span> 
    <span class="scale-ten">10, </span>
    <span class="scale-eleven">11, </span>
    <span class="scale-twelve">12, </span>
    <span class="scale-fourteen">14, </span>
    <span class="scale-sixteen">16, </span>
    <span class="scale-eighteen">18, </span>
    <span class="scale-twenty-one">21, </span>
    <span class="scale-twenty-four">24, </span>
    <span class="scale-thirty-six">36, </span>
    <span class="scale-forty-eight">48, </span>
    <span class="scale-sixty">60, </span>
    <span class="scale-seventy-two">72.</span>
</span>
<p class="caption">The &ldquo;classical scale&rdquo;.</p>

<span id="another-scale" class="scale">
    <span class="scale-nine">9, </span> 
    <span class="scale-ten">10, </span>
    <span class="scale-eleven">11, </span>
    <span class="scale-twelve">12, </span>
    <span class="scale-thirteen">13, </span>
    <span class="scale-fourteen">14, </span>
    <span class="scale-eighteen">18, </span>
    <span class="scale-twenty-four">24, </span>
    <span class="scale-thirty-six">36, </span>
    <span class="scale-forty-eight">48, </span>
    <span class="scale-sixty-four">64, </span>
    <span class="scale-seventy-two">72.</span>
</span>
<p class="caption">Another scale.</p>

<span id="fibonacci-scale" class="scale">
    <span class="scale-eight">8, </span>
    <span class="scale-thirteen">13, </span>
    <span class="scale-twenty-one">21, </span>
    <span class="scale-thirty-four">34, </span>
    <span class="scale-fifty-five">55, </span>
    <span class="scale-eighty-nine">89.</span>
</span>
<p class="caption">A scale based on the Fibonacci sequence.</p>

Type is best sized relatively using ems. An em is the distance horizontally equivalent to the type size in points (e.g. 1em of 12pt type is 12pt; 1em of 16pt type is 16pt). We can do this in the <acronym title="Cascading Style Sheets">CSS</acronym> using the <a href="http://reference.sitepoint.com/css/font-size" title="SitePoint.com CSS Reference Guide: font-size property"><code><span class="property">font-size</span></code> property</a>:

<pre><code><span class="element">p</span> { <span class="property">font-size:</span> <span class="attribute">1.2em</span>; }</code></pre>

Remember that font sizes are inherited within <acronym title="Document Object Model">DOM</acronym> from parents &rarr; children. This can make em sizing calculations for nested elements difficult. A good idea is to size everything in pixels first, and then convert over to ems. Pixels are easy to work with but fall short as a fixed unit, particularly when scaling a website (see <em><a href="#measure" title="klepas.org: Achieving good legibility and readability on the Web &sect; Measure">&sect; Measure</a></em> below).

To calculate the desired value in ems, find what 1 pixel is in ems and then multiply by the desired font size (in pixels):

<span class="equation">
    <span class="value">1</span> 
    &divide; 
    <span class="value">parent font-size</span> 
    &times; 
    <span class="value">desired pixel value</span> 
    = 
    <span class="result">em value</span>
</span>

For example, if the parent font size (as defined by say the body element) is 16 pixels, but we'd like to size a paragraph&thinsp;&mdash;&thinsp;which is a child of the body element&thinsp;&mdash;&thinsp;at 12 pixels, we calculate: 1 &divide; 16 &times; 12 which gives us 0.75em.

##### The 62.5% trick

There is a neat trick to simplifying these calculations. Consider the following <acronym title="Cascading Style Sheets">CSS</acronym>:

<pre><code><span class="element">p</span> { <span class="property">font-size:</span> <span class="attribute">80%</span>; }
<span class="element">blockquote</span> { <span class="property">font-size:</span> <span class="attribute">80%</span>; }</code></pre>

which styles this markup:

<pre><code>&lt;p>This is a short paragraph, followed by a quote:&lt;/p>
&lt;blockquote>
    &lt;p>block quotes are blocks of quoted material, and can hold a range of 
       things, including paragraphs, lists, and even headings of course.&lt;/p>
&lt;/blockquote></code></pre>

80% of 16px is 12.8px, so <code><span class="element">p</span></code> and <code><span class="element">blockquote</span></code> elements will be that size, but what happens when we put a <code><span class="element">p</span></code> element inside a <code><span class="element">blockquote</span></code> element? The parent (<code><span class="element">blockquote</span></code>) is 12.8px so the <code><span class="element">p</span></code> will be rendered at 80% of that: 10.42px.

Guh! Potentially quite confusing. Richard Rutter developed [a neat trick to simplifying the sizing calculations of nested elements](http://www.alistapart.com/articles/howtosizetextincss/ "AListApart.com: How to Size Text in CSS"). Consider:
* browsers have a common default size of 16px for text;
* set the <code><span class="element">body</span></code> to a font-size of 62.5%, resetting everything to 10px.

From here now the calculations are similar for _direct descendants_ of the body, for example 12px = 1.2em; 8px = 0.8em, and so forth. Deeper nested elements are (still) relative of course.

<h4 id="measure">Measure</h4>
The measure is the line-length. It's important to keep lines at a comfortable length, not too long; not too short.

The eye finds difficulty in going to the next line on measures that a too long. A grand and almost infamous example of a website that could do better in this regard is Wikipedia, where the measure is relative to the length of the browser window; expand the window to full-screen on a widescreen and notice how suddenly where there was a comfortable 40 characters per line expand to 100 or more.

Conversely ensure lines aren't too short that the eye has to drop lines every few words. There are some publication styles where short measures are popular, for example periodicals, but copy that's set so short elsewhere begins to look cheap, as if once read it could be thrown away just like a newspaper.

Measures are set in <acronym title="Cascading Style Sheets">CSS</acronym> with the <a href="http://reference.sitepoint.com/css/width" title="SitePoint.com CSS Reference Guide: width property"><code><span class="property">width</span></code> property</a>. Ideally [set the design or total page width in ems and columns in percentages such that columns](http://www.456bereastreet.com/archive/201101/only_use_ems_for_the_total_width_of_em-based_layouts/ "456bereastreet.com: Only use ems for the total width of em-based layouts"), the grid, the entire page design all scale proportionately. For example:

<pre><code><span class="element">body</span> {
    <span class="property">font-size:</span> <span class="attribute">62.5%</span>;
    <span class="property">width:</span> <span class="attribute">96em</span>;
    <span class="property">margin:</span> <span class="attribute">0 auto 0 auto</span>;
    }
    <span class="element">div#content</span> {
        <span class="property">width:</span> <span class="attribute">75%</span>;
        <span class="property">float:</span> <span class="attribute">left</span>;
        }
    <span class="element">div#sidebar</span> {
        <span class="property">width:</span> <span class="attribute">25%</span>;
        <span class="property">float:</span> <span class="attribute">right</span>;
        }</code></pre>

In this example we've used the 62.5% trick to reset the base font size to 10 pixels in the <code><span class="element">body</span></code> and defined a total design width of 960 pixels which is centered. Meanwhile, we've defined two <code><span class="element">div</span></code> elements: one as a sidebar with a width of 240 pixels (25% of 960 = 240 pixels) and the other as a content container with width of 720 pixels (75% of 960 = 720 pixels). This design scales perfectly, even when only text-only zoom is available.

<h4 id="leading">Leading</h4>
It's important to provide ample space between lines for the eye to read along and travel between lines with comfort and ease. A good rule is to give copy with short measures less leading, and longer measures more leading.

Leading is controlled in <acronym title="Cascading Style Sheets">CSS</acronym> using the <a href="http://reference.sitepoint.com/css/line-height" title="SitePoint.com CSS Reference Guide: line-height property"><code><span class="property">line-height</span></code> property</a>, and can set unit-less number values (e.g. 1.5) whereby it acts as a multiplier of the font size:

<pre><code><span class="element">p</span> { <span class="property">line-height:</span> <span class="attribute">1.5</span>; }</code></pre>

This means the leading will be one and a half times the size of the <code><span class="property">font-size</span></code>. Unit-less values are easier too keep track of and work with when setting leading for descendent elements, and scale nicely.

#### Alignment
Alignment is the placement and arrangement of text. When setting blocks of copy align text to the left margin or "gutter", and don't be afraid of having a ragged edge (i.e. "left-aligned", "flush-left", or "ragged-right"). Justification is great if there is a sufficient measure to cater for the adjustment of the word-spacing and ideally if automatic hyphenation is accessible&thinsp;&mdash;&thinsp;avoid justification in narrow columns of text.

Alignment is controlled in <acronym title="Cascading Style Sheets">CSS</acronym> using the <a href="http://reference.sitepoint.com/css/text-align" title="SitePoint.com CSS Reference Guide: text-align property"><code><span class="property">text-align</span></code> property</a>, and takes descriptive values, for example:

<pre><code><span class="element">body</span> { <span class="property">text-align:</span> <span class="attribute">left</span>; }
    <span class="element">div#content p</span> { <span class="property">text-align:</span> <span class="attribute">justify</span>; }
    <span class="element">div#content p.verse</span> { <span class="property">text-align:</span> <span class="attribute">center</span>; }</code></pre>

#### The culmination (contrast)
Legible and readable text has a [high contrast with its surroundings](http://designfestival.com/use-contrasting-fonts-for-maximum-impact/ "DesignFestival.com: Use Contrasting Fonts for Maximum Impact") without becoming an eye-sore. Good contrast is achieved by setting text with the above factors in mind, with the addition of the color of the type to the background it is placed on. A good guiding principle is dark on light or visa versa. Avoid clashing colours or a barely visible grey on a white background.

In <acronym title="Cascading Style Sheets">CSS</acronym> the text color is controlled by the <a href="http://reference.sitepoint.com/css/color" title="SitePoint.com CSS Reference Guide: color property"><code><span class="property">color</span></code> property</a> while the background is controlled by the <a href="http://reference.sitepoint.com/css/background-color" title="SitePoint.com CSS Reference Guide: background-color property"><code><span class="property">background-color</span></code> property</a> and takes numerical and descriptive values. For example:

<pre><code><span class="element">div#content p</span> {
    <span class="property">color:</span> <span class="attribute">#111</span>;
    <span class="property">background-color:</span> <span class="attribute">white</span>;
    }</code></pre>

<img src="/files/images/legible-and-readable-type-hero.jpg" alt="Photo of the Black Estate Vineyard website as displayed by Google Chrome on an LCD screen" title="The Black Estate Vineyard website" width="624" height="300" />

Pay attention to contrasts when working with light text on a dark background. Dark text on a light background generally has a higher contrast than light text on a dark background. Thus, when light text rests on a dark background check its contrast&thinsp;&mdash;&thinsp;increase leading and decrease <a href="http://reference.sitepoint.com/css/font-weight" title="SitePoint.com CSS Reference Guide: font-weight property"><code><span class="property">font-weight</span></code></a> as applicable.

<pre><code><span class="element">div#footer p</span> {
    <span class="property">color:</span> <span class="attribute">white</span>;
    <span class="property">background-color:</span> <span class="attribute">#333</span>;
    <span class="property">line-height:</span> <span class="attribute">1.8</span>;
    <span class="property">font-weight:</span> <span class="attribute">lighter</span>;
    }</code></pre>

### Closing

[Robert Bringhurst](https://secure.wikimedia.org/wikipedia/en/wiki/Robert_Bringhurst "Wikipedia (EN): Robert Bringhurst") once articulated: 'well-​​chosen words deserve well-​​chosen letters'. Good web typography should seek to invite readers by revealing the tenor and meaning the text, and highlight relationships through a uniform hierarchy for ease of navigation.

In other words, web experiences that feature good typography are easier and more pleasurable to read and use. Applying these principles should provide your text with the first step towards this goal: elementary typographic goodness through better legibility and readability.

<span id="df-logo" class="calloutRight"><img src="/files/images/design-festival-logo-motif.png" alt="An image of the DesignFestival.com logo" title="The DesignFestival.com logo" width="39" height="39" /></span>

<p class="note">This article is a consolidation of two articles originally written by me for, and published on DesignFestival.com (<em><a href="http://designfestival.com/setting-type-on-the-web-an-introduction/" title="DesignFestival.com: Setting Type On the Web: An Introduction">Setting Type On the Web: An Introduction</a></em> and <em><a href="http://designfestival.com/achieving-good-legibility-and-readability-on-the-web/" title="DesignFestival.com: Achieving Good Legibility and Readability on the Web">Achieving Good Legibility and Readability on the Web</a></em>). They have been been republished here with permission.</p>
