---
layout: default
title: "ROCA: Resource-oriented Client Architecture - FAQ"
---

Frequently Asked Questions
---

### Why ROCA?

In our work, we find it's much easier to get ideas
across if they can be referred to by name (compared to
other approaches) and thus be made tangible. ROCA is an attempt
to provide a reference for exactly this purpose.

### Why "ROCA"?

It was the most reasonable and easy-to-remember name we could
come up with that also resolved to a meaningful acronym.

### How can I install the framework?

You don't &#8211; that's the point. ROCA is
intended to be framework-agnostic. You can pick any programming
language, library, or framework, as long as you adhere to the
aspects described above.

Frameworks are sometimes driven more by their authors' personal taste,
the intent to create something new, a desire to hide the Web and turn
it into something different, or any combination of these factors. But
even if they are totally in line with the ROCA guidelines, they can
often be used in many different ways. That's why we want to tie
the whole thing more to how a Web application engineer approaches
design than to any particular framework.

### What are good frameworks that are a good choice for the ROCA style?

We plan to include a section on this, but would like to test the
community's reaction first. Frankly, we don't want to risk ROCA being
associated with any particular framework or even community.

### But what about single-page apps? Aren't they the future?

We don't think so; in our view, single page apps repeat the
mistakes of unnecessarily fat server-side Web frameworks on
the client side. The fact that the Web relies on a series of
resource representations that are linked to each other is not
a bug, it's a feature.

### So you're against dynamic pages, Ajax and stuff?

Of course not. Using JavaScript to create a better user experience is
an entirely awesome idea. That doesn't mean you have to degrade the
browser into a runtime for a custom UI engine. It's perfectly possible
to use JavaScript unobtrusively, which will in our view give you the
best of both worlds.

### But not everything is a resource! How about dashboards, portal pages, etc.?

Yes, everything is a resource, at least if we're talking about the
Web. Because that's the whole point of it. If it's a dashboard we're
talking about, then the resource is the dashboard; if it's a portal
you're looking for, you might consider that your browser already does
many things one usually expects a portal to do.

### Why the insistence on "static assets" - why shouldn't the server generate JavaScript or CSS dynamically?

Externalizing CSS and JavaScript code rather than inlining it in HTML has been
[accepted consensus](http://developer.yahoo.com/performance/rules.html#external)
for quite a while now. Not only does this provide performance benefits, it also
encourages reusability and ensures separation of concerns, thus improving
maintainability.

Many of these benefits are rendered ineffective when state is injected into CSS
or JavaScript. In particular, cacheability is reduced and maintainability
suffers due to functionality being spread across the code base (not to mention
the potential for subtle bugs due to the need for escaping injected values).

For example, instead of something like this:

    // HTML template
    <script>var ROOT = "<? echo $root_url ?>";</script>

    // JavaScript
    var uri = ROOT + path;

... we prefer this:

    <a href="<? $root_url ?>" id="root-url">Home</a>

    var uri = document.getElementById("root-url").getAttribute("href");

### Is it either 100% ROCA compliance or nothing?

Of course not. The whole point of this site, though, is to give a
reference that one can compare design decisions to.

### All this talk about unobtrusiveness, and then you end up using _Disqus_?

You're right, Disqus violates ROCA -- which is really sad. It
would probably not be too hard for them to simply offer a link to the
discussion itself that would allow users who don't have JavaScript
enabled to simply go to their site directly. Maybe we'll end up
building something using their REST API, but for now, we simply chose
to accept it.

### Who's behind ROCA?

The ROCA style itself is nothing new and can be seen in the wild in
any number of Web applications. The name and this document have been
created by Till Schulte-Coerne, Stefan Tilkov, Robert Glaser, Phillip
Ghadir and Josh Graham, with lots of valuable input from a number of
other folks, most notably from internal discussions at innoQ as well
as a presentation on ROCA at SpeakerConf 2012.

### How can I use this document?

This document is licensed under a Creative Commons license,
i.e. you can essentially use it as you see fit, as long as you
include proper attribution and share your modifications under
the same license. We explicitly encourage you to recommend,
compare or develop frameworks according to this style, and
intend to be as open as reasonably possible while maintaining
conceptual integrity.

### Can I provide feedback?

Of course, please use <a href='./discussion.html'>the comments</a> to share your thoughts. We
welcome criticism as well as suggestions for improvement.
