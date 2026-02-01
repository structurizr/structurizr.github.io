---
layout: default
title: Local in-memory cache
grand_parent: server
parent: Caching
nav_order: 1
permalink: /server/caching/local
---

> This feature is not available in the open core - see [server](/server) for details.

# Local in-memory cache

If you have a single Structurizr server, a simple local in-memory cache is sufficient:

## Configuration

| Name              | Value                        |
|----------------------------|---------------------------------------|
| `structurizr.cache`        | `local`                               |
| `structurizr.cache.expiry` | Cache expiry in minutes (default=`5`) |
