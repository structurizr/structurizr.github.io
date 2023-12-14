---
layout: default
title: Perspectives
nav_order: 50
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/perspectives
has_toc: false
---

# Perspectives

Structurizr supports the addition of arbitrary "perspectives" to elements and relationships in the software
architecture model. The concept is an implementation of the perspectives you'll see described in approaches such as
[Viewpoints and Perspectives (Eoin Woods and Nick Rozanski)](https://www.viewpoints-and-perspectives.info/home/perspectives/).

In summary, if you have a single software architecture diagram, it might be useful to look at that single diagram from
a number of different perspectives, each of which might highlight a different characteristic.
Example perspectives include qualities such as security, performance, scalability, availability,
regulatory/compliance concerns, etc along with ownership, technical debt rating, etc.

Once some perspectives have been added to the model, you can then use the 
![binoculars button](../bootstrap-icons/binoculars.svg) button to view the current diagram with a given perspective.

## Embedded diagrams

You can highlight a given perspective on a diagram embedded using an iframe by adding a parameter to the query string
named `perspective` (for example [...&perspective=Security](https://structurizr.com/embed/38000?diagram=LiveDeployment&diagramSelector=false&iframe=cloudServiceSecurity&perspective=Security)).

<iframe id="cloudServiceSecurity" src="https://structurizr.com/embed/38000?diagram=LiveDeployment&diagramSelector=false&iframe=cloudServiceSecurity&perspective=Security" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowfullscreen="true" class="thumbnail"></iframe>

<script type="text/javascript" src="https://static.structurizr.com/js/structurizr-embed.js"></script>