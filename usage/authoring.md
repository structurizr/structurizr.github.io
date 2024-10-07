---
layout: default
title: Authoring
parent: Usage
nav_order: 2
permalink: /usage/authoring
---

# Authoring

Structurizr workspaces can be authored using a number of compatible tools, with workspace content being
defined manually or automatically.

## Tooling

At the time of writing, Structurizr workspaces can be authored using the following tools:

1. The [Structurizr DSL](/dsl) - a text-based DSL.
2. One of the programming language libraries - [Structurizr for Java](/java) and the various ports for [.NET, Python, PHP, TypeScript, etc](/community#authoring-tools).

The recommended approach for most teams is to use the Structurizr DSL - it results in more concise workspace definitions
than using a programming language, and it's generally easier for a wider audience to understand.
The Structurizr DSL is also a wrapper around the Structurizr for Java library, which you can gain access to via
the [scripts](/dsl/scripts) and [plugins](/dsl/plugins) for enhanced flexibility.

Irrespective of which authoring tool you use, the output is a workspace that can be serialised to a JSON document
via an [open JSON data format](https://github.com/structurizr/json),
which in turn can be [rendered via a variety of tools](/usage/rendering).

## Manual authoring vs reverse-engineering

The typical approach taken by teams is to manually author their workspace.
For example, if you're using the Structurizr DSL, you are explicitly defining all people, software systems,
containers, components, etc using the DSL language. This can be quick and effective, but requires that the DSL 
definition is changed, and kept up to date, whenever the software architecture changes.

Most people understand that diagrams will drift out of sync with reality over time.
For this reason, it's possible for parts of the software architecture model (and therefore the diagrams)
to be created via reverse-engineering techniques. For example:

- __System landscape and context diagrams__: Use existing system/service catalogs (e.g. Backstage, ServiceNow, etc) as a source of data for identifying software systems and relationships.
- __Container diagrams__: Parse log files or use OpenTelemetry data as a source of data for identifying applications/services and relationships.
- __Component diagrams__: Static analysis/reverse-engineering of code as a source of data for identifying components and their relationships.
- __Deployment diagrams__: Parse “infrastructure as code” definitions (e.g. Terraform, CloudFormation, etc) or reverse-engineer cloud environment configuration as a source of data for identifying deployment elements.

Some of these techniques are not necessarily straightforward and require some up front engineering effort,
which is why there is a lack of off-the-shelf tooling to support such use cases.
Some organisations *are* building tools to do this internally, although they don't tend to share them with the community.
The exception here is the [component finder](/java/component/) built into the Structurizr for Java library.
Generally speaking, you will need to write some code that connects to APIs or parses files, and creates model
elements/relationships programmatically.