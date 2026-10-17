# Cloud Engineer Projects

Welcome to my Cloud Engineering Portfolio!

This repository showcases my hands-on projects and labs focused on Amazon Web Services (AWS), Linux system administration, networking, Infrastructure as Code (IaC), automation, monitoring, and containerization.

These projects document my journey toward becoming a Cloud Engineer by building practical skills in cloud infrastructure deployment, configuration, and troubleshooting.

## Projects

| # | Project | Description | Technologies |
|---:|---|---|---|
| 1 | [AWS CLI Essentials Lab](AWS%20CLI%20Essentials%20Lab%20Project/) | Practiced essential AWS operations and resource management using the command-line interface. | AWS CLI, AWS |
| 2 | [AWS Docker EC2 Lab](AWS%20Docker%20EC2%20Lab%20Project/) | Explored Docker containerization in an EC2 environment. | AWS EC2, Docker, Linux |
| 3 | [AWS Application Load Balancer Project](aws-application-load-balancer-project/) | Practiced application load balancing and distributing web traffic using AWS infrastructure. | AWS, EC2, Application Load Balancer |
| 4 | [AWS CloudWatch Monitoring Project](aws-cloudwatch-monitoring-project/) | Explored cloud resource monitoring and observability using Amazon CloudWatch. | AWS CloudWatch, EC2 |
| 5 | [AWS EC2 Auto Scaling Lab](aws-ec2-auto-scaling-lab/) | Configured an Auto Scaling Group and Launch Template, then tested automatic EC2 instance replacement after termination. | AWS EC2, Auto Scaling Groups, Launch Templates |
| 6 | [AWS EC2 Nginx Project](aws-ec2-nginx-project/) | Deployed an Ubuntu EC2 instance and configured Nginx as a web server. | AWS EC2, Ubuntu, Nginx, Linux |
| 7 | [AWS IAM Fundamentals Lab](aws-iam-fundamentals-lab/) | Practiced Identity and Access Management fundamentals, including users, permissions, and access control. | AWS IAM |
| 8 | [AWS S3 Static Website](aws-s3-static-website/) | Hosted a static website using Amazon S3. | AWS S3, HTML, CSS |
| 9 | [AWS VPC Networking Lab](aws-vpc-networking-lab/) | Built a custom VPC with public and private subnets, an Internet Gateway, and route tables. | Amazon VPC, Subnets, Routing, CIDR |
| 10 | [Terraform EC2 Project](terraform-ec2-project/) | Provisioned AWS infrastructure using Terraform. | Terraform, AWS EC2, IaC |
| 11 | [Terraform Nginx Project](terraform-nginx-project/) | Automated the provisioning of AWS infrastructure for an Nginx web server using Terraform. | Terraform, AWS EC2, Nginx |

## Skills Demonstrated

### Cloud Computing
- Amazon Web Services (AWS)
- Amazon EC2
- Amazon S3
- Amazon VPC
- AWS IAM
- AWS Auto Scaling
- AWS Application Load Balancer
- Amazon CloudWatch
- AWS CLI

### Networking
- VPC and subnet configuration
- Public and private subnets
- CIDR addressing
- Internet Gateways
- Route tables
- Security groups
- Basic application traffic management

### Infrastructure and Automation
- Terraform
- Infrastructure as Code (IaC)
- Launch Templates
- EC2 instance provisioning and replacement
- Docker fundamentals

### Operating Systems and Tools
- Linux
- Ubuntu
- Nginx
- Git
- GitHub

## Technologies

![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

## Repository Structure

```text
cloud-engineer-projects/
├── AWS CLI Essentials Lab Project/
├── AWS Docker EC2 Lab Project/
├── aws-application-load-balancer-project/
├── aws-cloudwatch-monitoring-project/
├── aws-ec2-auto-scaling-lab/
├── aws-ec2-nginx-project/
├── aws-iam-fundamentals-lab/
├── aws-s3-static-website/
├── aws-vpc-networking-lab/
├── terraform-ec2-project/
├── terraform-nginx-project/
└── README.md
```

## Featured Project: AWS EC2 Auto Scaling Lab

**Objective:** Practice EC2 instance management and automatic instance replacement using AWS Auto Scaling.

**Key tasks:**
- Created a Launch Template with an Ubuntu AMI and EC2 configuration.
- Configured an Auto Scaling Group across multiple Availability Zones.
- Set desired capacity to 1 instance, with a minimum of 1 and maximum of 2.
- Terminated the original EC2 instance to test the replacement process.
- Verified that a replacement instance launched and became healthy and `InService`.

This lab demonstrates basic cloud availability and automated instance recovery.

## Future Learning Goals

- Serverless API using AWS Lambda, API Gateway, and DynamoDB
- Advanced AWS networking and troubleshooting
- More Terraform modules and reusable infrastructure
- Improved cloud security and monitoring practices
- CI/CD automation for cloud deployments

## About Me

I'm a Computer Science graduate passionate about Cloud Engineering, AWS, Linux, networking, Terraform, and DevOps.

I use this repository to document my hands-on learning, demonstrate practical technical skills, and continuously develop my knowledge of cloud infrastructure and automation.

---

*This portfolio is a work in progress and will continue to grow as I complete more projects and expand my cloud engineering skills.*
