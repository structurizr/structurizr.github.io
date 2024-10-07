---
layout: default
title: Introduction
nav_order: 11
parent: Component finder
grand_parent: Structurizr for Java
has_children: true
permalink: /java/component/introduction
has_toc: false
---

# Introduction

This page introduces the basic theory and concepts behind the Structurizr component finder in the context
of the [Spring PetClinic](https://github.com/spring-projects/spring-petclinic) application - a sample codebase that illustrates how to build a Java web application using 
the Spring MVC framework. From a non-technical perspective, it's a software system designed for an imaginary pet clinic 
that stores information about pets and their owners, visits made to the clinic, and the vets who work there. The system 
is only designed to  be used by employees of the clinic. From a technical perspective, the Spring PetClinic system 
consists of a web application and a relational database schema. From a structural perspective, this codebase is a 
traditional layered architecture.  

Reverse-engineering this codebase into a UML class diagram generates the following diagram, showing all classes 
and interfaces.

[![](./images/spring-petclinic-1.png)](./images/spring-petclinic-1.png)

In terms of the C4 model, this is level 4 - the code. To zoom-out and generate a component diagram at level 3, we need 
to define a set of rules that we can use to identify components. These rules can then be codified using the Structurizr
component finder to make this an automated process. This is a multi-step process, and may require more than a single 
iteration as you explore and learn more about the codebase:

1. Identify components
1. Categorise components
1. Define component identification rules

At this point it's worth noting that since every codebase is unique, it's almost impossible to create a generic set of 
rules that can be blindly applied to all codebases. Component identification therefore requires some knowledge of the 
codebase so that the appropriate rules and heuristics can be applied.

Early access to the remainder of this introduction is available via the [Structurizr Patreon](https://patreon.com/structurizr).