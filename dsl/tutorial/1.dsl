workspace "Name" "Description" {

    model {
        u = person "User"
        ss = softwareSystem "Software System"

        u -> ss "Uses"
    }

    views {
        systemContext ss "Diagram1" {
            include *
            autolayout lr
        }
    }

}