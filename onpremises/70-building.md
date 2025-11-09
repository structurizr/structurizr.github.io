---
layout: default
title: Building from source
parent: Structurizr on-premises
nav_order: 80
permalink: /onpremises/building
---

# Building from source

Part of the UI is shared between the on-premises installation, cloud service, and Structurizr Lite
so you will need to additionally clone the [structurizr/ui](https://github.com/structurizr/ui) repo.

To build from source:

```
git clone --recursive https://github.com/structurizr/onpremises.git structurizr-onpremises
git clone https://github.com/structurizr/ui.git structurizr-ui
cd structurizr-onpremises
./ui.sh
./gradlew clean build
```

The integration tests use Testcontainers to start an Elasticsearch instance.
If you don't have Docker installed, you can use `./gradlew clean build -x integrationTest` to exclude the
integration tests.

If successful, you will see a file named `structurizr-onpremises.war` in `structurizr-onpremises/build/libs`.

If you see an error message of the form `Could not find com.structurizr:structurizr-dsl:x.y.z`, you will need to
[build the Structurizr for Java repo from source, and publish to your local Maven repository](/java/building).

To then build a Docker image:

```
cd structurizr-onpremises
docker build . -t mytag
```

And to start a Docker container from this image (replace /path/to/dataDirectory):

```
docker run -it --rm -p 8080:8080 -v /path/to/dataDirectory:/usr/local/structurizr mytag
```