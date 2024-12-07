---
layout: default
title: pull
parent: Structurizr CLI
nav_order: 2
permalink: /cli/pull
---

# pull

The ```pull``` command allows you to pull content from a Structurizr workspace (the cloud service or an on-premises installation), as a JSON document. A file will created with the name ```structurizr-<id>-workspace.json``` in the current directory.

## Options

- -id: The workspace ID (required)
- -key: The workspace API key (required)
- -secret: The workspace API secret (required)
- -url: The Structurizr API URL (optional; defaults to ```https://api.structurizr.com```)
- -branch: Branch name
- -passphrase: The passphrase to use (optional; only required if client-side encryption enabled on the workspace)

## Example

To pull the content of a Structurizr workspace:

```
./structurizr.sh pull -id 123456 -key 1a130d2b... -secret a9daaf3e...
```