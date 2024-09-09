---
layout: default
title: Embedding diagrams
parent: Structurizr on-premises
nav_order: 13
permalink: /onpremises/embed
---

# Embedding diagrams

## iframe embed

Diagrams in your workspaces can be embedded into web pages using a HTML iframe.
This allows you to embed the "live" diagram, which means that you can view the diagram key,
use the fullscreen view, and navigate the between diagrams.

<iframe id="myEmbeddedDiagram" src="https://structurizr.com/embed/36141?diagram=SystemContext&diagramSelector=false&iframe=myEmbeddedDiagram" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowfullscreen="true"></iframe>

<script type="text/javascript" src="https://static.structurizr.com/js/structurizr-embed.js"></script>

### Embed code

When viewing a diagram, click the ![embed code button](../ui/bootstrap-icons/code-slash.svg) button to display the
embed code. The code you will see varies based upon the workspace visibility
(private vs sharing link vs public).

The iframe embed URL takes the following parameters:

- `diagram`: The key of the diagram to embed.
- `diagramSelector`: Include the diagram selector control (`true` or `false`).
- `iframe`: The ID of the iframe containing the embedded diagram. The JavaScript `postMessage() API` is used to send information about the height of the iframe content back to the parent HTML page, so that the iframe can be resized as needed. The iframe ID must be unique on the page.
- `apiKey`: Your workspace API key (required only for private workspaces that do not have the sharing link enabled).

__Warning: using your API key or sharing token on a public web page will mean that anybody can access your workspace.__

## PNG embed

The recommended way to embed diagrams in documentation is to use the interactive iframe embed (above),
although HTML is often not permitted in all wikis that use Markdown or AsciiDoc, for example.
For this reason, Structurizr also provides a way to "publish" all of the diagrams in your workspace to a PNG format,
which can then be included in your documentation using regular image tags.

This feature is only available for:

- Public workspaces.
- Private workspaces with the sharing link enabled.

### Viewing and using published images

Click the "Published images" link on the workspace summary page to see the images have been published
(and are available to embed) from that workspace.
The published images are just PNG files, served via the on-premises installation.

### Publishing PNG images

Unlike the cloud service, PNG images are not published automatically.
Instead you will need to manually publish the images by clicking the ![PNG export button](../ui/bootstrap-icons/filetype-png.svg)
button in the diagram viewer, and then the "Publish all views" button.
This button will only appear when you are viewing the diagrams via a `/workspace` URL (rather than a `/share` URL).