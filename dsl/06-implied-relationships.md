---
layout: default
title: Implied relationships
parent: Structurizr DSL
nav_order: 6
permalink: /dsl/implied-relationships
---

# Implied relationships

By default, the Structurizr DSL will create "implied relationships" automatically. For example, consider the following DSL, which defines a relationship between a person and a container.

```
workspace {

    model {
        u = person "User"
        s = softwareSystem "Software System" {
            webapp = container "Web Application"
        }

        u -> webapp "Uses"
    }

    views {
        systemContext s {
            include *
            autoLayout lr
        }
    }
    
}
```

Although the DSL does not define an explicit relationship between the person and the software system, this relationship is implied because of the relationship between the person and the container that resides inside the software system.
See [DSL Cookbook - Implied relationships](/dsl/cookbook/implied-relationships/) for more details and examples.

## Configuring implied relationships

The `!impliedRelationships` keyword provides a way to configure how implied relationships are created.

```
!impliedRelationships <true|false|fqcn>
```

A value of `false` disables implied relationship creation, while `true` creates implied relationships between all valid combinations of the parent elements, unless any relationship already exists between them
(it uses the [CreateImpliedRelationshipsUnlessAnyRelationshipExistsStrategy](/java/implied-relationships#createimpliedrelationshipsunlessanyrelationshipexistsstrategy)).

You can also configure a specific implementation via a fully qualified Java class name. For example:

```
!impliedRelationships com.structurizr.model.CreateImpliedRelationshipsUnlessSameRelationshipExistsStrategy
!impliedRelationships com.structurizr.model.CreateImpliedRelationshipsUnlessAnyRelationshipExistsStrategy
```

See [Structurizr for Java - Implied relationships](/java/implied-relationships) for details of the built-in strategies,
and for some information on how to build your own.