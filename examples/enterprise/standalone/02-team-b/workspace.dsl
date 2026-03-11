workspace "B" {

    !identifiers hierarchical

    model {
        b = softwareSystem "B" "A description of software system B." {
            api = container "API"

            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            api -> db "Reads from and writes to"
        }

        c = softwareSystem "C" "A description of software system C."

        b.api -> c "Requests data of type C from"
    }

    views {
        systemContext b "SystemContext" {
            include *
        }

        container b "Containers" {
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