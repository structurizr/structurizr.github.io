---
layout: default
title: Local
grand_parent: server
parent: HTTP sessions
nav_order: 1
permalink: /server/http-sessions/local
---

# Local

By default, HTTP sessions are stored locally, in memory, on the server that created them. This works for a single server installation, but may not work for a high-availability installation, particularly where multiple instances are deployed behind a load balancer that is delivering requests using a round-robin algorithm. If "sticky sessions" or "session pinning" is not an option, you can choose to have HTTP session information stored in [Redis](/server/http-sessions/redis) instead.

## Configuration

| Name                  | Value   |
|-----------------------|---------|
| `structurizr.session` | `local` |
