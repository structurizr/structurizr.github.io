---
layout: default
title: Plugins
nav_order: 62
parent: DSL
has_children: true
permalink: /dsl/plugins
has_toc: false
---

# Plugins

Plugins can be used where more control or customisation is required, and provide access to the workspace via the [Structurizr for Java library](/java). For example, you could use a plugin to create model elements based upon an external data source, or perhaps define views programmatically. Plugins can be used at any point in the DSL.

To write a plugin, create a Java class that implements the `com.structurizr.dsl.StructurizrDslPlugin` interface (you will need to add a dependency on the DSL library, which can be found on Maven Central via `com.structurizr:structurizr-dsl`).

```
package com.example;

import com.structurizr.Workspace;

public class TestPlugin implements StructurizrDslPlugin {

    @Override
    public void run(StructurizrDslPluginContext context) {
        Workspace workspace = context.getWorkspace();
        workspace.setName("Name set by plugin");
    }

}
```

## Installation

The compiled plugin packaged as a JAR file (plus any other JAR dependencies) should be placed in a directory named `plugins` next to your DSL file.

## Usage

You can then use your plugin from the DSL using the `!plugin` keyword.

 ```
 workspace {

    !plugin com.example.TestPlugin

}
```

Parameters can be specified in the plugin body, for example.

 ```
 workspace {

    !plugin com.example.TestPlugin {
        name value      
    }

}
```

The named parameters are then available via the `getParameter(name)` method of the `StructurizrDslPluginContext`object.

