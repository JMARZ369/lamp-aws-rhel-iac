# 🛠️ LAMP Stack on AWS using Terraform and Ansible

This project provisions a LAMP (Linux, Apache, MySQL/MariaDB, PHP) stack on AWS using **Infrastructure as Code (IaC)** tools:

- **Terraform** to deploy cloud infrastructure (VPC, EC2, Security Groups)
- **Ansible** to install and configure Apache, PHP, and MariaDB on Amazon Linux 2023

> ⚠️ This is a **monolithic prototype** intended for learning and rapid development. A future version will introduce a multi-tier, scalable architecture.

---

## 📁 Project Structure

```bash
lamp-aws-rhel-iac/
├── terraform/           # Infrastructure provisioning code
├── ansible/             # Configuration management
│   ├── lamp.yml         # Main playbook
│   ├── inventory.ini    # Ansible inventory file (not included in version control)
│   └── roles/           # Ansible roles
│       ├── apache/
│       ├── php/
│       └── mysql/
└── README.md

Please read full article here: 

https://medium.com/@jason.martinez.aws/deploying-a-lamp-stack-on-aws-with-terraform-and-ansible-prototype-to-production-f7ad66b55bbf

