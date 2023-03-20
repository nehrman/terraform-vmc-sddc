variable "vmc_api_token" {
  description = "VMC API Token"
  type        = string
}

variable "vmc_org_id" {
  description = "VMC Organization ID"
  type        = string
}

variable "aws_account_number" {
  description = "AWS Account Number"
  type        = string
}

variable "sddc_name" {
  description = "Name of the SDDC"
  type        = string
  default     = "microcks-test-sddc"
}

variable "sddc_region" {
  description = "Region of the SDDC"
  type        = string
  default     = "EU_WEST_1"
}

variable "sddc_num_host" {
  description = "Number of hosts in the SDDC"
  type        = number
  default     = 1
}

variable "sddc_provider_type" {
  description = "Provider type of the SDDC"
  type        = string
  default     = "AWS"
}

variable "sddc_vpc_cidr" {
  description = "VPC CIDR of the SDDC"
  type        = string
  default     = "172.16.0.0/20"
}

variable "sddc_vxlan_subnet" {
  description = "VXLAN subnet of the SDDC"
  type        = string
  default     = "10.0.2.0/24"
}

# variable "sddc_storage_capacity" {
#   description = "Storage capacity of the SDDC"
#   type        = string
# }

variable "sddc_size" {
  description = "Size of the SDDC"
  type        = string
  default     = "medium"
}

variable "sddc_host_instance_type" {
  description = "Host instance type of the SDDC"
  type        = string
  default     = "I3_METAL"
}

variable "sddc_sso_domain" {
  description = "SSO domain of the SDDC"
  type        = string
  default     = "vmc.local"
}

variable "sddc_deployment_type" {
  description = "Deployment type of the SDDC"
  type        = string
  default     = "SingleAZ"
}

variable "sddc_type" {
  description = "Type of the SDDC"
  type        = string
  default     = "1NODE"
}

variable "cluster_add" {
  description = "Add a cluster to the SDDC"
  type        = bool
  default     = false
}

variable "cluster_num_hosts" {
  description = "Number of hosts in the cluster"
  type        = number
  default     = 2
}

variable "cluster_host_instance_type" {
  description = "Host instance type of the cluster"
  type        = string
  default     = "I3_METAL"
}

variable "cluster_edrs_policy_type" {
  description = "value of EDRS policy type"
  type        = string
  default     = "cost"
}

variable "cluster_enable_edrs" {
  description = "value of enable EDRS"
  type        = bool
  default     = true
}

variable "cluster_min_hosts" {
  description = "value of min hosts"
  type        = number
  default     = 2
}

variable "cluster_max_hosts" {
  description = "value of max hosts"
  type        = number
  default     = 3
}







