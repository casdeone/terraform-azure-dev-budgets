output "notification_emails" {
    value = azurerm_consumption_budget_subscription.budget_subscription.notification
    description = "list of email contacts"
}
