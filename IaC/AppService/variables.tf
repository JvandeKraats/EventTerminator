variable "app_service_name" {
    type = string
    description = "The name of the App Service" 
}

variable "app_service_sku"{
    type = string
    description = "The SKU of the App Service"
    default = "P1v2"
}