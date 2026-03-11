workspace extends https://docs.structurizr.com/examples/enterprise/system-catalog/system-catalog.dsl {

    name "C"

    !identifiers hierarchical

    model {
        !element c {
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