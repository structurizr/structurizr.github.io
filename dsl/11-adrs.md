---
layout: default
title: Architecture Decision Records (ADRs)
parent: Structurizr DSL
nav_order: 11
permalink: /dsl/adrs
---

# Architecture decision records (ADRs)

The `!adrs` keyword can be used to attach Markdown/AsciiDoc ADRs to the parent context (either the workspace, a software system, or a container).

```
!adrs <path> [type|fqn]
```

The path must be a relative path, located within the same directory as the parent file, or a subdirectory of it. For example:

```
!adrs subdirectory
``` 

By default, the [com.structurizr.importer.documentation.AdrToolsDecisionImporter](https://github.com/structurizr/java/blob/master/structurizr-import/src/main/java/com/structurizr/importer/documentation/AdrToolsDecisionImporter.java) class will be used to import ADRs as follows:

- All Markdown files in this directory will be imported, alphabetically according to the filename.
- The files must have been created by [adr-tools](https://github.com/npryce/adr-tools), or at least follow the same format. 
- All images in the given directory (and sub-directories) are also imported into the workspace.

The second parameter (`[type|fqn`) can be used to specify a type or fully qualified class name of your own implementation of [DocumentationImporter](https://github.com/structurizr/java/blob/master/structurizr-import/src/main/java/com/structurizr/importer/documentation/DocumentationImporter.java), which needs to be on the DSL classpath or installed as a JAR file in the `plugins` directory next to your DSL file.
The supported built-in types are:

- `adrtools` (`com.structurizr.importer.documentation.AdrToolsDecisionImporter`)
- `madr` (`com.structurizr.importer.documentation.MadrDecisionImporter`)
- `log4brains` (`com.structurizr.importer.documentation.Log4brainsDecisionImporter`)

See [Structurizr UI - Decisions](/ui/decisions) for details of how ADRs are rendered with the Structurizr UI.