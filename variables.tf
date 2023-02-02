#create variables
variable "location" {
    type = string
    description = "location"
  
}

variable "default_email_contacts" {
    type =list
    default = [
      "dennis.castillo@sharp.com"
    ]
  
}

variable "email_contact" {
    type = list
    description = "email contacts"
}

variable "resource_group_name"{
    type = string
    
}