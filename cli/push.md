---
layout: default
title: push
parent: Structurizr CLI
nav_order: 1
permalink: /cli/push
---

# push

The ```push``` command allows you to push the specified DSL/JSON file to a Structurizr workspace (the cloud service or an on-premises installation).

## Options

- -id: The workspace ID (required)
- -key: The workspace API key (required)
- -secret: The workspace API secret (required)
- -workspace: The path to the workspace JSON file/DSL file(s) (required)
- -url: The Structurizr API URL (optional; defaults to ```https://api.structurizr.com```)
- -passphrase: The passphrase to use (optional; only required if client-side encryption enabled on the workspace)
- -merge: Whether to merge layout information from the remote workspace (optional; defaults to `true`)
- -archive: Whether to store the previous version of the remote workspace (optional; default to `true`)

## Examples

To push a new version of a workspace defined using the DSL:

```
./structurizr.sh push -id 123456 -key 1a130d2b... -secret a9daaf3e... -workspace workspace.dsl
```