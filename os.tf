data "http" "vultr_operating_systems" {
  url = "https://api.vultr.com/v1/os/list"
}

locals {
  names			= values(jsondecode(data.http.vultr_operating_systems.body))[*].name
  os_ids		= values(jsondecode(data.http.vultr_operating_systems.body))[*].OSID
  os_zipped		= zipmap(local.names, local.os_ids)
}

output "windows_2012_r2_x64" {
  value = local.os_zipped["Windows 2012 R2 x64"]
}

output "centos_6_x64" {
  value = local.os_zipped["CentOS 6 x64"]
}

output "centos_6_i386" {
  value = local.os_zipped["CentOS 6 i386"]
}

output "custom" {
  value = local.os_zipped["Custom"]
}

output "snapshot" {
  value = local.os_zipped["Snapshot"]
}

output "centos_7_x64" {
  value = local.os_zipped["CentOS 7 x64"]
}

output "coreos_stable" {
  value = local.os_zipped["CoreOS Stable"]
}

output "backup" {
  value = local.os_zipped["Backup"]
}

output "application" {
  value = local.os_zipped["Application"]
}

output "debian_8_i386" {
  value = local.os_zipped["Debian 8 i386 (jessie)"]
}

output "freebsd_11_x64" {
  value = local.os_zipped["FreeBSD 11 x64"]
}

output "windows_2016_x64" {
  value = local.os_zipped["Windows 2016 x64"]
}

output "debian_9_x64" {
  value = local.os_zipped["Debian 9 x64 (stretch)"]
}

output "freebsd_12_x64" {
  value = local.os_zipped["FreeBSD 12 x64"]
}

output "debian_10_x64" {
  value = local.os_zipped["Debian 10 x64 (buster)"]
}

output "centos_8_x64" {
  value = local.os_zipped["CentOS 8 x64"]
}

output "openbsd_66_x64" {
  value = local.os_zipped["OpenBSD 6.6 x64"]
}

output "openbsd_67_x64" {
  value = local.os_zipped["OpenBSD 6.7 x64"]
}

output "fedora_31_x64" {
  value = local.os_zipped["Fedora 31 x64"]
}

output "fedora_32_x64" {
  value = local.os_zipped["Fedora 32 x64"]
}

output "fedora_coreos" {
  value = local.os_zipped["Fedora CoreOS"]
}

output "ubuntu_1604_i386" {
  value = local.os_zipped["Ubuntu 16.04 i386"]
}

output "ubuntu_1604_x64" {
  value = local.os_zipped["Ubuntu 16.04 x64"]
}

output "ubuntu_1804_x64" {
  value = local.os_zipped["Ubuntu 18.04 x64"]
}

output "ubuntu_1910_x64" {
  value = local.os_zipped["Ubuntu 19.10 x64"]
}

output "ubuntu_2004_x64" {
  value = local.os_zipped["Ubuntu 20.04 x64"]
}
