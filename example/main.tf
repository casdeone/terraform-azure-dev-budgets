
module "my_budgets" {
    source = "../"
    email_contacts = ["casdeone@gmail.com"]
    location = "westus3"
    resource_group_name = "dts-rg"
}