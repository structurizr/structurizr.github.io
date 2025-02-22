---
layout: default
title: Generating a static site
parent: Structurizr static site
nav_order: 1
permalink: /static/generating
---

# Generating a static site

The following CLI commands can be used to generate a static site:

```
./structurizr.sh export -format static -workspace workspace.dsl -output static
./structurizr.sh export -format static -workspace workspace.json -output static
```

## Workspace processing

The export command supports both JSON and DSL workspaces, and processes them in the same way:

- All documentation and decision records are removed from the workspace.
- Graphviz automatic layout is run on all views that have automatic layout enabled.

The big difference between the JSON and DSL versions of the workspace is that the JSON version has layout information,
whereas the DSL version doesn't. If you have authored your diagrams with manual layout via Structurizr Lite/on-premises/cloud,
you will need to use the JSON version of the workspace. If you only use automatic layout, either version will suffice.