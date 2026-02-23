---
layout: default
permalink: /local/configuration
title: Configuration
parent: local
nav_order: 3
has_children: false
has_toc: false
---

# Configuration

## Data directory

The prebuilt Docker image uses a data directory of `/usr/local/structurizr`, so requires a Docker volume mount to map this to a directory on your computer. For example (replace `PATH` with the path to your Structurizr data directory):

```
docker run -it --rm -p 8080:8080 -v PATH:/usr/local/structurizr structurizr/structurizr local
```

The data directory can be specified as an argument when using the Java .war file:

```
java -jar structurizr.war local PATH 
```

## Port number

Port 8080 is used by default, but can be changed as follows if you are using the Docker image:

```
docker run -it --rm -p 9090:9090 -e PORT=9090 -v PATH:/usr/local/structurizr structurizr/structurizr local
```

And with the Java .war file:

```
java -Dserver.port=9090 -jar structurizr.war local PATH 
```

## Configuration options

The configuration options below require Structurizr to be restarted for them to take effect. They can either be specified in a file named `structurizr.properties` in your Structurizr data directory as `name=value` pairs, or as environment variables when starting Structurizr.

### Auto-save

By default, auto-save is enabled, with a 5000ms interval. A value of `0` will disable auto-save.

- Property: `structurizr.autoSaveInterval=5000`
- Environment variable: `STRUCTURIZR_AUTOSAVEINTERVAL=5000`

### Auto-refresh

By default, auto-refresh is disabled, and changes to your workspace will not be seen in your web browser until you refresh the diagrams/documentation/decision pages. Auto-refresh can be configured as follows, with a number of milliseconds. When enabled, Structurizr will look for changes to files inside your Structurizr data directory, and the diagrams/documentation/decision pages will automatically refresh when changes are detected. A value of `0` will disable auto-refresh.

- Property: `structurizr.autoRefreshInterval=2000`
- Environment variable: `STRUCTURIZR_AUTOREFRESHINTERVAL=2000`

### Read-only diagrams

By default, diagrams are editable. To disable this behaviour:

- Property: `structurizr.editable=false`
- Environment variable: `STRUCTURIZR_EDITABLE=false`

### Multi-workspace mode

By default, Structurizr local parses and renders a single workspace. To enable multi-workspace mode:

- Property: `structurizr.workspaces=*`
- Environment variable: `STRUCTURIZR_WORKSPACES=*`

Create a subdirectory for each workspace, with the name of the subdirectory representing the numeric ID of the workspace. This subdirectory is where you place your `workspace.dsl` file for that workspace. Unlike the default single workspace mode, Structurizr will not create any workspaces for you, so you need to create the subdirectories and `workspace.dsl` files yourself. Subdirectory names can additionally be suffixed to include more information, providing they match this regular expression: `\d*-[a-zA-Z0-9_-]*`, for example:

- `1`
- `01`
- `01-softwareSystemA`
- `01-Software_System_A`

### Maximum workspace size

By default, Structurizr will throw an error when workspaces exceed a 1MB size limit. This can be modified if required by specifying the maximum workspace size in bytes:

- Property: `structurizr.workspace.maxsize=<bytes>`
- Environment variable: `STRUCTURIZR_WORKSPACE_SIZE=<bytes>`

Please note that you may see performance issues if you raise this value too high.