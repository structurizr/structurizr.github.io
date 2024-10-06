workspace {

    model {
        a = softwareSystem "A"
        b = element "B" "Hardware System"

        a -> b "Sends control signals to"
    }

    views {
        systemContext a "Diagram1" {
            include *
            autoLayout lr
        }
    }
    
}