---
layout: default
nav_order: 6
parent: Example
title: Dynamic diagram
permalink: /example/dynamic-diagram
---

## Dynamic diagram

Structurizr supports collaboration style dynamic diagrams out of the box.

[![](https://c4model.com/images/examples/Dynamic-Collaboration.png)](https://c4model.com/example/#Dynamic-Collaboration)

Sequence style diagrams can be created with an [image view](/dsl/cookbook/image-view/). This example is a PlantUML sequence diagram export of the above dynamic view:

```
image internetBankingSystem.backend "Dynamic-Sequence" {
    plantuml "Dynamic-Collaboration"
}
```

[![](https://c4model.com/images/examples/Dynamic-Sequence.png)](https://c4model.com/example/#Dynamic-Sequence)

