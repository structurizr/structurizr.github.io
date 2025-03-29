---
layout: default
title: Expressions
parent: Structurizr DSL
nav_order: 8
permalink: /dsl/expressions
---

# Expressions

The Structurizr DSL supports a number of expressions for use when [including](/dsl/language#include) or
[excluding](/dsl/language#exclude) elements/relationships on views (except dynamic views).
Expressions should be surrounded in quotes if they contain whitespace; for example:

- `include "element.tag==Tag 1"` (correct)
- `include element.tag=="Tag 1"` (incorrect)

Expressions can also be used with the [!elements](/dsl/language#elements)
and [!relationships](/dsl/language#relationships) keywords to perform bulk operations on a set of items.

## Element expressions

- `-><identifier|expression>`: the specified element(s) plus afferent couplings
- `<identifier|expression>->`: the specified element(s) plus efferent couplings
- `-><identifier|expression>->`: the specified element(s) plus afferent and efferent couplings
- `element.type==<type>`: elements of the specified type (`Person`, `SoftwareSystem`, `Container`, `Component`, `DeploymentNode`, `InfrastructureNode`, `SoftwareSystemInstance`, `ContainerInstance`, `Custom`)
- `element.parent==<identifier>`: elements with the specified parent
- `element.tag==<tag>[,tag]`: all elements that have all of the specified tags
- `element.tag!=<tag>[,tag]`: all elements that do not have all of the specified tags
- `element.technology==<technology>`: all elements with the specified technology
- `element.technology!=<technology>`: all elements without the specified technology
- `element.properties[name]==value`: all elements that have the specified property with the specified value
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
- `relationship.properties[name]==value`: all relationships that have the specified property with the specified value
- `relationship.source==<identifier>`: all relationships with the specified source element
- `relationship.destination==<identifier>`: all relationships with the specified destination element
- `relationship==<identifier>->*`: all relationships with the specified source element
- `relationship==*-><identifier>`: all relationships with the specified destination element
- `relationship==<identifier>-><identifier>`: all relationships between the two specified elements

## Combining expressions

Two expressions can be combined with the `&&` or `||` operators.
For example: `"element.type==Container && element.parent==abc"` (where `abc` is a software system identifier).
DSL scripts or plugins are recommended for more complicated expressions.