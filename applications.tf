data "http" "vultr_applications" {
  url = "https://api.vultr.com/v1/app/list"
}

locals {
  deploy_names		= values(jsondecode(data.http.vultr_applications.body))[*].deploy_name
  app_ids		= values(jsondecode(data.http.vultr_applications.body))[*].APPID
  app_zipped		= zipmap(local.deploy_names, local.app_ids)
}

output "docker_ubuntu_1804_x64" {
  value = local.app_zipped["Docker on Ubuntu 18.04 x64"]
}

output "docker_centos_7_x64" {
  value = local.app_zipped["Docker on CentOS 7 x64"]
}

output "drupal_ubuntu_1804_x64" {
  value = local.app_zipped["Drupal on Ubuntu 18.04 x64"]
}

output "gitlab_ubuntu_1804_x64" {
  value = local.app_zipped["GitLab on Ubuntu 18.04 x64"]
}

output "joomla_ubuntu_1804_x64" {
  value = local.app_zipped["Joomla on Ubuntu 18.04 x64"]
}

output "lamp_centos_6_x64" {
  value = local.app_zipped["LAMP on CentOS 6 x64"]
}

output "lamp_centos_7_x64" {
  value = local.app_zipped["LAMP on CentOS 7 x64"]
}

output "lamp_ubuntu_1804_x64" {
  value = local.app_zipped["LAMP on Ubuntu 18.04 x64"]
}

output "lemp_centos_6_x64" {
  value = local.app_zipped["LEMP on CentOS 6 x64"]
}
output "lemp_centos_7_x64" {
  value = local.app_zipped["LEMP on CentOS 7 x64"]
}

output "lemp_ubuntu_1804_x64" {
  value = local.app_zipped["LEMP on Ubuntu 18.04 x64"]
}

output "magento_ubuntu_1804_x64" {
  value = local.app_zipped["Magento on Ubuntu 18.04 x64"]
}

output "mediawiki_ubuntu_1804_x64" {
  value = local.app_zipped["Mediawiki on Ubuntu 18.04 x64"]
}

output "minecraft_ubuntu_1804_x64" {
  value = local.app_zipped["Minecraft on Ubuntu 18.04 x64"]
}

output "nextcloud_ubuntu_1804_x64" {
  value = local.app_zipped["Nextcloud on Ubuntu 18.04 x64"]
}

output "openlitespeed_centos_7_x64" {
  value = local.app_zipped["OpenLiteSpeed on CentOS 7 x64"]
}

output "openlitespeed_ubuntu_1804_x64" {
  value = local.app_zipped["OpenLiteSpeed on Ubuntu 18.04 x64"]
}

output "openvpn_ubuntu_1804_x64" {
  value = local.app_zipped["OpenVPN on Ubuntu 18.04 x64"]
}

output "plesk_admin_ubuntu_1804_x64" {
  value = local.app_zipped["Plesk (Web Admin SE) on Ubuntu 18.04 x64"]
}

output "plesk_host_ubuntu_1804_x64" {
  value = local.app_zipped["Plesk (Web Host) on Ubuntu 18.04 x64"]
}

output "plesk_pro_ubuntu_1804_x64" {
  value = local.app_zipped["Plesk (Web Pro) on Ubuntu 18.04 x64"]
}

output "prestashop_ubuntu_1804_x64" {
  value = local.app_zipped["PrestaShop on Ubuntu 18.04 x64"]
}

output "webmin_centos_6_x64" {
  value = local.app_zipped["Webmin on CentOS 6 x64"]
}

output "webmin_centos_7_x64" {
  value = local.app_zipped["Webmin on CentOS 7 x64"]
}

output "webmin_ubuntu_1804_x64" {
  value = local.app_zipped["Webmin on Ubuntu 18.04 x64"]
}

output "wordpress_ubuntu_1804_x64" {
  value = local.app_zipped["WordPress on Ubuntu 18.04 x64"]
}

output "cpanel_centos_7_x64" {
  value = local.app_zipped["cPanel on CentOS 7 x64"]
}

output "owncloud_ubuntu_1804_x64" {
  value = local.app_zipped["ownCloud on Ubuntu 18.04 x64"]
}
