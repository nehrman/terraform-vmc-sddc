resource "vmc_sddc" "sddc_1" {
  sddc_name     = var.sddc_name
  vpc_cidr      = var.sddc_vpc_cidr
  num_host      = var.sddc_num_host
  provider_type = var.sddc_provider_type
  region        = data.vmc_customer_subnets.my_subnets.region
  vxlan_subnet  = var.sddc_vxlan_subnet
  #  storage_capacity    = var.sddc_storage_capacity
  size                = var.sddc_size
  host_instance_type  = var.sddc_host_instance_type
  delay_account_link  = false
  skip_creating_vxlan = false
  sso_domain          = var.sddc_sso_domain
  deployment_type     = var.sddc_deployment_type
  sddc_type           = var.sddc_type
  account_link_sddc_config {
    customer_subnet_ids  = [data.vmc_customer_subnets.my_subnets.ids[0]]
    connected_account_id = data.vmc_connected_accounts.my_accounts.id
  }

  microsoft_licensing_config {
    mssql_licensing   = "DISABLED"
    windows_licensing = "DISABLED"
  }

  timeouts {
    create = "300m"
    update = "300m"
    delete = "180m"
  }
}

resource "vmc_cluster" "Clusters" {
  count              = var.cluster_add == true ? 1 : 0
  sddc_id            = vmc_sddc.sddc_1.id
  num_hosts          = var.cluster_num_hosts
  host_instance_type = var.cluster_host_instance_type
  edrs_policy_type   = var.cluster_edrs_policy_type
  enable_edrs        = var.cluster_enable_edrs
  min_hosts          = var.cluster_min_hosts
  max_hosts          = var.cluster_max_hosts
}