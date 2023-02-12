
module "dev-budgets" {
  #source  = "app.terraform.io/denniscastillo/dev-budgets/azure"
  #version = "1.0.2"
  source = "../"
  location = "westus3"
  email_contacts = ["dennis@home.com"]
}