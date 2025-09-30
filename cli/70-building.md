---
layout: default
title: Building from source
parent: Structurizr CLI
nav_order: 70
permalink: /cli/building
---

# Building from source

To build the Structurizr CLI from source, you'll need `git` and Java 17+ installed.
The Structurizr UI is required for the CLI to export a static site, 
so you will need to additionally clone the [structurizr/ui](https://github.com/structurizr/ui) repo.

## Build

```
git clone https://github.com/structurizr/java.git structurizr-java
git clone https://github.com/structurizr/cli.git structurizr-cli
git clone https://github.com/structurizr/ui.git structurizr-ui
cd structurizr-java
./gradlew -Pversion=dev clean build publishToMavenLocal
cd ..
cd structurizr-cli
./ui.sh
./gradlew -PstructurizrVersion=dev clean build getDeps buildZip
```

[//]: # (> To use early access/preview features, change the value of `PREVIEW_FEATURES` to `true` in the [Configuration]&#40;https://github.com/structurizr/cli/blob/master/src/main/java/com/structurizr/cli/Configuration.java&#41; class.)

## Run

If successful, you can then use a command like the following to run the Structurizr CLI:

```
java -cp "build/libs/*:build/dependencies/*" com.structurizr.cli.StructurizrCliApplication 
```

Alternatively:

1. Unzip `build/distributions/structurizr-cli.zip` into a directory of your choice.
2. Add the directory to your operating system's path (optional).
3. Use the `structurizr.sh` or `structurizr.bat` file as appropriate for your operating system.

## Docker 

To build a Docker image:

```
docker build . -t mytag
```