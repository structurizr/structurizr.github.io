workspace  {

    model {
        loggingService = softwareSystem "Logging Service"

        a = softwareSystem "A" {
            container "App 1"
            container "App 2"
            container "App 3"

            !elements "element.parent==a" {
                this -> loggingService "Sends logs to"
            }
        }
    }

    views {
        container a "Containers" {
            include *
            autolayout
        }
    }
}