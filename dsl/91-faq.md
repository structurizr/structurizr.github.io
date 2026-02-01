---
layout: default
title: FAQ
parent: DSL
nav_order: 91
permalink: /dsl/faq
---


# Frequently asked questions

## Why doesn't the DSL support forward referencing/hoisting?

This Structurizr DSL definition is valid:

```
workspace {
    model {
        a = softwareSystem "A"
        b = softwareSystem "B"
        
        a -> b
    }
}
```

But this is not (`The destination element "b" does not exist at line 4: a -> b`):

```
workspace {
    model {
        a = softwareSystem "A"
        a -> b
        
        b = softwareSystem "B"
    }
}
```

The Structurizr DSL is essentially just a wrapper around the [Structurizr for Java library](/java), which allows you
to create a software architecture model by writing Java code. Since Java is (mostly) an imperative programming language,
the Structurizr for Java library is also imperative - the software architecture model is built step-by-step in the
order that you write lines of code. The Structurizr DSL therefore mirrors this same approach, which explains why the
second example (above) doesn't work.

You might be thinking, why don't you just move all relationship creation to the end? This would work for the
simple example above, where the relationship definition is a single line, and both `a` and `b` are globally scoped.
It's much trickier for an example like this though, where you have hierarchical identifiers and relationship
attributes being defined:

```
workspace {

    !identifiers hierarchical

    model {
        a = softwareSystem "A" {
            aa = container "AA"
            
            aa -> b.bb {
                tags "Tag 1"
                perspectives {
                    "Name" "Value"
                }
            }
        }

        b = softwareSystem "B" {
            bb = container "BB"
        }
    }

}
```

Moving relationship processing to the end also potentially has an impact on implied relationships processing,
scripts, plugins, etc.

Although this doesn't resolve the problem, the special `this` keyword can be used to refer to the element in scope,
so the above example can be rewritten as follows:

```
workspace {

    !identifiers hierarchical

    model {
        a = softwareSystem "A" {
            aa = container "AA"
        }

        b = softwareSystem "B" {
            bb = container "BB" {
                a.aa -> this {
                    tags "Tag 1"
                    perspectives {
                        "Name" "Value"
                    }
                }
            }
        }
    }

}
```

As with all open source code, you're more than welcome to fork it and/or submit a PR.
Alternatively, if you really need this feature, you might want to look at [LikeC4](https://likec4.dev), which provides
it via JavaScript style [hoisting](https://likec4.dev/dsl/references/#hoisting) mechanism.