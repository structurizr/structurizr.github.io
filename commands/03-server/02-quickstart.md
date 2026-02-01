---
layout: default
permalink: /server/quickstart
title: Quickstart
parent: server
nav_order: 2
has_children: false
has_toc: false
---

# Quickstart

Here's a quick getting started to using Structurizr `server` via the pre-built Docker image,
and assumes that you have Docker installed.

## 1. Create a directory

First you need to create a directory somewhere to store your workspaces.
We'll refer to this directory as the "Structurizr data directory".

## 2. Start Structurizr

You can now start Structurizr with the following commands, replacing `PATH` with the path to your Structurizr data directory:

```
docker pull structurizr/structurizr
docker run -it --rm -p 8080:8080 -v PATH:/usr/local/structurizr structurizr/structurizr server
```

For example, if your Structurizr data directory is located at `/Users/simon/structurizr`, the command would be:

```
docker pull structurizr/structurizr
docker run -it --rm -p 8080:8080 -v /Users/simon/structurizr:/usr/local/structurizr structurizr/structurizr server
```

## 3. Open your web browser

With Structurizr running, you can head to [http://localhost:8080](http://localhost:8080) in your web browser, where
you should see the home page. Authentication is disabled by default, so you can go ahead and start creating workspaces.