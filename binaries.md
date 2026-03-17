---
layout: default
permalink: /binaries
title: Prebuilt binaries
nav_order: 8
---

# Prebuilt Binaries

Prebuilt binaries are provided as a Docker image and Java .war file.
All Structurizr [commands](/commands) are free to use from these binaries except for [server](/server), which requires a license (see [pricing](/server/pricing)).

> You can use the open core version of [server](/server) for free by [building from source](/building).

## Docker image

- Image name: [structurizr/structurizr](https://hub.docker.com/r/structurizr/structurizr)
- Tags: `latest` for the most recent released version, `preview` for the most recent development build

```
docker pull structurizr/structurizr
docker run -it --rm -v $PWD:/usr/local/structurizr structurizr/structurizr <command> [parameters]
```

In this example, `$PWD` will mount the current local directory as the working directory (mapped to `/usr/local/structurizr` in the Docker container).

## Java .war file

- Java .war file: [structurizr-2026.03.06.war](https://download.structurizr.com/structurizr-2026.03.06.war)

```
java -jar structurizr-2026.03.06.war <command> [parameters] 
```

## Community builds

The following binaries/packages can also be used, but are not maintained by us.

- [Homebrew](https://formulae.brew.sh/formula/structurizr)