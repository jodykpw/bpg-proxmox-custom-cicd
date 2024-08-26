<!-- BEGIN_TF_DOCS -->
# bpg-proxmox-module-cicd

This repository contains Terraform configuration to deploying and managing virtual machines on the Proxmox hypervisor using the pg-proxmox-custom GitLab Terraform module registry. The module provides a convenient way to define and configure virtual machines with various settings, including network configurations, storage, and provisioning scripts.

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 0.63.0 |

#### Providers

No providers.

#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_proxmox_vms"></a> [proxmox\_vms](#module\_proxmox\_vms) | gitlab.doman.com/terraform-modules/bpg-proxmox-module/proxmox | 1.0.0 |

#### Resources

No resources.

#### Inputs

| Name | Description | Type |
|------|-------------|------|
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | The ssh\_authorized\_keys is a configuration option in cloud-init that allows you to specify a list of SSH public keys. When cloud-init runs during the instance initialization process, it adds these public keys to the ~/.ssh/authorized\_keys file of the specified user, granting them SSH access to the instance. | `list(string)` |
| <a name="input_virtual_environment_endpoint"></a> [virtual\_environment\_endpoint](#input\_virtual\_environment\_endpoint) | The endpoint for the Proxmox Virtual Environment API (example: https://host:port) | `string` |
| <a name="input_virtual_environment_password"></a> [virtual\_environment\_password](#input\_virtual\_environment\_password) | The password for the Proxmox Virtual Environment API | `string` |
| <a name="input_virtual_environment_username"></a> [virtual\_environment\_username](#input\_virtual\_environment\_username) | The username and realm for the Proxmox Virtual Environment API (example: root@pam) | `string` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_info"></a> [vm\_info](#output\_vm\_info) | Information about virtual machines including ID, IP addresses, MAC addresses, and network interface names. |

## License

This project is licensed under the MIT License.

## Donation
If this project has helped save you time during development, I'd greatly appreciate a gesture of gratitude in the form of a cup of coffee :)

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=R2GUUDA73BHQG)

## 🇬🇧🇭🇰 Author Information

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodywan/
* Website: https://www.doman.com
<!-- END_TF_DOCS -->