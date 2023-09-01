---
layout: default
title: unlock
parent: Structurizr CLI
nav_order: 4
permalink: /cli/unlock
---

# unlock

The ```unlock``` command allows you to unlock a Structurizr workspace (the cloud service or an on-premises installation).

## Options

- -id: The workspace ID (required)
- -key: The workspace API key (required)
- -secret: The workspace API secret (required)
- -url: The Structurizr API URL (optional; defaults to ```https://api.structurizr.com```)

## Example

To unlock a Structurizr workspace:

```
./structurizr.sh unlock -id 123456 -key 1a130d2b... -secret a9daaf3e...
```