workspace extends https://docs.structurizr.com/dsl/cookbook/workspace-extension/system-landscape.dsl {

    model {
        !extend a {
            webapp = container "Web Application"
            database = container "Database"
            
            webapp -> b "Gets data X from"
            webapp -> database "Reads from and writes to"
        }
    }
    
    views {
        systemContext a "A-SystemContext" {
            include *
            autolayout lr
        }

        container a "A-Containers" {
            include *
            autolayout
        }
    }
    
}