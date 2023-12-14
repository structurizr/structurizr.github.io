---
layout: default
title: Code view
nav_order: 15
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/code-view
has_toc: false
---

# Code view

Code level diagrams are not natively supported by Structurizr, because of the need to support the ability to
model the complete variety of different technologies that you would naturally find at level 4 of the C4 model;
including object-oriented programming languages, functional programming languages, procedural programming languages,
relational data models, etc. This is not feasible or desirable because:

- It's a lot of work.
- Few teams use level 4 of the C4 model.
- Many IDEs can generate UML class diagrams from existing code.
- Many database tools can generate entity relationship diagrams from existing database schemas.

Structurizr does support a feature called [image views](/ui/diagrams/image-views) though, which provides a way to
include arbitrary PNG/SVG images in your workspace, and these can function as zoom-ins for level 4.