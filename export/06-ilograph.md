---
layout: default
title: Ilograph
parent: Exporters
nav_order: 6
permalink: /export/ilograph
---

# Ilograph

The [IlographExporter](https://github.com/structurizr/java/blob/master/structurizr-export/src/main/java/com/structurizr/export/ilograph/IlographExporter.java) class provides a way to export the software architecture model
to the YAML format used by [Ilograph](https://www.ilograph.com), which provides an interactive way to explore
a hierarchical dataset (which the C4 model is).

The resulting YAML will include:

- A perspective named `Static Structure` that reflects the static structural elements defined in your software architecture model.
- One perspective per dynamic view.
- One perspective per deployment view.

The following properties can be set on element styles, which can be used to further customise the styling:

 - `ilograph.icon`: this can be used to specify a [built-in Ilograph icon](https://www.ilograph.com/docs/editing/icons/).

And the following properties can be set on the workspace:

- `ilograph.imports`: a comma-separated list of [Ilograph imports](https://www.ilograph.com/docs/editing/imports/) in the form `namespace:from` (e.g. `AWS:ilograph/aws`).

![Ilograph screenshot](ilograph.png)

