---
layout: default
title: Scripting
grand_parent: server
parent: Documentation
nav_order: 11
permalink: /server/documentation/scripting
---

# Scripting

The Structurizr UI provides a small JavaScript API that can be used to script and automate certain tasks. This is available under a JavaScript variable called `structurizr.scripting` when viewing the documentation pages. The following functions are provided:

- `exportDocumentationToOfflineHTMLPage(callback)`: Exports the currently loaded documentation to a single HTML page for offline use. The callback function is called when generation of the HTML page has been finished, and the first function argument is the resulting HTML markup.

## Puppeteer

The diagram scripting API can be used in conjunction with tools such as Puppeteer (headless Chrome/Chromium),
to automate the export of documentation from the command line, perhaps as a part of a build process.
The [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) has some code samples of how to do this.