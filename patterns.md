---
layout: default
title: "ROCA: Resource-oriented Client Architecture - Common Patterns"
---

ROCA Patterns
------------------

There are a bunch of common patterns used in ROCA style projects. The following
page should list some of them together with some recommendations for
libraries and frameworks supporting good solutions.

Further [suggestions](discussion.html) and
[contributions](https://github.com/innoq/ROCA) are welcome!

## Asynchronous requests

TO BE DONE

## Tabular data

Especially big HTML tables are more or less unuseable without
applying some functionality like filtering or sorting. But there are
two different places where this could be done: Server- and Client-side.

What you do should depend on the amount of data you expect. Transferring
all data to the client and doing the filterning client-side clearly is more
responsive but the HTML transferal must be doable in an acceptable time.

### Server-side tables

Tables are paginated RESTfully and all processing like sorting or filtering
is done on the server only.

### Client-side tables

Data is transferred in form of a HTML table to the client. The client
initializes some sort of table widget onto the table and does all filtering and
sorting on the client only. There may be done some formatting like

Espessically sorting requires all data to be transferred first so the
complete transferral of a potentially huge HTML table must be reasonable.

#### Libraries

* [DataTables](http://datatables.net) is a powerful and proved jQuery library with tons of
  extensions and plugins.

* [List.js](http://listjs.com) is a vanilla JS library, implementing client-side sorting,
  filtering and formatting for HTML tables.

* [sorttable](http://www.kryogenix.org/code/browser/sorttable/) is a solid library adding
  sort functionality only.

* [jQuery Tablesorter](http://tablesorter.com) is a small jQuery plugin mainly for sorting HTML
  tables client-side but supporting some formatting features too.

* [Dynatable](https://www.dynatable.com) extracts JavaScript objects (JSON) from the HTML table,
  applies the filters to the JavaScript objects and renders a new table based upon that. It is
  based upon jQuery.

## UI

TO BE DONE

### Content Sections

jQuery UI's [tabs](http://jqueryui.com/tabs/) and
[accordion](http://jqueryui.com/accordion/) are excellent examples of powerful
interface components whose content remains accessible when JavaScript is
unavailable, thanks to a solid markup foundation.

[Accessible Tabs](https://github.com/ginader/Accessible-Tabs) is similar in
concept, but with special emphasis on accessibility.

### Input Suggestions

[Autocomplete](http://jqueryui.com/autocomplete/) is yet another example from
jQuery UI's repertoire, populating a regular input field with arbitrary
suggestions. Note, however, that there is no standard convention for specifying
the respective source for suggestions, leaving it up to the user to ensure their
solution is ROCA compliant.

### Date and Time Selection

Again jQuery UI provides an exemplary implementation with its
[datepicker](http://jqueryui.com/datepicker/), a complex widget which is used to
populate a regular input field.

### Tabular Data

[List.js](http://listjs.com) extends lists and tables with search, filtering and
sorting functionality.

### Image Galleries

[Responsive Carousel](https://github.com/filamentgroup/responsive-carousel)
does a good job of providing a variety of enhanced presentations of a regular
list of images.

### Tree view

TO BE DONE