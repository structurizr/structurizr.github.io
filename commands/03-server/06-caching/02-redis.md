---
layout: default
title: Redis
grand_parent: server
parent: Caching
nav_order: 2
permalink: /server/caching/redis
---

> This feature is not available in the open core - see [server](/server) for details.

# Redis cache

If you have multiple Structurizr servers behind a load balancer, you'll ideally need to use a distributed cache.
At this time, only Redis is supported (change the Redis host/port/database/password as required):

## Configuration

| Name                | Value                        |
|------------------------------|---------------------------------------|
| `structurizr.cache`          | `redis`                               |
| `structurizr.redis.protocol` | Protocol (default=`redis`)            |
| `structurizr.redis.host`     | Hostname (default=`localhost`)        |
| `structurizr.redis.port`     | Port number (default=`6379`)          |
| `structurizr.redis.database` | Database (default=`0`)                |
| `structurizr.redis.password` | Password (default=)                   |
| `structurizr.cache.expiry`   | Cache expiry in minutes (default=`5`) |
