---
layout: default
title: Docker
parent: Pattern catalog
grand_parent: DSL
permalink: /dsl/patterns/docker/
---

# Docker

- Docker is a deployment concept and should be modelled in your deployment model.
- Docker should _not_ appear on container views.

## Example 1

Model the Docker runtime and the Docker container as deployment nodes.

[![](example-1.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/docker/example-1.dsl)

## Example 2

As above, but excludes the Docker runtime.

[![](example-2.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/docker/example-2.dsl)
