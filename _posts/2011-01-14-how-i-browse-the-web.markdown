---
layout: post
title: How I browse the Web
published: yes
---

Developers, authors, and service providers of content and applications have an obligation to try to prevent harm from coming to their users by use of their work. Users have a natural inclination in this regard; i.e. looking after yourself. The former group need to remain on top of the latest and best practices to keep their users safe. However, as users are the recipients of both good and bad security, it is they who will benefit most from staying informed

There is a nice quote I remember reading a few years back:

<blockquote cite="Rick Cook">
    <p>Building software is a constant struggle between software engineers trying to build bigger, better and more idiot proof software and the Universe trying to build bigger and better idiots. So far the Universe is winning.</p>
</blockquote>

Although the design vs idiocy struggle isn't really over (my good friend [Andy White](http://arcwhite.org/) reminded me of product warning labels), we have realised that we can teach people a variety of habits and shape their expectations through use. That aside, I think the quote from above can be aptly reworded to fit a 'new' problem we have encountered:

<blockquote>
    <p>Building software is a constant struggle between software engineers trying to build bigger, better, and more secure software and malicious parties trying to find bigger and better loopholes. I&rsquo;m not sure who is winning.</p>
</blockquote>

The onus has always been on the service provider to ensure user security (and privacy), and while that responsibility has not shifted (if it failed on your watch expect legal repercussions), clueing in users will help in the good design vs malicious intent struggle by making life harder for those with ill intentions.

### My beginning on the Web

I have thankfully had very few encounters with malicious software in my almost ten years of working on computers. Before I had access to the Internet I played Diablo <abbr>II</abbr> and Starcraft on an old Windows 98 box that had little to no connection beyond itself (I didn't have the money to afford a <acronym title="Universal Serial Bus">USB</acronym> memory stick back then). When I finally got my own computer with &rsquo;net access it wasn't long before it ran SuSE Linux and after various Linux distributions I now find myself chiefly on a Mac. While Linux and the Mac are generally accredited with being more secure in their integral design than Windows has, the Web remains an interesting playground, and browsing behaviours contribute to privacy and security.

For a long time I had no idea what third-party cookies were, yet alone what a cookie was. JavaScript and Java were analogous to me. <acronym title="HyperText Markup Language">HTML</acronym> was some weird way of writing up what the web page in its rendered finality seemed to do a lot better and prettier, and everything in Flash (when it worked) was absolutely stunning and awesome. Disillusionment swiftly followed as I wanted to publish my own content onto the Web.

It was not until I myself wanted to publish content onto the Web that I began to understand the technologies I was using and even relying on every day. I had become (and still largely am) impatient in my use of software, a characteristic that is widespread in most users of computers. We want to get it as fast as possible, install it as fast as possible, get it going as fast as possible and get the desired results (which may or may no coincide with the program's actual functionality) as fast possible. User manuals seem a concept married in the past, together with big grey boxes and <acronym title="Cathode Ray Tube">CRT</acronym> monitors.

This impatience (and the ease by which we can be distracted it is coupled with) is a major hurdle in finding the interest and dedication to learn about the technologies of the Internet which are used by almost two billion people.

### My learned practices

Two core principles form the foundation of good security and privacy for me: Trust No One (<acronym title="Trust No One">TNO</acronym>) and no or minimized disclosure. Following these tenets can be inconvenient and at times seemingly unnecessarily bothersome but I strongly believe they have kept my financial information secure, my passwords impossible to guess and near impossible to brute force within an average human life time ([if not thousands of years](http://howsecureismypassword.net/)), malware off my computers, and my personal information safe.

Each of the following lessons and practices branch from and support these two principles.

#### A better browser

The first step I took on Windows was leaving Internet Explorer in the dirt and getting a safer browser. While just about all of the major modern browsers nowadays are fairly reliable and secure (and can be tweaked for improvement) the default settings and behaviours still sets them apart. That aside, pick from Firefox, Safari, Chrome, Opera, Epiphany, (and/)or Konqueror.

I primarily use Firefox on my Mac.

#### A password manager

For a long time I withheld from using a password manager or keyring. I gave the one inbuilt in Firefox a spin twice and found it sucked hard the moment I was away from my computer. It did a lot of things well but I also wished it could do a few things more: store secure notes and financial account details. Later I found what I craved in [1Password](http://agilewebsolutions.com/onepassword), which integrates with my browser and phone.

The primary upside of using a good password manager is you stop using the same three or four passwords for all your online accounts, particularly given the likelihood that your passwords were never that good as per their memorability. With a good password manager you can auto-generate pseudo-random maximum [entropy](https://secure.wikimedia.org/wikipedia/en/wiki/Entropy_%28information_theory%29) passwords for every account and have them auto-filled when revisiting a web site later.

There are a bunch of password managers out there supporting a variety of operating systems, browsers, and features&thinsp;&mdash;&thinsp;do some research and fine one that suits you.

#### Dealing with pop-ups &amp; listed malicious content

Third was killing pop-ups, and not just the advertisement variety. Most good browsers have their own in-built pop-up blockers. If your browser doesn't I would reconsider using it at all. Similarly good browsers should automatically stop you from inadvertently accessing listed malicious web sites (and web sites that have been hijacked to serve malicious content) along with phishing and malware.

#### Kicking ads

Although not inherently unsafe or a threat to privacy, ads are worth mentioning here. This is [a contentious issue to some](http://www.infoworld.com/t/applications/firefox-ad-blocker-extension-causes-angst-900), but to me it's dead simple: I refuse to browse the Web glutted with ads, particularly the distasteful, useless, and annoying variety that incessantly get in the way of me trying to do my work. I would probably be quite content with an ad blocker that blocked 'annoying' adverts only but getting a computer to distinguish between the annoying and passable is nigh impossible.

Ultimately my position on adverts is an extension of my strong belief that it is my choice how to render a Web page&thinsp;&mdash;&thinsp;scripting, sudden redirections, pop-ups, and adverts can take away that control and thus I choose how and when to enable them.

To block adverts I use [AdBlock Plus](http://adblockplus.org/).

#### JavaScript execution control

JavaScript (<acronym title="JavaScript">JS</acronym>) is a *powerful* tool for adding a lot of extra pretty and nice features to enhance a Web experience. JavaScript can power enhanced document navigation, event handling (e.g. logging in/out; adding items to a shopping basket), animation, and more. JavaScript can also be used to launch 100 new tabs or windows of your browser, automatically download and execute malevolent software, hijack your accounts on social networking sites, and more.

While JavaScript is generally executed in a [sandbox](https://secure.wikimedia.org/wikipedia/en/wiki/Sandbox_%28computer_security%29) environment and under the terms of a [same origin policy](https://secure.wikimedia.org/wikipedia/en/wiki/Same_origin_policy), one bored afternoon's visit to an off-site link listed on Encyclopedia Dramatica many moons ago caused me to reconsider permitting any and all JavaScript from automatic execution upon opening a Web page.

I use [NoScript](http://noscript.net/) which allows me to make selective decisions about what to allow and what to block by default, while the page has already loaded (e.g. enabling a single embedded Java or Flash applet while continuing to block everything else), and for future visitations to that domain.

There's [a good introductory video on NoScript by CNET on YouTube](http://www.youtube.com/watch?v=GzBqnLgOzwM).

#### Forcing secure connections

Logons to web sites like Facebook or Twitter are kept active over time via [cookies](https://secure.wikimedia.org/wikipedia/en/wiki/HTTP_cookie) through expiry timestamps. When you login to Facebook, a Facebook server notes that you have logged in and issues you a cookie with your account and a session <abbr>ID</abbr> hash, linking your future requests with responses from the server that match your account via that cookie. There is however nothing to stop a third part from intercepting network traffic, noting the cookie, and automatically gaining access to your account by simply making a request to Facebook and sending them your cookie.

Attacks like these are long and well documented, and have been simple to orchestrate for years (and now as easy as clicking through a menu with [Firesheep](http://codebutler.com/firesheep)). The good news is that they are just easy to protect oneself from: <acronym title="HyperText Transfer Protocol Secure">HTTPS</acronym>; an ongoing secure <acronym title="HyperText Transfer Protocol">HTTP</acronym> connection.

Sadly, most web sites that feature user accounts do not offer continued secure logins beyond the actual logon page, including Facebook. Some of these service providers allow for ongoing secure connections over <acronym title="HyperText Transfer Protocol Secure">HTTPS</acronym> but default back to unencrypted <acronym title="HyperText Transfer Protocol">HTTP</acronym> communication, or have links on encrypted pages back to unencrypted ones. I use <a href="https://www.eff.org/https-everywhere"><acronym title="HyperText Transfer Protocol Secure">HTTPS</acronym>-Everywhere</a>, a Firefox plugin by the <acronym title="Electronic Frontier Foundation">EFF</acronym> that rewrites all my requests to a number of popular sites to use <acronym title="HyperText Transfer Protocol Secure">HTTPS</acronym>.

<p><acronym title="HyperText Transfer Protocol Secure">HTTPS</acronym>-Everywhere supports Amazon, Amazon S3, bit.ly, Dropbox, the <acronym title="Electronic Frontier Foundation">EFF</acronym>, Evernote, Facebook, GitHub, <abbr>GMX</abbr>, Google <acronym title="Application Programming Interface">API</acronym>s, Google Search, Hotmail/Live, Identica, Mail.com, NYTimes, PayPal, Twitter, the Washington Post, Wikipedia, and more. You can also write your own <a href="https://www.eff.org/https-everywhere/rulesets">rulesets</a> for additional web sites.</p>

#### Privacy and tracking

Advertisers have been interested in and actively tracking users across the Web for years. If you visit a web site&thinsp;&mdash;&thinsp;even one you like and tend to trust&thinsp;&mdash;&thinsp;it could be serving up advertisements from third parties (e.g. [DoubleClick](http://www.google.com/doubleclick/)) which may attempt to track you across the Web in order to get a sense of your browsing habits, build a profile of you, and then target adverts to you.

At first this sounds somewhat cool, but imagine purchasing a gift (e.g. a wedding ring) for your partner and as a result online adverts begin to display wedding-related sales and services. Now imagine if this computer was shared with your partner, and you haven't proposed yet.

Some of the existing tools noted above (a good ad blocker, good JavaScript execution control, good cookie management, and pop-up blocking) already help in reducing the ability for you to be tracked. In addition I also use [BetterPrivacy](https://addons.mozilla.org/en-US/firefox/addon/6623/) which looks after <acronym title="Local Shared Object">LSO</acronym>s i.e. flash cookies and their speedy deletion. For those who rely on some Flash applets and retaining important data (e.g. preferences for that applet) you can create a whitelist.

<p class="note"><strong>Opt-in or opt-out?</strong> Some advertisement and tracking services offer an opt-out feature&thinsp;&mdash;&thinsp;&lsquo;if you don&rsquo;t want to be tracked via cookies and/or <a href="https://panopticlick.eff.org/">other identifying sticky information</a> click here to create this cookie and/or other identifying sticky information that says you don&rsquo;t want to be tracked&rsquo;. Do not track &ne; do not call, as in telemarketing. Until a specification inclusion in <acronym title="HyperText Markup Language">HTML</acronym> headers is made for a <a href="http://donottrack.us/">&lsquo;do not track&rsquo; variable</a>, opt-in services (which still fall under <acronym title="Trust No One">TNO</acronym>) and the browser tools above will continue be my safeguard against unwanted tracking.</p>

When my privacy is ultimate I switch over to the secure and private browsing modes provided by most good browsers, particularly with insidious tracking methods like those used by the [EverCookie](https://secure.wikimedia.org/wikipedia/en/wiki/Evercookie).

### Closing

#### Keeping on top of it all

Some of these tools and some of my current practices might become defunct or redundant in the coming years as the Internet grows and evolves. Keeping up to date with the latest if not fairly recent best practices can be difficult if you're not working in the security domain or have a penchant for security, and that's fair enough&thinsp;&mdash;&thinsp;if you've gotten this far and haven't broken off to work towards ticking off some of your to-do items then kudos.

I don't really follow any of the major security portals or analyst blogs (besides infrequent visits to [Bruce Schneier's blog](http://www.schneier.com/)), and only tune into the occasional simplified news story of a security or privacy related event when I happen to be watching <abbr>TV</abbr> (which I rarely do these days anyway) to see how it is reported. My springboard for security news currently remains the [Security Now podcast](http://www.grc.com/securitynow.htm) by Steve Gibson (hosted by [the TWiT podcasting network](http://twit.tv/sn) and also available on iTunes). While Steve's site isn't the prettiest ornament on the security Christmas tree and his podcast covers a lot of Windows-related security news (which barely affects me) his coverage remains broad and his explanations are very accessible yet comprehensive.

#### Das Ende

That's it&thinsp;&mdash;&thinsp;those are my core principles and the browser tools I use that support them. I would be interested in hearing what your best practices are and which tools you use to support them.