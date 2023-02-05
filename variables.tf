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
variable notification_threhold {
    type = number
    default = 80
}