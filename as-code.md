---
layout: default
title: Why "as code"?
nav_order: 3
permalink: /as-code
---

# Why "as code"?

Structurizr is a “models as code” tool, specifically designed for the C4 model. It's not a traditional “drag and drop” UI-driven tool, and does not provide a way to make architecture diagrams via a UI. Instead, You write [Structurizr DSL](/dsl), and Structurizr renders diagrams. Read on if you're interested in the rationale behind this.

## Technical people, technical diagrams

The C4 model is aimed at software engineering teams, providing a way for technical people to create technical diagrams at different levels of abstraction. Therefore, ideally, it's the technical people inside these teams who will be creating and maintaining the diagrams. Creating software architecture diagrams "as code" (using the [Structurizr DSL](/dsl) in this case) should be reasonably straightforward for anybody with a small amount of technical knowledge. An "as code" approach does isolate non-technical people and architects that don't write code, but that isn't the core of Structurizr's (and the [C4 model](https://c4model.com)'s) target audience.

## Learning curve and authoring experience

The biggest downside of an "as code" approach is the increased learning curve. Traditional UI-driven modelling tools (Sparx EA, StarUML, IcePanel, etc) and diagramming tools (Visio, draw.io, etc) are generally quite intuitive. You start clicking around the UI to add elements, perhaps open a property editor to specify the name or description, and drag a line between elements to create relationships between them. This provides a wonderful initial experience and a very low barrier to entry. But the user experience tends to suffer once you start to grow the software architecture model. The more elements and relationships in the model, the harder it becomes to find those elements when you want to add children, add relationships to/from them, modify names/descriptions, add URLs, change styling, etc. Tasks such as re-parenting elements (e.g. when you create a component that should have been a container) are generally not easy via a UI either. In summary, the user experience generally worsens as the model size increases, and UIs can become bloated over time with the addition of new features.

The Structurizr DSL does have a slightly higher learning curve than a UI. You need to understand (1) the general approach of how the tooling works, (2) how to start the tooling, and (3) the basics of the DSL itself. This is obviously more work than just starting a UI-driven tool by double-clicking an icon or opening a URL in your web browser, increasing the "time to first diagram". A little mastery goes a long way though, and an "as code" approach can be much faster and easier when you get over that initial learning curve.

## Automatic layout vs manual layout

A false narrative exists that UI-driven tools support manual layout, while "as code" tools don't. It is true that most "diagrams as code" formats (PlantUML, Mermaid, dot, etc) do only support automatic layout. Structurizr is relatively unique in that it supports both automatic and manual layout via [a browser-based diagram editor](/server/diagrams/editor), enabling you to craft a more precise story. Structurizr takes control of rendering the boxes and arrows for you with [a variety of notation available](/server/diagrams/notation). All you need to do, if you want to, is move them around the diagram canvas.

## Version control friendly

The most obvious benefit to an "as code" approach is that the code you use to generate your diagrams is just text. You, as the author, have complete control over how and where that code is stored (e.g. git). Versions are therefore easy to diff too, making this compatible with pull request development processes. The Structurizr DSL specifically provides a clean separation between the model (content) and views (presentation), which further enhances the ability to diff versions when compared to most other text-based formats that mix content and presentation.

Collaboration and permissioning (e.g. defining who can change which parts of the model) is easy too, since you can lean on the existing infrastructure provided by version control systems. You can also break up a large single model into a number of separate, but connected, smaller models using a system catalog approach, as described in the [enterprise usage pattern](/workspaces/enterprise). UI-driven tools require all of this to be built-in to the tool itself, further bloating the UI.

## AI friendly

AI agents have limited abilities to interact with UI-driven tools, but they can generate text, making "as code" tools a better option if you intend to [use AI during your diagram generation workflow](/ai). Having your source code, architecture diagrams, Markdown/AsciiDoc documentation, and Architecture Decision Records (ADRs) all stored as text, in version control, not only centralises this information for humans, but also provides a single place for AI agents to gather information and build context during agentic workflows such as:

- Diagram generation: an AI agent scans a codebase and auto-generates a Structurizr DSL workspace, keeping diagrams in sync with reality.
- Diagram updates via pull requests: an AI agent proposes Structurizr DSL changes when a pull request modifies the code.
- Architecture principle and decision traceability: an agent reads ADRs and supplementary documentation stored alongside the code, flagging inconsistencies between code, diagrams and documentation (e.g. superseded decisions, deprecated patterns).
- Onboarding assistant: new engineers ask architectural questions to an AI agent, which answers by analysing the code, Structurizr model, and supplementary documentation.
- Drift detection and architecture erosion: an AI agent periodically compares code or infrastructure against the Structurizr model and raises an alert when they diverge.

Having an architecture model (Structurizr DSL) and documentation (Markdown/AsciiDoc) as plain text, in version control, provides AI agents a structured single source of truth. This is much harder when the code, diagrams, documentation, and architecture decision records reside in separate disconnected systems, as is the case with most UI-driven tools.

## Summary

Software architecture diagrams maintained "as code" have a higher initial learning curve than UI-driven tools, but offer significant long-term advantages. The Structurizr DSL adds model-based views for a clean separation between content and presentation, support for manual and automatic layout, all while being plain text and easy to version control. As AI-assisted workflows become more common, this plain text approach provides a structured data source that UI-driven alternatives simply cannot match.