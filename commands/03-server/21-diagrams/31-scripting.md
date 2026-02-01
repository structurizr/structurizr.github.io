---
layout: default
title: Scripting
grand_parent: server
parent: Diagrams
nav_order: 31
permalink: /server/diagrams/scripting
---

# Scripting

The Structurizr UI provides a small JavaScript API that can be used to script and automate certain tasks. This is available under a JavaScript variable called `structurizr.scripting` when viewing the diagram viewer/editor pages. The following functions are provided:

- `isDiagramRendered()`: Returns true when the diagram has been rendered, false otherwise.
- `exportCurrentDiagramToPNG(options, callback)`: Exports the current diagram to PNG, and calls the callback function with the resulting base64 data URI.
- `exportCurrentDiagramKeyToPNG(callback)`: Exports the current diagram key to PNG, and calls the callback function the resulting base64 data URI.
- `exportCurrentDiagramToSVG(options)`: Exports the current diagram to SVG, and returns the resulting SVG markup.
- `exportCurrentDiagramKeyToSVG`: Exports the current diagram key to SVG, and returns the resulting SVG markup.
- `getViews()`: Gets an array of objects representing the views in the software architecture model.
- `changeView(viewKey)`: Displays the specified view.
- `getViewKey()`: Gets the key of the current view.

## Puppeteer

The diagram scripting API can be used in conjunction with tools such as Puppeteer (headless Chrome/Chromium),
to automate the export of diagrams from the command line, perhaps as a part of a build process.
The [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) has some code samples of how to do this.