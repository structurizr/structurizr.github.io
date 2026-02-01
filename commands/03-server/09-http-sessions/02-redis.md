---
layout: default
title: Redis
grand_parent: server
parent: HTTP sessions
nav_order: 2
permalink: /server/http-sessions/redis
---

> This feature is not available in the open core - see [server](/server) for details.

# Redis

Redis can be used for distributed HTTP session storage.

## Configuration

| Name                  | Value   |
|-----------------------|---------|
| `structurizr.session` | `redis` |
| `structurizr.redis.protocol` | Protocol (default=`redis`)            |
| `structurizr.redis.host`     | Hostname (default=`localhost`)        |
| `structurizr.redis.port`     | Port number (default=`6379`)          |
| `structurizr.redis.database` | Database (default=`0`)                |
| `structurizr.redis.password` | Password (default=)                   |
