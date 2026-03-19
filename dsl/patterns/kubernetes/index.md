---
layout: default
title: Kubernetes
parent: Pattern catalog
grand_parent: DSL
permalink: /dsl/patterns/kubernetes/
---

# Kubernetes

- Kubernetes is a deployment concept and should be modelled in your deployment model.
- Kubernetes should _not_ appear on container views.

## Example 1

Model the Kubernetes cluster, nodes, and pods as deployment nodes.

[![](example-1.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/kubernetes/example-1.dsl)

## Example 2

As above, but excludes the nodes for a simpler diagram.

[![](example-2.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/kubernetes/example-2.dsl)