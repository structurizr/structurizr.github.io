---
layout: default
title: validate
parent: Structurizr CLI
nav_order: 8
permalink: /cli/validate
---

# validate

The ```validate``` command allows you to validate a JSON/DSL workspace, using the same rules that are implemented by the Structurizr web API.

## Options

- -workspace: The path or URL to the workspace JSON/DSL file (required)

## Example

To validate a JSON workspace definition:

```
./structurizr.sh validate -workspace workspace.json
```