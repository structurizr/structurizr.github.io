// a simplified C4 model representation of the Structurizr playground
workspace {

    model {
        playground = softwareSystem "Structurizr Playground" {
            app = container "Structurizr playground server" {
                description "Provides server-side functionality of parsing Structurizr DSL."
                technology "Java and Spring Boot"
            }
        }

        live = deploymentEnvironment "Live" {
            deploymentNode "CloudFlare" {
                cname = infrastructureNode "playground.structurizr.com" {
                    technology "DNS CNAME"
                }
            }
            deploymentNode "Amazon Web Services" {
                deploymentNode "App Runner" {
                    deploymentNode "Docker Container" {
                        deploymentNode "Java Virtual Machine" {
                            instanceof app {
                                cname -> this

                                perspectives {
                                    perspective "Health" {
                                        url "https://playground.structurizr.com/health"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    views {
        deployment playground live "Deployment" {
            include *
        }

        styles {
            element "Element" {
                strokeWidth 5
                shape roundedbox
            }
            element "Infrastructure Node" {
                shape ellipse
            }

            element "Perspective:Health" {
                stroke gray
            }
            element "Perspective:Health[value==OK]" {
                stroke green
                color green
            }
            element "Perspective:Health[value==0]" {
                stroke red
                color red
            }
        }

        properties {
            "structurizr.perspective.interval" "10000"
        }
    }

}