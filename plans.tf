data "http" "vultr_vserver_plans" {
  url = "https://api.vultr.com/v1/plans/list"
}

locals {
  plan_name		= values(jsondecode(data.http.vultr_vserver_plans.body))[*].name
  plan_ids		= values(jsondecode(data.http.vultr_vserver_plans.body))[*].VPSPLANID
  plan_zipped   = zipmap(local.plan_name, local.plan_ids)
}

// CPU: 1 x Virtual CPU, RAM: 1gb, Storage: 1 x 25 GB
output "c1_m1_s1x25" {
  value = local.plan_zipped["1024 MB RAM,25 GB SSD,1.00 TB BW"]
}

output "c1_m1_s1x32" {
  value = local.plan_zipped["1024 MB RAM,32 GB SSD,1.00 TB BW"]
}

output "c2_m4_s1x80" {
  value = local.plan_zipped["4096 MB RAM,80 GB SSD,3.00 TB BW"]
}
