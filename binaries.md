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

- Requires Docker
- Image name: [structurizr/structurizr](https://hub.docker.com/r/structurizr/structurizr)
- Latest release: `latest` tag
- Preview build: `preview` tag

Pull the latest version of the Docker image:

```
docker pull structurizr/structurizr
```

Start Structurizr:

```
docker run -it --rm -v $PWD:/usr/local/structurizr structurizr/structurizr <command> [parameters]
```

In this example, `$PWD` will mount the current local directory as the working directory (mapped to `/usr/local/structurizr` in the Docker container).

## Java .war file

- Requires Java 21
- Latest release: [structurizr-2026.03.06.war](https://download.structurizr.com/structurizr-2026.03.06.war)
- Preview build: [structurizr-preview.war](https://download.structurizr.com/structurizr-preview.war)

Download the file, either by clicking the link above or via the command line:

```
curl -O https://download.structurizr.com/structurizr-2026.03.06.war
```

Start Structurizr:

```
java -jar structurizr-2026.03.06.war <command> [parameters] 
```

## Community builds

The following binaries/packages can also be used, but are not maintained by us.

- [Homebrew](https://formulae.brew.sh/formula/structurizr)