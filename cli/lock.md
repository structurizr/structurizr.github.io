---
layout: default
title: lock
parent: Structurizr CLI
nav_order: 3
permalink: /cli/lock
---

# lock

The ```lock``` command allows you to lock a Structurizr workspace (the cloud service or an on-premises installation).

## Options

- -id: The workspace ID (required)
- -key: The workspace API key (required)
- -secret: The workspace API secret (required)
- -url: The Structurizr API URL (optional; defaults to ```https://api.structurizr.com```)

## Example

To lock a Structurizr workspace:

```
./structurizr.sh lock -id 123456 -key 1a130d2b... -secret a9daaf3e...```