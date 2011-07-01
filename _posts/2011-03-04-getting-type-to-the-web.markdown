---
layout: post
title: Getting type to the Web
published: yes 
---

The last year and a half has seen a rekindling of the interest in web typography, marked by the popularity of sites like [ilovetypography.com](http://ilovetypography.com) (now trending on 67,000+ subscribers) and the growing number of typography articles pertaining to the subject across the web design and development community. Typography remains central to aesthetics, accessibility, and of course legibility. Those who master it and apply it to the Web have been admired for the ingenuity of their work, both stylistically and in their technical implementation.

Typography brings aesthetic order to information, aiding reading and navigation. Typography differentiates; it is a core element of branding. The bottom line is that good typography when applied to the Web creates web experiences that are easier and more pleasurable to use. This renewed enthusiasm in the field has turned a new page in web typography, and can chiefly be attributed to the rise of web fonts and their growing availability across the browser range, permitting us to extend beyond the core 'web safe' fonts (Andale Mono, Arial, Courier, <acronym title="Times New Roman">TNR</acronym>, Impact, Verdana, Georgia, and Trebuchet MS). Good typography begins with selecting typefaces appropriate to the text being set; the right typeface or group of faces for the right work. Setting a graphic horror novel in <acronym title="Times New Roman">TNR</acronym> or Helvetica would be inappropriate to the genre of the book, and the graphical medium it utilises. However a good page-turner novel (for which a [transitional](https://secure.wikimedia.org/wikipedia/en/wiki/VOX-ATypI_classification#Transitional) typeface like <acronym title="Times New Roman">TNR</acronym> is far better suited) would be difficult to read if it were set in a script typeface.

<blockquote cite="Robert Bringhurst">
    <p>Typography exists to honor content</p>
</blockquote>

Selecting good typefaces is one step and is perhaps made harder now that we have more than the core 'web safe' fonts to work with (or those that are next most likely to be installed). Implementing them for our web sites is another technical hurdle. This article highlights the options for getting type on the Web and then cover each method in detail while retaining a strong focus on web standards.

### Options for bringing fonts to the Web

Browsers implement custom fonts in different ways. This disparity boils down to an open versus closed debate&thinsp;&mdash;&thinsp;locking down the methods to secure the font assets from easy download from the web site which uses them versus a more open model built on trust. To some degree this debate bears similarities to the one that raged when images were first available on the Web, and similarly, these differences in implementation have largely been settled as <acronym title="Web Open Font Format">WOFF</acronym> [is hopefully finalised as a standard](http://blogs.sitepoint.com/2010/08/17/w3c-backs-the-woff-webfont-standard/) by the <acronym title="World Wide Web Consortium">W3C</acronym>.

There are a variety of methods available to us to bringing fonts to the Web for typesetting. They are, in loose historical order of availability:

* installed fonts (mostly web-safe);
* Flash (e.g. <acronym title="Scalable Inman Flash Replacement">sIFR</acronym>) and other <acronym title="JavaScript">JS</acronym> replacement techniques;
* Cuf&oacute;n et al.;
* webfonts: <acronym title="Embedded OpenType">EOT</acronym>/<abbr>EOT</abbr> Lite via <code><span class="element">@font-face</span></code>;
* webfonts: <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> via <code><span class="element">@font-face</span></code>;
* webfonts: <acronym title="Scalable Vector Graphic">SVG</acronym> via <code><span class="element">@font-face</span></code>;
* webfonts: <acronym title="Web Open Font Format">WOFF</acronym> via <code><span class="element">@font-face</span></code>;
* and hosting <span class="amp">&amp;</span> licensing services.

#### Installed fonts

Calling upon installed fonts is the simplest and easiest method. Within our <acronym title="Cascading Style Sheets">CSS</acronym> stylesheets we simply call upon a list of fonts via the <code><span class="property">font-family</span></code> property and order them as per:

* desired
* fallbacks
* generic (e.g. <code><span class="attribute">serif</span></code>, <code><span class="attribute">sans-serif</span></code>, <code><span class="attribute">monospace</span></code>,)

For example, a transitional serif font stack:

<pre><code><span class="element">p</span> {
    <span class="property">font-family:</span>
        <span class="attribute">Baskerville,
        Times,
        'Times New Roman',
        serif</span>;
    }</code></pre>

And a neo-grotesque stack:

<pre><code><span class="element">h1, h2, h3, h4, h5, h6, h7</span> {
    <span class="property">font-family:</span>
        <span class="attribute">Univers,
        Helvetica,
        'Helvetica Neue',
        Arial,
        sans-serif</span>;
    }</code></pre>

If the first available font in the stack is not installed on the client machine it obviously cannot be used for rendering, so it skips to the next attribute in the list, and so on until an available font is found. [Good font stacks](http://articles.sitepoint.com/article/eight-definitive-font-stacks) reflect what is likely to be installed on the machines of our users by taking into account default font libraries for popular operating systems. This allows us to cautiously extend beyond the core 'web-safe' fonts by placing another preferred font in the list which still is quite popular.

#### Flash replacement techniques

Flash replacement is a nifty method of replacing <acronym title="HyperText Markup Language">HTML</acronym> text with Flash text with the help of a JavaScript file. The most popular technique is the <a href="http://www.mikeindustries.com/blog/sifr/" title="mikeindustries.com: sIFR 2.0">Scalable Inman Flash Replacement</a> (<acronym title="Scalable Inman Flash Replacement">sIFR</acronym>).

While it has support for sub-setting, it is not a feasible long-term solution to bringing truly custom fonts to the Web, particularly with its reliance on non-standard technologies and use of JavaScript. It is also performance demanding with a longer page load time (predominately due to the number of requests made for the required Flash, JavaScript, and <acronym title="Cascading Style Sheets">CSS</acronym> files). Its best uses are for setting a single heading or a small series of headings, but it is far from practical for setting body copy.

#### Cuf&oacute;n et al.

A range of other JavaScript replacement options became available in an effort to get the job done without Flash. <a href="http://cufon.shoqolate.com/generate/" title="cufon.shoqolate.com: Cuf&oacute;n">Cuf&oacute;n</a> is perhaps the most popular of these with an online front-end for easy conversion of the font data into JavaScript that provides good support for sub-setting with a range of other options on kerning, scaling, cross object resource sharing (<acronym title="Cross Object Resource Sharing">CORS</acronym>) to limit use for a list of domains.

Cuf&oacute;n converts fonts paths to <acronym title="Vector Markup Language">VML</acronym> (now for the most part deprecated by <acronym title="Scalable Vector Graphics">SVG</acronym>) stored in <acronym title="JavaScript Object Notation">JSON</acronym> and rendered by the JavaScript rendering engine within the user agent. While it has good browser support it also is not a viable long-term solution due to its poor accessibility.

#### webfonts: <acronym title="Embedded OpenType">EOT</acronym>/<abbr>EOT</abbr> Lite

Since the end of 1997 Internet Explorer 4 has supported Embedded OpenType (<acronym title="Embedded OpenType">EOT</acronym>) for use through the <code><span class="element">@font-face</span></code> element that was introduced in the <abbr>CSS2</abbr> specification. Microsoft's <acronym title="Embedded OpenType">EOT</acronym> permitted the download of custom font assets for use in rendering type on a web page (and has seen helped bring writing systems that are not supported by default to the Web) without making those assets useable on the desktop and abetting font copyright infringement.

<p><acronym title="Embedded OpenType">EOT</acronym> subsets, compresses, and finally encrypts TrueType font assets. <acronym title="Cross Object Resource Sharing">CORS</acronym> is provided by way of a &lsquo;trusted roots&rsquo; list. Unsurprisingly with a proprietary compression method, a proprietary encryption/decryption process, and support only in Internet Explorer, <acronym title="Embedded OpenType">EOT</acronym> and even <acronym title="Embedded OpenType">EOT</acronym> Lite (which omits the proprietary <acronym title="MicroType Express">MTX</acronym> compression and the <acronym title="Cross Object Resource Sharing">CORS</acronym> trusted root listing) is a proprietary and non-standard solution as a webfont format.</p>

<p><acronym title="Embedded OpenType">EOT</acronym> files can be created with Microsoft&rsquo;s <a href="https://www.microsoft.com/typography/weft.mspx" title="Microsoft.com: Microsoft Typography&thinsp;&mdash;&thinsp;WEFT"><acronym title="Web Embedding Fonts Tool">WEFT</acronym></a>, or through <code>ttf2eot</code>, an open source implementation of the converter. <acronym title="Web Embedding Fonts Tool">WEFT</acronym> is worth skipping because:</p>
<ul>
    <li>it uses the <acronym title="MicroType Express">MTX</acronym> compression method and is out-performed by other methods like gzip;</li>
    <li>it only works on Windows and tends to perform unreliably under emulators (e.g. Parallels);</li>
    <li><code>ttf2eot</code> does not compress&thinsp;&mdash;&thinsp;use server-side compression instead;</li>
    <li><a href="http://fontsquirrel.com/fontface/generator" title="FontSquirrel.com: Create your own @font-face kits">Font Squirrel&rsquo;s @font-face web front-end</a> to <code>ttf2eot</code> is simple and easy to use.</li>
</ul>

#### webfonts: <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym>

These work in a similar fashion to <acronym title="Embedded OpenType">EOT</acronym> webfonts in being referenced in the <code><span class="element">@font-face</span></code> <code><span class="property">src:</span></code> declaration to be downloaded and used directly to render type.

OpenType/TrueType is a feasible, open method of providing webfonts with a fairly good browser support (Safari 3.1+, Firefox 3.5+, Opera 10+, Chrome 4+; <abbr>IE9</abbr> beta, and Android 2.2+). Of course instantly apparent is that the font assets are not encrypted, bound to any trusted roots, or <acronym title="Cross Object Resource Sharing">CORS</acronym> limitations and are available in a format readily usable on the desktop outside the browser environment (e.g. desktop publishing and word processing) once easily downloaded. Further, sub-setting and compression is not automatic and the responsibility font assets' host.

#### webfonts: <acronym title="Scalable Vector Graphics">SVG</acronym>

These are also part of the <code><span class="element">@font-face</span></code> webfonts specification, <acronym title="Scalable Vector Graphics">SVG</acronym> are referenced in the <code><span class="property">src:</span></code> declaration just like <acronym title="Embedded OpenType">EOT</acronym>, <acronym title="OpenType Font">OTF</acronym>, or <acronym title="TrueType Font">TTF</acronym> fonts.

Again, <acronym title="Scalable Vector Graphics">SVG</acronym> files are not obscured and thus easily available for download for use beyond the web page they are referenced in. Browser support is fairly widespread also (Firefox 3.5+ Chrome 0.3+, Opera 9+, Apple <abbr>iOS1</abbr>+, and Safari 3.1+), and, as with <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> webfonts, sub-setting and compression comes down to the host.

<p class="note"><acronym title="Scalable Vector Graphics">SVG</acronym> files can be gzip compressed into <code>.svgz</code> files.</p> 

#### webfonts: <acronym title="Web Open Font Format">WOFF</acronym>

Flash/JavaScript replacement techniques and then Cuf&oacute;n have shown web typographers and technologists that a dedicated, open, and standardised webfont format was required. Microsoft's <acronym title="Embedded OpenType">EOT</acronym>, Ascender's <acronym title="Embedded OpenType">EOT</acronym> Lite extension, <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> and <acronym title="Scalable Vector Graphics">SVG</acronym> direct font linking all competed on the open ground of the Web in a popularity contest to see which would be adopted first with the most widespread use and browser support. This competition revived the discussion at the <acronym title="World Wide Web Consortium">W3C</acronym> over an open, standardised webfont format. <acronym title="Web Open Font Format">WOFF</acronym> seeks to fill this gap.

Working with the <code><span class="element">@font-face</span></code> declaration <acronym title="Web Open Font Format">WOFF</acronym> combines compressed sfnt-font data (PostScript, TrueType, or OpenType) with a <acronym title="Extensible Markup Language">XML</acronym> meta-data bundle to create an open font file perfect for bringing fonts to the Web. <acronym title="Web Open Font Format">WOFF</acronym> files are created with the open source <code><a href="https://people.mozilla.com/~jkew/woff/" title="people.mozilla.com: ~jkew/woff">sfnt2woff</a></code>. Sub-setting comes down to the host. <acronym title="Cross Object Resource Sharing">CORS</acronym> is available via <acronym title="Hypertext Transfer Protocol">HTTP</acronym> response headers. Ultimately the font data can still be extracted, but, if sub-setted, de-packing a <acronym title="Web Open Font Format">WOFF</acronym> font file to extract useful font data for external use requires effort and it's likely the resulting font data will be limited (due to the sub-setting).

Currently <acronym title="Web Open Font Format">WOFF</acronym> is supported in Firefox 3.6+, WebKit, Chrome 5+, and the <abbr>IE9</abbr> development beta.

#### Hosting <span class="amp">&amp;</span> licensing services

While the search for a good, open, and standardised webfont format was underway many foundries and a number of technologists began exploring their own ideas in bringing custom fonts to the Web. Since a number of web hosting and licensing services have sprung up offering a library of fonts at a variety of free and commercial plans: [TypeKit](http://typekit.com/), [Kernest](http://kernest.com/), [Fontdeck](http://fontdeck.com/), [Monotype's webfonts.fonts.com](http://webfonts.fonts.com/), [Typotheque's webfont service](http://www.typotheque.com/webfonts), &c. Create an account, browse the library, select, pay, inject a few lines of code, refresh; done.

<img src="/files/images/fontdeck-homepage.png" alt="Image: a screenshot of the http://fontdeck.com web site homepage taken December 2010." title="fontdeck-homepage.png" width="624" height="542" />
<p class="caption">The fontdeck.com homepage.</p>

On the technical side these services provide the right or best font (<acronym title="Embedded OpenType">EOT</acronym>, <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym>, <acronym title="Scalable Vector Graphics">SVG</acronym>, and soon <acronym title="Web Open Font Format">WOFF</acronym>) to the right browsers&thinsp;&mdash;&thinsp;if a query is made by a user using Internet Explorer an <acronym title="Embedded OpenType">EOT</acronym> file would be served. Sub-setting is done by the providers, depending on which languages and features you are likely or wish to use, and compression is also handled service-side.

The implementations are largely standards-based and provide very extensive browser support. The web front-ends are easy to use, and have an ample library of quality fonts up for selection between all of the services providers.

### Finding freely-licensed fonts

Now that we can implement custom fonts on the Web using <code><span class="element">@font-face</span></code> you might wonder where to obtain freely-licensed and free of charge quality fonts for use on the Web (and elsewhere). Places worthy of your attention:

* the [openfontlibrary.org](http://openfontlibrary.org/);
* [theleagueofmoveabletype.com](http://theleagueofmoveabletype.com/);
* [fontsquirrel.com](http://www.fontsquirrel.com/), particularly <a href="http://www.fontsquirrel.com/fontface" title="FontSquirrel.com: Pre-generated @font-face kits">the pre-generated <code><span class="element">@font-face</span></code> kits</a>;
* the [webfonts.info wiki listing](http://webfonts.info/wiki/index.php?title=Fonts_available_for_%40font-face_embedding);
* and [Google's Font Directory](https://code.google.com/webfonts) available via their Font <acronym title="Application Programming Interface">API</acronym> directly for linking.


### Using <code>@font-face</code>

If you choose not to use a hosting and licensing service and instead opt to host and reference font files using <code><span class="element">@font-face</span></code> yourself, creating the various font files and getting the syntax for the declaration correct might seem daunting. In reality using a bullet-proof syntax from to Paul Irish and Font Squirrel's <code><span class="element">@font-face</span></code> web front-end it is a piece of cake.

#### Creating <code>@font-face</code> webfont files

If you have a font you want and can use on the web your font is likely to be an <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> or PostScript file, which you need to create compressed and sub-setted <acronym title="Embedded OpenType">EOT</acronym>, <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym>, <acronym title="Web Open Font Format">WOFF</acronym>, and <acronym title="Scalable Vector Graphics">SVG</acronym> files for. The easiest way of meeting all these goals is to use <a href="http://fontsquirrel.com/fontface/generator" title="FontSquirrel.com: Create your own @font-face kits">Font Squirrel&rsquo;s @font-face web front-end</a>:

<img src="/files/images/font-squirrel-webfont-generator-museo500-example.png" alt="Image: a screenshot Font Squirrel&rsquo;s @font-face Kit Generator." title="font-squirrel-webfont-generator-museo500-example.png" width="624" height="742" />
<p class="caption">The Font Squirrel <code><span class="element">@font-face</span></code> Kit Generator.</p>

Simply select and upload your font after which you can take the easy route and use default settings to let Font Squirrel to generate your kit for you to download, or you can take the 'Expert' path and fine tune just about every nuanced detail of the resulting font files. Accessing custom sub-setting allows precision control over sub-setting character types, sub-setting for languages, sub-setting via Unicode tables and ranges, as well as specific characters, presenting a list of all the characters that will be included in the resulting sub-setted font files.

When you are done download your kit ready for deployment.

#### 'Bullet-proof' <code>@font-face</code> declarations

Writing a bullet-proof <code><span class="element">@font-face</span></code> is not difficult, but there are some gotchas to watch out for. Let's get to work.

Basically we want to feed Internet Explorer an <acronym title="Embedded OpenType">EOT</acronym> file and feed other browsers <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> files while providing forward support for <acronym title="Web Open Font Format">WOFF</acronym>-supporting browsers. The order in which we list these files in the <code><span class="property">src:</span></code> declarations is important because (surprise, surprise) Internet Explorer will otherwise needlessly download the other files even though it cannot handle them, wasting page load time on unnecessary additional connections and traffic. Thus, using Museo:

<pre><code><span class="element">@font-face</span> {
  <span class="property">font-family:</span> <span class="attribute">'Museo 500'</span>;
  <span class="property">src:</span> url(<span class="attribute">'Museo500.eot'</span>);
  <span class="property">src:</span> local(<span class="attribute">'?'</span>),
       url(<span class="attribute">"Museo500.woff"</span>) format(<span class="attribute">"woff"</span>),
       url(<span class="attribute">"Museo500.otf"</span>) format(<span class="attribute">"opentype"</span>),
       url(<span class="attribute">"Museo500.svg#museo"</span>) format(<span class="attribute">"svg"</span>);
    }
</code></pre>

Dissecting this, we start by giving the font we want to link a name we can reference for font stacks. The attribute is arbitrary.

Next comes the <acronym title="Embedded OpenType">EOT</acronym> file, first in the <code><span class="property">src:</span></code> list as to avoid <abbr>IE</abbr> having that aforementioned fit.

Then the local <code><span class="property">src:</span></code> call, though we actually omit specifying a local <code><span class="property">src:</span></code> declaration, instead entering &lsquo;?&rsquo;. There are two main reasons for this. Firstly, it prevents the (although rather unlikely) chance that the user will have a font installed (which will be used instead, saving the download) that matches your local attribute but is not actually your desired font wrecking your font stack and possibly your design. It is very unlikely that a font installed will be named &lsquo;?&rsquo;, and under the <a href="http://www.adobe.com/devnet/opentype/afdko/topic_feature_file_syntax.html#9.e" title="adobe.com:OpenType Feature File Specification&thinsp;&mdash;&thinsp;&sect;9.e. name table">OpenType specification</a> any two-byte unicode characters will not work as a font name, excluding Macs entirely from this problem with this solution.

Secondly, there a variety of bugs still evident in Webkit and Mac <abbr>OS X</abbr> in handling local references. If you feel certain that there is a high likelihood that a user could have your desired font installed (e.g. it is a freely available and freely licensed popular typeface like <a href="http://www.josbuivenga.demon.nl/museo.html" title="josbuivenga.demon.nl: MUSEO, a free font from exljbris font foundry">Museo</a>) and it would be unlikely that there could be another font installed that bears the same local reference then making `local` entries is quite OK&thinsp;&mdash;&thinsp;it comes to weighing up the likelihood of either instance.

<p class="note">In case you do want to define a local <code><span class="property">src:</span></code> reference it might seem odd that you can write two slightly different entries for <code>local</code> in <code><span class="property">src:</span></code>, for example: <code><span class="property">src:</span> local("<span class="attribute">Museo 500 Italic</span>"), local("<span class="attribute">Museo500-Italic</span>"),</code>. Huh? This is because some browsers refer to local fonts via their PostScript names. To find the local names for a font under Mac <abbr>OS X</abbr> open Font Book, select your font and select <em>Preview</em> &rarr; <em>Show Font Info</em> (or &#8984; + I). For Windows there is a downloadable <a href="https://www.microsoft.com/typography/TrueTypeProperty21.mspx" title="Microsoft.com: Microsoft Typography&thinsp;&mdash;&thinsp;Font properties extension"><em>Font properties extension</em></a>. Once installed right-click and zip to <em>Properties</em> on a font file and click on the <em>Names</em> tab to see the name details.</p>

<img src="/files/images/font-book-postscript-font-name-screenie.png" alt="Image: Screenshot of Mac OS X Font Book demonstrating the Font Info view mode" title="font-book-postscript-font-name-screenie.png" width="606" height="408" />
<p class="caption">Screenshot of Mac OS X&rsquo;s Font Book demonstrating the Font Info view mode.</p>

Then come the <acronym title="Web Open Font Format">WOFF</acronym> and <acronym title="OpenType">OT</acronym>/<acronym title="TrueType">TT</acronym> <code><span class="property">src:</span></code> definitions, followed by the <acronym title="Scalable Vector Graphics">SVG</acronym> definition. Note the `#museo` in <code><span class="attribute">"Museo500.svg#museo"</span></code>. This is because <acronym title="Scalable Vector Graphics">SVG</acronym> files are <acronym title="Extensible Markup Language">XML</acronym> files and thus we need to reference the starting `div` (e.g. after the opening meta-data) that references the start of the font vector paths.

That's it; done. Credit and kudos goes to <a href="http://paulirish.com/2009/bulletproof-font-face-implementation-syntax/" title="paulirish.com: Bulletproof @font-face syntax">Paul Irish for revealing nitty-gritty details of writing bullet-proof <code><span class="element">@font-face</span></code> syntax definitions</a>.

##### Problem: 'double-setting' styles and variants

When using <code><span class="element">@font-face</span></code>, we are likely to be dealing with separate font files of the same family for the various font styles, e.g., `foobar-regular.otf`, `foobar-italic.otf`, `foobar-bold.otf`, `foobar-smallcaps.otf`, and so forth.

This can become an issue&thinsp;&mdash;&thinsp;consider elements such as `strong` and `em` which are styled with setting the face in a bold and italic respectively. If we declare the italic as we would normally in the <acronym title="Cascading Style Sheets">CSS</acronym> (as we would to get the style into our design) what will happen is that the italic is digitally italicised (fake italics) by the font rendering engine. Result? Our italic font or bold font is taken and digitally italicised or boldened, creating ugly results.

If we avoid or overwrite the various declarations (e.g. <code><span class="element">em</span> { <span class="property">font-style:</span> <span class="attribute">normal</span>; }</code>) and for whatever reason our desired <code><span class="element">@font-face</span></code> font is not available, we rob other fonts in the font-stack of their styling. We overcome both these issues by setting the font styles within the <code><span class="element">@font-face</span></code> declaration, informing the user agent that we are in fact defining an italic or a bold already and that these should be left as is when used to set something that is declared via the <acronym title="Cascading Style Sheets">CSS</acronym> to be italic or bold:

<pre><code><span class="element">@font-face</span> {
  <span class="property">font-family:</span> <span class="attribute">'Museo 500'</span>;
  <span class="highlighted"><span class="property">font-style:</span> <span class="attribute">italic</span>;</span>
  <span class="property">src:</span> url(<span class="attribute">'Museo500.eot'</span>);
  <span class="property">src:</span> local(<span class="attribute">'?'</span>),
       url(<span class="attribute">"Museo500.woff"</span>) format(<span class="attribute">"woff"</span>),
       url(<span class="attribute">"Museo500.otf"</span>) format(<span class="attribute">"opentype"</span>),
       url(<span class="attribute">"Museo500.svg#museo"</span>) format(<span class="attribute">"svg"</span>);
    }
</code></pre>

#### Considerations
Caveats, drawbacks, and compromises exist in everything, and type setting is not excluded. There are a number of considerations that need to be made and kept in mind when putting type on the Web. Many of the compromises that are made in the print world do not apply to the web medium, but others take their place.

##### More &ne; better

Corresponding to the growing availability of new fonts for the Web it is important to note that more fonts does not necessitate instant better typography. Fonts are assets. They may be thought of as a tool in the toolbox; a wallpaper in an interior designer's arsenal. She might have access to a thousand different patterns and colours of wallpaper but if most of them are of a poor quality material or just lack the required pleasing grace that is required to open up and brighten (or darken as the situation merits) the space they are applied to then having another thousand more does little good.

#### For screen or print?

In addition to artistic concerns, many typefaces available as fonts for the Web have not been designed for web (or more accurately screen) use. Type design and typography blossomed in the print industry. There are hundreds of exquisite professionally designed and cut typefaces and families available for all types of print work, but many of them have not been readied for use on a screen. Good fonts that were designed or have been carried across to the digital world have been carefully optimised to render perfectly on a pixel screen. This optimisation is known as *hinting* and good web fonts subsequently have good *hinting tables*.

##### Sub-setting

A digital font is data, and large fonts, i.e. ones that have a large glyph set covering a large character range will begin to become sizeable assets for the user agent to download for rendering. Two techniques are used here to reduce the size of font assets to make them smaller thus reducing network latency.

The first technique is called sub-setting, and is a process of removing glyphs for characters from a font file that are not used. Imagine a great high-quality superfamily with fantastic language support that also boasts additional historical ligatures, various extra stylistic sets, swashes, small-capitals, and more. A single font for even just the roman of this family could exceed a 1024 kB. If none other than <acronym title="American Standard Code for Information Interchange">ASCII</acronym>, Latin 1, Latin Extended-A, and Latin Extended-B is needed (which covers all Western European Languages with a bit of wiggle room) there are a lot of unused characters for which glyphs are downloaded superfluously.

Sub-setting can be done in a font editor (such as [FontForge](http://fontforge.sourceforge.net/), the free software font editor). Simply open your font, select unused character blocks and delete them; save&thinsp;&mdash;&thinsp;make sure you keep a copy of your original though.

##### Compression

The second technique is compression. Compressing font asset is much like compressing files to reduce the size of email attachments. Through compressing font files we can further reduce latency and network traffic. This operation is done server-side, compressing various assets that the user agents requests which upon download are decompressed on the fly and used to render the web page.

The two most popular methods are through external extension modules to the Apache web server; [mod_deflate](http://httpd.apache.org/docs/2.0/mod/mod_deflate.html) and [mod_gzip](http://schroepl.net/projekte/mod_gzip/). It is likely that your web hosting service will provide support for at least one of these (if not it is a worthy request to make&thinsp;&mdash;&thinsp;after all lowering their latency and traffic is in their own operational interest).

If you find yourself using Microsoft's <a href="http://technet.microsoft.com/en-us/library/cc771003%28WS.10%29.aspx" title="Microsoft.com: IIS 7.0 Documentation&thinsp;&mdash;&thinsp;Using HTTP Compression (IIS 7.0)"><acronym title="Internet Information Services">IIS</acronym> there is a <acronym title="Hypertext Transfer Protocol">HTTP</acronym> Compression setting</a> that can be enabled and tuned.

###### Configuring mod_deflate

Once installed and enabled we can configure mod_deflate in our `.htaccess` file:

<pre><code># Compression using deflate
AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css

&lt;FilesMatch "\\.(js|css|html|htm|php|xml|txt|otf|ttf|eot|svg|woff)$">
    SetOutputFilter DEFLATE
&lt;/FilesMatch>
</code></pre>

In `FilesMatch` list the file extensions for which files mod_deflate should compress.

###### Configuring mod_gzip

Similarly mod_gzip can also be configured in the `.htaccess` file:

<pre><code># Gzips content if possible
&lt;IfModule mod_gzip.c>
    mod_gzip_on Yes
    mod_gzip_dechunk Yes
    mod_gzip_item_include file \.(html?|txt|css|js|php|pl|otf|ttf|eot|svg|woff)$
    mod_gzip_item_include handler ^cgi-script$
    mod_gzip_item_include mime ^text\.*
    mod_gzip_item_include mime ^application/x-javascript$
    mod_gzip_item_include mime ^application/json$
    mod_gzip_item_include mime ^application/vnd.ms-fontobject$
# There is no content-type for OTF yet, so we can get away by just
# listing the extension in the mod_gzip_item include file listing.
# For the sake of being good I have added the vendor-specific
# IANA content-type for EOT.
mod_gzip_item_exclude mime ^image\.*
mod_gzip_item_exclude rspheader ^Content-Encoding:.*gzip.*
    mod_gzip_send_vary On
&lt;/IfModule>
</code></pre>

Just like mod_deflate's `FilesMatch` using `mod_gzip_item_include file` we can list the file extensions for files that mod_gzip should seek to compress. The content types can also be listed via the `mod_gzip_item_include mime` lines by notating the [IANA media types](http://www.iana.org/assignments/media-types/) as done for the vendor-specific <acronym title="Embedded OpenType">EOT</acronym> <code><a href="http://www.iana.org/assignments/media-types/application/vnd.ms-fontobject" title="IANA.org&thinsp;&mdash;&thinsp;vnd.ms-fontobject content-type">vnd.ms-fontobject</a></code>.

You can test how well compression is performing through a variety of browser developer plugins or by using Mark Nottingham's REDbot, a robot that checks <acronym title="Hypertext Transfer Protocol">HTTP</acronym> resources for common problems and pitfalls. For example, when checking <code><a href="http://redbot.org/?uri=http%3A%2F%2Fwww.sitepoint.com%2F" title="REDbot: &lt;http://www.sitepoint.com/&gt;">http://sitepoint.com</a></code> REDbot notes via the `Content-Encoding` that mod_gzip is in use. When <a href="http://redbot.org/?descend=True&uri=http://www.sitepoint.com/" title="REDbot: &lt;http://sitepoint.com&gt;&thinsp;&mdash;&thinsp;Checking assets">checking the assets</a> we can see that 84% of the original size of the page (when decompressed) is saved through the use of mod_gzip, with detailed figures for the various assets.

##### Caching

FInally we can also cache our font files reducing both latency and network traffic. Caching allows us to inform the user agents that access our site and download our assets that some of the assets are unlikely to change in the foreseeable future, and as such downloading them again when accessing out site at a later stage will be a waste of time and data&thinsp;&mdash;&thinsp;just store ('cache') these assets in the user agent's cache locally. Assets that would be unlikely to change would likely include stylesheets (`.css` files), JavaScript files for site functionality (`.js` script files) and of course font assets.

We can cache various assets via the `.htaccess` file by again selecting a range of content types with `FilesMatch` and then setting a maximum time that these assets should be cached by user agents before downloading the asset again (to ensure cached copies remain updated). Note: the `max-age` time is set in seconds (here 2592000 seconds = 43,200 minutes = 720 hours = 30 days).

<pre><code># Cache following file types for one month
&lt;FilesMatch ".(js|jpeg|jpg|...|otf|ttf||eot|svg|woff)$">
    Header set Cache-Control "max-age=2592000"
&lt;/FilesMatch>
</code></pre>

### And that's it!

Now empowered to apply custom fonts onto the Web either self-hosted or via a web font licensing and hosting service be sure to look out for the second article in the series on styling that freshly set type all pretty.

<span id="df-logo" class="calloutRight"><img src="/files/images/design-festival-logo-motif.png" alt="An image of the DesignFestival.com logo" title="The DesignFestival.com logo" width="39" height="39" /></span>

<p class="note">This article was originally written by me for, and published on DesignFestival.com&thinsp;&mdash;&thinsp;<em><a href="http://designfestival.com/getting-type-to-the-web/" title="DesignFestival.com: Getting Type to the Web">Getting Type to the Web</a></em>. It has been been republished here with permission.</p>
