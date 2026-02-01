---
layout: default
title: Diagrams
grand_parent: server
parent: Documentation
nav_order: 2
permalink: /server/documentation/diagrams
---

# Diagrams

In addition to the usual Markdown/AsciiDoc syntax for including images, you can embed live versions of the C4 model diagrams from your workspace into your documentation.

For example, the following will embed the diagram with the key `MyDiagramKey` into the documentation page.

- Markdown: `![](embed:MyDiagramKey)`
- AsciiDoc: `image::embed:MyDiagramKey[]`

Alternatively, you can use the URL of the equivalent published image, such as `https://structurizr.example.com/workspace/1234/images/MyDiagramKey.png` instead. Structurizr will see that this link corresponds to a diagram in your workspace, and replace the static PNG image with a live embedded version. Using this approach means that your Markdown/AsciiDoc files will be rendered to include the static image when they are viewed outside Structurizr(*).

In other words, this standard Markdown image tag:

```
![](https://structurizr.example.com/workspace/1234/images/MyDiagramKey.png)
```

is replaced with the following when rendered, swapping the static PNG image for the interactive diagram:

```
![](embed:MyDiagramKey)
```

(*) assuming the published image is accessible without authentication:

- `/workspace/1234/images/*.png`: when server authentication is disabled
- `/share/1234/images/*.png`: when the [public link](/server/workspace-sharing) is enabled
- `/share/1234/{token}/images/*.png`: when the [sharing link](/server/workspace-sharing) is enabled

## Parameters
You can also provide some parameters, to customise the embedded diagram.

- `type`: The type of visualisation to embed; diagram (default) or graph.
- `perspective`: The name of the perspective to show.

For example:

- Markdown: `![](embed:MyDiagramKey{type=graph})`
- AsciiDoc: `image::embed:MyDiagramKey{perspective=Security}[]`