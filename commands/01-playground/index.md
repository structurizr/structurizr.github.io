---
layout: default
nav_order: 1
parent: Commands
title: playground
permalink: /playground
has_children: false
has_toc: false
---

# playground

The Structurizr playground provides a standalone DSL playground that can be used to create diagrams and experiment with the DSL. An instance of this is running at [playground.structurizr.com](https://playground.structurizr.com) to use/try.

[![Structurizr playground screenshot](/images/playground.png)](https://playground.structurizr.com)

## Quickstart

To start the Structurizr playground via the pre-built Docker image (assuming that you have Docker installed):

```
docker pull structurizr/structurizr
docker run -it --rm -p 8080:8080 structurizr/structurizr playground
```

## Port number

To change the port number:

```
docker run -it --rm -p 9090:9090 -e PORT=9090 structurizr/structurizr playground
```

## Themes

The full selection of [prebuilt themes](/server/diagrams/themes) is bundled into the Docker image. To use them, start the playground with an additional environment variable as follows:

```
-e STRUCTURIZR_THEMES=/usr/local/structurizr-themes
```

## Features

- ![](/images/bootstrap-icons/file-earmark-arrow-up.svg) Upload a DSL file from your computer
- ![](/images/bootstrap-icons/box-arrow-down.svg) Load DSL from browser local storage
- ![](/images/bootstrap-icons/box-arrow-up.svg) Save DSL to browser local storage
- ![](/images/bootstrap-icons/palette.svg) Open theme browser
- ![](/images/bootstrap-icons/play.svg) Parse DSL and render diagrams
