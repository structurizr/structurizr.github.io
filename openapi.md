---
layout: default
title: OpenAPI
nav_order: 41
permalink: /openapi
---

# OpenAPI

An OpenAPI (Swagger) definition for the workspace and workspace API can be found
[on GitHub](https://github.com/structurizr/structurizr/tree/main/structurizr-json).

- [OpenAPI 3.0 definition ](https://raw.githubusercontent.com/structurizr/structurizr/refs/heads/main/structurizr-json/structurizr.yaml)
- [Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/structurizr/structurizr/refs/heads/main/structurizr-json/structurizr.yaml)

## Workspace validation rules

In addition to the JSON schema, workspaces are also subject to the following rules, which are implemented by the Structurizr tooling:

- Element and relationship IDs must be unique.
- View `key` and `order` properties must be unique across all views.
- Software and people names must be unique.
- Container names must be unique within the context of a software system.
- Component names must be unique within the context of a container.
- Deployment node names must be unique with their parent context.
- Infrastructure node names must be unique with their parent context.
- All relationships from a source element to a destination element must have a unique description.
