---
layout: default
permalink: /export/plantuml
title: PlantUML
parent: export
nav_order: 1
has_children: false
has_toc: false
---

# PlantUML

```
export -format plantuml ...
export -format plantuml/structurizr ...
```

Generates PlantUML diagram definitions based upon how the Structurizr diagram renderer in playground/local/server
creates diagrams using tags and styles. The following view types are supported:

- Custom
- System landscape
- System context
- Containers
- Components
- Dynamic (collaboration and sequence diagram)
- Deployment

There are a number of properties that can be set to customise the exports.
The following properties can either be set on individual views, or on the view set to apply to all views:

- `plantuml.title`: `true` (default) to include diagram titles, `false` to exclude diagram titles.
- `plantuml.includes`: a comma separated list of file names that should be included (via `!include`) in the diagram definition.
- `plantuml.sequenceDiagram`: `true` to generate a UML sequence diagram, `false` (default) to generate a collaboration diagram (dynamic views only).
- `plantuml.animation`: `true` to generate one PlantUML diagram definition per animation frame, `false` (default) to ignore animations.

The following properties can be set on element styles, which can be used to further customise the styling of diagrams too.

- `plantuml.shadow`: whether a shadow should be added to the element (default `false`).

## Element styling

The following element style properties are supported:

- shape:
  - Person, Robot -> person
  - Component -> component
  - Cylinder -> database
  - Folder -> folder
  - Ellipse, Circle -> storage
  - Hexagon -> hexagon
  - Pipe -> queue
  - Box -> rectangle
  - RoundedBox -> rectangle (with rounded corners)
  - (not listed) -> rectangle
- background
- color
- stroke
- stroke width
- font size
- border (solid, dashed, dotted)
- width (used for maximum width only)

## Boundary styling

The following element style properties are supported for boundaries:

- background
- color
- stroke
- stroke width
- font size
- border (solid, dashed, dotted)

## Group styling

The following element style properties are supported for groups:

- background
- color
- stroke
- stroke width
- font size
- border (solid, dashed, dotted)

## Relationship styling

The following relationship style properties are supported:

- color
- line style (solid, dashed, dotted)
- thickness
- font size