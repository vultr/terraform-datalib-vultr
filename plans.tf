data "http" "vultr_vserver_plans" {
  url = "https://api.vultr.com/v1/plans/list"
}

locals {
  plans = {for plan in values(jsondecode(data.http.vultr_vserver_plans.body))
  : join("", [plan.vcpu_count, " VCPU,", plan.name]) => plan.VPSPLANID}
}

output "vc2-1vcpu-1gb" {
    description = "Vultr Cloud Compute (VC2): 1024 MB RAM,25 GB SSD,1.00 TB BW"
    value = 201
}

output "vc2-1vcpu-2gb" {
    description = "Vultr Cloud Compute (VC2): 2048 MB RAM,55 GB SSD,2.00 TB BW"
    value = 202
}

output "vc2-2vcpu-4gb" {
    description = "Vultr Cloud Compute (VC2): 4096 MB RAM,80 GB SSD,3.00 TB BW"
    value = 203
}

output "vc2-4vcpu-8gb" {
    description = "Vultr Cloud Compute (VC2): 8192 MB RAM,160 GB SSD,4.00 TB BW"
    value = 204
}

output "vc2-6vcpu-16gb" {
    description = "Vultr Cloud Compute (VC2): 16384 MB RAM,320 GB SSD,5.00 TB BW"
    value = 205
}

output "vc2-8vcpu-32gb" {
    description = "Vultr Cloud Compute (VC2): 32768 MB RAM,640 GB SSD,6.00 TB BW"
    value = 206
}

output "vc2-16vcpu-64gb" {
    description = "Vultr Cloud Compute (VC2): 65536 MB RAM,1280 GB SSD,10.00 TB BW"
    value = 207
}

output "vc2-24vcpu-96gb" {
    description = "Vultr Cloud Compute (VC2): 98304 MB RAM,1600 GB SSD,15.00 TB BW"
    value = 208
}

output "vdc-2vcpu-8gb" {
    description = "Vultr Dedicated Cloud (VDC): 8192 MB RAM,110 GB SSD,10.00 TB BW"
    value = 115
}

output "vdc-4vcpu-16gb" {
    description = "Vultr Dedicated Cloud (VDC): 16384 MB RAM,2x110 GB SSD,20.00 TB BW"
    value = 116
}

output "vdc-6vcpu-24gb" {
    description = "Vultr Dedicated Cloud (VDC): 24576 MB RAM,3x110 GB SSD,30.00 TB BW"
    value = 117
}

output "vdc-8vcpu-32gb" {
    description = "Vultr Dedicated Cloud (VDC): 32768 MB RAM,4x110 GB SSD,40.00 TB BW"
    value = 118
}

output "vhf-1vcpu-1gb" {
    description = "Vultr High Frequency (VHF): 1024 MB RAM,32 GB SSD,1.00 TB BW"
    value = 400
}

output "vhf-1vcpu-2gb" {
    description = "Vultr High Frequency (VHF): 2048 MB RAM,64 GB SSD,2.00 TB BW"
    value = 401
}

output "vhf-2vcpu-4gb" {
    description = "Vultr High Frequency (VHF): 4096 MB RAM,128 GB SSD,3.00 TB BW"
    value = 402
}

output "vhf-3vcpu-8gb" {
    description = "Vultr High Frequency (VHF): 8192 MB RAM,256 GB SSD,4.00 TB BW"
    value = 403
}

output "vhf-4vcpu-16gb" {
    description = "Vultr High Frequency (VHF): 16384 MB RAM,384 GB SSD,5.00 TB BW"
    value = 404
}

output "vhf-8vcpu-32gb" {
    description = "Vultr High Frequency (VHF): 32768 MB RAM,512 GB SSD,6.00 TB BW"
    value = 405
}

output "vhf-12vcpu-48gb" {
    description = "Vultr High Frequency (VHF): 49152 MB RAM,768 GB SSD,8.00 TB BW"
    value = 406
}
