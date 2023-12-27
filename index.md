---
layout: default
title: Home
nav_order: 2
description: Structurizr
permalink: /
---

# Structurizr

Structurizr builds upon "diagrams as code", allowing you to create
__multiple software architecture diagrams__, in a __variety of rendering tools__, from a __single model__.

In Structurizr, a [workspace](/workspaces) is the wrapper for your software architecture model, views, and supplementary documentation.
Unlike most modelling tools, Structurizr separates workspace authoring from workspace rendering via its
[open JSON data format](https://github.com/structurizr/json).

![](images/authoring-vs-rendering.png)

For example, here are a number of visualisations of the same model.

|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Structurizr cloud service, on-premises installation, and Lite - diagram with manual layout    | [![Structurizr - diagram with manual layout](images/structurizr-diagram-manual.png)](https://structurizr.com/share/36141/diagrams#Containers)                                 |
| Structurizr cloud service, on-premises installation, and Lite - diagram with automatic layout | [![Structurizr - diagram with automatic layout](images/structurizr-diagram-automatic.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=diagram) |
| Structurizr cloud service, on-premises installation, and Lite - graph (interactive layout)    | [![Structurizr - graph](images/structurizr-graph.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=graph)                                       |
| PlantUML via the Structurizr CLI (automatic layout only)                                      | [![PlantUML via the Structurizr CLI](images/plantuml.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=plantuml)                                |
| C4-PlantUML via the Structurizr CLI (automatic layout only)                                   | [![C4-PlantUML via the Structurizr CLI](images/c4plantuml.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=c4plantuml)                         |
| Mermaid via the Structurizr CLI (automatic layout only)                                       | [![Mermaid via the Structurizr CLI](images/mermaid.jpg)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=mermaid)                                   |
| Ilograph via the Structurizr CLI (interactive layout)                                         | [![Ilograph via the Structurizr CLI](images/ilograph.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=ilograph)                                |