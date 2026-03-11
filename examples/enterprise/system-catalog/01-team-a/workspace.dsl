workspace extends https://docs.structurizr.com/examples/enterprise/system-catalog/system-catalog.dsl {

    name "A"

    !identifiers hierarchical

    model {
        !element a {
            app = container "Web Application" {
                technology "Java and Spring Boot"
            }
            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            app -> db "Reads from and writes to"
        }

        a.app -> b "Requests data of type B from"
        a.app -> c "Requests data of type C from"
    }
    
    views {
        systemContext a "SystemContext" {
            include *
        }

        container a "Containers" {
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