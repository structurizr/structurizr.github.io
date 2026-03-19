workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        ss = softwareSystem "Name" {
            ui = container "UI" {
                technology "JavaScript"
            }
            backend = container "Backend" {
                technology "Java and Spring Boot"
            }

            ui -> backend "Makes API calls to"
        }

        env = deploymentEnvironment "Environment" {
            deploymentNode "User's Computer" {
                deploymentNode "Web Browser" {
                    instanceOf ss.ui
                }
            }

            server1 = deploymentNode "Server 1" {
                loadBalancer = infrastructureNode "Load Balancer"
            }

            server2 = deploymentNode "Server 2" {
                deploymentNode "Java Virtual Machine" {
                    technology "Eclipse Temurin"

                    instanceof ss.backend
                }
            }

            server3 = deploymentNode "Server 3" {
                deploymentNode "Java Virtual Machine" {
                    technology "Eclipse Temurin"

                    instanceof ss.backend
                }
            }

            ss.ui -/> ss.backend {
                ss.ui -> server1.loadBalancer
                server1.loadBalancer -> ss.backend
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