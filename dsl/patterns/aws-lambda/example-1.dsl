workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        archetypes {
            lambda = container
        }

        ss = softwareSystem "Name" {
            orderHandler = lambda "Order Handler" {
                technology "AWS Lambda - Java"
            }
        }

        dev = deploymentEnvironment "Development" {

            deploymentNode "Developer Laptop" {
                deploymentNode "LocalStack" {
                    deploymentNode "Lamba Service" {
                        deploymentNode "Java Virtual Machine" {
                            instanceOf ss.orderHandler
                        }
                    }
                }
            }
        }

        live = deploymentEnvironment "Live" {
            deploymentNode "Amazon Web Services" {
                deploymentNode "Lambda Service" {
                    deploymentNode "Java Virtual Machine" {
                        instanceOf ss.orderHandler
                    }
                }
            }
        }
    }

    views {
        container ss "Containers" {
            include *
        }

        deployment ss dev "Deployment-Development" {
            include *
        }

        deployment ss live "Deployment-Live" {
            include *
        }
    }

}