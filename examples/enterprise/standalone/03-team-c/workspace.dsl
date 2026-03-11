workspace "C" {

    !identifiers hierarchical

    model {
        c = softwareSystem "C" "A description of software system C." {
            api = container "API" {
                technology "Node.js"
            }
            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            api -> db "Reads from and writes to"
        }
    }

    views {
        systemContext c "SystemContext" {
            include *
        }

        container c "Containers" {
            include *
        }

        styles {
            element "Database" {
                shape cylinder
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}