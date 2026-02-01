workspace {

    model {
        softwareSystem "Authentication Service" {
            tags "Microsoft Azure - Azure Active Directory"
        }
    }

    views {
        systemLandscape {
            include *
            autoLayout lr
        }
        
        theme microsoft-azure-2021.01
    }

}