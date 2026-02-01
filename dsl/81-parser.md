---
layout: default
title: DSL Parser
parent: DSL
nav_order: 81
permalink: /dsl/parser
---

# DSL parser

The features available in the Structurizr DSL parser depend upon the context in which you are using it.

| Feature                                                                            | DSL keyword | [local](/local), [push](/push), [export](/export), etc | Browser-based DSL editor in [playground](/playground) and [server](/server)                         |
|------------------------------------------------------------------------------------|-------------|--------------------------------------------------------|-----------------|---------------------------------------------------|
| Diagrams                                                                           |             | Yes             | Yes                                               | 
| Documentation                                                                      | `!docs`     | Yes             | No                                                  |
| Architecture decision records                                                      | `!adrs`     | Yes             |  No                                                 |
| Image views                                                                        | `image`     | Yes             | HTTP(S) URLs (with CORS headers) and data URIs only |
| Element style icons                                                                | `icon`      | Yes             | HTTP(S) URLs (with CORS headers) and data URIs only |
| Workspace extension                                                                | `extends`   | Yes             | HTTP(S) URLs only                                   |
| DSL includes                                                                       | `!include`  | Yes             | HTTP(S) URLs only                                   |
| Plugins                                                                            | `!plugin`   | Yes             | No                                                 |
| Scripts                                                                            | `!script`   | Yes             | No                                                  |
| DSL keyword/feature deprecation warnings                                           |             | Yes             | No                                                  |

