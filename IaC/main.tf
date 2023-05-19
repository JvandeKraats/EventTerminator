module "app_service" {
  source = "./AppService"
  app_service_name = var.app_service_name
  app_service_sku = "B1"
}	 