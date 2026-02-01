---
layout: default
title: MCP server
nav_order: 42
permalink: /mcp-server
---

# MCP server

An experimental Structurizr MCP server is available on [GitHub](https://github.com/structurizr/structurizr/tree/main/structurizr-mcp).
It runs standalone and only supports STDIO at this time.

## Tools

### Get a JSON workspace from a file

- Parameters:
    - Filename (required)
- Returns a Structurizr workspace

### Parse a DSL file

- Parameters:
    - Filename (required)
- Returns a Structurizr workspace

### Get a single workspace from a Structurizr server

- Parameters:
    - Structurizr server URL (required)
    - Workspace ID (required)
    - API key (not required if running the server with authentication disabled)
- Returns a Structurizr workspace

### Get all workspaces from a Structurizr server

- Parameters:
    - Structurizr server URL (required)
    - Admin API key (not required if running the server with authentication disabled)
- Returns a collection of Structurizr workspaces

## Building from source

Prerequisites:

- Java 21

To build:

```
git clone https://github.com/structurizr/structurizr.git
cd structurizr
./mvnw -Dmaven.test.skip=true package -am -pl structurizr-mcp
```

If successful, there will be a `structurizr-mcp-1.0.0.war` file in `structurizr-mcp/target`.

## Claude Desktop configuration

```
{
  ...
  "mcpServers": {
    "structurizr-mcp": {
    "command": "java",
    "args": [
    "-Dlogging.pattern.console=",
    "-jar",
    "/path/structurizr-mcp-1.0.0.war"]
    }
  }
  ...
}
```

## Example

> load the Structurizr workspace 123 from the server running at http://localhost:8080

> summarise the architecture of the internet banking system

![MCP server example](/images/mcp/mcp-1.png)

![MCP server example](/images/mcp/mcp-2.png)