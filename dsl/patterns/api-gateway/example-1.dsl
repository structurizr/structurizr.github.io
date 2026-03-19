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

            apiGatewayServer = deploymentNode "API Gateway Server" {
                apiGateway = infrastructureNode "API Gateway"
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

            ss.ui -/> ss.service1 {
                ss.ui -> apiGatewayServer.apiGateway
                apiGatewayServer.apiGateway -> ss.service1
            }

            ss.ui -/> ss.service2 {
                apiGatewayServer.apiGateway -> ss.service2
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