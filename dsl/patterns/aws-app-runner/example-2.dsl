workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        ss = softwareSystem "Name" {
            app = container "Application" {
                technology "Java and Spring Boot"
            }
        }

        env = deploymentEnvironment "Environment" {

            deploymentNode "Amazon Web Services" {

                deploymentNode "eu-west-1" {

                    deploymentNode "App Runner" {

                        deploymentNode "Docker Container" {
                            instances 2
                            properties {
                                "Image URI" "1234567890.dkr.ecr.eu-west-1.amazonaws.com/example/application:latest"
                            }

                            deploymentNode "Java Virtual Machine" {
                                technology "Eclipse Temurin"

                                instanceof ss.app
                            }
                        }
                    }
                }
            }
        }
    }

    views {
        deployment * env {
            include *
        }
    }

}