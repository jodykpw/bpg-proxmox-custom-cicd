# bpg-proxmox-module-cicd

This repository contains Terraform configurations for deploying and managing virtual machines on the Proxmox hypervisor using the bpg-proxmox-module GitLab Terraform module registry. The module offers a convenient way to define and configure virtual machines with various settings, including network configurations, storage, and provisioning scripts, and it can be seamlessly integrated into a GitLab CI/CD pipeline for automated deployment and management.

## 🔧 Prerequisites

Before you begin, ensure that you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine
- Access to a Proxmox server or cluster
- [Creating the Proxmox user and password for terraform](https://registry.terraform.io/providers/bpg/proxmox/latest/docs)
- SSH Authorized Keys use for logging into the new created virtual machines.
- Personal Access Token: 
   -  | Token name  | Scopes |
      | -------- | -------- |
      | READ_API | read_api | 

## ✨ GitLab CI/CD Pipeline Deployment.

Follow these steps to get started with the project:

1. Clone the repository:

   ```bash
   git clone this repository.
   ```

1. Rename the folder:

   ```bash
   mv bpg-proxmox-module-cicd your-project-name
   ```

1. Change Git Remote Origin:

   ```bash
   cd your-project-name
   git remote set-url origin <your-new-repo-url>
   ```

1. Define a CI/CD variable in the project’s GitLab UI settings.

   1. Go to your Group/Project Settings > CI/CD and expand the Variables section.

   1. Add the following variables:

      | Variable  | Key  | Description |
      | -------- | -------- | -------- |
      | Variable | TF_VAR_virtual_environment_username | The username and realm for the Proxmox Virtual Environment API (can also be sourced from PROXMOX_VE_USERNAME). For example, root@pam. |
      | Variable | TF_VAR_virtual_environment_password | The password for the Proxmox Virtual Environment API (can also be sourced from PROXMOX_VE_PASSWORD). |
      | Variable | TF_VAR_ssh_authorized_keys | SSH Authorized Keys use for logging into the new created virtual machines. |

1. Define a CI/CD variable in the project’s GitLab UI settings.

   1. Go to Personal Access Token: 
      | Token name  | Scopes |
      | -------- | -------- |
      | READ_API | read_api |

   1. Go to Project Access Token: 
      | Token name  | Scopes | Role |
      | -------- | -------- | -------- |
      | pac_terraform-state | api, write_repository | Maintainer |

   1. Go to your Project Settings > CI/CD and expand the Variables section.

   1. Add the following variables:

      | Variable  | Key  | Value | Description |
      | -------- | -------- | -------- | -------- |
      | Variable | TF_STATE_ACCESS_TOKEN | project access token: pac_terraform-state | GitLab (Self-Repository) Project Access Token for the GitLab-managed Terraform state. Role: Maintainer & Scopes: api, write_repository.|
      | Variable | TF_STATE_USERNAME | pac_terraform-state | GitLab (Self-Repository) Project Access Token Name for the GitLab-managed Terraform state. |
      | Variable | READ_API | pac_terraform-state | project access token: READ_API |

1. Locate the `terraform.tfvars.example` file in the project directory.

1. Create a new file named `terraform.tfvars` by making a copy of the example file:

   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

1. Open the `terraform.tfvars` file in a text editor.

1. Update the variable values in the `terraform.tfvars` file with your desired configurations. Make sure to replace the example values with your actual settings.

1. Save the `terraform.tfvars` file.

1. Update the main.tf.

1.  Locate the vms map object declaration in the `local.tf` file.

1. Update the vms map object with your desired virtual machine configurations. Modify the Proxmox connection details, virtual machine settings, Cloud-Init configuration, etc., to match your desired setup.

1. Update the outputs.tf.

1. Update the GitLab CI template to align with your requirements.

1. Configure pre-commit

Using pre-commit and deploying through GitLab CI/CD involves a few steps to ensure your code is properly formatted, linted, and tested before it's committed and pushed to your GitLab repository.

   1. Navigate to your project folder
   
      ```bash
      cd your-project-name
      ```

   1. Create a new file named `.terraformrc.example` by making a copy of the example file:

      ```bash
      cp .terraformrc.example .terraformrc
      ```

   1. run pre-commit install to install pre-commit into your git hooks.

      ```bash
      pre-commit install
      ```

  1. Run pre-commit manually:
      After setting up the configuration, you can run the pre-commit checks on your code before committing:

## GitLab CI/CD Pipeline Deploy

   Once your code passes the pre-commit checks, you can commit and push it to your GitLab repository as usual:

      git add .
      git commit -m "Your commit message"
      git push

   Log in to the GitLab UI in order to verify the deployment of the pipeline.

## 🎨 Customisation

Feel free to customize the project according to your needs. You can modify the Proxmox VM settings, Cloud-Init configuration, add more virtual machines, or extend the functionality as required.

## License

This project is licensed under the MIT License. 

## Donation
If this project has helped save you time during development, I'd greatly appreciate a gesture of gratitude in the form of a cup of coffee :)

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=R2GUUDA73BHQG)

## 🇬🇧🇭🇰 Author Information

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodywan/
* Website: https://www.doman.com