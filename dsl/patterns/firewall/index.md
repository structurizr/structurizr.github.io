---
layout: default
title: Firewall
parent: Pattern catalog
grand_parent: DSL
permalink: /dsl/patterns/firewall/
---

# Firewall

- A firewall is a deployment concept and should be modelled in your deployment model.
- Firewalls should _not_ appear on container views.

## Example 1

Model the firewall as an infrastructure node, intercepting the communication between the UI and the backend.

[![](example-1.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/patterns/firewall/example-1.dsl)