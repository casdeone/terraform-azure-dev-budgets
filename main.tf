#create resources
data "azurerm_subscription" "current" {}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_monitor_action_group" "action_group" {
  name                = "example"
  resource_group_name = var.resource_group_name
  short_name          = "example"
}

resource "azurerm_consumption_budget_subscription" "budget_subscription" {
  name            = data.azurerm_subscription.current.display_name
  subscription_id = data.azurerm_subscription.current.id

  amount     = 100 // Adjust amount
  time_grain = "Monthly"

  time_period {
    start_date = "2023-01-01T00:00:00Z"
    end_date   = "2026-12-01T00:00:00Z"
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

    contact_emails = concat(var.default_email_contacts,var.email_contact)  // emails should go to a primary, multiple for testing purposes

    contact_groups = [
      azurerm_monitor_action_group.action_group.id,
    ]
/*
    contact_roles = [
      "Owner",
    ]
  }
*/  //discus this option

  
}
}
