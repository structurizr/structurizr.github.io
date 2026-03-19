workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        archetypes {
            microservice = group
        }

        ss = softwareSystem "Name" {
            microservice "Microservice 1" {
                microservice1Api = container "Microservice 1 API" {
                    technology "Java and Spring Boot"
                }
                microservice1Database = container "Microservice 1 Database Schema" {
                    technology "MySQL"
                }

                microservice1Api -> microservice1Database "Reads from and writes to"
            }
        }
    }

    views {
        container ss {
            include *
        }
    }

}