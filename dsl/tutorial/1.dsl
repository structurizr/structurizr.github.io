workspace {

    model {
        u = person "User"
        ss = softwareSystem "Software System"

        u -> ss "Uses"
    }

    views {
        systemContext ss {
            include *
            autolayout lr
        }
    }

}