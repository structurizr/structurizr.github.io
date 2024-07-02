---
layout: default
title: Implied relationships
parent: Structurizr for Java
nav_order: 3
permalink: /java/implied-relationships
---

# Implied relationships

Unlike the Structurizr DSL, the Structurizr for Java library will not create implied relationships.
For example, imagine that you have two components in different containers: 

```
SoftwareSystem softwareSystem = model.addSoftwareSystem("Software System");
Container container1 = softwareSystem.addContainer("Container 1");
Component component1 = container1.addComponent("Component 1");

Container container2 = softwareSystem.addContainer("Container 2");
Component component2 = container2.addComponent("Component 2");
```

And you create a relationship between them:

```
component1.uses(component2, "Sends data X to");
```

At this point, the model contains a single relationship between the two components,
but there are three other implied relationships that could be added:

![Implied relationships](images/implied-relationships.png)

| Type     | Description                             |
|----------|-----------------------------------------|
| Explicit | Component 1 sends data X to Component 2 |
| Implied  | Container 1 Sends data X to Component 2 |
| Implied  | Component 1 Sends data X to Container 2 |
| Implied  | Container 1 Sends data X to Container 2 |

To have the client library create these for you, set an `ImpliedRelationshipsStrategy` implementation on your model.
Provided implementations are as follows.

## DefaultImpliedRelationshipsStrategy

This strategy does not create any implied relationships.

```
model.setImpliedRelationshipsStrategy(new DefaultImpliedRelationshipsStrategy()); // default
component1.uses(component2, "Sends data X to");
```

Relationships that exist in the model:

| Type     | Description                             |
|----------|-----------------------------------------|
| Explicit | Component 1 sends data X to Component 2 |

## CreateImpliedRelationshipsUnlessSameRelationshipExistsStrategy

This strategy creates implied relationships between all valid combinations of the parent elements, unless the same
relationship already exists between them.

```
model.setImpliedRelationshipsStrategy(new CreateImpliedRelationshipsUnlessSameRelationshipExistsStrategy());
component1.uses(component2, "Sends data X to");
```

Relationships that exist in the model:

| Type     | Description                             |
|----------|-----------------------------------------|
| Explicit | Component 1 sends data X to Component 2 |
| Implied  | Container 1 Sends data X to Component 2 |
| Implied  | Component 1 Sends data X to Container 2 |
| Implied  | Container 1 Sends data X to Container 2 |

Although appealing, this strategy typically results in an explosion of relationships in the model,
and therefore isn't particularly useful in real-world usage.

## CreateImpliedRelationshipsUnlessAnyRelationshipExistsStrategy

This strategy creates implied relationships between all valid combinations of the parent elements, unless *any*
relationship already exists between them. This is the strategy that the Structurizr DSL uses by default -
see [DSL cookbook - Implied relationships](/dsl/cookbook/implied-relationships).

```
model.setImpliedRelationshipsStrategy(new CreateImpliedRelationshipsUnlessAnyRelationshipExistsStrategy());
container1.uses(container2, "Sends data to");
component1.uses(component2, "Sends data X to");
```

Relationships that exist in the model:

| Type     | Description                             |
|----------|-----------------------------------------|
| Explicit | Container 1 Sends data to Container 2   |
| Explicit | Component 1 sends data X to Component 2 |
| Implied  | Component 1 Sends data X to Container 2 |
| Implied  | Container 1 Sends data X to Component 2 |

This strategy is useful when you want to show a summary relationship at higher levels in the model,
especially when multiple implied relationships could be created between elements.

## Building your own implied relationships strategy

The [ImpliedRelationshipsStrategy interface](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/model/ImpliedRelationshipsStrategy.java)
and [AbstractImpliedRelationshipsStrategy abstract class](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/model/AbstractImpliedRelationshipsStrategy.java)
are available if you would like to build your own custom implied relationships strategy.