---
layout: default
title: Navigation
nav_order: 41
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/navigation
has_toc: false
---

# Navigation

A collection of diagrams can be navigated in a number of ways:

- Select a diagram from the thumbnails on the left of the page.
- Press the `Up`/`Down` or `Left`/`Right` cursor keys to move to the previous/next diagram (this won't work if you're zoomed in or have elements selected).
- Press the `Space` key to open [quick navigation](/ui/quick-navigation).

## Double-clicking elements

You can double-click diagram elements to either "zoom-in" and navigate to the next level of detail,
open associated documentation/decisions, or open the resource that is configured by the element's `url` property.
When an element has a mix of "zoom-ins", documentation, decsions, and URLs, double-clicking the element will open
a modal from which you can choose where to go next.

### Zoom-in

- Elements with a zoom-in are marked with a ![](../bootstrap-icons/zoom-in.svg) symbol.
  - Software System: Double-clicking a software system will either take you to the System Context or Container diagram for that software system, if one exists.
  - Container: Double-clicking a container will take you to the first Component diagram for that container, if one exists.
- Elements with documentation are marked with a ![](../bootstrap-icons/book.svg) symbol.
- Elements with decisions are marked with a ![](../bootstrap-icons/journal-text.svg) symbol.
- Elements with an associated URL are marked with a ![](../bootstrap-icons/link.svg) symbol. Double-clicking with the `Alt` key pressed will open the URL. URLs must be valid HTTP/HTTPS URLs (e.g. https://structurizr.com), or they can refer to diagrams, documentation, and decisions in the same workspace with a syntax of `{workspace}/diagrams`, `{workspace}/documentation`, and `{workspace}/decisions` respectively. For example, a URL of `{workspace}/diagrams#key` will be rewritten to something like `/workspace/123456/diagrams#key`, based upon whether the workspace is hosted by Structurizr Lite, the cloud service, or an on-premises installation, plus whether the workspace is public, private, or accessible via a sharing link.

## Double-clicking relationships

You can double-click relationships (hold the `Alt` key while in the diagram editor) to open the resource that is configured by the relationship's `url` property.
This is indicated by a ![](../bootstrap-icons/link.svg) symbol.