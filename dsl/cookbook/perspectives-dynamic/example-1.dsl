workspace {

    model {
        playground = softwareSystem "Structurizr Playground" {
            perspectives {
                perspective "Health" {
                    url "https://playground.structurizr.com/health"
                }
            }
        }
    }

    views {
        systemContext playground "SystemContext" {
            include *
        }

        styles {
            element "Element" {
                strokeWidth 5
                shape roundedbox
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
            "structurizr.perspective.interval" "5000"
        }
    }

}