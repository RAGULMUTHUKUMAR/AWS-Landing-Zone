# 🚀 AWS Landing Zone Setup (Using Terraform)

## 📖 Overview
This project sets up a **secure AWS Landing Zone** using Terraform. It includes:
- ✅ **Multi-Account Structure** with AWS Organizations
- ✅ **IAM Security Guardrails** (Service Control Policies, GuardDuty, AWS Config)
- ✅ **Networking** (VPC, Subnets, Security Groups)
- ✅ **Automated Account Provisioning** (Terraform)
- ✅ **CloudWatch Logging & Monitoring**

This setup is designed for **secure, scalable AWS account management**.

---

## 🛠️ **Technologies Used**
- **Terraform** (Infrastructure as Code)
- **AWS Organizations** (Multi-Account Management)
- **IAM Roles & Policies** (Security Guardrails)
- **AWS Config & GuardDuty** (Compliance & Security)
- **CloudWatch** (Logging & Monitoring)

---

## ⚙️ **Setup & Deployment**

### **1️⃣ Prerequisites**
Make sure you have:
- 🟢 **AWS CLI** installed → [Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- 🟢 **Terraform** installed → [Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- 🟢 **An AWS Account with Admin Access**
- 🟢 **AWS Organizations enabled** in your root account

---

### **2️⃣ Clone the Repository**
```bash
git clone https://github.com/yourusername/aws-landing-zone.git
cd aws-landing-zone
