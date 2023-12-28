---
layout: default
title: Getting started
parent: Structurizr for Java
nav_order: 1
permalink: /java/getting-started
---

# Getting started

Here is a quick overview of how to get started with Structurizr for Java so that you can create a workspace using Java code.
You can find a full code example at [GettingStarted.java](https://github.com/structurizr/examples/blob/main/java/src/main/java/com/structurizr/example/GettingStarted.java)
and the published workspace at [https://structurizr.com/share/25441](https://structurizr.com/share/25441).
See [structurizr-examples](https://github.com/structurizr/examples/tree/main/java/src/main/java/com/structurizr/example) for more examples.

## 1. Dependencies

The Structurizr for Java binaries are hosted on [Maven Central](https://repo1.maven.org/maven2/com/structurizr/structurizr-client/)
and the dependency coordinates for `structurizr-client` (which has a transient dependency on `structurizr-core`) is as follows.

 - `com.structurizr:structurizr-client`

## 2. Create a Java program

We'll start by creating a new Java class with a ```main``` method as follows:

```java
public class GettingStarted {

    public static void main(String[] args) throws Exception {
       // your Structurizr code will go here
    }

}
```

## 3. Create a model

The first step is to create a workspace in which the software architecture model will reside.

```java
Workspace workspace = new Workspace("Getting Started", "This is a model of my software system.");
Model model = workspace.getModel();
```

Now let's add some elements to the model to describe a user using a software system.

```java
Person user = model.addPerson("User", "A user of my software system.");
SoftwareSystem softwareSystem = model.addSoftwareSystem("Software System", "My software system.");
user.uses(softwareSystem, "Uses");
```

## 4. Create a view

With the model created, we need to create some views with which to visualise it.

```java
ViewSet views = workspace.getViews();
SystemContextView contextView = views.createSystemContextView(softwareSystem, "SystemContext", "An example of a System Context diagram.");
contextView.addAllSoftwareSystems();
contextView.addAllPeople();
```

## 5. Add some colour and shapes

Optionally, elements and relationships can be styled by specifying colours, sizes and shapes.

```java
Styles styles = views.getConfiguration().getStyles();
styles.addElementStyle(Tags.SOFTWARE_SYSTEM).background("#1168bd").color("#ffffff");
styles.addElementStyle(Tags.PERSON).background("#08427b").color("#ffffff").shape(Shape.Person);
```

## 6. Next steps

The code to this point will create a workspace, and now you have options as to what do to next.

### 6a. Upload to the Structurizr cloud service

The Structurizr cloud service provides a web API to get and put workspaces,
and an API client is provided via the [WorkspaceApiClient](https://github.com/structurizr/java/blob/master/structurizr-client/src/com/structurizr/api/WorkspaceApiClient.java) class.
Assuming that you have a cloud service account, have created a workspace, and have the workspace ID plus API key/secret pair:

```java
WorkspaceApiClient client = new WorkspaceApiClient("key", "secret");
client.putWorkspace(id, workspace);
```

### 6b: Upload to a Structurizr on-premises installation

This is the same as above, with the exception that you'll need to additionally provide an API endpoint:

```java
WorkspaceApiClient client = new WorkspaceApiClient("http://localhost:8080/api", "key", "secret");
client.putWorkspace(id, workspace);
```

### 6c. Export to a JSON file

To export the workspace to a JSON file:

```java
WorkspaceUtils.saveWorkspaceToJson(workspace, new File("workspace.json"));
```