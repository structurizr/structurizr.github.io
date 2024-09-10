---
layout: default
title: Embedding diagrams
parent: Structurizr cloud service
nav_order: 31
permalink: /cloud/embed
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

Changing the workspace visibility (public/private) or enabling/disabling the sharing link will automatically delete any published images.
This feature is not available for client-side encrypted workspaces and workspaces with IP address restrictions,
because we are unable to view your diagrams in order to convert them to PNG files.

### Viewing and using published images

Click the "Published images" link on the workspace summary page to see the images have been published
(and are available to embed) from that workspace.
The published images are just PNG files, served from a Amazon Web Services S3 bucket.

![Example diagram](https://static.structurizr.com/workspace/36141/diagrams/SystemContext.png)

### Publishing PNG images

PNG images are published automatically by a scheduled job running every 5-10 minutes that checks for recently updated workspaces.
To force your diagrams to be published by the next scheduled job, you can push a new version of your workspace or
make a change (e.g. using the diagram editor) and save your workspace.
Images will not be immediately available, but they should appear within 10-15 minutes.

Alternatively, images can be manually published at any time by clicking the ![PNG export button](../ui/bootstrap-icons/filetype-png.svg)
button in the diagram viewer, and then the "Publish all views" button.
This button will only appear when you are viewing the diagrams via a `/workspace` URL (rather than a `/share` URL).

## Notes

- This is a paid cloud service feature.
