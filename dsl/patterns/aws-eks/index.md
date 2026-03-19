---
layout: default
title: AWS Elastic Kubernetes Service
parent: Pattern catalog
grand_parent: DSL
permalink: /dsl/patterns/aws-eks/
---

# Amazon Web Services Elastic Kubernetes Service

- Kubernetes is a deployment concept and should be modelled in your deployment model.
- Kubernetes should _not_ appear on container views.

## Example 1

Model EKS, the Kubernetes cluster, and pods as deployment nodes.

[![](example-1.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/kubernetes/example-1.dsl)