ROCA: Resource-oriented Client Architecture
===========================================

_A collection of simple best practices for decent Web applications_


Introduction
------------

Web application architecture is heavily influenced by the design decisions, both implicit and explicit, that have been made by framework developers. Sometimes these decisions are consciously accepted as being in line with the intended overall system architecture. More often, though, they are accepted simply because developers assume they embody the state of the art of development practices. However, we find that very often frameworks are driven more by their authors’ personal taste, the intent to create something new, a desire to hide the Web and turn it into something different, or any combination of these factors. 

ROCA is an attempt to define a set of recommendations - independent of any particular framework, programming language, or tooling - that embodies the principles of what we consider to be good web application architecture. Its purpose is to serve as a reference, one that can be implemented as is or be compared to other approaches to highlight diverging design decisions. 


MUSTs
-----

A web application's architecture is compliant to the ROCA style if it meets all of the following mandatory requirements: 

1. The server application adheres to REST principles, i.e. the server exposes a set of resources with their own URIs that are meaningful to a user sitting in front of a browser, all of the information necessary for handling a request is contained in the request itself and the resource state maintained by the server (stateless communication). The core application logic is contained on the server, and invoked by interacting with it through RESTful HTTP requests. 
2. The server returns structured HTML markup that is independent of layout information; CSS is used for formatting. 
3. In line with the principles of [progressive enhancement](http://en.wikipedia.org/wiki/Progressive_enhancement "Progressive enhancement"), JavaScript is used [unobtrusively](http://en.wikipedia.org/wiki/Unobtrusive_JavaScript "Unobtrusive JavaScript") and the application is still usable (albeit with a decrease in usability and convenience) if JavaScript is disabled. 


SHOULDs
-------

The following concepts are encouraged, but not mandatory:

1. Resources have additional representations in other formats, e.g. JSON and/or XML 
2. All authenticated communication relies on HTTP Basic Authentication over SSL (or Client Certificates). Alternatively, cookies can be used if they include all of the state needed for the server to process them 


MUST NOTs
---------

The following characteristics are clear indications that the ROCA style is violated:

1. Cookies are used for purposes other than authentication 
2. There is session state beyond what’s needed for simple algorithmic validation of authentication information 
3. Back button, bookmarking, linking to specific information doesn’t work as expected by the user 
4. A browser refresh causes unexpected behavior (e.g. a re-rendering of the login or home page) 
5. The content sent to the client mainly consists of JavaScript that retrieves the real content from the server 


