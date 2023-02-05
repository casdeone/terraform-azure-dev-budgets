#create resources
data "azurerm_subscription" "current" {}

resource "azurerm_monitor_action_group" "action_group" {
  name                = "${data.azurerm_subscription.current.display_name}-ag"
  resource_group_name = var.resource_group_name
  short_name          = "${data.azurerm_subscription.current.display_name}-ag"
}

resource "azurerm_consumption_budget_subscription" "budget_subscription" {
  name            = data.azurerm_subscription.current.display_name
  subscription_id = data.azurerm_subscription.current.id

  amount     = 100 // Adjust amount
  time_grain = "Monthly"

  time_period {
    start_date = formatdate("YYYY-MM-01'T'hh:mm:ssZ", timestamp())
    #start_date = time_static.budget_devsub_start_time.rfc3339 #"2023-02-01T00:00:00Z"
    # end_date   = "${timeadd(time_static.budget_devsub_start_time.rfc3339, "43800h")}" optional default 10years
  }
  notification {
    enabled   = true
    threshold = var.notification_threhold    // 1% to verify alerts are working then change to 80.0 default 80
    operator  = "EqualTo"

    contact_emails = var.email_contacts  // emails should go to a primary, multiple for testing purposes

    contact_groups = [
      azurerm_monitor_action_group.action_group.id,
    ]

  }
  lifecycle {
    ignore_changes = [
      time_period
    ]
  }
}
