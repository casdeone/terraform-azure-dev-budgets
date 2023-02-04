# terraform-azure-dev-budgets

Deploys basic budget for Azure subscriptions with notification
==============================================================

Usage:
----
~~~

module "dev-budgets" {
  source  = "app.terraform.io/denniscastillo/dev-budgets/azure"
  version = "1.0.2"
  location = <"location">
  email_contacts = <["someone@email.com"]>
  resource_group_name = <"resource-group">
  subscription_name = <"subscription-name">
  subscription_id = <"subscription-id">
}
~~~

Required Parameters:
--------------------
~~~
location = "WestUS3"
email_contacts = ["someone@gmail.com"]
resource_group_name = "my-resource-group"
subscription_name = "my-subscription"
subscription_id = "00a11111-2222-3333-4444-7ed17046b5555"

* Note: email_contacts can support more than one email address use ","  example: ["account1@gmail.com","account2@gmail.com"]
~~~

Authors:
=======
created by [Dennis Castillo](http://github.com/casdeone)