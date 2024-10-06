workspace {

    model {
        a = element "A" "Type A" "A description of A."
        b = element "B" "Type B" "A description of B."

        a -> b "Depends upon"
    }

    views {
        custom "Diagram1" {
            title "A custom view"
            include *
            autoLayout lr
        }
    }
    
}