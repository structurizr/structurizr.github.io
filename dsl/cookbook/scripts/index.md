---
layout: default
title: Scripts
parent: Cookbook
grand_parent: DSL
permalink: /dsl/cookbook/scripts/
---

# Scripts

The `!script` keyword provides a way to run scripts written in Groovy, Kotlin, Ruby, and JavaScript.
This gives you access to the underlying [Workspace](https://github.com/structurizr/java/blob/master/structurizr-core/src/com/structurizr/Workspace.java) via a variable named `workspace`,
for when you need to do something not supported by the DSL.
Other variables (`element`, `relationship`, `view`) are available depending on where the script is defined; see [Scripts](/dsl/scripts) for more details.

## Examples

Here are some example scripts.

### Create the default views, without automatic layout

```
!script groovy {
    workspace.views.createDefaultViews()
    workspace.views.views.findAll { it instanceof com.structurizr.view.ModelView }.each { it.disableAutomaticLayout() }
}
```

### Remove orphaned elements from all views

```
!script groovy {
    workspace.views.views.findAll { it instanceof com.structurizr.view.ModelView }.each { it.removeElementsWithNoRelationships() }
}
```

### Programmatically add elements to a view

```
workspace {

    model {
        group "Group 1" {
            a = softwareSystem "A" {
                tags "Tag 1"
            }
            b = softwareSystem "B" {
                tags "Tag 2"
            }
        }
        group "Group 2" {
            c = softwareSystem "C" {
                tags "Tag 1"
            }
            d = softwareSystem "D" {
                tags "Tag 2"
            }
        }
    }

    views {
        systemLandscape "key" {
            !script groovy {
                workspace.model.softwareSystems.findAll { it.group == "Group 1" && it.hasTag("Tag 1") }.each{ view.add(it); };
            }

            autolayout
        }
    }

}
```

### Run Graphviz locally

```
!script groovy {
    new com.structurizr.graphviz.GraphvizAutomaticLayout().apply(workspace);
}
```
(this requires Graphviz to be installed locally)

### Append container technology property to tags

```
!script groovy {
    workspace.model.elements.findAll { it instanceof com.structurizr.model.Container }.each { it.addTags(it.technology) }
}
```

## Links

- [DSL language reference - Scripts](/dsl/language#scripts)
- [Structurizr for Java source code](https://github.com/structurizr/java/tree/master/structurizr-core/src/com/structurizr)
