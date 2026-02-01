---
layout: default
title: Mermaid
parent: Exporters
nav_order: 3
permalink: /exporters/mermaid
---

# Mermaid

The [MermaidDiagramExporter](https://github.com/structurizr/java/blob/master/structurizr-export/src/main/java/com/structurizr/export/mermaid/MermaidDiagramExporter.java) provides a way to export views that are compatible with the
[Mermaid](https://mermaid-js.github.io/) diagramming tool.

There are a number of properties that can be set to customise the exports, as follows:

- `mermaid.title`: `true` (default) to include diagram titles, `false` to exclude diagram titles.
- `mermaid.sequenceDiagram`: `true` to generate a UML sequence diagram, `false` (default) to generate a collaboration diagram (dynamic views only).

These properties can either be set on individual views, or on the view set to apply to all views.