output "cluster_info" {
  value = vmc_sddc.sddc_1.cluster_info
}

output "nsxt_reverse_proxy_url" {
  value = vmc_sddc.sddc_1.nsxt_reverse_proxy_url
}

output "nsxt_cloudadmin" {
  value = vmc_sddc.sddc_1.nsxt_cloudadmin
}

output "nsxt_cloudadmin_password" {
  value     = vmc_sddc.sddc_1.nsxt_cloudadmin_password
  sensitive = true
}