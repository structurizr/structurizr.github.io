---
layout: default
title: Team
parent: Usage and Workflow
nav_order: 3
permalink: /usage/team
---

# Team

Most adoption starts from a single team within an organisation - they are looking for a tool to create software
architecture diagrams of the software system they are building, and have decided to progress away from diagramming
tools (e.g. Visio, draw.io, PlantUML, Mermaid, etc) to a modelling tool.
See [C4 model - Tooling - Diagramming vs modelling](https://c4model.com/tooling#diagramming-vs-modelling)
for an explanation of the difference.

The approach you take will vary based upon the [authoring tool](/usage/authoring) and
[rendering tool](/usage/rendering) that you are using.
If you are using the Structurizr DSL in conjunction with Structurizr Lite though, a recommended starting point is
to simply store the content of your Structurizr data directory (i.e. your `workspace.dsl` and `workspace.json` files)
in version control, next to your source code, along with a script to start up Structurizr Lite.
This way, anybody on the team can see and modify the diagrams.

If you need to publish your diagrams to a wider audience (e.g. non-technical people, or those without access to your
source code repository), consider publishing the workspace to a [Structurizr on-premises installation](/onpremises)
or the [cloud service](/cloud). Publishing a workspace can be achieved via the
[Structurizr CLI push command](/cli/push). This can be done manually, or scripted and integrated into your build
pipeline, a GitHub Action, post-commit hook, etc.