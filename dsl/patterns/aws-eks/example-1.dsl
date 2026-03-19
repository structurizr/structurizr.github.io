workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        ss = softwareSystem "Name" {
            app = container "Application" {
                technology "Java and Spring Boot"
            }
        }

        env = deploymentEnvironment "Environment" {

            deploymentNode "Amazon Web Services" {

                deploymentNode "Elastic Kubernetes Service" {

                    deploymentNode "Application Cluster" {
                        technology "Kubernetes Cluster"

                        deploymentNode "Application Pod" {
                            technology "Kubernetes Pod"
                            instances 2

                            deploymentNode "Application Container" {
                                technology "Docker Container"

                                deploymentNode "Java Virtual Machine" {
                                    technology "Eclipse Temurin"

                                    instanceOf ss.app
                                }
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