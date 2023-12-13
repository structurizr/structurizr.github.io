---
layout: default
title: Headings and section numbers
nav_order: 2
parent: Documentation
grand_parent: Structurizr UI
permalink: /ui/documentation/headings
---

# Headings and section numbers

Structurizr will automatically generate section numbers for you as follows:

| Markdown    | AsciiDoc    | Rendered?                                                                                                                                                                                                         | Included in navigation |
|-------------|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|
| `# Name`    | `= Name`    | Ignored/hidden - the top level heading will be generated for you, based upon the scope of the documentation (i.e. the name of the workspace/software system/container that the documentation is associated with). | Yes                    |
| `## Name`   | `== Name`   | Rendered as `1 Name`                                                                                                                                                                                              | Yes                    |
| `### Name`  | `=== Name`  | Rendered as `1.1 Name`                                                                                                                                                                                            | Yes                    |
| `#### Name` | `==== Name` | Rendered as `1.1.1 Name`                                                                                                                                                                                          | No                     |

See [this example Markdown file](https://github.com/structurizr/examples/blob/main/dsl/financial-risk-system/docs/quality-attributes.md)
and how it is [rendered in Structurizr](https://structurizr.com/share/31/documentation/Financial%20Risk%20System#3).

