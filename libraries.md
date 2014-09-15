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
are respected by a particular library.

This page attempts to provide some guidance in this regard. Note that it is not
intended as a comprehensive or authoritative collection though, since it's
difficult to fully capture a continuously evolving ecosystem.

Further [suggestions](discussion.html) and
[contributions](https://github.com/innoq/ROCA) are welcome!

* ### <a href="https://github.com/defunkt/jquery-pjax" id="pjax">pjax</a>
  is a popular technique for dynamically updating page fragments

  This is a near-perfect embodiment of ROCA principles: It improves user
  experience by reducing load and rendering times while ensuring that standard
  browser behaviors remain intact.

  * AJAX
  * jQuery

* ### [smoothState](http://weblinc.github.io/jquery.smoothState.js/)
  is similar to [pjax](#pjax), but uses animated page transition for a more
  seamless user experience

  The author explicitly lists progressive enhancement and unobtrusive
  JavaScript as primary design principles.

  * AJAX
  * jQuery

* ### <a href="http://jqueryui.com/tabs/" id="jqui-tabs">jQuery UI Tabs</a>
  provides a common UI for switching between content panels

  This implementation is a particular good example of POSH-based progressive
  enhancement: The markup is based on a list of links referencing page
  fragments, thus nicely taking advantage of browsers' default functionality
  when JavaScript is unavailable.

  * selective content
  * tabs
  * jQuery

* ### [Accessible Tabs](https://github.com/ginader/Accessible-Tabs)
  is conceptually similar to [jQuery UI Tabs](#jqui-tabs), but puts special
  emphasis on accessibility

  * selective content
  * tabs
  * jQuery

* ### [jQuery UI Accordion](http://jqueryui.com/accordion/)
  allows selectively hiding content in collapsible panels

  Similar to [tabs](#jqui-tabs), this widget builds upon a solid markup
  foundation, leaving contents perfectly accessible even without JavaScript.

  * selective content
  * collapsible
  * jQuery

* ### [List.js](https://github.com/javve/list.js)
  provides search as well as sorting and filtering functionality for both lists
  and tables

  Depending on the use case, some additional glue code might be required - e.g.
  to extract column headings from existing markup.

  * lists
  * tables
  * search
  * sortable
  * filterable

* ### [jQuery UI Autocomplete](http://jqueryui.com/autocomplete/)
  allows populating a regular input field with arbitrary suggestions

  While this widget simply augments an `<input>` field, the specifics of how to
  retrieve suggestions are left to the respective developer.

  * input
  * search
  * autocomplete
  * jQuery

* ### [Select2](http://ivaynberg.github.io/select2/)
  augments `<select>` or `<input>` elements to allow for filtering,
  autocomplete, tagging etc.

  * input
  * search
  * sortable
  * filterable
  * autocomplete
  * jQuery

* ### [complete.ly](http://complete-ly.appspot.com)
  is a minimal library for autocompletion which also lends itself to be used in
  natural language forms

  Due to its pure-JavaScript API, additional glue code is required for graceful
  initialization and determining input suggestions.

  * input
  * search
  * autocomplete

* ### <a href="http://jqueryui.com/datepicker/" id="jqui-datepicker">jQuery UI Datepicker</a>
  provides a UI for entering date and time values

  Another nice example from jQuery UI's repertoire, this widget augments an
  existing `<input>` field to simplify user input.

  * input
  * datetime
  * jQuery

* ### [Kalendae](https://github.com/ChiperSoft/Kalendae)
  provides a UI for entering date and time values

  From a conceptional perspective, this is very similar to
  [jQuery UI's version](#jqui-datepicker).

  * input
  * datetime

* ### [Responsive Carousel](https://github.com/filamentgroup/responsive-carousel)
  generates image galleries in a variety of presentation formats

  Based on a regular list of images, ensuring that contents remain accessible
  both with and without JavaScript.

  * gallery

* ### [Sortable](http://rubaxa.github.io/Sortable/)
  adds drag and drop functionality to lists

  * sortable
  * dragndrop

* ### [DropzoneJS](http://www.dropzonejs.com)
  augments regular file upload forms with a drag & drop UI and image previews

  This is an excellent example of progressive enhancement, as it leverages HTML
  forms rather than circumventing them.

  * input
  * upload
