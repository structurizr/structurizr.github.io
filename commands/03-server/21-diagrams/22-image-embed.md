---
layout: default
title: Image embed
grand_parent: server
parent: Diagrams
nav_order: 22
permalink: /server/diagrams/image-embed
---

# Image embed

The recommended way to embed diagrams is using the [iframe embed](/server/diagrams/iframe-embed),
although HTML is often not permitted or not available if using Markdown or AsciiDoc.
For this reason, Structurizr also provides a way to "publish" the diagrams in your workspace to PNG and SVG formats,
which can then be included in your documentation using regular image tags.

If server authentication is enabled, this feature is only available when the read-only [public or sharing link](/server/workspace-sharing) has been configured.

## Viewing and using published images

Click the "Published images" link on the workspace summary page to see the images have been published
(and are available to embed) from that workspace.

## Publishing images

Images are published automatically (if the "Publish" checkbox is ticked) when you export diagrams to PNG or SVG using the ![PNG/SVG export button](/images/bootstrap-icons/file-earmark-image.svg) button on the diagram viewer.

- The "Publish" checkbox will only appear when you are viewing the diagrams via a `/workspace` URL rather than a `/share` URL.