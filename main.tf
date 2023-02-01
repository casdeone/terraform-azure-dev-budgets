#create resources
data "azurerm_subscription" "current" {}

resource "azurerm_resource_group" "rg_shc_sandbox" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_monitor_action_group" "example" {
  name                = "example"
  resource_group_name = azurerm_resource_group.rg_shc_sandbox.name
  short_name          = "example"
}

resource "azurerm_consumption_budget_subscription" "azurerm_consumption_budget_subscription" {
  name            = data.azurerm_subscription.current.display_name
  subscription_id = data.azurerm_subscription.current.id

  amount     = 100 // Adjust amount
  time_grain = "Monthly"

  time_period {
    start_date = "2022-09-01T00:00:00Z"
    // end_date   = "2022-07-01T00:00:00Z"
  }

// below filter is optional to monitor specific resource groups rather than entire subscription
/*
  filter {
    dimension {
      name = "ResourceGroupName"
      values = [
        azurerm_resource_group.example.name,
      ]
    }

    tag {
      name = "foo"
      values = [
        "bar",
        "baz",
      ]
    }
  }
*/

  notification {
    enabled   = true
    threshold = 2.0     // 1% to verify alerts are working then change to 80.0
    operator  = "EqualTo"

    contact_emails = concat(var.email_contacts,var.default_email_contacts)  // emails should go to a primary, multiple for testing purposes
    contact_groups = [
      azurerm_monitor_action_group.example.id,
    ]
/*
    contact_roles = [
      "Owner",
    ]
  }
*/  //discus this option

}
}