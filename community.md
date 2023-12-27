---
layout: default
title: Community tooling
nav_order: 5
permalink: /community
---

# Community tooling

## Structurizr DSL editor and IDE plugins

- [VS Code extension](https://marketplace.visualstudio.com/items?itemName=systemticks.c4-dsl-extension) (syntax highlighting and diagram previews)
- [VS Code extension](https://marketplace.visualstudio.com/items?itemName=ciarant.vscode-structurizr) (syntax highlighting)
- [C4 DSL Language Server](https://gitlab.com/systemticks/c4-dsl-language-server) (for integrating the Structurizr DSL into Language Server Protocol compatible tools)
- [IntelliJ IDEA plugin](https://github.com/dirkgroot/structurizr-dsl-intellij-plugin)
- [IntelliJ Structurizr DSL Plugin](https://github.com/ambalashov/structurizr-idea-plugin)

## Structurizr DSL plugins

- [Structurizr PlantUML Integration Plugin](https://github.com/codemaximus/structurizr-plantuml)

## Authoring tools

These tools provide an alternative way to create a Structurizr compatible workspace.

- [Structurizr C4-PlantUML extension](https://github.com/chriskn/structurizr-c4puml-extension)
- [structurizr-ruby](https://github.com/Morozzzko/structurizr-ruby): A JRuby wrapper of the Structurizr Java library.
- [Aadarchi](https://github.com/Riduidel/aadarchi): A maven archetype to generate easily projects allowing architecture description using a mix of C4, agile architecture, Asciidoc and PlantUML
- [Structurizr for TypeScript](https://github.com/ChristianEder/structurizr-typescript)
- [structurizr-parser](https://github.com/gerry-rohling/structurizr-parser): TypeScript utility to parse Structurizr DSL files.
- [Structurizr for PHP](https://github.com/structurizr-php/structurizr-php)
- [PyStructurizr](https://github.com/nielsvanspauwen/pystructurizr)
- [Model](https://github.com/goadesign/model): Create your software architecture models and diagrams in Go.
- [ztructurizr](https://github.com/caesarsdigital/ztructurizr): A ZIO-layer for working with structurizr.
- [Structurizr for Python](https://github.com/Midnighter/structurizr-python) (archived)
- [Structurizr for .NET](https://github.com/structurizr/dotnet) (archived)

## Rendering tools

In addition to the Structurizr cloud service, on-premises installation, and Lite, a variety of other rendering tools
are available that can be used to render diagrams from a Structurizr workspace.
Please note that the feature set and look/feel of the resulting diagrams will vary between tools.

- [Structurizr Site Generatr](https://github.com/avisi-cloud/structurizr-site-generatr): Generates a HTML microsite with diagrams, documentation, and a UI to explore the model.
- [Kroki](https://kroki.io): Kroki generates diagrams from a number of text-based formats, including the Structurizr DSL.
- [Asciidoctor](https://docs.asciidoctor.org/diagram-extension/latest/diagram_types/structurizr/): The Structurizr extension allows individual views from a Structurizr DSL workspace to be included in Asciidoc documents.
- [Docusaurus Structurizr Plugin](https://timkolberger.github.io/docusaurus-plugin-structurizr/): Use Structurizr DSL files to generate diagrams in your Docusaurus site.
- [c4viz](https://github.com/pmorch/c4viz): A browser-based diagram renderer, with diagram navigation and "click to zoom".
- [Git for Confluence - Markdown, PlantUML, Graphviz, Mermaid](https://marketplace.atlassian.com/apps/1211675/git-for-confluence-markdown-plantuml-graphviz-mermaid): A Confluence plugin that will render a specific diagram from a Structurizr DSL file stored in your git repo.
- [structurizr-md](https://github.com/vitalegi/structurizr-md): Structurizr to Markdown.

## Similar tools

These tools don't seem to be compatible with Structurizr, but are similar in nature, and may be worth a look if
the Structurizr tooling doesn't fit your needs.

- [Overarch](https://github.com/soulspace-org/overarch): Overarch provides a data model for the holistic description of a software system, opening multiple use cases on the model data. Supports C4 and UML diagram generation with PlantUML.
- [LikeC4](https://github.com/likec4/likec4): LikeC4 is inspired by C4 Model and Structurizr DSL, but provides some additional flexibility.
- [go-structurizr](https://github.com/krzysztofreczek/go-structurizr): A library for auto-generating C4 diagrams from Go applications.
- [c4builder](https://github.com/adrianvlupu/C4-Builder): A documentation builder - you feed it .md and .puml and it exports a site, pdf, or a markdown with navigation.
- [C4Sharp](https://github.com/8T4/c4sharp): A .NET library for building C4 Model diagrams.
- [Archinsight](https://github.com/lonely-lockley/archinsight): Archinsight project tends to implement architecture-as-code definition of a standard c4 architecture model.
- [RDB Model](https://github.com/RDBModel/rdbmodel.github.io): Simplified C4 model yaml editor.
- [Architecture as Code](https://github.com/finos-labs/architecture-as-code): "Architecture as Code" (AasC) aims to devise and manage software architecture via a readable and version-controlled codebase.

You may be able to find more tools via a [repository search on GitHub](https://github.com/search?q=structurizr&type=repositories&s=updated&o=desc).