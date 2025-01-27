---
layout: default
title: Building from source
parent: Structurizr Lite
nav_order: 70
permalink: /lite/building
---

# Building from source

Part of the UI is shared between the on-premises installation, cloud service, and Structurizr Lite
so you will need to additionally clone the [structurizr/ui](https://github.com/structurizr/ui) repo.

## Build

```
git clone --recursive https://github.com/structurizr/lite.git structurizr-lite
git clone https://github.com/structurizr/ui.git structurizr-ui
cd structurizr-lite
./ui.sh
./gradlew clean build
```

If successful, you will see a file named `structurizr-lite.war` in `structurizr-onpremises/build/libs`.

If you see an error message of the form `Could not find com.structurizr:structurizr-dsl:x.y.z`, you will need to
[build the Structurizr for Java repo from source, and publish to your local Maven repository](/java/building).

## Run

To run Structurizr Lite, you can then use:

```
java -jar build/libs/structurizr-lite.war /path/to/workspace
```

(replace `/path/to/workspace` with the path to the folder where your `workspace.dsl` file is)

## Docker 

To build a Docker image:

```
docker build . -t mytag
```

And to start a Docker container from this image (replace `/path/to/dataDirectory`):

```
docker run -it --rm -p 8080:8080 -v /path/to/dataDirectory:/usr/local/structurizr mytag
```