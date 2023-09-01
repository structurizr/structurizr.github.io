---
layout: default
title: Quickstart
parent: Structurizr on-premises
nav_order: 1
permalink: /onpremises/quickstart
---

# Quickstart

Here's a brief guide to getting started with the Structurizr on-premises installation via the pre-built Docker image,
and assumes that you have Docker installed.

## 1. Create the Structurizr data directory

The Structurizr on-premises installation needs to be given access to a directory, where all data will be stored.
We'll refer to this directory as the "Structurizr data directory".

## 2. Start Structurizr on-premises

You can now start the Structurizr on-premises installation with the following commands, replacing `PATH` with the path to your Structurizr data directory:

```
docker pull structurizr/onpremises
docker run -it --rm -p 8080:8080 -v PATH:/usr/local/structurizr structurizr/onpremises
```

For example, if your Structurizr data directory is located at `/Users/simon/structurizr`, the command would be:

```
docker run -it --rm -p 8080:8080 -v /Users/simon/structurizr:/usr/local/structurizr structurizr/onpremises
```

## 3. Open your web browser

With the Structurizr on-premises installation running, you can head to [http://localhost:8080](http://localhost:8080) in your web browser, where
you should see the home page. You can then sign in using the default credentials (`structurizr` and `password`), and start to create workspaces, etc.