# Terraform with Local File and AWS Resources

## Overview

This project demonstrates the use of Terraform to manage two different types of resources:
1. **Local Resources**: Creates a local file on your machine using the `local_file` resource.
2. **AWS Resources**: Provisions an AWS infrastructure, including a VPC, EC2 instance, S3 bucket, load balancer, and networking setup.

## Project Structure

- **`local_file.tf`**: This file contains Terraform code that creates a local file on your machine with some predefined content.
- **`aws.tf`**: This file contains Terraform code to provision AWS resources, including:
  - VPC (Virtual Private Cloud)
  - Public and Private Subnets
  - Internet Gateway and Route Table
  - Security Groups
  - EC2 Instance
  - S3 Bucket
  - Application Load Balancer

## Prerequisites

Before you begin, ensure you have the following installed on your system:

1. [Terraform](https://www.terraform.io/downloads.html)
2. [AWS CLI](https://aws.amazon.com/cli/) (if you plan to manage AWS resources)
3. An AWS account with proper credentials set up (`aws configure`).

## Usage

### Step 1: Clone the repository

Clone the GitHub repository to your local machine:

```bash
git clone https://github.com/yourusername/terraform-project.git
cd terraform-project
```

### Step 2: Set up Terraform

Initialize the project: In the directory where your local_file.tf and aws.tf files are located, initialize Terraform to download necessary providers (AWS and local):

```bash
terraform init
```

### Step 3: Plan the infrastructure

You can run terraform plan to see the changes that Terraform will make in your AWS account.

```bash
terraform plan
```

### Step 4: Apply the infrastructure: 

To create the AWS resources, run:

```bash
terraform apply
```

### Step 5: Verify

After applying the configuration, you can check the following resources in the AWS console:
    VPC: Check your newly created VPC in the VPC Dashboard.
    EC2 Instance: Verify the running EC2 instance in the EC2 Dashboard.
    S3 Bucket: Check the S3 bucket for file storage.
    Load Balancer: Look at the Load Balancers section to confirm it was created.

### Step 6: Destroy Resources

When you're done, it's good practice to clean up the resources. To destroy the AWS infrastructure and release resources:

```bash
terraform destroy
```
