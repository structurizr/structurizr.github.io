workspace {

    model {
        a = softwareSystem "A" {
            perspectives {
                perspective "Ownership" {
                    value "Team 1"
                }
            }
        }

        b = softwareSystem "B" {
            perspectives {
                perspective "Ownership" {
                    value "Team 2"
                }
            }
        }

        c = softwareSystem "C" {
            perspectives {
                perspective "Ownership" {
                    value "Team 3"
                }
            }
        }

        a -> b "Makes API requests to" {
            perspectives {
                perspective "Ownership" {
                    value "Team 2"
                }
            }
        }

        b -> c "Makes API requests to" {
            perspectives {
                perspective "Ownership" {
                    value "Team 3"
                }
            }
        }
    }

    views {
        systemLandscape "SystemLandscape" {
            include *
        }

        styles {
            element "Element" {
                shape roundedbox
                strokewidth 5
            }
            element "Perspective:Ownership[value==Team 1]" {
                stroke #79D62D
            }
            element "Perspective:Ownership[value==Team 2]" {
                stroke #2D79D6
            }
            element "Perspective:Ownership[value==Team 3]" {
                stroke #D62D79
            }
            relationship "Perspective:Ownership[value==Team 1]" {
                color #79D62D
            }
            relationship "Perspective:Ownership[value==Team 2]" {
                color #2D79D6
            }
            relationship "Perspective:Ownership[value==Team 3]" {
                color #D62D79
            }
        }
    }

}