# 🚀 AWS Landing Zone Setup (Using Terraform)

## 📚 Overview
This project sets up a **secure AWS Landing Zone** using Terraform. It provides a multi-account AWS environment with:
- ✅ **AWS Organizations** for multi-account management
- ✅ **IAM Roles & Policies** to enforce security guardrails
- ✅ **Networking** (VPC, Subnets, Security Groups)
- ✅ **Automated Account Provisioning** using Terraform
- ✅ **CloudWatch for Logging & Monitoring**

This setup follows AWS best practices to improve **security, scalability, and compliance**.

---

## 🔧 Technologies Used
- **Terraform** - Infrastructure as Code (IaC)
- **AWS Organizations** - Multi-account management
- **AWS IAM** - Role-based access control
- **AWS VPC** - Networking setup
- **AWS CloudWatch** - Logging & Monitoring
- **AWS Config & GuardDuty** - Compliance & Security

---

## ⚙️ Setup & Deployment

### **1. Prerequisites**
Make sure you have:
- 🟢 **AWS CLI** installed - [Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- 🟢 **Terraform** installed - [Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- 🟢 **An AWS Account with Admin Access**
- 🟢 **AWS Organizations enabled** in your root account

### **2. Clone the Repository**
```bash
git clone https://github.com/yourusername/aws-landing-zone.git
cd aws-landing-zone
```

### **3. Configure AWS CLI**
Set up your AWS credentials:
```bash
aws configure
```
Enter your **AWS Access Key, Secret Key, Region**, and Output Format.

### **4. Deploy the AWS Landing Zone**
Run the following Terraform commands:
```bash
terraform init      # Initialize Terraform
terraform validate  # Validate the configuration
terraform plan      # Preview the changes
terraform apply -auto-approve  # Apply the configuration
```

### **5. Verify AWS Accounts**
After deployment:
- Log in to AWS and go to **AWS Organizations**
- You should see two new accounts:
  - **Security-Account**
  - **Logging-Account**
- Reset their passwords using the **root email**

OR **assume roles via AWS CLI**:
```bash
aws sts assume-role --role-arn "arn:aws:iam::<ACCOUNT_ID>:role/OrganizationAccountAccessRole" --role-session-name AWSLandingZoneSession
```

---

## 🚀 Future Enhancements
- 🟢 **Enable AWS Config & GuardDuty** for continuous security monitoring
- 🟢 **Implement Service Control Policies (SCPs)** for account restrictions
- 🟢 **Set up centralized logging with AWS CloudTrail**
- 🟢 **Deploy EC2 instances & AWS Lambda for automation**

---

## 👨‍💻 Author
👤 **RAGUL M**  
📧 Email: ragullugar4@gmail.com  
🌍 GitHub: [RAGULMUTHUKUMAR](https://github.com/RAGULMUTHUKUMAR)

---

💪 **Now your project is GitHub-ready!**  
Push it with:
```bash
git add .
git commit -m "Initial AWS Landing Zone Setup"
git push origin main
```

Let me know if you need any edits! 🚀🔥

