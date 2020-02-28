remote_state {
    backend = "azurerm"
    config = {
        storage_account_name = "mcgookeyteststorage"
        container_name       = "testcontainer"
        key                  = "${path_relative_to_include()}/terraform.tfstate"
        access_key = "${get_env("AZURE_CONTAINER_ACCESS_KEY", "")}"
    }
}



terraform {
    after_hook "before_hook" {
        commands = ["plan"]
        execute = ["sentinel", "version"]
    }
}