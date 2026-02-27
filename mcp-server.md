---
layout: default
title: MCP server
nav_order: 42
permalink: /mcp-server
---

# MCP server

An experimental Structurizr MCP server is available on [GitHub](https://github.com/structurizr/structurizr/tree/main/structurizr-mcp).
It runs standalone and supports stateless HTTP transport.

## Tools

### -dsl

#### Validate Structurizr DSL

- Parameters:
  - DSL (required)
- Returns "OK" if the DSL is parseable, or an error message otherwise

#### Parse Structurizr DSL

- Parameters:
  - DSL (required)
- Returns a JSON workspace, or an error message if the DSL can't be parsed

#### Inspect Structurizr DSL

- Parameters:
  - DSL (required)
- Returns a list of inspection violations

### -server

#### Get workspace from a Structurizr server

- Parameters:
  - Structurizr server URL (required)
  - Workspace ID (required)
  - API key (not required if running the server with authentication disabled)
- Returns a Structurizr workspace

#### Get all workspaces from a Structurizr server

- Parameters:
    - Structurizr server URL (required)
    - Admin API key (not required if running the server with authentication disabled)
- Returns a collection of Structurizr workspaces

## mcp.structurizr.com

An instance of the MCP server is running at `mcp.structurizr.com`, with the DSL tools enabled. If you'd like to use this, just create a connector to `https://mcp.structurizr.com/mcp` in your AI agent.

## Running

The Structurizr MCP server is included in the [prebuilt Docker image](binaries). To run it:

```
docker pull structurizr/structurizr
docker run -it --rm -p 3000:3000 -e PORT=3000 structurizr/structurizr mcp <parameters>
```

The following parameters are supported:

- `-dsl`: Enable DSL tools.
- `-server`: Enable Structurizr [server](/server) tools.

## Building and running from source

Prerequisites:

- Java 21

To build:

```
git clone https://github.com/structurizr/structurizr.git
cd structurizr
./mvnw -Dmaven.test.skip=true package -am -pl structurizr-mcp
```

If successful, there will be a `structurizr-mcp-1.0.0.war` file in `structurizr-mcp/target`.

`java -jar structurizr-mcp/target/structurizr-mcp-1.0.0.war <parameters>`

## Claude Desktop configuration

```
{
  ...
  "mcpServers": {
    "structurizr-mcp": {
      "command": "npx",
      "args": ["mcp-remote", "http://localhost:3000/mcp"]
    }
  }
  ...
}
```

(Claude Desktop doesn't permit `http` transport, so you'll need to use [mcp-remote](https://www.npmjs.com/package/mcp-remote) or similar that bridges stdio to a remote MCP server)

## Example

> load the Structurizr workspace 123 from the server running at http://localhost:8080

> summarise the architecture of the internet banking system

![MCP server example](/images/mcp/mcp-1.png)

![MCP server example](/images/mcp/mcp-2.png)