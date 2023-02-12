<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 email_contacts  = [
  "cadeone@gmail.com"
]
	 location  = "westus3"
	 notification_threhold  = 80
}
```
## Resources

| Name | Type |
|------|------|
| [azurerm_consumption_budget_subscription.budget_subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_subscription) | resource |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_contacts"></a> [email\_contacts](#input\_email\_contacts) | email notification will be sent when threshold is met | `list` | <pre>[<br>  "cadeone@gmail.com"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | azure region | `string` | `"westus3"` | no |
| <a name="input_notification_threhold"></a> [notification\_threhold](#input\_notification\_threhold) | Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000 | `number` | `80` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_notification_emails"></a> [notification\_emails](#output\_notification\_emails) | list of email contacts |
<!-- END_TF_DOCS -->