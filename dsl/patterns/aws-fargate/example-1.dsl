workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        ss = softwareSystem "Name" {
            app = container "Application" {
                technology "Java and Spring Boot"
            }
        }

        env = deploymentEnvironment "Environment" {

            deploymentNode "Amazon Web Services" {

                deploymentNode "Serverless Computer Engine" {
                    technology "Amazon Web Services Fargate"

                    deploymentNode "Application Container" {
                        technology "Docker Container"
                        instances 2

                        deploymentNode "Java Virtual Machine" {
                            technology "Eclipse Temurin"

                            instanceOf ss.app
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