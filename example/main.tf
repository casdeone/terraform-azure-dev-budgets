
module "dev-budgets" {
  source  = "app.terraform.io/denniscastillo/dev-budgets/azure"
  version = "1.0.2"
  location = "westus3"
  email_contact = ["casdeone@gmail.com"]
  resource_group_name = "dts-rg"
  # insert required variables here
}