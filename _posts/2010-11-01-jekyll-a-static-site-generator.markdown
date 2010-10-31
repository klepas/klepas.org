---
layout: post
title: Jekyll, a static site generator
published: yes
---

When I decided to relaunch my web site I chose to give WordPress the flick and try out <a href="http://wiki.github.com/mojombo/jekyll" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll">Jekyll</a>, a Ruby-based static site generator. Jekyll? In the documentation it is described thus:

<blockquote>
    <p>Jekyll at its core is a text transformation engine. The concept behind the system is this: you give it text written in your favorite markup language, be that Markdown, Textile, or just plain <acronym title="HyperText Markup Language">HTML</acronym>, and it churns that through a layout or series of layout files. Throughout that process you can tweak how you want the site <acronym title="Uniform Resource Locator">URL</acronym>s to look, what data gets displayed on the layout, and more. This is all done through strictly editing files, and the web interface is the final product.</p>
</blockquote>

Jekyll is a blog-aware, static site generator. It uses a set of template or layout files, the associated <acronym title="Cascading Style Sheets">CSS</acronym> files, and plain text files for the posts. The posts can use the Markdown format or another similar markup language. Jekyll grabs the post markup and inserts it into the layouts, spitting out standard <acronym title="HyperText Markup Language">HTML</acronym> markup&thinsp;&mdash;&thinsp;along with linked files (any <acronym title="Cascading Style Sheets">CSS</acronym>, JavaScript, images, and the like)&thinsp;&mdash;&thinsp;ready for you to upload to your web server. There is no content management system, no database, and no specific language support on the web server required; your site is a collection of plain old static <acronym title="HyperText Markup Language">HTML</acronym> files.

Switching back to static markup may at first seem like a reversion to the late 1990s. Yet Jekyll is a simple and elegant system that mimics the characteristics of a dynamic site&thinsp;&mdash;&thinsp;drawing content from a database and inserting it into templates via a <acronym title="Content Management System">CMS</acronym>&thinsp;&mdash;&thinsp;without all that complexity. As a firm believer in the <acronym title="Keep It Simple Stupid">KISS</acronym> principle (Keep It Simple, Stupid), I always try to find the right tool for the job, and Jekyll is a simple solution to a common problem: "I want my own customised blog." Jekyll is also flexible enough that it can easily be used for other tasks. For example, GitHub uses it to drive GitHub Pages.

This article describes using Jekyll to build a web site: from downloading it, setting up a development environment, and hacking up template files. I conclude with a word on maintaining updates between your development instance (for example adding new blog entries) and synchronising them to your web server. Note that I wrote this piece from a designer's perspective. Although I had a number of technical hurdles to hop over, Jekyll remains rather simple; for instance, using Jekyll's template system and Liquid tags is easier than hacking a design as a WordPress theme. I intend this article to be as designer-friendly as possible.

Setting up a Jekyll blog is relatively smooth-going and boils down to a few straightforward steps.

### Setting up your development environment

Jekyll is written in Ruby, so you will need to install it. It is as simple as <a href="http://www.ruby-lang.org/en/downloads/" title="Download the latest Ruby">downloading the latest Ruby version</a> for your platform and following the installation instructions. The Ruby installation also includes the RubyGems packaging system, and allows you to download and install other  Ruby libraries and programs. If you are using Windows, choose the one-click installer, and make sure you tick the *Enable RubyGems* option when running the installer.

We will be fetching Jekyll from <a href="http://gemcutter.org/" title="RubyGems.org&thinsp;&mdash;&thinsp;a Ruby gem host">the Gemcutter RubyGem hosting repository</a>, but we first need to install the Gemcutter program.

If you are on Mac <abbr>OS X</abbr> or Linux, open a command prompt and enter the following commands:

<pre><code>$ sudo <span class="element">gem</span> <span class="property">install</span> <span class="attribute">gemcutter</span>
⋮
Successfully installed gemcutter-0.1.7
1 gem installed
Installing ri documentation for gemcutter-0.1.7...
Installing RDoc documentation for gemcutter-0.1.7...
$ sudo <span class="element">gem</span> <span class="property">tumble</span></code></pre>

The `tumble` command will simply make the RubyGems installer query the Gemcutter repository first, when downloading RubyGem packages. This ensures that Jekyll is downloaded from the Gemcutter repository.

Now we can download and install Jekyll:

<pre><code>$ sudo <span class="element">gem</span> <span class="property">install</span> <span class="attribute">jekyll</span></code></pre>

If you are on Windows you need to be entering the commands at the Windows command prompt (<em>Start &rarr; Run&hellip;</em> and enter `cmd`):

<pre><code>C:\> <span class="element">gem</span> <span class="property">install</span> <span class="attribute">gemcutter</span>
C:\> <span class="element">gem</span> <span class="property">tumble</span>
C:\> <span class="element">gem</span> <span class="property">install</span> <span class="attribute">jekyll</span></code></pre>

Jekyll, like all good software, is modular and does one task very well, relying on other programs and libraries for additional functionality&thinsp;&mdash;&thinsp;after all, why reinvent the wheel? This modularity also gives us choice: you can pick and choose from a variety of slightly different tools that perform similar tasks to extend Jekyll, depending on your preferences. For example, if you'd rather write your blog posts in <a href="http://www.textism.com/tools/textile/" title="The Textile markup language">Textile</a> instead of <a href="http://daringfireball.net/projects/markdown/" title="DaringFireBall.com&thinsp;&mdash;&thinsp;The Markdown markup language">Markdown</a>, you can. For me, however, the default (Markdown) does the trick, and Gem only needs a small number of other <a href="http://gemcutter.org/gems/jekyll" title="RubyGems.org: Jekyll">dependencies</a>, which are fetched automatically.

For a full list of available gems that extend Jekyll, see the list within <a href="http://wiki.github.com/mojombo/jekyll/install" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Install instructions">the install instructions for Jekyll</a> on GitHub.

### Creating the basic file structure and some posts

Now with Jekyll installed let us set up the file system structure. First, create a new directory for you to work in. I put mine in `~/Sites/klepas`. Move into this new directory and create the following subdirectories and files:

* a plain text file named `_config.yml`
* a directory named `_layouts`
* a directory named `_posts`
* a file for our home page: `index.html`

That done we can execute Jekyll by issuing the `jekyll` command at the command prompt. You will notice that Jekyll creates the directory &lsquo;`_site`', which now holds an `index.html` file. If we had our web site and configuration files set up at this point, our finished web site would now be built and ready in the `_site` directory.

Let us examine this file structure in closer detail:

#### `_config.yml`

As the filename suggests, this is where your Jekyll configuration lies. It's typically only a few lines long and allows you to avoid having to specify optional flags every time you run Jekyll from the command line; just stick them into `_config.yml` and Jekyll will use them every time it is run. For more info on Jekyll configuration see the <a href="http://wiki.github.com/mojombo/jekyll/configuration" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Configuration">configuration page on the Jekyll wiki</a>.

#### `_layouts/`

The `_layouts` directory holds the web site templates, known as `layouts` in the world of Jekyll. Layouts use the <a href="http://www.liquidmarkup.org/" title="LiquidMarkup.org">Liquid</a> template language. When Jekyll is run, your posts are injected into the layouts using the Liquid <code><span class="attribute">&#123;&#123; content }}</span></code> tag.

Layouts are called upon at the beginning of each post in a string of variables called the <a href="http://wiki.github.com/mojombo/jekyll/yaml-front-matter" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: YAML Front Matter">YAML front matter</a> that direct how Jekyll will process the file. This allows you to select a different template for each blog post or page as desired.

#### `_posts/`

As the name suggests, this is where you keep your posts. Posts are plain text files that are named with the format `$YEAR-$MONTH-$DATE-$TITLE.$FORMAT`. So, for example, I have a post from 25 October 2008 titled "Whose Garamond is it anyway?" which would sit in my posts directory as `2008-10-25-whose-garamond-is-it-any.markdown`. It ends in `.markdown`, but if you use Textile your post filenames would end in `.textile` instead.

### Creating layouts and posts

So, let us create a few layouts and some posts. First, the layouts.

We will create two templates for us to pick from: `base.html`, which is our base layout and `post.html`, which extends the base layout and is used for posts.

The base layout includes the <acronym title="HyperText Markup Language">HTML</acronym> doctype, the `head` tag, and the container `div` tag that contains the Liquid <code><span class="attribute">&#123;&#123; content }}</span></code> tag:

<pre><code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;

&lt;html xmlns="http://www.w3.org/1999/xhtml"  
    xml:lang="en" lang="en"&gt;
  &lt;head&gt;
    &lt;title&gt;<span class="attribute">&#123;&#123; page.title }}</span>&lt;/title&gt;
    &lt;meta http-equiv="content-type" content="text/html; charset=UTF-8" /&gt;
    &lt;meta http-equiv="content-language" content="en" /&gt;
    &lt;link rel="stylesheet" href="/css/screen.css" type="text/css" media="screen" /&gt;
    &lt;link rel="stylesheet" href="/css/print.css" type="text/css" media="print" /&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;div id="container"&gt;
      <span class="attribute">&#123;&#123; content }}</span>
    &lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;</code></pre>

As this is the base layout, everything except the contents of the container `div` will appear on all web pages of your Jekyll site. This becomes even more interesting when we add layouts that extend the base layout. Our post layout, `post.html`, does just that:

<pre><code>---
layout: <span class="element">base</span>
---
    <span class="property">&#123;% include header.html %}</span>
    <span class="property">&#123;% include nav.html %}</span>
      &lt;div class="entry-content">
        &lt;h2><span class="attribute">&#123;&#123; page.title }}</span>&lt;/h2>
        &lt;span>Published: &#123;&#123; page.date }}&lt;/span>
        <span class="attribute">&#123;{ content }}</span>
      &lt;/div></code></pre>
      
In the opening few lines of the post layout file, we included a YAML front matter note that defines this layout as an extension of the base layout: <code>layout: <span class="element">base</span></code>. This means the contents of `post.html` will be pulled into the container `div` of the base layout thanks to the <code><span class="attribute">&#123;&#123; content }}</span></code> Liquid tag. This is also true for all other pages: `index.html`, `about.html`, `archive.html`, and any others as desired.

You may have spotted the two uses of the <code><span class="property">&#123;% include %}</span></code> directive at the start of the post template:

<pre><code>    <span class="property">&#123;% include header.html %}</span>
    <span class="property">&#123;% include nav.html %}</span></code></pre>

Missing from the minimal file structure example outlined above is the `_includes` directory, which holds little content snippets that you can reuse in layouts and static pages. They could be the site navigation, the header, the footer, or even a very small piece of content like a call-to-action message that you want to include in more than one layout. Using the two Liquid tags above, I am telling Jekyll to fetch and include the contents of `_includes/header.html` and `_includes/nav.html` into my post layout upon site generation.

When creating individual post files you also include a YAML front matter note. You can specify whichever fields you like&thinsp;&mdash;&thinsp;a title or date, for example&thinsp;&mdash;&thinsp;and those values will be available in your layouts. If you specify a layout it will be used for the post. For example:

<pre><code>---
layout: <span class="element">posts_xmas-theme</span>
title: Merry Christmas!
---
</code></pre>

The above post will be displayed using a special Christmas theme layout called <code><span class="element">posts_xmas-theme</span></code>, and has a title value that can be output in a layout as <code><span class="attribute">&#123;&#123; page.title }}</span></code>.

<p class="note"><strong>Permalinks:</strong> if you are worried about permalinks at this point, Jekyll has it under control. The documentation shows how to <a href="http://wiki.github.com/mojombo/jekyll/permalinks" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Permalinks">specify the appearance of your permalinks in the <code>_comfig.yml</code> file</a>.</p>

### A short introduction to Liquid

The <a href="http://www.liquidmarkup.org/" title="LiquidMarkup.org">Liquid</a> template language was developed by the folks over at <a href="http://www.shopify.com/" title="Shopify.com">Shopify</a>, the e-commerce system. It was designed to allow designers and front-end developers to modify their shopping interfaces without affecting the security on the server they are built on.

Liquid is quite simple to learn: there are two types of markup within Liquid, *output* and *tag*. Output markup (which is output to text) is enclosed by double curly brackets (or braces), like so:

<pre><code>Hello <span class="attribute">&#123;&#123; name }}</span>
Hello <span class="attribute">&#123;&#123; user.name }}</span></code></pre>

Tag markup (statements that are not output as text) is enclosed by matched pairs of braces and percent signs, like so:

<pre><code><span class="property">&#123;% if user.name == 'tobi' %}</span>
  Welcome, Tobi!
<span class="property">&#123;% elsif user.name == 'bob' %}</span>
  Go away, Bob!
<span class="property">&#123;% endif %}</span></code></pre>

Tag markup allows `if ... else` operations, `for` loops, variable assignment, and more. Output markup also allows you to filter the output through Liquid filters; for example, to change text to uppercase:

<pre><code>Hello <span class="attribute">&#123;&#123; 'tobi' | upcase }}</span></code></pre>

To change a date to a different format, you can do the following to output a date like "November 24, 2009":

<pre><code>Hello <span class="attribute">&#123;&#123; now | date: "%B %d, %Y" }}</span></code></pre>

Liquid supports a broad range of filters, including date formatting, capitalisation, array element selection, markup manipulation (for example, <code><span class="attribute">strip_html</span></code> which strips <acronym title="HyperText Markup Language">HTML</acronym> from a string), replace functions, truncate functions, and simple mathematical operations like addition, subtraction, multiplication, and division. <a href="http://wiki.github.com/mojombo/jekyll/liquid-extensions" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Liquid Extensions">Jekyll extends these filters with a few more of its own</a>.

For more information on Liquid output and tag markup, see the <a href="http://wiki.github.com/tobi/liquid/liquid-for-designers" title="GitHub.com&thinsp;&mdash;&thinsp;Liquid: Liquid for Designers">Liquid for Designers</a> documentation page on the Liquid wiki on GitHub.

### Creating pages

You may probably be wondering now how you create pages like the home page and archives page.

The `index.html` file you created earlier is essentially your home page. All other `.html` and `.markdown` (or `.textile`, and so on) files in the root directory will also be processed by Jekyll. For example, if you create a file called `about.html` in the root of the Jekyll file structure, it will be placed in the root of the generated site and could serve as your About page.

Pages like the index page can be entirely what you want them to be. You could, for example, pull in the latest three posts, with the latest featuring a large heading and the first 120 words styled in an eye-catching manner, with the other two posts appearing smaller and alongside each other, below the latest. The following is an example `index.html` file; it opens with a title and a template specified in YAML, and is populated using a range of Liquid extensions to pull in content from the posts directory or otherwise:

<pre><code>---
layout: <span class="element">base</span>
title: The Title of Your Web Site
---
    <span class="property">&#123;% include header.html %}</span>
    <span class="property">&#123;% include nav.html %}</span>
    <span class="property">&#123;% for post in site.posts limit:1 %}</span>
      &lt;div id="container">
        &lt;div class="page-nav-top">
          <span class="property">&#123;% if post.previous %}</span>
            &lt;span class="page-nav-item">
              &lt;a rel="prev" href="<span class="attribute">&#123;&#123; post.previous.url }}</span>/" 
                  title="View <span class="attribute">&#123;&#123; post.previous.title }}</span>"
              >&amp;larr; View previous article&lt;/a>
            &lt;/span>
          <span class="property">&#123;% endif %}</span>
          <span class="property">&#123;% if post.next %}</span>
            &lt;span class="page-nav-item">
              &lt;a rel="next" href="<span class="attribute">&#123;&#123; post.next.url }}</span>/" 
                  title="View <span class="attribute">&#123;&#123; post.next.title }}</span>"
              >View next article &amp;rarr;&lt;/a>
            &lt;/span>
          <span class="property">&#123;% endif %}</span>
        &lt;/div> &lt;!-- /.page-nav-top -->
        &lt;div class="entry-content">
          &lt;h2 class="clear">
            &lt;a href="<span class="attribute">&#123;&#123; post.url }}</span>/" title="<span class="attribute">&#123;&#123; post.title }}</span>"> 
              <span class="attribute">&#123;&#123; post.title }}</span>
            &lt;/a>
          &lt;/h2>
         &lt;span class="date" 
              title="<span class="attribute">&#123;&#123; post.date | date_to_xmlschema }}</span>">
            &lt;span class="published">Published: &lt;/span>
            &lt;span class="day"><span class="attribute">&#123;&#123; post.date | date: '%d' }}</span>&lt;/span>
            &lt;span class="month">
              &lt;abbr><span class="attribute">&#123;&#123; post.date | date: '%b' }}</span>&lt;/abbr>
            &lt;/span>
            &lt;span class="year"><span class="attribute">&#123;&#123; post.date | date: '%Y' }}</span>&lt;/span>
          &lt;/span>
          <span class="attribute">&#123;&#123; post.content }}</span>
        &lt;/div> &lt;!-- /.entry-content -->
      &lt;/div> &lt;!-- /#container -->
    <span class="property">&#123;% endfor %}</span>
    <span class="property">&#123;% include footer.html %}</span></code></pre>

As you can see again there are a number of includes for the site header, navigation, and at the end a footer. The main part of the template is a loop:

<pre><code><span class="attribute">&#123;&#123; for post in site.posts limit:1 }}</span></code></pre>

This tells Jekyll to fetch the posts in the `_posts` directory, limiting the results to one: the latest post.

Having selected only a single post, we can create chronological "Next" and "Previous" navigation links using the values <code><span class="attribute">post.previous</span></code> and <code><span class="attribute">post.next</span></code>. These values will be true if a previous or next post&thinsp;&mdash;&thinsp;chronologically speaking&thinsp;&mdash;&thinsp;is available. If they are available we extract the <acronym title="Uniform Resource Indicator">URI</acronym> and title to output a link.

<p class="note"><strong>No documentation:</strong> the <code><span class="attribute">post.previous</span></code> and <code><span class="attribute">post.next</span></code> tags are <a href="http://github.com/mojombo/jekyll/issues/closed#issue/74" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Issue #74: Allow chronological linking of preceding/following posts between posts">currently undocumented</a>, but work perfectly.</p>

The latest posts title is output with <code><span class="attribute">post.title</span></code> and the link is created using <code><span class="attribute">post.url</span></code>. Every post has a date, so we create a little microformat goodness using <code><span class="attribute">post.date</span></code>. Finally, and quite simply, we output the post's body with <code><span class="attribute">post.content</span></code>.

Similarly, an archive page is also easy to build:

<pre><code>---
title: Archives
layout: <span class="element">base</span>
---
    <span class="property">&#123;% include header.html %}</span>
    <span class="property">&#123;% include nav.html %}</span>
    &lt;div id="container" class="archives">
      &lt;div class="index">
        &lt;h2>&lt;em>Notebook archives&lt;/em>&hellip;&lt;/h2>
        &lt;ul>
          <span class="property">&#123;% for post in site.posts %}</span>
            &lt;li>
              &lt;a href="<span class="attribute">&#123;&#123; post.url }}</span>/#notebook" title="<span class="attribute">&#123;&#123; post.title }}</span>">
                &lt;span class="date">
                  &lt;span class="day"><span class="attribute">&#123; post.date | date: '%d' }}</span>&lt;/span> 
                  &lt;span class="month">&lt;abbr><span class="attribute">&#123;&#123; post.date | date: '%b' }}</span>&lt;/abbr>&lt;/span>
                  &lt;span class="year"><span class="attribute">&#123;&#123; post.date | date: '%Y' }}</span>&lt;/span>
                &lt;/span>
                &lt;span class="title"><span class="attribute">&#123;&#123; post.title }}</span>&lt;/span>
              &lt;/a>
            &lt;/li>
          <span class="property">&#123;% endfor %}</span>
        &lt;/ul>
      &lt;/div> &lt;!-- /.index -->
    &lt;/div> &lt;!-- /#container.archives -->
   <span class="property">&#123;% include footer.html %}</span></code></pre>

This time we use the same `for` loop: <code><span class="property">&#123;% for posts in site.posts %}</span></code>, to grab all the posts. Within the loop we create list items for each post and output the posts' titles and dates. That is all there is to it.

### Other directories and files

Apart from the specific directories and files mentioned above, all other directories and files are handled by Jekyll as expected and will be included in the generated site build in `_sites/` when Jekyll is run. Thus, a `css/` and `js/` directory and its contents, a favicon, and whatever else will all be added to the site build.

### Testing your site locally

Jekyll comes with a simple web server that allows you to point your web browser over to `http://localhost:4000/` and view your site. To enable the web server append `--server` when executing Jekyll:

<pre><code>$ <span class="element">jekyll</span> --server</code></pre>

Even better, if you are actively updating and making changes, a useful flag to append to the `jekyll` command is `--auto`. It will update the contents of the `_site` directory automatically for you when a file within the Jekyll structure changes:

<pre><code>$ <span class="element">jekyll</span> --server --auto</code></pre>

You can also add `auto: true` to the configuration file so that you can avoid having to type it in every time.

<p class="note"><strong>Version control:</strong> if you want to track your Jekyll files in a version control system, it is recommended to make an exception for the <code>_site</code> directory. This is because the files in the <code>_site</code> directory are bound to change a lot, particularly during the development phase.</p>

### Deploying your web site

Deploying your generated static site is just a matter of copying the output in `_site` to your web server. You could use <acronym title="File Transfer Protocol">FTP</acronym> to upload your files, but there are a number of automated methods that make life easier, particularly when you just want to upload the new changes since the last upload.

My preferred current method is to use <code><span class="element">rsync</span></code>, a little <span class="caps">UNIX</span> utility written by Canberra locals Andrew Tridgell and Paul Mackerras. <code><span class="element">rsync</span></code> synchronises data from one location to another, and in doing so only sends changes rather than full files where possible. You could either run this each time you update your site, or via <a href="http://github.com/henrik/henrik.nyh.se/blob/master/tasks/deploy" title="GitHub.com&thinsp;&mdash;&thinsp;Henrik Nyh&rsquo;s Jekyll deployment bash script">a task script</a>:

<pre><code>$ <span class="element">jekyll</span> &amp;&amp; <span class="element">rsync</span> -avz --delete _site/ <span class="attribute">username</span>@<span class="property">server.com</span>:path/</code></pre>

There are <a href="http://wiki.github.com/mojombo/jekyll/deployment" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Deployment">a range of other, more complex automated methods</a>, but they are beyond the scope of this article.

### Comments&hellip; or lack thereof

As a static site generator without any dynamic extensions Jekyll has no support for adding comments dynamically. There are methods of adding commenting functionality via a third party or similar commenting service, such as <a href="http://dcreager.net/2009/08/07/disqus-comments/" title="dcreager.net&thinsp;&mdash;&thinsp;Adding Disqus comments to Jekyll">DISQUS Comments</a>.

I have personally decided to avoid comments; besides avoiding having to deal with them at all (code-wise, styling-wise, spam-wise&thinsp;&mdash;&thinsp;yay!), the best feedback I have ever received were face-to-face or directly via email. I also echo some of the sentiments raised by Alex Payne in his article, <a href="http://al3x.net/2009/02/24/why-no-comments-more-everything-buckets.html" title="al3x.net&thinsp;&mdash;&thinsp;Why I Don&rsquo;t Allow Comments, and More on Everything Buckets">Why I Don&rsquo;t Allow Comments, and More on Everything Buckets</a> in regards to fostering a higher quality discussion.

### In closing...

Despite blog <acronym title="Content Management System">CMS</acronym>s as powerful as WordPress, Movable Type, and so on, I hope you can now see why I found it worth reverting to a simplistic and rudimentary system like Jekyll: use the right tool for the job. Jekyll is a breeze to pick up; its learning curve is certainly less steep than say theme design or hacking for WordPress, in my experience.

<p class="note"><strong>Migrating from your existing blog:</strong> you can find instructions for migrating from an existing blog&thinsp;&mdash;&thinsp;Wordpress, Moveable Type, and others&thinsp;&mdash;&thinsp;in the <a href="http://wiki.github.com/mojombo/jekyll/blog-migrations" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Blog Migrations">Jekyll documentation on GitHub</a>.</p>

With GitHub Pages using Jekyll, it is common to see many Jekyll users sharing their Jekyll blog sources openly via GitHub. There is <a href="http://wiki.github.com/mojombo/jekyll/sites" title="GitHub.com&thinsp;&mdash;&thinsp;Jekyll: Example sites">a listing of Jekyll-generated sites</a> in the documentation, along with links to their respective GitHub repositories when available. These are great to browse through for some insight on how other Jekyll users have built their web sites.

Learning curves aside, if you are after a simplistic blog tool construction-wise that does not require multiple users or a fully featured web publishing interface, then Jekyll could easily do the trick. And be assured, the sophistication of the final output for Jekyll can generate beautiful multi-layout blogs akin to WordPress.

Ultimately, I changed to Jekyll because WordPress seemed like an overkill and I was up for learning something new. I hope this article serves to help you if you are experiencing a similar predicament.

<p class="note">This article was originally published on <a href="http://articles.sitepoint.com/article/jekyll-sites-made-simple" title="SitePoint.com&thinsp;&mdash;&thinsp;Jekyll: Sites Made Simple">SitePoint.com&thinsp;&mdash;&thinsp;Jekyll: Sites Made Simple</a>. I wanted to update and re-publish it here for archiving and such that others could potentially stumble upon it.</p>