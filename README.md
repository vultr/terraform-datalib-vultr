# terraform-datalib-vultr
Data only module for Vultr. Maps Application, OS, and Region human readable names to ID's. 

### TODO
* Plans - need to determine a descriptive but reasonably short naming scheme. 

## Usage
Import the module like you would any other TF Module:
```
module "vultr_lib" {
  source = "github.com/Oogy/terraform-datalib-vultr"
}
```

Use human readable module output names in place of Application, OS, or Region ID's:

```
resource "vultr_server" "server0" {
  plan_id = "201"
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
