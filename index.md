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

<div style="text-align: center">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/LYzOc7vI-Uo?si=Fiwayepq9xOKpgeK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

## Model-based

Structurizr is a modelling tool, allowing you to create multiple diagrams from a single model.

```
workspace {

    model {
        user = person "User"
        
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application"
            db = container "Database Schema"
        }

        user -> webapp "Uses"
        webapp -> db "Reads from and writes to"
    }

    views {
        systemContext softwareSystem "SystemContext" {
            include *
            autolayout lr
        }

        container softwareSystem "Containers" {
            include *
            autolayout lr
        }
        
        styles {
            element "Person" {
                shape person
            }
        }
    }

}
```

## Rendering tool independent

Unlike most modelling tools, Structurizr is rendering tool independent.
For example, here are a number of visualisations of the same model.

|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Structurizr cloud service, on-premises installation, and Lite - diagram with manual layout    | [![Structurizr - diagram with manual layout](images/structurizr-diagram-manual.png)](https://structurizr.com/share/36141/diagrams#Containers)                                 |
| Structurizr cloud service, on-premises installation, and Lite - diagram with automatic layout | [![Structurizr - diagram with automatic layout](images/structurizr-diagram-automatic.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=diagram) |
| Structurizr cloud service, on-premises installation, and Lite - graph (interactive layout)    | [![Structurizr - graph](images/structurizr-graph.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=graph)                                       |
| PlantUML via the Structurizr CLI (automatic layout only)                                      | [![PlantUML via the Structurizr CLI](images/plantuml.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=plantuml)                                |
| C4-PlantUML via the Structurizr CLI (automatic layout only)                                   | [![C4-PlantUML via the Structurizr CLI](images/c4plantuml.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=c4plantuml)                         |
| Mermaid via the Structurizr CLI (automatic layout only)                                       | [![Mermaid via the Structurizr CLI](images/mermaid.jpg)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=mermaid)                                   |
| Ilograph via the Structurizr CLI (interactive layout)                                         | [![Ilograph via the Structurizr CLI](images/ilograph.png)](https://structurizr.com/dsl?example=big-bank-plc&view=Containers&renderer=ilograph)                                |