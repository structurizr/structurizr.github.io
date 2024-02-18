---
layout: default
title: Inspections
parent: Workspaces
nav_order: 2
permalink: /workspaces/inspections
---

# Inspections

__This feature is unreleased, and currently only available by building from source.__

The workspace inspections feature provides a Checkstyle inspired approach to verifying workspace content.

## Severity

The possible severities are:

- `error`
- `warning`
- `info`
- `ignore`

The default severity for all inspection violations is `error`.
This can be changed by adding a workspace property named `structurizr.inspection.*` with a value of `ignore`, `info`, or `warning`; for example:

```
workspace {

    properties {
        structurizr.inspection.* info
    }
    
    ...
}
```

The severity of individual inspection violations can be changed by adding a property to the associated
element/relationship/view as follows:

- Name: `structurizr.inspection.` + the inspection type.
- Value: `ignore`, `info`, `warning`, or `error`.

For example, to ignore component description violations for a specific component:

```
workspace {

    model {
        softwaresystem "Software System" {
            container "Container" {
                component "Component 1" {
                    properties {
                        structurizr.inspection.model.component.description ignore
                    }
                }
                component "Component 2"
                component "Component 3"
            }
        }
    }

}
```

Adding the property to a higher level of abstraction will suppress all inspection violations of the same type.
For example, adding a property named `structurizr.inspection.model.component.description` to a container will
change the severity of missing description violations for all components within that container:

```
workspace {

    model {
        softwaresystem "Software System" {
            container "Container" {
                properties {
                    structurizr.inspection.model.component.description info
                }
                
                component "Component 1"
                component "Component 2"
                component "Component 3"
            }
        }
    }

}
```

The severity of model related violations can also be changed by properties at the model or workspace level,
and view related violations can be changed by properties at the viewset or workspace level; for example:

```
workspace {

    model {
        properties {
            structurizr.inspection.model.component.description ignore
        }

        softwaresystem "Software System" {
            container "Container" {
                component "Component 1"
                component "Component 2"
                component "Component 3"
            }
        }
    }

}
```

```
workspace {

    properties {
        structurizr.inspection.model.component.description ignore
    }

    model {
        softwaresystem "Software System" {
            container "Container" {
                component "Component 1"
                component "Component 2"
                component "Component 3"
            }
        }
    }

}
```

Wildcards can also be used in the property name to change the severity of groups of inspections.
For example:

- `structurizr.inspection.model.component.*`: All component related inspections.
- `structurizr.inspection.model.*`: All model related inspections.
- `structurizr.inspection.*`: All inspections.

## Types

The built-in inspection types are as follows:

| Type                                   | Description                                                  |
|----------------------------------------|--------------------------------------------------------------|
| `workspace.scope`                      | Inspections related to [workspace scope](/workspaces/scope). |
| `workspace.tooling`                    | Inspections related to tooling.                              |
| `model.empty`                          | Empty model.                                                 |
| `model.person.description`             | Person with no description.                                  |
| `model.softwaresystem.description`     | Software system with no description.                         |
| `model.softwaresystem.documentation`   | Software system with containers, but no documentation.       |
| `model.softwaresystem.decisions`       | Software system with containers, but no decisions.           |
| `model.container.description`          | Container with no description.                               |
| `model.container.technology`           | Container with no technology.                                |
| `model.component.description`          | Component with no description.                               |
| `model.component.technology`           | Component with no technology.                                |
| `model.deploymentnode.description`     | Deployment node with no description.                         |
| `model.deploymentnode.technology`      | Deployment node with no technology.                          |
| `model.deploymentnode.empty`           | Empty deployment node.                                       |
| `model.infrastructurenode.description` | Infrastructure node with no description.                     |
| `model.infrastructurenode.technology`  | Infrastructure node with no technology.                      |
| `model.element.disconnected`           | Disconnected element.                                        |
| `model.element.noview`                 | Element not included in any views.                           |
| `model.relationship.description`       | Relationship with no description.                            |
| `model.relationship.technology`        | Relationship with no technology.                             |
| `views.empty`                          | Empty viewset.                                               |
| `views.view.empty`                     | Empty view.                                                  |
| `views.view.key`                       | Automatically generated view key.                            |
| `views.view.layout`                    | Layout related inspections.                                  |
| `views.styles.element.metadata`        | Element style with `metadata` set to `false`.                |
