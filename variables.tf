#create variables
variable "location" {
    type = string
    description = "location"
  
}

variable "default_email_contacts" {
    type =list
    default = [
      "azure.isd@sharp.com",
      "dennis.castillo@sharp.com",
      "kevin.rothstein@sharp.com",
      "brent.gonzales@sharp.com",
      "alton.lindsey@sharp.com"
    ]
  
}

variable "email_contact" {
    type = list
    description = "email contacts"
}

variable "resource_group_name"{
    type = string
    
}