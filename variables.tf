#create variables

variable "default_email_contacts" {
  type        = list(any)
  description = "email contacts to notify"
  default = [
    "azure.isd@sharp.com",
    "dennis.castillo@sharp.com",
    "kevin.rothstein@sharp.com",
    "brent.gonzales@sharp.com",
    "alton.lindsey@sharp.com"
  ]

}

variable "email_contacts" {
    type = list
    description = "email contacts"
}

variable "location"{
    type = string
}

variable "resource_group_name" {
    type = string
    description = "resource group for budgets"
}
