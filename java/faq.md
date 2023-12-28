---
layout: default
title: FAQ
parent: Structurizr for Java
nav_order: 9
permalink: /java/faq
---

# Frequently asked questions

## How do I build from source?

To build from the sources (you'll need git and Java 17+ installed):

```
git clone https://github.com/structurizr/java.git structurizr-java
cd structurizr-java
./gradlew
```

This will create two `.jar` files:

- structurizr-client/build/libs/structurizr-client-{version}.jar
- structurizr-core/build/libs/structurizr-core-{version}.jar

## Why are many classes final with package-protected members, and not open to extension?

First and foremost, this repo is a client library for the Structurizr cloud service and on-premises installation.
It allows you to write Java code to create an in-memory object graph representing a software architecture model and
views (a "workspace"), serialize that to JSON, and upload it via a web API.
The workspace has an [OpenAPI definition](https://github.com/structurizr/json/), but this library also implements a
number of rules (think of them as the "business logic") to ensure that the workspace is valid.
These rules include, for example, ensuring that all containers with a software system have unique names,
and that you can't add components to a system context view.

Removing the `final` modifier from the classes and leaving them open for extension allows you to bypass/break these rules,
which will likely lead to the serialized workspace definitions being incompatible with the various diagram rendering tools
(i.e. the Structurizr cloud service/on-premises installation/Lite, plus the PlantUML/Mermaid exporters).
The output of this library also needs to be compatible with client libraries written in other languages.

You are welcome to fork this library for your own purposes.
Alternatively, you can build a thin wrapper around the library, to provide your own custom functionality,
or perhaps a more fluent API.