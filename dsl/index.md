---
layout: default
title: Structurizr DSL
nav_order: 2
has_children: true
permalink: /dsl
has_toc: false
---

# Structurizr DSL

The Structurizr DSL provides a way to define a software architecture model
(based upon the [C4 model](https://c4model.com)) using a text-based domain specific language (DSL).
The Structurizr DSL has appeared on the
[ThoughtWorks Tech Radar - Techniques - Diagrams as code](https://www.thoughtworks.com/radar/techniques/diagrams-as-code)
and is text-based wrapper around the [Structurizr for Java library](https://github.com/structurizr/java).

## Rendering tools

The Structurizr DSL itself does not create diagrams, and is rendering tool independent,
there being a number of tools that can be used to render diagrams.
Please note that the feature set and look/feel of the resulting diagrams will vary between tools.

* [Structurizr Lite/on-premises/cloud service](https://structurizr.com): A browser-based diagram and documentation rendering tool with interactive diagrams, "double-click to zoom", etc.
* [c4viz](https://github.com/pmorch/c4viz): A browser-based diagram renderer, with diagram navigation and "click to zoom".
* [Structurizr Site Generatr](https://github.com/avisi-cloud/structurizr-site-generatr): Generates a HTML microsite with diagrams, documentation, and a UI to explore the model. 
* [Kroki](https://kroki.io): Kroki generates diagrams from a number of text-based formats, including the Structurizr DSL.
* [Git for Confluence - Markdown, PlantUML, Graphviz, Mermaid](https://marketplace.atlassian.com/apps/1211675/git-for-confluence-markdown-plantuml-graphviz-mermaid): A Confluence plugin that will render a specific diagram from a Structurizr DSL file stored in your git repo.
* [Structurizr Export](https://github.com/structurizr/export): A collection of Java classes to generate diagrams as PlantUML, Mermaid, D2, DOT, and WebSequenceDiagrams. An export to Ilograph is also available.
* [Structurizr CLI](https://github.com/structurizr/cli): A command line tool that bundles the Structurizr Export utilities.

## Other tools

* [VS Code extension](https://marketplace.visualstudio.com/items?itemName=systemticks.c4-dsl-extension) (syntax highlighting and diagram previews)
* [VS Code extension](https://marketplace.visualstudio.com/items?itemName=ciarant.vscode-structurizr) (syntax highlighting)
* [C4 DSL Language Server](https://gitlab.com/systemticks/c4-dsl-language-server) (for integrating the Structurizr DSL into Language Server Protocol compatible tools)

## Links

- [GitHub](https://github.com/structurizr/dsl)
- [Changelog](https://github.com/structurizr/dsl/blob/master/docs/changelog.md)
