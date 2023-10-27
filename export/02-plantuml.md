---
layout: default
title: PlantUML
parent: Exporters
nav_order: 2
permalink: /export/plantuml
---

# PlantUML

There are two PlantUML exporters in the `structurizr-export` library - [StructurizrPlantUMLExporter](#structurizrplantumlexporter) and [C4PlantUMLExporter](#c4plantumlexporter).

If neither of these provide the features you are looking for, an alternative PlantUML exporter can be found at [https://github.com/cloudflightio/structurizr-export-c4plantuml](https://github.com/cloudflightio/structurizr-export-c4plantuml).

## StructurizrPlantUMLExporter

The [StructurizrPlantUMLExporter](https://github.com/structurizr/export/blob/main/src/main/java/com/structurizr/export/plantuml/StructurizrPlantUMLExporter.java) class generates PlantUML diagram definitions based upon how the Structurizr diagram renderer
creates diagrams using tags and styles. The following view types are supported:

- Custom
- System landscape
- System context
- Containers
- Components
- Dynamic (collaboration and sequence diagram)

There are a number of properties that can be set to customise the exports.
The following properties can either be set on individual views, or on the view set to apply to all views:

- `plantuml.title`: `true` (default) to include diagram titles, `false` to exclude diagram titles.
- `plantuml.includes`: a comma separated list of file names that should be included (via `!include`) in the diagram definition.
- `plantuml.sequenceDiagram`: `true` to generate a UML sequence diagram, `false` (default) to generate a collaboration diagram (dynamic views only).
- `plantuml.animation`: `true` to generate one PlantUML diagram definition per animation frame, `false` (default) to ignore animations.

The following properties can be set on element styles, which can be used to further customise the styling of diagrams too.

- `plantuml.shadow`: whether a shadow should be added to the element (default `false`).

## C4PlantUMLExporter

The [C4PlantUMLExporter](https://github.com/structurizr/export/blob/main/src/main/java/com/structurizr/export/plantuml/C4PlantUMLExporter.java) class generates C4-PlantUML diagram definitions. The following view types are supported:

- System landscape
- System context
- Containers
- Components
- Dynamic (collaboration diagram only)

There are a number of properties that can be set to customise the exports.
The following properties can either be set on individual views, or on the view set to apply to all views:

- `plantuml.title`: `true` (default) to include diagram titles, `false` to exclude diagram titles.
- `plantuml.includes`: a comma separated list of file names that should be included (via `!include`) in the diagram definition.
- `plantuml.sequenceDiagram`: `true` to generate a UML sequence diagram, `false` (default) to generate a collaboration diagram (dynamic views only).
- `plantuml.animation`: `true` to generate one PlantUML diagram definition per animation frame, `false` (default) to ignore animations.
- `c4plantuml.tags`: `true` to generate diagram definitions based upon how the Structurizr diagram renderer creates diagrams using tags and styles, `false` (default) to generate diagram definitions that use the default C4-PlantUML styling (i.e. blue and grey boxes). Please note that with this property set to `true`, this exporter does not follow the approach that C4-PlantUML uses for tags and styling. If you would like this behaviour instead of what is provided here, you may want to take a look at [https://github.com/cloudflightio/structurizr-export-c4plantuml](https://github.com/cloudflightio/structurizr-export-c4plantuml) instead. 
- `c4plantuml.legend`: `true` (default) to include the diagram legend, `false` to exclude the legend.
- `c4plantuml.stereotypes`: `true` to include stereotypes, `false` (default) to exclude stereotypes.
- `c4plantuml.elementProperties`: `true` to include element properties, `false` (default) to exclude element properties.
- `c4plantuml.relationshipProperties`: `true` to include relationship properties, `false` (default) to exclude relationship properties.
- `c4plantuml.stdlib`: `true` (default) to use the built-in C4-PlantUML standard library, `false` to use the latest version from GitHub.

There are also a number of properties that can be set on element styles, which can be used to customise the styling of diagrams when
`c4plantuml.tags` is set to `true`. You will see these in the generated diagram definition inside `AddElementTag(...)` statements
(see [C4-PlantUML - Custom tags/stereotypes support and skinparam updates](https://github.com/plantuml-stdlib/C4-PlantUML/#custom-tagsstereotypes-support-and-skinparam-updates) for more details).

- `c4plantuml.sprite`: the name of the PlantUML sprite to render inside the element. 
- `c4plantuml.shadow`: whether a shadow should be added to the element (default `false`).