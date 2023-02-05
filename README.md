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
}
~~~

Usage (optional parameters):
===========================
~~~
module "dev-budgets" {
  source  = "app.terraform.io/denniscastillo/dev-budgets/azure"
  version = "1.0.2"
  location = <"location">
  email_contacts = <["someone@email.com"]>
  notification_threhold = <80.0> 
}
~~~

Required Parameters:
--------------------
~~~
location = "WestUS3"
email_contacts = ["someone@gmail.com"]

* Note: email_contacts can support more than one email address use ","  example: ["account1@gmail.com","account2@gmail.com"]
~~~

Optional Parameters:
===================
~~~
notification_threhold = 80.0 // Default threshold is 80%
~~~

Authors:
=======
created by [Dennis Castillo](http://github.com/casdeone)