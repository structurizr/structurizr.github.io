---
layout: default
title: Language reference
parent: Structurizr DSL
nav_order: 71
permalink: /dsl/language
---


# Language reference
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

This page describes the language syntax and grammar, with angle brackets (`<...>`) used to show required properties, and square brackets (`[...]`) used to show optional properties.
Most statements are of the form: `keyword <required properties> [optional properties]`


## workspace

`workspace` is the top level language construct, and the wrapper for the [model](#model) and [views](#views). A workspace can optionally be given a name and description.

```
workspace [name] [description] {
    ...
}
```

A workspace can also extend another workspace, to add more elements, relationships, views, etc to it.

```
workspace extends <file|url> {
    ...
}
```

The base workspace can either be referenced using a local DSL/JSON file, or a remote (via a HTTPS URL) DSL/JSON file.
When extending a DSL-based workspace, all of the identifiers defined in that workspace are available to use in the extended workspace.

Permitted children:

- name <name>
- description <description>
- [properties](#properties)
- [!identifiers](#identifiers)
- [!docs](#docs)
- [!adrs](#adrs)
- [model](#model)
- [views](#views)
- [configuration](#configuration)

## model

Each workspace must contain a `model` block, inside which elements and relationships are defined.

```
model {
    ...
}
```

Permitted children:

- [!identifiers](#identifiers)
- [group](#group)
- [person](#person)
- [softwareSystem](#softwaresystem)
- [deploymentEnvironment](#deploymentenvironment)
- [element](#element)
- [-> (relationship)](#relationship)

## group

The `group` keyword provides a way to define a named grouping of elements, which will be rendered as a boundary around those elements.
Groups can be nested; see [DSL Cookbook - Groups](cookbook/groups) for more information.

```
group <name> {
    ...
}
```

Groups can only be used to group elements of the same type (i.e. the same level of abstraction), as follows:

| Location        | Permitted elements          |
|-----------------|-----------------------------|
| Model           | People and software systems |
| Software System | Containers                  |
| Container       | Components                  |

The `group` keyword can also be used to set the group name of a component:

```
component "Component Name" {
    group "Group Name"
}
```

See [Structurizr - Help - Notation](/ui/diagrams/notation) for a description of which groups are shown for a given diagram type.

## person

The `person` keyword defines a person (e.g. a user, actor, role, or persona).

```
person <name> [description] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Person`

Permitted children:

- [description](#description)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [-> (relationship)](#relationship)

## softwareSystem

The `softwareSystem` keyword defines a software system.

```
softwareSystem <name> [description] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Software System`

Permitted children:

- [!docs](#docs)
- [!adrs](#adrs)
- [group](#group)
- [container](#container)
- [description](#description)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [-> (relationship)](#relationship)

## container

The `container` keyword defines a container, within a software system.

```
container <name> [description] [technology] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Container`

Permitted children:

- [!docs](#docs)
- [!adrs](#adrs)
- [group](#group)
- [component](#component)
- [!components](#components)
- [description](#description)
- [technology](#technology)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [-> (relationship)](#relationship)

## component

The `component` keyword defines a component, within a container.

```
component <name> [description] [technology] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Component`

Permitted children:

- [!docs](#docs)
- [!adrs](#adrs)
- [description](#description)
- [technology](#technology)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [group](#group)
- [-> (relationship)](#relationship)

## deploymentEnvironment

The `deploymentEnvironment` keyword provides a way to define a deployment environment (e.g. development, testing, staging, live, etc).

```
deploymentEnvironment <name> {
    ...
}
```

Permitted children:


- [group](#group)
- [deploymentGroup](#deploymentgroup)
- [deploymentNode](#deploymentnode)
- [-> (relationship)](#relationship)

## deploymentGroup

The `deploymentGroup` keyword provides a way to define a named deployment group.

```
deploymentGroup <name>
```

When software system/container instances are added to a deployment environment, all of the relationships between these elements are automatically replicated between *all* instances. Deployment groups provide a way to restrict the scope in which relationships are replicated.
See [DSL cookbook - Deployment groups](/dsl/cookbook/deployment-groups/) for an example.  

## deploymentNode

The `deploymentNode` keyword is used to define a deployment node.

```
deploymentNode <name> [description] [technology] [tags] [instances] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Deployment Node`

Permitted children:

- [group](#group)
- [deploymentNode](#deploymentnode) (deployment nodes can be nested)
- [infrastructureNode](#infrastructurenode)
- [softwareSystemInstance](#softwaresysteminstance)
- [containerInstance](#containerinstance)
- [-> (relationship)](#relationship)
- [description](#description)
- [technology](#technology)
- [instances](#instances)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)

## infrastructureNode

The `infrastructureNode` keyword defines an infrastructure node, which is typically something like a load balancer, firewall, DNS service, etc.

```
infrastructureNode <name> [description] [technology] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`
- `Infrastructure Node`

Permitted children:

- [-> (relationship)](#relationship)
- [description](#description)
- [technology](#technology)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)

## softwareSystemInstance

The `softwareSystemInstance` keyword defines an instance of the specified software system that is deployed on the parent deployment node.

```
softwareSystemInstance <identifier> [deploymentGroups] [tags] {
    ...
}
```

The `identifier` must represent a software system. `deploymentGroups` is a comma seperated list of identifiers representing deployment groups.

In addition to the software system's tags, the following tags are added by default:

- `Software System Instance`

Permitted children:

- [-> (relationship)](#relationship)
- [description](#description)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [healthCheck](#healthcheck)

## containerInstance

The `containerInstance` keyword defines an instance of the specified container that is deployed on the parent deployment node.

```
containerInstance <identifier> [deploymentGroups] [tags] {
    ...
}
```

The `identifier` must represent a container. `deploymentGroups` is a comma seperated list of identifiers representing deployment groups.

In addition to the container's tags, the following tags are added by default:

- `Container Instance`

Permitted children:

- [-> (relationship)](#relationship)
- [description](#description)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [healthCheck](#healthcheck)

## healthCheck

The `healthCheck` keyword defines a HTTP health check for the parent software system/container instance.

```
healthCheck <name> <url> [interval] [timeout]
```

The interval is a number of seconds (default 60s), and the timeout is a number of milliseconds (default 0ms).

## element

The `element` keyword defines a custom element that sits outside of the C4 model.

```
element <name> [metadata] [description] [tags] {
    ...
}
```

The following tags are added by default:

- `Element`

See [DSL cookbook - Custom elements](/dsl/cookbook/custom-elements) for an example.

Permitted children:

- [description](#description)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)
- [-> (relationship)](#relationship)

## relationship

`->` is used to define a uni-directional relationship between two elements.

There are two ways to define relationships. The first is explicitly, where you explicitly use a source identifier: 

```
<identifier> -> <identifier> [description] [technology] [tags] {
    ...
}
```

For example:

```
user -> softwareSystem "Uses"
```

And the second is implicitly, where the relationship source is the element in scope:

```
-> <identifier> [description] [technology] [tags]
```

For example:

```
person user {
    -> softwareSystem "Uses"
}
```

This is equivalent to the following, where the special `this` identifier is used to refer to the element in scope:

```
person user {
    this -> softwareSystem "Uses"
}
```

The following tags are added to relationships by default:

- `Relationship`

The following types of relationships can be created using the DSL:

| Source  | Destination |
| ------------- | ------------- |
| Person | Person, Software System, Container, Component |
| Software System | Person, Software System, Container, Component |
| Container | Person, Software System, Container, Component |
| Component | Person, Software System, Container, Component |
| Deployment Node | Deployment Node |
| Infrastructure Node | Deployment Node, Infrastructure Node, Software System Instance, Container Instance |
| Software System Instance | Infrastructure Node |
| Container Instance | Infrastructure Node |

Permitted children:

- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)

## tag

`tag` is used to add a single tag to an element or relationship.

```
tag "Tag 1"
```

## tags

`tags` is used to add tags to an element or relationship. Tags can be specified comma separated, or individually.

```
tags "Tag 1"
tags "Tag 1,Tag 2"
tags "Tag 1" "Tag 2"
```

## description

`description` is used to set the description on an element or view.

```
description "Description"
```

## technology

`technology` is used to set the technology on a container, component, deployment node, infrastructure node.

```
technology "Technology"
```

## instances

`instances` is used to set the number of instances of a deployment node.
This can either be a static number, or a range (e.g. 0..1, 1..3, 5..10, 0..N, 0..*, 1..N, 1..*, etc).

```
instances "4"
```

```
instances "1..N"
```

## url

`url` is used to set a URL on an element or relationship.

```
url https://example.com
```

## properties

The `properties` block is used to define one or more name/value properties.

```
properties {
    <name> <value>
    ...
}
```

## perspectives

The `perspectives` block is used to define one or more named perspectives for an element or relationship.
See [Help - Perspectives](/ui/diagrams/perspectives) for how these are used.

```
perspectives {
    <name> <description> [value]
    ...
}
```

## !extend

The `!extend` keyword is deprecated - please use `!element` or `!relationship` instead.

## !ref

The `!ref` keyword is deprecated - please use `!element` or `!relationship` instead.

## !element

The `!element` keyword provides a way to find a previously defined element so that you can add tags, properties, children, etc.

The first usage scenario is to extend an existing element that has been defined via the DSL.
See [DSL cookbook - Workspace extension](/dsl/cookbook/workspace-extension/) for a usage example.

```
!element <identifier> {
  ...
}
```

Or, if you're extending a JSON-based workspace, you can find an element by its "canonical name", and assign that to an identifier.

```
<identifier> = !element <canonical name> {
  ...
}
```

## !elements

The `!elements` keyword can be used to find a set of elements via an [element expression](/dsl/expressions#element-expressions)
in order to perform bulk operations on them.

```
!elements <expression> {
    ...    
}
```

Permitted children:

- [-> (relationship)](#relationship)
- [tag](#tag)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)

## !relationship

The `!relationship` keyword provides a way to find a previously defined relationship so that you can add tags, properties, etc.

The first usage scenario is to extend an existing relationship that has been defined via the DSL.

```
!relationship <identifier> {
  ...
}
```

Or, if you're extending a JSON-based workspace, you can find a relationship by its "canonical name", and assign that to an identifier.

```
<identifier> = !relationship <canonical name> {
  ...
}
```

## !relationships

The `!relationships` keyword can be used to find a set of relationships via a [relationship expression](/dsl/expressions#relationship-expressions)
in order to perform bulk operations on them.

```
!relationships <expression> {
    ...    
}
```

Permitted children:

- [tag](#tag)
- [tags](#tags)
- [url](#url)
- [properties](#properties)
- [perspectives](#perspectives)

## views

Each workspace can also contain one or more views, defined with the `views` block.

```
views {
    ...
}
```

The `views` block can contain the following:

- [systemLandscape](#systemlandscape-view)
- [systemContext](#systemcontext-view)
- [container](#container-view)
- [component](#component-view)
- [filtered](#filtered-view)
- [dynamic](#dynamic-view)
- [deployment](#deployment-view)
- [custom](#custom-view)
- [image](#image-view)
- [styles](#styles)
- [theme](#theme)
- [themes](#themes)
- [branding](#branding)
- [terminology](#terminology)
- [properties](#properties)

If a workspace doesn't have a `views` block, or the `views` block doesn't define any views,
a [default set of views](#convention-over-configuration-useful-defaults) will be defined for you.
Defining one or more views in the `views` block will remove this default set of views,
although they can be added back with a script if needed:

```
!script groovy {
    workspace.views.createDefaultViews()
}
```

## systemLandscape view

The `systemLandscape` keyword is used to define a [System Landscape view](https://c4model.com/#SystemLandscapeDiagram).

```
systemLandscape [key] [description] {
    ...
}
```

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## systemContext view

The `systemContext` keyword is used to define a [System Context view](https://c4model.com/#SystemContextDiagram) for the specified software system.

```
systemContext <software system identifier> [key] [description] {
    ...
}
```

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## container view

The `container` keyword is used to define a [Container view](https://c4model.com/#ContainerDiagram) for the specified software system.

```
container <software system identifier> [key] [description] {
    ...
}
```

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## component view

The `component` keyword is used to define a [Component view](https://c4model.com/#ComponentDiagram) for the specified container.

```
component <container identifier> [key] [description] {
    ...
}
```

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## filtered view

The `filtered` keyword is used to define a [filtered view](/ui/diagrams/filtered-view) on top of the specified view.

```
filtered <baseKey> <include|exclude> <tags> [key] [description] {
    ...
}
```

The `baseKey` specifies the key of the System Landscape, System Context, Container, or Component view on which this filtered view should be based. The mode (`include` or `exclude`) defines whether the view should include or exclude elements/relationships based upon the `tags` provided.

Please note that once a filtered view is defined for a given "base view", that base view will no longer show up in your diagram list when using the Structurizr renderer. This is by design. If you'd like to see the base view too, just create another filtered view for the same base view, which includes the `Element` and `Relationship` tags.

Permitted children:

- [default](#default)
- [title](#title)
- [description](#description)
- [properties](#properties)

```
filtered <baseKey> include "Element,Relationship" [key] [description]
```

## dynamic view

The `dynamic` keyword defines a [Dynamic view](https://c4model.com/#DynamicDiagram) for the specified scope.

```
dynamic <*|software system identifier|container identifier> [key] [description] {
    ...
}
```

The first property defines the scope of the view, and therefore what can be added to the view, as follows:

- `*` scope: People and software systems.
- Software system scope: People, other software systems, and containers. 
- Container scope: People, other software systems, other containers, and components. 

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Unlike the other diagram types, Dynamic views are created by specifying the relationships that should be added to the view, within the `dynamic` block, as follows:

```
<element identifier> -> <element identifier> [description] [technology]
<relationship identifier> [description]
```

An alternative syntax can be used if you want to explicitly specify the ordering of relationship instances:

```
[order:] <element identifier> -> <element identifier> [description] [technology]
[order:] <relationship identifier> [description]
```

With a dynamic view, you're showing _instances_ of relationships that are defined in the static model.
For example, imagine that you have two software systems defined in the static model, with a single relationship between them described as "Sends data to".
A dynamic view allows you to override the relationship description, to better describe the interaction in the context of the behaviour you're diagramming.

See [DSL cookbook - Dynamic view](/dsl/cookbook/dynamic-view/) and
[DSL cookbook - Dynamic view with parallel sequences](/dsl/cookbook/dynamic-view-parallel/)
for examples.

Also see [Modelling multiple relationships](https://dev.to/simonbrown/modelling-multiple-relationships-51bf) for some tips on how to best model multiple relationships between two elements in order to avoid cluttering your static model.

Permitted children:

- [autoLayout](#autolayout)
- [default](#default)
- [title](#title)
- [description](#description)
- [properties](#properties)

## deployment view

The `deployment` keyword defines a [Deployment view](https://c4model.com/#DeploymentDiagram) for the specified scope and deployment environment.

```
deployment <*|software system identifier> <environment> [key] [description] {
    ...
}
```

The first property defines the scope of the view, and the second property defines the deployment environment (which can be an identifier, or a name). The combination of these two properties determines what can be added to the view, as follows:

- `*` scope: All deployment nodes, infrastructure nodes, and container instances within the deployment environment.
- Software system scope: All deployment nodes and infrastructure nodes within the deployment environment. Container instances within the deployment environment that belong to the software system.

A view key will be generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## custom view

The `custom` keyword is used to define a [custom view](/ui/diagrams/custom-view).
Only [custom elements](#element) are permitted to be included on a custom view.

```
custom [key] [title] [description] {
    ...
}
```

See [DSL cookbook - Custom view](/dsl/cookbook/custom-view) for an example.

Permitted children:

- [include](#include)
- [exclude](#exclude)
- [autoLayout](#autolayout)
- [default](#default)
- [animation](#animation)
- [title](#title)
- [description](#description)
- [properties](#properties)

## image view

The `image` keyword is used to define an [image view](/ui/diagrams/image-view) (this is only available on the Structurizr cloud service/on-premises installation/Lite).

```
image <*|element identifier> [key] {
    ...
}
```

Inside this block you can define the source of the image, using one of the following:

- `plantuml <file|url|viewKey>`
- `mermaid <file|url|viewKey>`
- `kroki <format> <file|url>` (where `format` is the format identifier included in the URL path; e.g. `https://kroki.io/{format}/...`)
- `image <file|url>`

You will need to provide a PlantUML/Mermaid/Kroki URL, and optionally a format (`png` or `svg`),
when using these services. These can be specified as view set properties:

```
views {
    properties {
        "plantuml.url" "http://localhost:7777"
        "plantuml.format" "svg"
        "mermaid.url" "http://localhost:8888"
        "mermaid.format" "svg"
        "kroki.url" "http://localhost:9999"
        "kroki.format" "svg"
    }
    
    ...
}
```

The public PlantUML (`https://plantuml.com/plantuml`), Mermaid (`https://mermaid.ink`), and Kroki (`https://kroki.io`)
URLs may work, but (1) please be aware that you are sending information to a third-party service and (2) these public services
may not correctly set the CORS headers required for image views to work (see the notes at [Image views](/ui/diagrams/image-view)).

See [DSL cookbook - Image view](/dsl/cookbook/image-view/) and
the [image view tests](https://github.com/structurizr/java/tree/master/structurizr-dsl/src/test/resources/dsl/image-views) for some examples.

Permitted children:

- [default](#default)
- [title](#title)
- [description](#description)
- [properties](#properties)

## include

The `include` keyword can be used to include elements or relationships.

### Including elements

To include elements in a view, use one or more `include` statements inside the block defining the view.

```
include <*|identifier|expression> [*|identifier|expression...]
```

Elements can either be specified using individual identifiers, the wildcard identifier (`*`) or an [element expression](/dsl/expressions#element-expressions).
Please note that including elements will also include the relationships between those elements.

The wildcard identifier (`*`) operates differently depending upon the type of diagram, as follows:

- System Landscape view: Include all people and software systems.
- System Context view: Include the software system in scope; plus all people and software systems that are directly connected to the software system in scope.
- Container view: Include all containers within the software system in scope; plus all people and software systems that are directly connected to those containers. 
- Component view: Include all components within the container in scope; plus all people, software systems and containers (belonging to the software system in scope) directly connected to them.
- Filtered view: (not applicable)
- Dynamic view: (not applicable)
- Deployment view: Include all deployment nodes, infrastructure nodes, and container instances defined within the deployment environment and (optional) software system in scope.

The wildcard identifier can also be made reluctant (`*?`) for system context, container, and component diagrams:

- System Context view: As above, but only adds relationships to/from the scoped software system.
- Container view: As above, but only adds relationships to/from the containers in the scoped software system.
- Component view: As above, but only adds relationships to/from the components in the scoped container.

### Including relationships

To include a relationship in a view, you can specify an individual relationship identifier, or an expression: 

```
include <identifier|expression> [identifier|expression...]
```

Relationship expressions only operate on elements that exist in the view.

## exclude

The `exclude` keyword can be used to exclude elements or relationships.

### Excluding elements

To exclude specific elements, use one or more `exclude` statements inside the block defining the view.

```
exclude <identifier|expression> [identifier|expression...]
```

### Excluding relationships

To exclude a relationship in a view, you can specify an individual relationship identifier
or a [relationship expression](/dsl/expressions#relationship-expressions):

```
exclude <identifier|expression> [identifier|expression...]
```

Alternatively, you can use the following syntax (please note the double quotes surrounding the entire expression)
to target one or more relationships:

```
exclude "<*|identifier|expression> -> <*|identifier|expression>" 
```

The combinations of parameters are:

- `* -> *`: all relationships between all elements
- `source -> *`: all relationships from `source` to any element
- `* -> destination`: all relationships from any element  to `destination`
- `source -> destination`: all relationships from `source` to `destination`

The relationship expression syntax only operates on elements that exist in the view.

## autoLayout

To enable automatic layout mode for the diagram, use the `autoLayout` statement inside the block defining the view.

```
autoLayout [tb|bt|lr|rl] [rankSeparation] [nodeSeparation]
```

The first property is the rank direction:

- `tb`: Top to bottom (default)
- `bt`: Bottom to top
- `lr`: Left to right
- `rl`: Right to left

The second property is the separation of ranks in pixels (default: `300`), while the third property is the separation of nodes in the same rank in pixels (default: `300`).

Please note that if your DSL workspace does not explicitly define any views, the DSL parser will automatically create a default set of views for you, with auto-layout enabled.
To change this behaviour, you can either (1) explicitly define your views or (2) use a script to disable automatic layout ([example](/dsl/cookbook/scripts/#create-the-default-views-without-automatic-layout)).

## default

Sets the default view to be shown.

```
default
```

## animation

The `animation` keyword defines the animation for the specified view.
Each animation step should be defined on a separate line, inside the block, specifying the elements that should be included in that step.

```
animation {
    <identifier> [identifier...]
    <identifier> [identifier...]
}
```

## title

Overrides the title of the view.

```
title <title>
```

## styles

`styles` is the wrapper for one or more element/relationship styles, which are used when rendering diagrams.

```
styles {
    ...
}
```

Permitted children:

- [element](#element-style)
- [relationship](#relationship-style)

## element style

The `element` keyword is used to define an element style.
All nested properties (`shape`, `icon`, etc) are optional.

```
element <tag> {
    shape <Box|RoundedBox|Circle|Ellipse|Hexagon|Cylinder|Pipe|Person|Robot|Folder|WebBrowser|MobileDevicePortrait|MobileDeviceLandscape|Component>
    icon <file|url>
    width <integer>
    height <integer>
    background <#rrggbb|color name>
    color <#rrggbb|color name>
    colour <#rrggbb|color name>
    stroke <#rrggbb|color name>
    strokeWidth <integer: 1-10>
    fontSize <integer>
    border <solid|dashed|dotted>
    opacity <integer: 0-100>
    metadata <true|false>
    description <true|false>
    properties {
        name value
    }
}
```

See the following links for details about how to use element styles:

- [DSL cookbook - Element styles](/dsl/cookbook/element-styles/)
- [DSL cookbook - Groups](/dsl/cookbook/groups/)
- [Structurizr - Notation](/ui/diagrams/notation)

Notes:

- Colors can be specified as a hex code (e.g. `#ffff00`) or a CSS/HTML named color (e.g. `yellow`).
- See [Notation - Icons](/ui/diagrams/notation#icons) for information about HTTPS/CORS if you are using the Structurizr cloud service/on-premises installation/Lite and specifying an element style icon via a URL.
- Element styles are designed to work with the Structurizr cloud service/on-premises installation/Lite, and may not be fully supported by the [PlantUML, Mermaid, etc export formats](/export) (e.g. shapes and icons).

## relationship style

The `relationship` keyword is used to define a relationship style.
All nested properties (`thickness`, `color`, etc) are optional.

```
relationship <tag> {
    thickness <integer>
    color <#rrggbb|color name>
    colour <#rrggbb|color name>
    style <solid|dashed|dotted>
    routing <Direct|Orthogonal|Curved>
    fontSize <integer>
    width <integer>
    position <integer: 0-100>
    opacity <integer: 0-100>
    properties {
        name value
    }
}
```

See the following links for details about how to use element styles:

- [DSL cookbook - Relationship styles](/dsl/cookbook/relationship-styles/)
- [Structurizr - Notation](/ui/diagrams/notation)

Notes:

- Colors can be specified as a hex code (e.g. `#ffff00`) or a CSS/HTML named color (e.g. `yellow`).
- Relationship styles are designed to work with the Structurizr cloud service/on-premises installation/Lite, and may not be fully supported by the [PlantUML, Mermaid, etc export formats](/export) (e.g. line/arrow colours). 

## theme

The `theme` keyword can be used to specify a theme that should be used when rendering diagrams. See [Themes](/ui/diagrams/themes) for more details.

```
theme <url|file|default>
```

- `default` is a shorthand for `https://static.structurizr.com/themes/default/theme.json`, the [default Structurizr theme](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/default/theme.json).
- Themes specified via a URL will be loaded dynamically when required.
- Themes specified via a file reference will be immediately inlined into the workspace.

## themes

The `themes` keyword can be used to specify one or more themes that should be used when rendering diagrams. See [Themes](/ui/diagrams/themes) for more details.

```
themes <url|file> [url|file] ... [url|file]
```

- `default` is a shorthand for `https://static.structurizr.com/themes/default/theme.json`, the [default Structurizr theme](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/default/theme.json).
- Themes specified via a URL will be loaded dynamically when required.
- Themes specified via a file reference will be immediately inlined into the workspace.

## branding

The `branding` keyword allows you to define some custom branding that should be used when rendering diagrams and documentation. See [Diagrams - Branding](/ui/diagrams/branding) and [Documentation - Branding](/ui/documentation/branding) for more details.

```
branding {
    logo <file|url>
    font <name> [url]
}
```

Notes:

- See [Notation - Icons](/ui/diagrams/notation#icons) for information about HTTPS/CORS if you are using the Structurizr cloud service/on-premises installation/Lite and specifying a branding icon via a URL.

## terminology

The `terminology` keyword allows you to override the terminology used when rendering diagrams.

```
terminology {
    person <term>
    softwareSystem <term>
    container <term>
    component <term>
    deploymentNode <term>
    infrastructureNode <term>
    relationship <term>
}
```

## configuration

Finally, there are some configuration options that can be specified inside the `configuration` block.

```
configuration {
    ...
}
```

Permitted children:

- [scope](#scope)
- [visibility](#visibility)
- [users](#users)
- [properties](#properties)

## scope

The `scope` keyword can be used to set the [workspace scope](/workspaces).

```
scope <landscape|softwaresystem|none>
```

## visibility

The `visibility` keyword can be used to set the visibility of the workspace (private vs public).

```
visibility <private|public>
```

## users

The `users` block can be used to specify the users who should have read-only or read-write access to a workspace. Each username (e.g. e-mail address) and role pair should be specified on their own line. Valid roles are `read` (read-only) and `write` (read-write). 

```
users {
    <username> <read|write>
}
```

## !include

The `!include` keyword can be used to include DSL fragments from another file.

```
!include <file|directory|url>
```

See [Includes](/dsl/includes) for more details.

## !identifiers

The `!identifiers` keyword can be used to modify the scope of identifiers.

```
!identifiers <hierarchical|flat>
```

See [Identifiers](/dsl/identifiers) for more details.

## !impliedRelationships

The `!impliedRelationships` keyword can be used to configure how implied relationships are created.

```
!impliedRelationships <true|false|fqcn>
```

See [Implied relationships](/dsl/implied-relationships) for more details.

## !docs

The `!docs` keyword can be used to attach Markdown/AsciiDoc documentation to the parent context (either the workspace, a software system, or a container).

```
!docs <path> [fully qualified class name]
```

See [Documentation](/dsl/docs) for more details.

## !adrs

The `!adrs` keyword can be used to attach Markdown/AsciiDoc ADRs to the parent context (either the workspace, a software system, or a container).

```
!adrs <path> [type|fqn]
```

See [Architecture decision records](/dsl/adrs) for more details.

## !components

The `!components` keyword is a DSL wrapper around the [Structurizr for Java component finder](/java/component),
providing the ability to automatically discover components in a Java codebase.

See [Patreon](https://patreon.com/structurizr) for early access to the component finder documentation.

## !script

The `!script` keyword can be used to run inline or external scripts in a number of JVM compatible languages.

```
!script <groovy|kotlin|ruby|javascript>
!script <file>
```

See [Scripts](/dsl/scripts) for more details.

## !plugin

The `!plugin` keyword can be used to run Java plugins.

```
!plugin <fqcn>
```

See [Plugins](/dsl/plugins) for more details.
