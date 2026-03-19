workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        ss = softwareSystem "Name" {
            ui = container "UI" {
                technology "JavaScript"
            }
            service1 = container "Service 1" {
                technology "Java and Spring Boot"
            }
            service2 = container "Service 2" {
                technology "Java and Spring Boot"
            }

            ui -> service1 "Makes API calls to"
            ui -> service2 "Makes API calls to"
        }

        env = deploymentEnvironment "Environment" {
            deploymentNode "User's Computer" {
                deploymentNode "Web Browser" {
                    instanceOf ss.ui
                }
            }

            server1 = deploymentNode "Server 1" {
                deploymentNode "Java Virtual Machine" {
                    technology "Eclipse Temurin"

                    instanceof ss.service1
                }
            }

            server2 = deploymentNode "Server 2" {
                deploymentNode "Java Virtual Machine" {
                    technology "Eclipse Temurin"

                    instanceof ss.service2
                }
            }


            !relationships "ss.ui -> ss.service1" {
                technology "via API Gateway"
            }

            !relationships "ss.ui -> ss.service2" {
                technology "via API Gateway"
            }
        }
    }

    views {
        deployment * env {
            include *
            autolayout lr 100 100 100
        }

        styles {
            element "Infrastructure Node" {
                shape ellipse
            }
        }
    }

}