---
layout: default
title: Workspace extension
parent: Cookbook
grand_parent: Structurizr DSL
permalink: /dsl/cookbook/workspace-extension/
---

# Workspace extension

The Structurizr DSL provides a way to extend an existing workspace, enabling you to reuse common elements/relationships across multiple workspaces. To use this feature, define your workspace as normal. For example:

```
workspace {

    !identifiers hierarchical

    model {
        a = softwareSystem "A"
        b = softwareSystem "B"
        
        a -> b "Gets data X from"
    }
        
}
```

Next, define your child workspace, using the `extends` keyword to specify the workspace that should be extended. For example:

```
workspace extends https://docs.structurizr.com/dsl/cookbook/workspace-extension/system-landscape.dsl {

    model {
        !element a {
            webapp = container "Web Application"
            database = container "Database"
            
            webapp -> b "Gets data X from"
            webapp -> database "Reads from and writes to"
        }
    }
    
    views {
        systemContext a "A-SystemContext" {
            include *
            autolayout lr
        }

        container a "A-Containers" {
            include *
            autolayout
        }
    }
    
}
```

In this example we're extending a workspace that's accessible via a public URL, but you can also specify the name of a local file. We can use the `!element` keyword to reference and extend the existing software system named "A", which is identified in the parent workspace as `a`. Since `b` is already defined in the parent workspace, we can reference it from the child workspace as if it was defined locally. 

This will create a system context diagram:

[![](A-SystemContext.png)](http://structurizr.com/dsl?src=https://docs.structurizr.com/dsl/cookbook/workspace-extension/a.dsl&view=A-SystemContext)

And a container diagram:

[![](A-Containers.png)](http://structurizr.com/dsl?src=https://docs.structurizr.com/dsl/cookbook/workspace-extension/a.dsl&view=A-Containers)

## Links

- [DSL language reference - workspace](/dsl/language#workspace)
- [DSL language reference - !element](/dsl/language#element-1)
- [DSL language reference - !relationship](/dsl/language#relationship-1)