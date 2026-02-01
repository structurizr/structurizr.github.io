---
layout: default
title: Caching
parent: server
nav_order: 6
permalink: /server/caching
has_children: true
has_toc: false
---

# Caching

> This feature is not available in the open core - see [server](/server) for details.

You may encounter performance issues if you have a large number of workspaces, particularly when using the cloud object storage options. To counter this, you can enable caching of the workspace metadata.

- [Local in-memory cache](/server/caching/local)
- [Redis cache](/server/caching/redis)