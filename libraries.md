---
layout: default
title: "ROCA: Resource-oriented Client Architecture - JavaScript Libraries"
---

<link rel="stylesheet" href="css/libraries.css">

JavaScript Libraries
--------------------

Selecting JavaScript widgets for a ROCA application can be an arduous process,
as it's not always immediately clear to what extent the principles of
<a href="http://microformats.org/wiki/posh"><abbr title="Plain Old Semantic HTML">POSH</abbr></a>
and
[unobtrusive JavaScript](http://en.wikipedia.org/wiki/Unobtrusive_JavaScript)
are respected.

This page attempts to provide some guidance in this regard. Note that it is not
intended as a comprehensive or authoritative collection though, since it's
difficult to fully capture a continuously evolving ecosystem.

* [pjax](https://github.com/defunkt/jquery-pjax) is a popular technique for
  dynamically updating page fragments

  This is a near-perfect embodiment of ROCA principles: It improves user
  experience by reducing load and rendering times while ensuring that standard
  browser behaviors remain intact.

  * AJAX
  * jQuery

* [smoothState](http://weblinc.github.io/jquery.smoothState.js/) is similar to
  pjax, but uses animated page transition for a more seamless user experience

  The author explicitly lists progressive enhancement and unobtrusive
  JavaScript as primary concerns for the library's rationale.

  * AJAX
  * jQuery

* [jQuery UI Tabs](http://jqueryui.com/tabs/) provides a common UI for switching
  between content panels

  This implementation is a particular good example of POSH-based progressive
  enhancement: The markup is based on a list of links referencing page
  fragments, thus nicely taking advantage of browsers' default functionality
  when JavaScript is unavailable.

  * selective content
  * tabs
  * jQuery

* [List.js](https://github.com/javve/list.js) provides sorting and filtering
  functionality for both lists and tables

  Depending on the use case, some additional glue code might be required - e.g.
  to extract column headings from existing markup.

* [complete.ly](http://complete-ly.appspot.com) is a minimal library for
  autocompletion which also lends itself to be used in natural language forms

  Due to its pure-JavaScript API, additional glue code is required for graceful
  initialization and determining input suggestions.

  * input
  * autocomplete
