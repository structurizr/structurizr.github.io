---
layout: default
title: Component finder
nav_order: 40
parent: Java
has_children: true
permalink: /java/component
has_toc: false
---

# Component finder

The idea behind the [C4 model](https://c4model.com) is that there are a number of levels of abstraction, allowing you to zoom-in from a
high-level all the way down to the code:

1. Software systems
2. Containers
3. Components
4. Code

The word "component" is a hugely overloaded term in the software development industry, but it's a useful word to use to 
describe the internal structure of an application, one level up from the code. In the context of the C4 model, a 
component is defined as being a grouping of related functionality. 
With a language like Java, the simplest way to think of a component is that it's a collection of one or more implementation 
classes, potentially sitting behind an interface.

The `structurizr-component` library includes a facility to discover components in a Java codebase, providing a 
way to automatically generate a component diagram from your codebase without showing all the detail associated 
with the code level. See [C4 model - Components vs code?](https://c4model.com/abstractions/component#components-vs-code) 
for more on this topic.

From an implementation perspective, Structurizr's component finder works using a combination of
[Apache Commons BCEL](https://commons.apache.org/proper/commons-bcel/) and [JavaParser](https://javaparser.org), using a pluggable and customisable set of matching and 
filtering rules. It's available via a Java API and the Structurizr DSL [!components](/dsl/language#components) keyword.

See [Patreon](https://patreon.com/structurizr) for early access to the component finder documentation.