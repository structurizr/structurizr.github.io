---
layout: default
title: Getting started
nav_order: 6
has_children: true
permalink: /getting-started
has_toc: false
---

# Getting started

The recommended way to use Structurizr is to create your software architecture model and views (known as a "[workspace](/workspaces)") with the [Structurizr DSL](/dsl). You then need to decide which __tooling__ and __workflow__ combination you would like to use to generate/edit diagrams and how you would like other people to view the diagrams.

## Tooling

The main tooling options are:

|----------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| ![](/images/bootstrap-icons/laptop.svg) [local](/local)        | Provides a way to view diagrams and modify their layout on your local computer (the equivalent of the previous Structurizr Lite). |
| ![](/images/bootstrap-icons/hdd-network.svg) [server](/server) | A self-hosted Structurizr server (the equivalent of the previous Structurizr on-premises installation).                       |
| ![](/images/bootstrap-icons/terminal.svg) [export](/export)    | Exports the views in a Structurizr workspace to PlantUML, Mermaid, or a static HTML site.                            |

## Workflow

 The most common workflow options are:

|                                                                                            | Workspace editing                                                                                                                      | Diagram viewing                                                                                                                         |
|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| [1. Create with local, publish to server](/getting-started/local-server) (recommended)     | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `local` | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `server` |
| [2. Create with local, view with local](/getting-started/local)                            | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `local` | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `local`  |
| [3. Create with local, export to static site](/getting-started/local-export-static-site)   | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `local` | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) `export`      |
| [4. Create with DSL, export to PlantUML/Mermaid](/getting-started/export-diagrams-as-code) | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) `export`     | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg)![](/images/bootstrap-icons/star.svg) `export`                   |
| [5. Create with server, view with server](/getting-started/server)                         | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) `server`     | ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) `server` |
