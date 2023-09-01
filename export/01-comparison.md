---
layout: default
title: Comparison
parent: Exporters
nav_order: 1
permalink: /export/comparison
---

# Comparison

As far as practical, the exporters try to replicate the way that the
[Structurizr cloud service/on-premises installation/Lite](https://structurizr.com) renders diagrams.
See [Structurizr - Notation](https://structurizr.com/help/notation) for more details but, in summary,
every element/relationship in the model can have one or more text-based tags associated with it, and you can
create element/relationship styles associated with those tags to customise how the items are rendered.
This concept is similar to how to might add one or more CSS classes to a HTML element, to customise how it's rendered
in the browser. The [DSL cookbook - Element styles](/dsl/cookbook/element-styles) and
[DSL cookbook - Relationship styles](/dsl/cookbook/relationship-styles)
show some examples of how this works if you're using the Structurizr DSL.

It's important to note that some features provided by the
[Structurizr cloud service/on-premises installation/Lite](https://structurizr.com) are not supported by these exporters.
For example, the PlantUML exporter doesn't support the same [set of element shapes](https://structurizr.com/help/shapes),
because PlantUML itself doesn't support many of them. In general, the
[Structurizr cloud service/on-premises installation/Lite](https://structurizr.com) will provide the most feature
complete and richest set of diagrams.

The following table summarises the features that are available via the exporters implemented in this library.

| Feature                                                                                         | Structurizr Lite/cloud/on-premises | [StructurizrPlantUMLExporter](plantuml#structurizrplantumlexporter)          | [C4PlantUMLExporter](plantuml#c4plantumlexporter)                    | [MermaidExporter](mermaid) | [DOTExporter](dot) |
|-------------------------------------------------------------------------------------------------|------------------------------------|--------------------------------------|---------------------------------------|-----------------|-------------|
| [Element styles](https://structurizr.com/help/notation#elements)                                | All                                | Limited                              | Limited (with `c4plantuml.tags true`) | Limited         | Limited     |
| [Relationship styles](https://structurizr.com/help/notation#relationships)                      | All                                | Limited                              | Limited (with `c4plantuml.tags true`) | Limited         | Limited     |
| [Shapes](https://structurizr.com/help/shapes)                                                   | All                                | Limited                              | Limited                               | Limited         | Limited     |
| [Icons](https://structurizr.com/help/icons)                                                     | Yes                                | Limited                              | Limited (with `c4plantuml.tags true`) | No              | No          |
| [Automatic diagram key/legend](https://structurizr.com/help/diagram-key)                        | Yes                                | Yes                                  | Yes                                   | No              | No          |
| [Click to zoom](https://structurizr.com/help/diagram-navigation)                                | Yes                                | No                                   | No                                    | No              | No          |
| Interactive features (tooltips, [perspectives](https://structurizr.com/help/perspectives), etc) | Yes                                | No                                   | No                                    | No              | No          |
| [Animation](https://structurizr.com/help/animation)                                             | Yes                                | Yes (with `plantuml.animation true`) | Yes (with `plantuml.animation true`)  | No              | No          |
| Automatic layout                                                                                | Yes                                | Yes                                  | Yes                                   | Yes             | Yes         |
| Manual layout                                                                                   | Yes                                | No                                   | No                                    | No              | No          |

