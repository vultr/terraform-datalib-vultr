data "http" "vultr_regions" {
  url = "https://api.vultr.com/v1/regions/list"
}

locals {
  region_names		= values(jsondecode(data.http.vultr_regions.body))[*].name
  region_ids		= values(jsondecode(data.http.vultr_regions.body))[*].DCID
  regions_zipped	= zipmap(local.region_names, local.region_ids)
}

output "atlanta" {
  value = local.regions_zipped["Atlanta"]
}

output "chicago" {
  value = local.regions_zipped["Chicago"]
}

output "dallas" {
  value = local.regions_zipped["Dallas"]
}

output "los_angeles" {
  value = local.regions_zipped["Los Angeles"]
}

output "miami" {
  value = local.regions_zipped["Miami"]
}

output "new_jersey" {
  value = local.regions_zipped["New Jersey"]
}

output "seattle" {
  value = local.regions_zipped["Seattle"]
}

output "silicon_valley" {
  value = local.regions_zipped["Silicon Valley"]
}

output "singapore" {
  value = local.regions_zipped["Singapore"]
}

output "amsterdam" {
  value = local.regions_zipped["Amsterdam"]
}

output "tokyo" {
  value = local.regions_zipped["Tokyo"]
}

output "london" {
  value = local.regions_zipped["London"]
}

output "paris" {
  value = local.regions_zipped["Paris"]
}

output "frankfurt" {
  value = local.regions_zipped["Frankfurt"]
}

output "toronto" {
  value = local.regions_zipped["Toronto"]
}

output "sydney" {
  value = local.regions_zipped["Sydney"]
}

output "seoul" {
  value = local.regions_zipped["Seoul"]
}

