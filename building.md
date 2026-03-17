---
layout: default
permalink: /building
title: Building from source
nav_order: 7
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

## Version numbers

The [Structurizr for Java](/java) library version numbers are specified by `<version>` tags in the respective `pom.xml` files and follow a semantic versioning scheme of the form `major.minor.patch` ([example](https://github.com/structurizr/structurizr/blob/main/structurizr-dsl/pom.xml)).

The local/server/export/etc commands are bundled into a single Java application, the version number of which is specified in the [structurizr-application/pom.xml](https://github.com/structurizr/structurizr/blob/main/structurizr-application/pom.xml) file via a property named `app.revision` that defaults to `1.0.0`. The [prebuilt binaries](/binaries) follow a calendar versioning scheme of the form `yyyy.mm.dd`, set on the command line when the build is initiated:

```
./mvnw package -Dapp.revision=2026.02.01
```