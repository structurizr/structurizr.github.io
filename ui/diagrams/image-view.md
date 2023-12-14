---
layout: default
title: Image view
nav_order: 16
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/image-view
has_toc: false
---

# Image view

In essence, an "image view" represents an image that has been rendered outside of Structurizr, for inclusion in a
Structurizr workspace. This could include:

- An arbitrary PNG/SVG image.
- A diagram rendered by PlantUML.
- A diagram rendered by Mermaid.
- A diagram rendered by Kroki.

Image views can be associated with any element in the software architecture model, and can be used as a "zoom-in"
for that element. In the example below, an image view with a PNG file has been associated with the
"Mainframe Banking System Facade" component (double-click it to zoom in and see the image view).

<iframe id="myEmbeddedDiagram" class="thumbnail" src="https://structurizr.com/embed/36141?diagram=Components&diagramSelector=false&iframe=myEmbeddedDiagram" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowfullscreen="true"></iframe>

<script type="text/javascript" src="https://static.structurizr.com/js/structurizr-embed.js"></script>

## Defining image views

If you're using the Structurizr DSL, see [DSL cookbook - Image view](/dsl/cookbook/image-view) and
[Language reference - Image view](/dsl/language#image-view) for details of how to define an image view.

## Potential issues

There are two potential issues that you may encounter when using image views:

1. Images don't render (you may see errors in your web browser's developer console about images being blocked).
2. Diagrams fail to export to PNG/SVG formats (you may see errors in your web browser's developer console about the canvas being "tainted").

Both of these problems are generally caused by your web browser blocking access to the images due to the
restrictions associated with
[Cross-Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS).
For this reason, the web server hosting  your image must set the `Access-Control-Allow-Origin` header to allow
cross-origin requests.
See [Allowing cross-origin use of images and canvas](https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_enabled_image) for more details.

