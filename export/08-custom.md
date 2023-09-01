---
layout: default
title: Custom exporters
parent: Exporters
nav_order: 8
permalink: /export/custom
---

# Custom exporters

There are two interfaces defined in the `structurizr-export` library, that be used as a starting point for building your own custom exporters:

- [DiagramExporter](https://github.com/structurizr/export/blob/main/src/main/java/com/structurizr/export/DiagramExporter.java): for exporting a collection of diagram definitions from a workspace (the PlantUML, Mermaid, etc exporters implement this interface), and [AbstractDiagramExporter](https://github.com/structurizr/export/blob/main/src/main/java/com/structurizr/export/AbstractDiagramExporter.java) is provided as a convenient starting point.
- [WorkspaceExporter](https://github.com/structurizr/export/blob/main/src/main/java/com/structurizr/export/WorkspaceExporter.java): for exporting a single definition from a workspace (the Ilograph exporter implements this interface).