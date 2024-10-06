---
layout: default
title: Images
nav_order: 3
parent: Documentation
grand_parent: Structurizr UI
permalink: /ui/documentation/images
---

# Images

Images can be included using the regular Markdown/AsciiDoc syntax.

- Markdown: `![alt](url|path)`
- AsciiDoc: `image::url|path[alt]`

For this to work, the image files must be hosted externally (e.g. on your own web server, and accessible via a HTTPS URL)
or embedded within your workspace.

## PlantUML and Mermaid diagrams

The Structurizr documentation renderer does not natively support diagramming formats such as PlantUML or Mermaid.
In other words, it's not possible to embed PlantUML or Mermaid diagram source into Markdown/AsciiDoc content,
and have it rendered automatically. Instead, you will need to pre-process your Markdown/AsciiDoc content to convert
any inline PlantUML/Mermaid diagram definitions to regular Markdown/AsciiDoc image tags.
If you're using the Structurizr DSL, the recommended approach is to use a [DSL plugin](/dsl/plugins).

- [PlantUML plugin](/dsl/plugins/plantuml)
- [Mermaid plugin](/dsl/plugins/mermaid)