---
layout: default
title: Search
parent: server
nav_order: 7
permalink: /server/search
has_toc: false
has_children: true
---

# Search

Structurizr provides full-text search facilities across your workspaces, and there are a number of search implementation options:

- [Apache Lucene](/server/search/lucene) (default)
- [Elasticsearch](/server/search/elasticsearch)
- [None](/server/search/none)

The default configuration uses [Apache Lucene](/server/search/lucene) for search functionality, storing search indexes on the local file system.
This is sufficient for a single server installation, but Apache Lucene's search indexes are not designed for concurrent access from multiple processes.

To run the Structurizr across multiple servers behind a load balancer for high availability, you'll need to use [Elasticsearch](/server/search/elasticsearch) instead.

The search feature can also be [disabled](/server/search/none) if required.