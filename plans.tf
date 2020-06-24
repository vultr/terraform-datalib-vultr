data "http" "vultr_vserver_plans" {
  url = "https://api.vultr.com/v1/plans/list"
}

locals {
  plans = {for plan in values(jsondecode(data.http.vultr_vserver_plans.body))
  : join("", [plan.vcpu_count, " VCPU,", plan.name]) => plan.VPSPLANID}
}

// Plan ID: 201
output "vc1_m1_s1x25" {
  value = local.plans["1 VCPU,1024 MB RAM,25 GB SSD,1.00 TB BW"]
}

// Plan ID: 400
output "vc1_m1_s1x32" {
  value = local.plans["1 VCPU,1024 MB RAM,32 GB SSD,1.00 TB BW"]
}

// Plan ID: 202
output "vc1_m2_s1x55" {
  value = local.plans["1 VCPU,2048 MB RAM,55 GB SSD,2.00 TB BW"]
}

// Plan ID: 401
output "vc1_m2_s1x64" {
  value = local.plans["1 VCPU,2048 MB RAM,64 GB SSD,2.00 TB BW"]
}

// Plan ID: 203
output "vc2_m4_s1x80" {
  value = local.plans["2 VCPU,4096 MB RAM,80 GB SSD,3.00 TB BW"]
}

// Plan ID: 204
output "vc4_m18s1x160" {
  value = local.plans["4 VCPU,8192 MB RAM,160 GB SSD,4.00 TB BW"]
}

// Plan ID: 403
output "vc3_m8_s1x256" {
  value = local.plans["3 VCPU,8192 MB RAM,256 GB SSD,4.00 TB BW"]
}

// Plan ID: 115
output "vc2_m8_s1x110" {
  value = local.plans["2 VCPU,8192 MB RAM,110 GB SSD,10.00 TB BW"]
}

// Plan ID: 205
output "vc1_m16_s1x320" {
  value = local.plans["6 VCPU,16384 MB RAM,320 GB SSD,5.00 TB BW"]
}

// Plan ID: 404
output "vc4_m16_s1x384" {
  value = local.plans["4 VCPU,16384 MB RAM,384 GB SSD,5.00 TB BW"]
}

// Plan ID: 116
output "vc4_m16_s2x110" {
  value = local.plans["4 VCPU,16384 MB RAM,2x110 GB SSD,20.00 TB BW"]
}

// Plan ID: 206
output "vc8_m32_s1x640" {
  value = local.plans["8 VCPU,32768 MB RAM,640 GB SSD,6.00 TB BW"]
}

// Plan ID: 117
output "vc6_m24_s3x110" {
  value = local.plans["6 VCPU,24576 MB RAM,3x110 GB SSD,30.00 TB BW"]
}

// Plan ID: 405
output "vc8_m32_s1x512" {
  value = local.plans["8 VCPU,32768 MB RAM,512 GB SSD,6.00 TB BW"]
}

// Plan ID: 118
output "vc8_m32_s4x110" {
  value = local.plans["8 VCPU,32768 MB RAM,4x110 GB SSD,40.00 TB BW"]
}

// Plan ID: 406
output "vc12_m48_s1x768" {
  value = local.plans["12 VCPU,49152 MB RAM,768 GB SSD,8.00 TB BW"]
}

// Plan ID: 207
output "vc16_m64_s1x1280" {
  value = local.plans["16 VCPU,65536 MB RAM,1280 GB SSD,10.00 TB BW"]
}

// Plan ID: 208
output "vc24_m96_s1x1600" {
  value = local.plans["24 VCPU,98304 MB RAM,1600 GB SSD,15.00 TB BW"]
}
