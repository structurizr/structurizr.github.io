workspace extends https://docs.structurizr.com/dsl/patterns/workspace.dsl {

    model {
        archetypes {
            hardwareSystem = element {
                metadata "Hardware System"
            }
        }

        ss = softwareSystem "Name"
        camera = hardwareSystem "Camera"

        ss -> camera "Sends control signals to"
    }

    views {
        systemContext ss "SystemContext" {
            include *
        }
    }

}