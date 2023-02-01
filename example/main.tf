
module "budget"{
    source = "../"
    location = "westus3"
    resource_group_name = "dts-rg"
    email_contact = ["casdeone@gmail.com"]

}