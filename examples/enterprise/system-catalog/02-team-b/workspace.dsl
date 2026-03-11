workspace extends https://docs.structurizr.com/examples/enterprise/system-catalog/system-catalog.dsl {

    name "B"

    !identifiers hierarchical

    model {
        !element b {
            api = container "API"

            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            api -> db "Reads from and writes to"
        }

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