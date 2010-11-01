---
layout: post
title: How I (safely) browse the web
published: no
---

There is a nice quote I remember reading a few years back:

<blockquote cite="Unknown">
    <p>Building software is a constant struggle between software engineers trying to build bigger, better and more idiot proof software and the Universe trying to build bigger and better idiots. So far the Universe is winning.</p>
</blockquote>

The design vs idiocy struggle is largely over. We have realised that we can teach people both good and bad habits, and shape their expectations through use. Meanwhile we have also collectively become impatient in our use of software. We want to get it as fast as possible, install it as fast as possible, get it going as fast as possible and get the desired results (which may or may no coincide with the program's functionality) as fast possible. User manuals seem a concept married in the past, together with big grey boxes and <acronym title="Cathode Ray Tube">CRT</acronym> monitors.

I think the quote from above can be more aptly reworded to fit a 'new' problem we have encountered:
<blockquote>
    <p>Building software is a constant struggle between software engineers trying to build bigger, better, and more secure software and malicious programmers trying to find bigger and better loopholes. I&rsquo;m not sure who is winning.</p>
</blockquote>

I have thankfully had very few encounters with malicious software in my almost ten years of working on computers. Before I had access to the Internet I played Diablo I and Starcraft on an old Windows 98 box that had little to no connection beyond itself (I didn't have the money to afford a USB memory stick back then). When I finally got my own computer with &rsquo;net access it ran SUSE Linux and after various Linux distributions I now find myself chiefly on a Mac. While Linux and the Mac are generally accredited with being more secure in their integral design than Windows has, the web remains an interesting playground, and browsing behaviours contribute to privacy and security.

For a long time I had no idea what third-party cookies were, yet alone what a cookie was. JavaScript and Java were analogous to me. <acronym title="HyperText Markup Language">HTML</acronym> was some weird way of writing up what the web page in its rendered finality seemed to do a lot better and prettier, and everything in Flash (when it worked) was absolutely stunning and awesome. Disillusionment swiftly followed as I wanted to publish my own content onto the web.

But understanding these technologies&thinsp;&mdash;&thinsp;while useful and a basic component of working with web technologies&thinsp;&mdash;&thinsp;is not essential to using them in their aggregate form as part of a web experience. We do not require users to understand or even be aware that the web application they are using uses jQuery for the sleek <acronym title="User Interface">UI</acronym> interactions, <acronym title="PHP: Hypertext Preprocessor">PHP</acronym> to serve up and manipulate data from a <acronym title="Structured Query Language">SQL</acronym> database that all sits on an Apache web server.

As the programmers, authors and service providers of content and applications we have a moral obligation to prevent harm from coming to our users by use of our work. Y'know, follow the basics: ensure the web server is fairly secure and can't be hacked to serve up malicious content, make sure t database is secure from injections, provide <acronym title="Secure Sockets Layer">SSL</acronym>/<acronym title="Transport Layer Security">TLS</acronym> connections to users to handle private data and logins, don't save passwords in clear text&thinsp;&mdash;&thinsp;use hashes&thinsp;&mdash;&thinsp; and so on.

The other side of this coin is privacy. Ideally anytime a website collects data about a user in a form that could potentially identify that user the organisation running the website:
* should make users aware of this (and an obscure 'Privacy' page sized in 8-pixel type really doesn't do justice);
* offer users the ability to opt-out;
* provide information as to what is done with the user data;
* and provide information as to how the information is stored.

