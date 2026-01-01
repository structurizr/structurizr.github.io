---
layout: default
title: Dynamic view (with parallel sequences)
parent: Cookbook
grand_parent: Structurizr DSL
permalink: /dsl/cookbook/dynamic-view-parallel/
---

# Dynamic view with parallel sequences

Dynamic views can also be used to show parallel sequences of interactions, to indicate some degree of concurrency.
To do this, you can use the DSL block syntax `{` and `}` to define parallel sequences.

```
workspace {

    model {
        a = softwareSystem "A"
        b = softwareSystem "B"
        c = softwareSystem "C"
        d = softwareSystem "D"
        e = softwareSystem "E"

        a -> b
        b -> c
        b -> d
        b -> e
    }

    views {

        dynamic * {
            a -> b "Makes a request to"
            {
                {
                    b -> c "Gets data from"
                }
                {
                    b -> d "Gets data from"
                }
            }
            b -> e "Sends data to"

            autoLayout
        }
    }

}
```

[![](example-1.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/cookbook/dynamic-view-parallel/example-1.dsl)

Support for parallel sequences via this syntax is relatively limited, so you can explicitly specify the ordering instead if desired:

```
workspace {

    model {
        a = softwareSystem "A"
        b = softwareSystem "B"
        c = softwareSystem "C"
        d = softwareSystem "D"
        e = softwareSystem "E"

        a -> b
        b -> c
        b -> d
        b -> e
    }

    views {

        dynamic * {
            1: a -> b "Makes a request to"
            2: b -> c "Gets data from"
            2: b -> d "Gets data from"
            3: b -> e "Sends data to"

            autoLayout
        }
    }

}
```

[![](example-2.png)](https://playground.structurizr.com?src=https://docs.structurizr.com/dsl/cookbook/dynamic-view-parallel/example-2.dsl)

## Links

- [DSL language reference - dynamic](/dsl/language#dynamic-view)