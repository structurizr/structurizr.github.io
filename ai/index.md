---
layout: default
title: AI
nav_order: 5
permalink: /ai
has_children: true
has_toc: false
---

# AI

Structurizr's model-based consistency and enforcement of the C4 model rules make it the best choice for teams looking to generate C4 model software architecture diagrams with AI:

- LLMs excel at generating text - the [Structurizr DSL](/dsl) is text-based, version controllable, and diff-friendly.
- Structurizr is [model-based](/dsl/tutorial) - you can create a collection of consistent views onto a single model, where element names/descriptions, relationship descriptions, styling, etc all remain the same across the diagrams.
- Structurizr was designed to support the C4 model - it understands the abstractions and diagram types that make up the C4 model. Structurizr can therefore enforce the hierarchy of abstractions (e.g. containers must be defined inside software systems) and enforce the rules of the diagram types (e.g. components can't be added to a container diagram).
- Structurizr offers both automatic and [manual layout](/server/diagrams/editor) options.
- Structurizr has an [inspection feature](/workspaces/inspections) (e.g. to indicate where descriptions or technology choices are missing), which can assist with creating richer models, especially when used via [the Structurizr MCP server](/ai/mcp).
- The Structurizr DSL is rendering tool independent, allowing it to better fit in with the way that you work. You can visualise the views defined with the [browser-based diagram viewer](/server/diagrams/editor) or a [static HTML export](/export/static-site) for the most professional looking diagrams. Alternatively you can export Structurizr views to "diagrams as code" formats such as [PlantUML](/export/plantuml) and [Mermaid](/export/mermaid) for integration into your existing toolchain.

## Comparison to other tools for AI workflows

| Category | Examples                             | Comments                                                                                                                                                                                                                                | Recommended for AI workflows? |
|----------|--------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
| UI-driven diagramming tools | Microsoft Visio, draw.io, Lucidchart | UI-driven diagramming tools don't understand the C4 model, and AI integration is more difficult for those tools without a text-based format behind the scenes.                                                                          | ❌ No                          |
| UI-driven modelling tools | Sparx EA, MagicDraw, IcePanel        | UI-driven modelling tools can understand the C4 model, but AI integration is more awkward compared to text-based tools.                                                                                                                 | ❌ No                          |
| Diagrams as code | PlantUML, Mermaid, D2, dot           | LLMs excel at generating text, but diagrams as code tools tools don't understand the C4 model and don't respect its rules.                                                                                                              | ❌ No                          |
| Models as code | Structurizr                          | Structurizr is text-based, designed for the C4 model, model-based for consistent views, and the Structurizr MCP server provides DSL validation, parsing, and inspections tools to assist with creating software architecture models. | ✅ Yes                         |

### Structurizr vs LikeC4

LikeC4 follows a similar approach to Structurizr, but LikeC4 doesn't support the C4 model "out of the box", instead requiring you to create a "specification" that defines how you would like to use the tooling. A misconfigured specification will allow you to add elements at the wrong level of abstraction, violating C4's hierarchy.

Structurizr was created by the author of the C4 model and remains the reference implementation, making it the best choice if you are looking for compliance and compatibility with the C4 model.