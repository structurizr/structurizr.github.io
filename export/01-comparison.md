---
layout: default
title: Comparison
parent: Exporters
nav_order: 1
permalink: /export/comparison
---

# Comparison

As far as practical, the exporters try to replicate the way that the
Structurizr cloud service, on-premises installation, and Lite [renders diagrams](/ui/diagrams).
See [Notation](/ui/diagrams/notation) for more details but, in summary,
every element/relationship in the model can have one or more text-based tags associated with it, and you can
create element/relationship styles associated with those tags to customise how the items are rendered.
This concept is similar to how to might add one or more CSS classes to a HTML element, to customise how it's rendered
in the browser. The [DSL cookbook - Element styles](/dsl/cookbook/element-styles) and
[DSL cookbook - Relationship styles](/dsl/cookbook/relationship-styles)
show some examples of how this works if you're using the Structurizr DSL.

It's important to note that some features provided by the
Structurizr cloud service, on-premises installation, and Lite are not supported by these exporters.
For example, the PlantUML exporter doesn't support the same [set of element shapes](/ui/diagrams/notation#shapes),
because PlantUML itself doesn't support many of them. In general, the
Structurizr cloud service, on-premises installation, and Lite will provide the most feature
complete and richest set of diagrams.

The following table summarises the features that are available via the exporters implemented in this library.

| Feature                                                                         | Structurizr Lite/cloud/on-premises | [StructurizrPlantUMLExporter](plantuml#structurizrplantumlexporter) | [C4PlantUMLExporter](plantuml#c4plantumlexporter)     | [MermaidExporter](mermaid)                  | [DOTExporter](dot)                     |
|---------------------------------------------------------------------------------|------------------------------------|---------------------------------------------------------------------|-------------------------------------------------------|---------------------------------------------|----------------------------------------|
| [Element styles](/ui/diagrams/notation#elements)                                | All                                | Limited                                                             | Limited (with `c4plantuml.tags true`)                 | Limited                                     | Limited                                |
| [Relationship styles](/ui/diagrams/notation#relationships)                      | All                                | Limited                                                             | Limited (with `c4plantuml.tags true`)                 | Limited                                     | Limited                                |
| [Shapes](/ui/diagrams/notation#shapes)                                          | All                                | Limited                                                             | Limited                                               | Limited                                     | Limited                                |
| [Icons](/ui/diagrams/notation#icons)                                            | Yes                                | Limited                                                             | Limited (with `c4plantuml.tags true`)                 | No                                          | No                                     |
| Automatic diagram key/legend                                                    | Yes                                | Yes                                                                 | Yes                                                   | No                                          | No                                     |
| [Click to zoom](/ui/diagrams/navigation)                                        | Yes                                | No                                                                  | No                                                    | No                                          | No                                     |
| Interactive features (tooltips, [perspectives](/ui/diagrams/perspectives), etc) | Yes                                | No                                                                  | No                                                    | No                                          | No                                     |
| [Animation](/ui/diagrams/animation)                                             | Yes                                | Yes (with `plantuml.animation true`)                                | Yes (with `plantuml.animation true`)                  | No                                          | No                                     |
| [Automatic layout](/ui/diagrams/automatic-layout)                               | Yes                                | Yes (rank and node separation ignored)                              | Yes (rank and node separation ignored)                | Yes (rank and node separation ignored)      | Yes (rank and node separation ignored) |
| [Manual layout](/ui/diagrams/manual-layout)                                     | Yes                                | No                                                                  | No                                                    | No                                          | No                                     |
| [Filtered views](/ui/diagrams/filtered-view)                                    | Yes                                | No                                                                  | No                                                    | No                                          | No                                     |
