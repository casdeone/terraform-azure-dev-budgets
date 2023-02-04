
module "dev-budgets" {
  #source  = "app.terraform.io/denniscastillo/dev-budgets/azure"
  #version = "1.0.2"
  source = "../"
  location = "westus3"
  email_contacts = ["casdeone@gmail.com"]
  resource_group_name = "dts-rg"
  subscription_id = "00a68851-3686-4442-9966-7ed17046b956"
  subscription_name = "Azure for Prod"
  # insert required variables here
}