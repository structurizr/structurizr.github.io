---
layout: default
title: Diagrams
nav_order: 3
parent: Documentation
grand_parent: Structurizr UI
permalink: /ui/documentation/diagrams
---

# Diagrams

In addition to the usual Markdown/AsciiDoc syntax for including images, you can embed live versions of the C4 model
diagrams from your workspace into your documentation.

## Basic embed

For example, the following will embed the diagram with the key `MyDiagramKey` into the documentation page.

- Markdown: `![](embed:MyDiagramKey)`
- AsciiDoc: `image::embed:MyDiagramKey[]`

Alternatively for the cloud service only, if your workspace is public or shareable with a link,
you can use the URL of the published image, such as `https://static.structurizr.com/workspace/1/diagrams/MyDiagramKey.png` instead.
Structurizr will see that this link corresponds to a diagram in your workspace,
and replace the static PNG image with a live embedded version.
Using this approach means that your Markdown/AsciiDoc files will be rendered to include the static image when they are viewed outside of Structurizr.

## Parameters
You can also provide some parameters, to customise the embedded diagram.

- `type`: The type of visualisation to embed; diagram (default) or graph.
- `perspective`: The name of the perspective to show.

For example:

- Markdown: `![](embed:MyDiagramKey{type=graph})`
- AsciiDoc: `image::embed:MyDiagramKey{perspective=Security}[]`