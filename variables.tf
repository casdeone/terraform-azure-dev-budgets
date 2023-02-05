#create variables
variable "location" {
    type = string
    description = "location"
  
}

variable "default_email_contacts" {
    type =list
    default = null
    /*default = [
      "dennis.castillo@sharp.com",
      "dennis@denniscastillo.net"
    ]*/
  
}

variable "email_contacts" {
    type = list
    description = "email contacts"
}

variable "resource_group_name"{
    type = string
    
}

variable "subscription_name" {
    type = string
    description = "subscription display name"
}

variable "subscription_id" {
    type = string
    description = "subscription id"
}

variable notification_threhold {
    type = numeric
    default = 80
}