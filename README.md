# VMWare Cloud on AWS Module

A Terraform module which creates VMWare ccloud on AWS with the following characteristics:
- Deploy a VMware Software Defined Datacenter (SDDC)
- Deploy, if requested, VMware Clusters

## Terraform versions

Support Terraform 1.x and above

## Usage

VMWare cloud on AWS with VMware Default Cluster Creation example:

```hcl
module "vmware_sddc" {
  source                  = "app.terraform.io/<ORG_NAME>/sddc/vmc"
  version                 = "1.0.0"
  vmc_api_token           = "<VMC API TOKEN>"
  aws_account_number      = "<AWS ACCOUNT ID>"
  vmc_org_id              = "<ORG_LONG_ID>"
  sddc_name               = "My-SDDC"
  sddc_region             = "EU_WEST_1"
  sddc_num_host           = 1
  sddc_provider_type      = "AWS"
  sddc_vpc_cidr           = "172.16.0.0/20" #Can't be 172.31.0.0/16 or 10.0.0.0/15 - RFC 1918
  sddc_vxlan_subnet       = "192.168.1.0/24" 
  sddc_size               = "medium"
  sddc_host_instance_type = "I3_METAL" # Can be I3_METAL, I3EN_METAL and R5_METAL
  sddc_sso_domain         = "vmc.local"
  sddc_deployment_type    = "SingleAZ" # Can be SingleAZ or MultiAZ
  sddc_type               = "1NODE" #Can be 1NODE, 2NODE or 3NODE(Default)
}
```

## Authors

* **Nicolas Ehrman** - *Initial work* - [Wiz](https://wiz.io)



