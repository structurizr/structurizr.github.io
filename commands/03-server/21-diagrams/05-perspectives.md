---
layout: default
title: Perspectives
grand_parent: server
parent: Diagrams
nav_order: 5
permalink: /server/diagrams/perspectives
---

# Perspectives

Structurizr supports the addition of arbitrary "perspectives" to elements and relationships in the software
architecture model. The concept is an implementation of the perspectives you'll see described in approaches such as
[Viewpoints and Perspectives (Eoin Woods and Nick Rozanski)](https://www.viewpoints-and-perspectives.info/home/perspectives/).

In summary, if you have a single software architecture diagram, it might be useful to look at that single diagram from a number of different perspectives, each of which might highlight a different characteristic.
Example perspectives include qualities such as security, performance, scalability, availability,
regulatory/compliance concerns, etc along with ownership, technical debt rating, etc.

Once some perspectives have been added to the model, you can then use the 
![binoculars button](/images/bootstrap-icons/binoculars.svg) button or the `p` key to view the current diagram with a given perspective.

## Embedded diagrams

You can highlight a given perspective on a diagram embedded using an iframe by adding a parameter to the query string named `perspective` (for example `&perspective=Security`).

## Links

- [DSL cookbook - Static perspectives](/dsl/cookbook/perspectives-static)
- [DSL cookbook - Dynamic perspectives](/dsl/cookbook/perspectives-dynamic)