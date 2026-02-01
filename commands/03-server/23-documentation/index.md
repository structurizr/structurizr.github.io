---
layout: default
title: Documentation
parent: server
nav_order: 23
permalink: /server/documentation
has_children: true
has_toc: true
---

# Documentation

Structurizr provides support for lightweight supplementary technical documentation. The documentation is a collection of Markdown or AsciiDoc files (e.g. one per section), which are rendered in the web browser. This content is uploaded in a workspace along with the software architecture model, which makes it easy to embed diagrams from that workspace. If you're using the Structurizr DSL, the [!docs](/dsl/docs) keyword can be used to import an existing folder of Markdown/AsciiDoc files into a workspace.

[markdown-it](https://markdown-it.github.io/) is used to render Markdown,
and [asciidoctor.js](https://github.com/asciidoctor/asciidoctor.js) is used to render AsciiDoc.
With this in mind, please note that Structurizr's documentation feature may not render your Markdown/AsciiDoc in exactly the same way that other dedicated documentation tools will, and some features may not be supported.
If you need full control over the look and feel of your documentation, you may be better to use an external tool
(e.g. Asciidoctor, Hugo, Jekyll, etc) in conjunction with the iframe embed or image embed features.