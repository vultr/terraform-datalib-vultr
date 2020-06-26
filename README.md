# terraform-datalib-vultr
Data only module for Vultr. Maps Application, Plans, OS, and Region human readable names to ID's.

This module will remove the need to curl the public api endpoints to find App/Plans/OS/Region ID’s. The Terraform HTTP datasources pulls all Apps/OS’s/Regions in four calls then maps them to human readable names to the respective ID in separate outputs. The output names have been made to be relatively human readable, and will return the ID of the App, OS, or Region you are naming.

## Usage
Import the module like you would any other TF Module:
```hcl
module "vultr_lib" {
  source = "github.com/vultr/terraform-datalib-vultr"
}
```

Use human readable module output names in place of Plans, Application, OS, or Region ID's:

```hcl
resource "vultr_server" "server0" {
  plan_id = module.vultr_lib.vc2_1vcpu_1gb // 1x VCPU, 1GB RAM, 1x25GB SSD
  plan_id = module.vultr_lib.vc2_2vcpu_4gb // 2x VCPUs, 4GB RAM, 1x80GB SSD
  region_id = module.vultr_lib.new_jersey
  # region_id = module.vultr_lib.atlanta
  # region_id = module.vultr_lib.dallas
  # etc. 
  
  os_id = module.vultr_lib.centos_7_x64
  # os_id = module.vultr_lib.ubuntu_1804_x64
  # os_id = module.vultr_lib.centos_7_x64
  
  # OR 
  os_id = module.vultr_lib.application
  app_id = module.vultr_lib.lemp_ubuntu_1804_x64
  # app_id = module.vultr_lib.docker_ubuntu_1804_x64
  # app_id = module.vultr_lib.gitlab_ubuntu_1804_x64
}
```
