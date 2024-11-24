---
layout: default
title: FAQ
parent: Structurizr for Java
nav_order: 99
permalink: /java/faq
---

# Frequently asked questions

## Why is there no way to remove elements/relationships from the model?

The Structurizr for Java library is designed to be append-only, and removing elements is non-trivial.
For example, removal of a component requires removing all relationships to/from that component,
along with any references to the component that exist in component or dynamic views.
Removal of a software system is more complicated, requiring removal of all software system instances in the deployment model,
along with all child containers/container instances, all child components, associated relationships, associated views, etc.

That said, this may change in a limited way in the future,
perhaps only in conjunction with [landscape or software system scoped workspaces](/workspaces).
For example, it would be useful to remove unused
software systems when you're extending a system catalog workspace, to reduce workspace size/clutter.
For now though, it's append-only.

## Why are many classes final with package-protected members, and not open to extension?

First and foremost, this repo is a client library for the Structurizr cloud service and on-premises installation.
It allows you to write Java code to create an in-memory object graph representing a software architecture model and
views (a "workspace"), serialize that to JSON, and upload it via a web API.
The workspace has an [OpenAPI definition](https://github.com/structurizr/json/), but this library also implements a
number of rules (think of them as the "business logic") to ensure that the workspace is valid.
These rules include, for example, ensuring that all containers with a software system have unique names,
and that you can't add components to a system context view.

Removing the `final` modifier from the classes and leaving them open for extension allows you to bypass/break these rules,
which will likely lead to the serialized workspace definitions being incompatible with the various diagram rendering tools
(i.e. the Structurizr cloud service/on-premises installation/Lite, plus the PlantUML/Mermaid exporters).
The output of this library also needs to be compatible with client libraries written in other languages.

You are welcome to fork this library for your own purposes.
Alternatively, you can build a thin wrapper around the library, to provide your own custom functionality,
or perhaps a more fluent API.