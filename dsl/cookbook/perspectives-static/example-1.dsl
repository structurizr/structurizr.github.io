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
        }
   }

}