---
layout: default
title: Elasticsearch
parent: Search
grand_parent: server
nav_order: 2
permalink: /server/search/elasticsearch
---

> This feature is not available in the open core - see [server](/server) for details.

# Elasticsearch

You can use a local Elasticsearch installation, or a service provided by a cloud provider.
Version 6.8.10 and above is recommended.

## Configuration

| Name            | Value                 |
|--------------------------|--------------------------------|
| `structurizr.search`     | `elasticsearch`                |
| `elasticsearch.protocol` | Protocol (default=`http`)      |
| `elasticsearch.host`     | Hostname (default=`localhost`) |
| `elasticsearch.port`     | Port number (default=`9200`)   |
| `elasticsearch.username` | Username (default=)            |
| `elasticsearch.password` | Password (default=)            |

