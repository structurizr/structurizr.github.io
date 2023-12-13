---
layout: default
title: Exporters
nav_order: 17
has_children: true
permalink: /export
has_toc: false
---

# Structurizr exporters

The `structurizr-export` library provides the ability to export the model and views defined in a Structurizr workspace to a number of different "diagrams as code" formats, and is used by the following tools:

- [Structurizr CLI](/cli): A command line utility that can be used to [export](/cli/export) Structurizr views to PlantUML, Mermaid, etc.
- [Structurizr Site Generatr](https://github.com/avisi-cloud/structurizr-site-generatr): Generates a HTML microsite with diagrams, documentation, and a UI to explore the model. 
- [Kroki](https://kroki.io): Kroki generates diagrams from a number of text-based formats, including the Structurizr DSL.
- [c4viz](https://github.com/pmorch/c4viz): A browser-based diagram renderer, with diagram navigation and "click to zoom".
- [Git for Confluence - Markdown, PlantUML, Graphviz, Mermaid](https://marketplace.atlassian.com/apps/1211675/git-for-confluence-markdown-plantuml-graphviz-mermaid): A Confluence plugin that will render a specific diagram from a Structurizr DSL file stored in your git repo.

The library is also available on [Maven Central](https://mvnrepository.com/artifact/com.structurizr/structurizr-export), for inclusion in your own Java applications:

- groupId: `com.structurizr`
- artifactId: `structurizr-export`

## Links

- [Structurizr DSL demo page](https://structurizr.com/dsl) (demo of export formats)
- [GitHub](https://github.com/structurizr/export)
- [Changelog](https://github.com/structurizr/export/blob/main/docs/changelog.md)