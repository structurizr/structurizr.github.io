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

            server = deploymentNode "Server" {
                fw = infrastructureNode "Firewall"

                deploymentNode "Java Virtual Machine" {
                    technology "Eclipse Temurin"

                    instanceof ss.backend
                }
            }

            ss.ui -/> ss.backend {
                ss.ui -> server.fw
                server.fw -> ss.backend
            }
        }
    }

    views {
        deployment * env {
            include *
        }

        styles {
            element "Infrastructure Node" {
                shape ellipse
            }
        }
    }

}