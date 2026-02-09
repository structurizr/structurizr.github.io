---
layout: default
nav_order: 4
parent: Commands
title: export
permalink: /export
has_children: true
has_toc: false
---

# export

The `export` command provides a way to export the views in a Structurizr workspace to PlantUML, Mermaid, or a static HTML site. Files will be created one per view that has been exported.
If the output directory is not specified, files will be created in the same directory as the workspace.
Please note that the export formats do not support all available shapes/features when compared to
Structurizr playground, local, and server.

## Options

- -workspace: The path or URL to the workspace JSON/DSL file (required)
- -format (required):
    - plantuml: the same as `plantuml/structurizr`
    - [plantuml/structurizr](/export/plantuml): exports views to PlantUML.
    - [plantuml/c4plantuml](/export/c4plantuml): exports views to C4-PlantUML.
    - [mermaid](/export/mermaid): exports views to Mermaid.
    - [websequencediagrams](/export/websequencediagrams): exports dynamic views to WebSequenceDiagrams.
    - [static](/export/static-site): creates a static HTML site.
    - json: exports the workspace to the Structurizr JSON format
    - theme: creates a JSON theme based upon the styles and tags defined in the workspace
    - fully qualified class name: provides a way to use a custom exporter (see below)
- -output: Relative or absolute path to an output directory (optional)
- -themes: The path to your themes (only required if exporting to a static site that makes use of themes that are not available via a HTTP/HTTPS URL)

## Custom exporters

There are two interfaces defined in the `structurizr-export` Java library, that be used as a starting point for building your own custom exporters:

- [DiagramExporter](https://github.com/structurizr/structurizr/blob/main/structurizr-export/src/main/java/com/structurizr/export/DiagramExporter.java): for exporting a collection of diagram definitions from a workspace (the PlantUML, Mermaid, etc exporters implement this interface), and [AbstractDiagramExporter](https://github.com/structurizr/structurizr/blob/main/structurizr-export/src/main/java/com/structurizr/export/AbstractDiagramExporter.java) is provided as a convenient starting point.
- [WorkspaceExporter](https://github.com/structurizr/structurizr/blob/main/structurizr-export/src/main/java/com/structurizr/export/WorkspaceExporter.java): for exporting a single definition from a workspace (the Ilograph exporter implements this interface).

The compiled class(es) need to be packaged as a JAR file and placed in a directory named `plugins` next to your workspace file.

## Examples

To export all views in a JSON workspace to PlantUML format under folder named `diagrams`:

```
export -workspace workspace.json -format plantuml -output diagrams
```

To export all views in a JSON workspace to PlantUML format, using C4-PlantUML, under folder named `diagrams`:

```
export -workspace workspace.json -format plantuml/c4plantuml -output diagrams
```

To export all views in a JSON workspace to Mermaid format:

```
export -workspace workspace.json -format mermaid
```

To export all dynamic views in a DSL workspace to WebSequenceDiagrams format:

```
export -workspace workspace.dsl -format websequencediagrams
```

To export a DSL workspace to the JSON workspace format:

```
export -workspace workspace.dsl -format json
```

To export all views in a DSL workspace using a custom exporter:

```
export -workspace workspace.dsl -format com.example.MyCustomDiagramExporter
```