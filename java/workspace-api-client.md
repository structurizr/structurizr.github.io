---
layout: default
title: Workspace API client
parent: Java
nav_order: 2
permalink: /java/workspace-api
---

# Workspace API client

The Structurizr server provides a web API to get and put workspaces,
and an API client is provided via the [WorkspaceApiClient](https://github.com/structurizr/structurizr/blob/main/structurizr-client/src/main/java/com/structurizr/api/WorkspaceApiClient.java) class.

Each workspace has its own API key, which can be generated from workspace settings page.
You will need this (plus the workspace ID) when creating a `WorkspaceApiClient` instance:

For the cloud service:

```java
WorkspaceApiClient client = new WorkspaceApiClient("https://structurizr.example.com", 1234, "apikey");
```

## Usage

The following operations are available on the API client.

### Get workspace

This allows you to get the content of a remote workspace.

```java
Workspace workspace = client.getWorkspace();
```

By default, a copy of the workspace (as a JSON document) is archived to the current working directory. You can modify this behaviour by calling ```setWorkspaceArchiveLocation```. A ```null``` value will disable archiving.

### Put workspace

This allows you to overwrite an existing remote workspace.
If the ```mergeFromRemote``` property (on the `WorkspaceApiClient` instance) is set to `true` (this is the default),
any layout information (i.e. the location of boxes on diagrams) is preserved where possible (i.e. where diagram elements haven't been renamed).

```java
client.putWorkspace(workspace);
```

### Locking/unlocking a workspace

The Structurizr server has a workspace locking feature to prevent concurrent updates.

```java
client.lockWorkspace();
```

This method returns a boolean; `true` if the workspace could be locked, `false` otherwise.

Similarly, you can unlock a workspace.

```java
client.unlockWorkspace();
```

This method also returns a boolean; `true` if the workspace could be unlocked, `false` otherwise.

## Troubleshooting

### SSL handshake errors

SSL handshake errors are likely if using a self-signed certificate because the Structurizr client runtime won't trust a self-signed certificate by default.

If this happens, you can use the ```javax.net.ssl.trustStore``` JVM option to point to your keystore. For example:

```
java -Djavax.net.ssl.trustStore=/some/path/to/keystore.jks YourJavaProgram
```

Alternatively, you can specify this property in your Java program:

```
System.setProperty("javax.net.ssl.trustStore", "/some/path/to/keystore.jks");
```