---
layout: post
title: Top 10 dos and don&rsquo;ts of Web Typography
published: yes
---

As a designer setting type well is a common and important task. While <a href="http://designfestival.com/setting-type-on-the-web-an-introduction/" title="DesignFestival.com: Setting Type On the Web: An Introduction">honoring the text we&rsquo;re setting</a> we need to ensure its <a href="http://designfestival.com/achieving-good-legibility-and-readability-on-the-web/" title="DesignFestival.com: Achieving Good Legibility and Readability on the Web">legibility and readability</a>. Further we ought to provide visual cues that highlight relationships between and amongst the text. In doing so we provide the text with a range of qualities encouraging and empowering a reader to either skim quickly to a specific snippet of information or to comfortably digest larger sections of the text.

### My list

To a good designer setting text becomes second nature, but having a quick checklist to fly through in order to ensure the basics are covered can be useful, particularly for aspiring newcomers to the field. This is my list, used as a set of general guiding principles:

#### 1. Apply no more than three typefaces per design (or page)
Setting no more than three typefaces (or digitally, fonts) per design is a great basic rule. Applying and setting text with a larger variety of typefaces (even if they are similar) creates a sense of disunity; readers are given the notion that related if not the same types of text (e.g. body paragraphs) are unrelated. Using a larger variety of similar typefaces might side-step this disunity but the reader will still note&thinsp;&mdash;&thinsp;even if subconsciously&thinsp;&mdash;&thinsp;an oddity. Even if they are unable to describe and source the disturbance the effect can remain.

The reason "or page" is in this rule is to provide artistic freedom. <a href="http://jasonsantamaria.com/articles/" title="JasonSantaMaria.com: Articles Archive">Jason Santa Maria&rsquo;s web site</a> illustrates this fittingly with his creatively diverse designs and styles that his blog posts express, while his site at large retains perfect unity.

#### 2. Set headlines large and invitingly, at the top of the page
There used to be this amazing fright of setting large text on the web. Body copy set at 10px (and even lower!) seemed rampant, and headings were rarely treated to anything beyond a slightly larger font size. Headings are some of the very first strings of text read by the eye when navigating to a new page, and vital to mark sections in passages. As such, grace headings with the size and styling they deserve to invite the reader and provide ample, but unobtrusive sign-postings for lower tier headings to guide the reader.

#### 3. Size body copy 14px+
This is a related and perhaps the most important rule of thumb: give body copy the size it needs to be comfortably read on a screen. Of course a large range of other factors influence and legibility and readability of text and particularly more closely set body copy, but size remains critical.

Remember that not many of us have 20&ndash;20 vision; a good default is 14 pixels.

#### 4. Ensure a good text to background contrast
Upping the font size is a sure way of making your text more legible, but legibility (and as a result, readability) will be diminished by poor contrast between the text and the background on which it rests.

The well-established standard is to place dark text on a light background, or vice versa. Absolutely avoid clashing colors or a barely visible grey on a white background.

Special care needs to be applied to light text on a dark background because it doesn't have the same contrast (even though it first may appear so) as it's cousin opposite: increase the tracking, measures, and leading accordingly.

#### 5. Apply stress and emphasis discreetly
This is partly and editorial principle, partly a typographic one: don't litter text with superfluous underlines, bolding, and italics; apply emphasis and stresses sparingly exactly _for_ added and intentional emphasis.

On a side note, avoid overly long hyperlinks with underlines, particularly on serifed typefaces and even more so at smaller sizes. The default <code><span class="property"><a title="SitePoint.com CSS Reference Guide: text-decoration property" href="http://reference.sitepoint.com/css/text-decoration">font-decoration</a></span>: <span class="attribute">underline</span>;</code> will cut through glyphs with descenders (chiefly g, j, p, q, and y) and make them more difficult to discern. A handy solution is to set no text-decoration and instead use a <code><a title="SitePoint.com CSS Reference Guide: border-bottom property" href="http://reference.sitepoint.com/css/border-bottom"><span class="property">border-bottom</span></a>: <span class="attribute">1px</span>;</code> or only on mouse hover (<code><span class="property">a<a title="SitePoint.com CSS Reference Guide: :hover pseudo-selector" href="http://reference.sitepoint.com/css/pseudoclass-hover">:hover</a></span></code>).

#### 6. Do not set continuous text in full capitals
Ascenders and descenders exist for good reason: they allow us to easily identify words. A word that is set in upper- and lowercase is more recognizable than same word set entirely in uppercase due to the uniformity of the height and baseline of the word. For example, contrast:

<blockquote cite="Hochuli, J. 2008, Detail in Typography, 3rd edition, Hyphen Press, London, p. 24.">
    <p>&lsquo;THE RESULTS OF LEGIBILITY ANALYSES CAN BE CONTRADICTORY, BUT ONE THING IS CLEAR: TEXT SET IN CAPITALS IS HARDER TO READ THAN TEXT SET IN UPPER- AND LOWERCASE. THIS MAY NOT BE PARTICULARLY IMPORTANT IN THE CASE OF INDIVIDUAL WORDS, BUT IT IS FOR LARGE AMOUNTS OF TEXT. THEN TOO, THERE IS ALSO A GREAT DIFFERENCE IN THE AMOUNTS OF SPACE.&rsquo;</p>
</blockquote>

with:

<blockquote cite="Hochuli, J. 2008, Detail in Typography, 3rd edition, Hyphen Press, London, p. 24.">
    <p>&lsquo;The results of legibility analyses can be contradictory, but one thing is clear: text set in capitals is harder to read than text set in upper- and lowercase. This may not be particularly important in the case of individual words, but it is for large amounts of text. Then too, there is also a great difference in the amounts of space.&rsquo;</p>
</blockquote>

If you find yourself needing to set longer strings of text wholly in uppercase alongside regular body copy, consider setting them with a more ample leading in small capitals (<code><a title="SitePoint.com CSS Reference Guide: font-variant property" href="http://reference.sitepoint.com/css/font-variant"><span class="property">font-variant</span></a>: <span class="attribute">small-caps</span>;</code>).

<blockquote cite="Hochuli, J. 2008, Detail in Typography, 3rd edition, Hyphen Press, London, p. 24.">
    <p style="font-variant: small-caps;">&lsquo;The results of legibility analyses can be contradictory, but one thing is clear: text set in capitals is harder to read than text set in upper- and lowercase. This may not be particularly important in the case of individual words, but it is for large amounts of text. Then too, there is also a great difference in the amounts of space.&rsquo;</p>
</blockquote>

#### 7. Give the type space to breathe; set ample measures and leading
Leading straight on (no pun intended) from the close of the last rule, ensure your text has enough room to breathe; give it the space it needs, both vertically and horizontally to ensure a good, crisp contrast for legibility and readability.

Check that lines are not too short requiring jerky, quick dashes of the eye to trace to each following line, but also not too long to get lost when reaching the end of a line and then proceeding to the next. Going hand-in-hand with the line length is leading: provide enough space between lines, but not too much to rip the text apart.

#### 8. Be wary of fonts not designed for screen use
Extending beyond the core <a href="https://secure.wikimedia.org/wikipedia/en/wiki/Web-safe_fonts#Web-safe_fonts" title="Wikipedia (EN): Web typography&thinsp;&mdash;&thinsp;Web-safe fonts">web-safe fonts</a> is an endevour deserving merit, but only select quality typefaces that match the medium you are working with. There is a fantastic abundance of fonts in the world, of which only a subset is good for setting body copy, and an even smaller subset of which has been optimized, or designed specifically for web use.

Look out for good <a href="https://secure.wikimedia.org/wikipedia/en/wiki/Font_hinting" title="Wikipedia (EN): Font hinting">hinting tables</a> and test your font at smaller sizes (10px, 12px, 14px) on a variety of browsers and operating systems to gauge how well the various font rendering engines display the font.

#### 9. Ensure webfont assets are subsetted and cached
When using <a title="SitePoint.com CSS Reference Guide: @font-face property" href="http://reference.sitepoint.com/css/at-fontface"><code><span class="element">@font-face</span></code></a> webfont assets the page size will increase&thinsp;&mdash;&thinsp;the user agent (chiefly the browser) will need to download the font for text to be rendered with it. One way to reduce this load size is to subset the font: remove unneeded glyphs for characters you won't ever be using (e.g. an English web site has little to need for Cyrillic glyphs and visa versa). The second is suggest to user agents to cache the asset for a certain period of time such that subsequent visits don't result in re-downloading the font.

#### 10. Don't use Comic Sans
More of a personal note and frustration. But seriously, why would you use this overused and quite unattractive comic typeface when there are so many others to choose from, including freely licensed ones like <a href="http://klepas.org/comic-jens/#notebook" title="klepas.org: Comic Jens&thinsp;&mdash;&thinsp;no more excuses">Comic Jens</a>.

### And you?

That's my list. What's yours?

<span id="df-logo" class="calloutRight"><img src="/files/images/design-festival-logo-motif.png" alt="An image of the DesignFestival.com logo" title="The DesignFestival.com logo" width="39" height="39" /></span>

<p class="note">This article was originally written by me for, and published on DesignFestival.com&thinsp;&mdash;&thinsp;<em><a href="http://designfestival.com/top-10-dos-and-donts-of-web-typography" title="DesignFestival.com: Top 10 dos and don&rsquo;ts of Web Typography">Top 10 dos and don&rsquo;ts of Web Typography</a></em>. It has been been republished here with permission.</p>
