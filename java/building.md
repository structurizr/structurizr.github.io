---
layout: default
title: Building from source
parent: Structurizr for Java
nav_order: 70
permalink: /java/building
---

# Building from source

To build from the sources (you'll need git and Java 17+ installed):

```
git clone https://github.com/structurizr/java.git structurizr-java
cd structurizr-java
./gradlew
```

This will create a number of `.jar` files. For example:

- `structurizr-client/build/libs/structurizr-client-{version}.jar`
- `structurizr-core/build/libs/structurizr-core-{version}.jar`
- etc

You can publish these `.jar` files to your local Maven repository with the following command:

```
./gradlew clean build publishToMavenLocal
```
