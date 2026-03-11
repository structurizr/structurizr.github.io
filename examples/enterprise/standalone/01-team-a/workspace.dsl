workspace "A" {

    !identifiers hierarchical

    model {
        a = softwareSystem "A" "A description of software system A." {
            app = container "Web Application" {
                technology "Java and Spring Boot"
            }
            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            app -> db "Reads from and writes to"
        }

        b = softwareSystem "B" "A description of software system B."
        c = softwareSystem "C" "A description of software system C." 

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