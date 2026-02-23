---
layout: default
title: Configuration
parent: server
nav_order: 4
permalink: /server/configuration
---

# Configuration

The Structurizr server has two major configuration points:

1. The location of the Structurizr data directory.
2. Configuration of the Structurizr server itself via a file named `structurizr.properties` inside the Structurizr data directory.

## Data directory

The location of the Structurizr data directory is configured when starting the server. If unset, the Structurizr data directory location will default to `/usr/local/structurizr`.

When using the prebuilt Docker image, you can leave the default location and perform a volume mount instead:

```
docker run -it --rm -p 8080:8080 -v PATH:/usr/local/structurizr structurizr/structurizr server
```

When using the Java application directly, the data directory is specified as a command line argument:

```
java -jar structurizr.war server PATH 
```

## Port number

Port 8080 is used by default, but can be changed as follows if you are using the Docker image:

```
docker run -it --rm -p 9090:9090 -e PORT=9090 -v PATH:/usr/local/structurizr structurizr/structurizr server
```

And with the Java .war file:

```
java -Dserver.port=9090 -jar structurizr.war server PATH 
```

## Configuration options

The various server configuration options can be configured in a number of different ways. Changing any of these parameters requires a restart of the server, and the casing of property names (upper or lower case) doesn't matter.

### 1. structurizr.properties file

A text file named `structurizr.properties` inside your Structurizr data directory, inside which are a number of `name=value` property pairs. Values can either be static strings, or references to environment variables (e.g. `structurizr.redis.password=${REDIS_PASSWORD}`).

- Name prefix: `structurizr.`
- Example: `structurizr.url=https://structurizr.example.com`

### 2. JVM system properties

Settings can also be configured as JVM system properties.

- Name prefix: `structurizr.`
- Example: `-Dstructurizr.url=https://structurizr.example.com`

### 3. Environment variables

Settings can be configured via environment variables when starting the Structurizr server, with variable names prefixed `STRUCTURIZR_` and `.` characters in the equivalent property name converted to `_`. Environment variable names can be upper or lower case.

- Environment variable name prefix: `STRUCTURIZR_`
- Example: `STRUCTURIZR_URL=https://structurizr.example.com`

## URL

You will likely need to configure a property to tell the Structurizr server what URL is being used to access the server when running the server behind a load balancer and/or reverse-proxy.

| Name              | Value                                                                              |
|-------------------|------------------------------------------------------------------------------------|
| `structurizr.url` | The full URL where the server is accessed (e.g. `https://structurizr.example.com`) |

## DSL editor

By default, the browser-based DSL editor is disabled, because it [does not support all DSL features](/dsl/parser). It can be enabled though:

| Name                               | Value                       |
|------------------------------------|-----------------------------|
| `structurizr.feature.ui.dslEditor` | `true` or `false` (default) |

## Workspace scope

By default, the server doesn't validate [workspace scope](/workspaces/scope) when workspaces are saved by the UI or uploaded via the API. This can be changed though:

| Name                               | Value                                                                                                 |
|------------------------------------|-------------------------------------------------------------------------------------------------------|
| `structurizr.feature.workspace.scope` | The workspace scope [validation mode](/workspaces/scope#validation): `strict` or `relaxed` (default). |

## Maximum workspace size

By default, Structurizr will throw an error when workspaces exceed a 1MB size limit. This can be modified if required by specifying the maximum workspace size in bytes:

- Property: `structurizr.workspace.maxsize=<bytes>`
- Environment variable: `STRUCTURIZR_WORKSPACE_SIZE=<bytes>`

Please note that you may see performance issues if you raise this value too high.

## Logging

| Name                | Value                                                       |
|---------------------|-------------------------------------------------------------|
| `structurizr.debug` | `true` to enable debug logging, `false` (default) otherwise |
