workspace {

    model {
        a = softwareSystem "A" {
            perspectives {
                perspective "Technical Debt" {
                    value "High"
                }
            }
        }
        b = softwareSystem "B" {
            perspectives {
                perspective "Technical Debt" {
                    value "Medium"
                }
            }
        }
        c = softwareSystem "C" {
            perspectives {
                perspective "Technical Debt" {
                    value "Low"
                }
            }
        }

        a -> b "Makes API requests to"
        b -> c "Makes API requests to"
    }

    views {
        systemLandscape "SystemLandscape" {
            include a b c
        }

        styles {
            element "Element" {
                shape roundedbox
                strokewidth 5
            }

            element "Perspective:Technical Debt[value==High]" {
                stroke red
            }
            element "Perspective:Technical Debt[value==Medium]" {
                stroke orange
            }
            element "Perspective:Technical Debt[value==Low]" {
                stroke green
            }
        }
   }

}