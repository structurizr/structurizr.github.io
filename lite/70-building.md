---
layout: default
title: Building from source
parent: Structurizr Lite
nav_order: 70
permalink: /lite/building
---

# Building from source

## Build

```
git clone https://github.com/structurizr/java.git structurizr-java
git clone --recursive https://github.com/structurizr/lite.git structurizr-lite
git clone https://github.com/structurizr/ui.git structurizr-ui
cd structurizr-java
./gradlew -Pversion=dev clean build publishToMavenLocal
cd ..
cd structurizr-lite
./ui.sh
./gradlew -PstructurizrVersion=dev clean build
```

[//]: # (> To use early access/preview features, change the value of `PREVIEW_FEATURES` to `true` in the [Configuration]&#40;https://github.com/structurizr/lite/blob/main/src/main/java/com/structurizr/lite/Configuration.java&#41; class.)

If successful, you will see a file named `structurizr-lite.war` in `structurizr-lite/build/libs`.

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