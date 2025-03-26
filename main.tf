provider "aws" {
  region = "ap-south-1"
}

# Create AWS Organization
resource "aws_organizations_organization" "org" {
  feature_set = "ALL"
}

# Create Organizational Units
resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "logging" {
  name      = "Logging"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Create New AWS Accounts
resource "aws_organizations_account" "security_account" {
  name      = "Security_Account"
  email     = "ragul69696@gmail.com"
  role_name = "OrganizationAccountAccessRole"
}

resource "aws_organizations_account" "logging_account" {
  name      = "Logging-Account"
  email     = "ragulkumar1282@gmail.com"
  role_name = "OrganizationAccountAccessRole"
}
