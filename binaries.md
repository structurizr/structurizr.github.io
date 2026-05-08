---
layout: default
permalink: /binaries
title: Prebuilt binaries
nav_order: 9
---

# Prebuilt binaries

Prebuilt binaries are provided as a Docker image and Java .war file.
All Structurizr [commands](/commands) are free to use from these binaries except for [server](/server), which requires a license (see [pricing](/server/pricing)).

- Latest release: 2026.04.19

## Docker image

- Requires Docker
- Image name: [structurizr/structurizr](https://hub.docker.com/r/structurizr/structurizr)
- Tags:
  - `2026.04.19` and `latest`: [Hardened Eclipse Temurin 21 - Alpine](https://hub.docker.com/hardened-images/catalog/dhi/eclipse-temurin) base image for general production use.
  - `2026.04.19-playwright`: Non-hardened [Playwright for Java - Noble](https://mcr.microsoft.com/en-us/artifact/mar/playwright/java) base image that includes the Microsoft Playwright dependencies required to use the PNG/SVG export feature.
  - `preview`: Non-hardened [Playwright for Java - Noble](https://mcr.microsoft.com/en-us/artifact/mar/playwright/java) base image, not intended for production use.

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
- Downloads:
  - [structurizr-2026.04.19.war](https://download.structurizr.com/structurizr-2026.04.19.war) and [structurizr.war](https://download.structurizr.com/structurizr.war): Excludes Microsoft Playwright dependencies.
  - [structurizr-2026.04.19-playwright.war](https://download.structurizr.com/structurizr-2026.04.19-playwright.war): Includes Microsoft Playwright dependencies.
  - [structurizr-preview.war](https://download.structurizr.com/structurizr-preview.war): A preview build, includes Microsoft Playwright dependencies, not intended for production use.

Download the file, either by clicking the link above or via the command line:

```
curl -O https://download.structurizr.com/structurizr.war
```

Start Structurizr:

```
java -jar structurizr.war <command> [parameters] 
```

## Community builds

The following binaries/packages can also be used, but are not maintained by us.

- [Homebrew](https://formulae.brew.sh/formula/structurizr)