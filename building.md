---
layout: default
permalink: /building
title: Building from source
nav_order: 4
---

# Building from source

This page provides some instructions on how to build Structurizr from the [source code](https://github.com/structurizr/structurizr). This provides all [commands](/commands), with the open core version of [server](/server).

## Prerequisites:

- Java 21

## Building

```
git clone https://github.com/structurizr/structurizr.git
cd structurizr
./mvnw -DexcludedGroups=IntegrationTest package
```

The above command excludes integration tests because these require Docker to be installed. If any of the other tests fail, you can run the following command to skip all tests:

```
./mvnw -Dmaven.test.skip=true package
```

## Running

```
java -jar structurizr-application/target/structurizr-1.0.0.war
```

## Building a Docker image

To build a Docker image, build the code first as above, then:

```
docker build . -t structurizr
```