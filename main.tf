
data azurerm_subscription "current" {}
resource "azurerm_consumption_budget_subscription" "budget_subscription" {
  name            = data.azurerm_subscription.current.display_name
  subscription_id = data.azurerm_subscription.current.id

  amount     = 100 // Adjust amount
  time_grain = "Monthly"

  time_period {
    start_date = formatdate("YYYY-MM-01'T'hh:mm:ssZ", timestamp())
  }
  notification {
    enabled   = true
    threshold = local.notification_threhold    // 1% to verify alerts are working then change to 80.0 default 80
    operator  = "GreaterThanOrEqualTo"

    contact_emails = concat(local.email_contacts, var.email_contacts) // emails should go to a primary, multiple for testing purposes
  }

  lifecycle {
    ignore_changes = [
      time_period
    ]
  }
}
