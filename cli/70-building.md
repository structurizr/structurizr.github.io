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
git clone https://github.com/structurizr/cli.git structurizr-cli
git clone https://github.com/structurizr/ui.git structurizr-ui
cd structurizr-cli
./ui.sh
./gradlew clean build getDeps buildZip
```

> To use early access/preview features, change the value of `PREVIEW_FEATURES` to `true` in the [Configuration](https://github.com/structurizr/cli/blob/master/src/main/java/com/structurizr/cli/Configuration.java) class.

If you see an error message of the form `Could not find com.structurizr:structurizr-dsl:x.y.z`, you will need to
[build the Structurizr for Java repo from source, and publish to your local Maven repository](/java/building).

## Run

If successful, The `build/distributions` directory will contain a `structurizr-cli.zip` file.
To run the Structurizr CLI, you can then:

1. Unzip into a directory of your choice.
2. Add the directory to your operating system's path (optional).
3. Use the `structurizr.sh` or `structurizr.bat` file as appropriate for your operating system.

Alternatively you can run the CLI directly from the build directory, with a command like the following:

```
java -cp "build/libs/*:build/dependencies/*" com.structurizr.cli.StructurizrCliApplication 
```

## Docker 

To build a Docker image:

```
docker build . -t mytag
```