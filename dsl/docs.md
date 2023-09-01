---
layout: default
title: Markdown/Asciidoc Documentation
parent: Structurizr DSL
nav_order: 8
permalink: /dsl/docs
---

# Documentation

The `!docs` keyword can be used to attach Markdown/AsciiDoc documentation to the parent context (either the workspace, a software system, or a container).

```
!docs <path> [fully qualified class name]
```

The path must be a relative path, located within the same directory as the parent file, or a subdirectory of it. For example:

```
!docs subdirectory
``` 

By default, the [com.structurizr.importer.documentation.DefaultDocumentationImporter](https://github.com/structurizr/documentation/blob/main/src/main/java/com/structurizr/importer/documentation/DefaultDocumentationImporter.java) class will be used to import documentation as follows:

- All Markdown and AsciiDoc files in the given directory will be imported, alphabetically according to the filename.
- All images in the given directory (and sub-directories) are also imported into the workspace.
- See [Structurizr - Documentation - Headings and sections](https://structurizr.com/help/documentation/headings) for details about how section headings and numbering are handled.

The above behaviour can be customised by specifying the fully qualified class name of your own implementation of [DocumentationImporter](https://github.com/structurizr/documentation/blob/main/src/main/java/com/structurizr/importer/documentation/DocumentationImporter.java), which needs to be on the DSL classpath or installed as a JAR file in the `plugins` directory next to your DSL file.

