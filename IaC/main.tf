module "app_service" {
  source = "./AppService"
  app_service_name = "Outlook-Calendar-Changes-Receiver"
  app_service_sku = "F1"
}	 