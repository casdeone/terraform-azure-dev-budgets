#create variables
variable "location" {
    type = string
    default = "westus3"
    description = "azure region"
  
}

/*
variable "default_email_contacts" {
    type =list
    description = "default email"
    default = [
      "default@email.com"
    ]
  
}
*/

variable "email_contacts" {
    type = list
    description = "email notification will be sent when threshold is met"
    default = ["cadeone@gmail.com"]
}
variable notification_threhold {
    type = number
    description = "Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000"
    default = 80
}
