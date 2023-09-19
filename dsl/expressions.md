---
layout: default
title: Expressions
parent: Structurizr DSL
nav_order: 6
permalink: /dsl/expressions
---

# Expressions

The Structurizr DSL supports a number of expressions for use when including or excluding elements/relationships on views (except dynamic views).
Expressions should be surrounded in quotes if they contain whitespace; for example:

- `include "element.tag==Tag 1"` (correct)
- `include element.tag=="Tag 1"` (incorrect)

## Element expressions

- `-><identifier|expression>`: the specified element(s) plus afferent couplings
- `<identifier|expression>->`: the specified element(s) plus efferent couplings
- `-><identifier|expression>->`: the specified element(s) plus afferent and efferent couplings
- `element.type==<type>`: elements of the specified type (`Person`, `SoftwareSystem`, `Container`, `Component`, `DeploymentNode`, `InfrastructureNode`, `SoftwareSystemInstance`, `ContainerInstance`, `Custom`)
- `element.parent==<identifier>`: elements with the specified parent
- `element.tag==<tag>[,tag]`: all elements that have all of the specified tags
- `element.tag!=<tag>[,tag]`: all elements that do not have all of the specified tags
- `element==-><identifier>`: the specified element plus afferent couplings
- `element==<identifier>->`: the specified element plus efferent couplings
- `element==-><identifier>->`: the specified element plus afferent and efferent couplings

## Relationship expressions

- `*->*`: all relationships
- `<identifier>->*`: all relationships with the specified source element
- `*-><identifier>`: all relationships with the specified destination element
- `relationship==*`: all relationships
- `relationship==*->*`: all relationships
- `relationship.tag==<tag>[,tag]`: all relationships that have all of the specified tags
- `relationship.tag!=<tag>[,tag]`: all relationships that do not have all of the specified tags
- `relationship.source==<identifier>`: all relationships with the specified source element
- `relationship.destination==<identifier>`: all relationships with the specified destination element
- `relationship==<identifier>->*`: all relationships with the specified source element
- `relationship==*-><identifier>`: all relationships with the specified destination element
- `relationship==<identifier>-><identifier>`: all relationships between the two specified elements
