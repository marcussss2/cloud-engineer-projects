# AWS VPC Networking Lab

## Project Overview

This project demonstrates how to build a custom **Amazon Virtual Private Cloud (VPC)** from scratch.

The objective was to understand AWS networking fundamentals by creating a custom network environment with:

- Custom VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Route Table
- Public Route Association

This lab serves as the foundation for future AWS networking projects such as EC2, Load Balancers, NAT Gateway, and Auto Scaling.

---

# Architecture

The following diagram illustrates the network architecture built during this lab.

<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/c14b420b-4402-4966-9848-4afb483aa73f" />



---

# AWS Services Used

| Service | Purpose |
|----------|---------|
| Amazon VPC | Create an isolated virtual network |
| Subnets | Separate public and private resources |
| Internet Gateway | Enable internet connectivity |
| Route Tables | Control network traffic routing |

---

# What I Built

✅ Custom VPC

✅ Public Subnet

✅ Private Subnet

✅ Internet Gateway

✅ Public Route Table

✅ Route to Internet (0.0.0.0/0)

✅ Associated Public Subnet with Route Table

---

# Network Configuration

| Resource | Configuration |
|-----------|--------------|
| VPC | 10.0.0.0/16 |
| Public Subnet | 10.0.1.0/24 |
| Private Subnet | 10.0.2.0/24 |
| Internet Gateway | Marcus-IGW |
| Route Table | Public-Route-Table |

---

# Project Screenshots

| Step | Screenshot |
|------|------------|
| VPC Created | <img width="1917" height="987" alt="image" src="https://github.com/user-attachments/assets/0fe63d2a-cb8e-42f6-b100-19c78f7cbe79" />|
| Public Subnet | <img width="1912" height="930" alt="image" src="https://github.com/user-attachments/assets/2de87692-672f-44db-b82d-8aa80115dc09" />|
| Private Subnet | <img width="1915" height="945" alt="image" src="https://github.com/user-attachments/assets/f6e02940-3153-4217-85f8-bf50c91b1484" />|
| Internet Gateway |<img width="1918" height="941" alt="image" src="https://github.com/user-attachments/assets/c05b1b4d-08a0-4061-b3ef-2092db770819" />|
| Route Table | <img width="1917" height="937" alt="image" src="https://github.com/user-attachments/assets/40a8b823-2d70-4653-98dc-3904eb1a52d8" />|
| Route Added | <img width="1611" height="371" alt="image" src="https://github.com/user-attachments/assets/5e5cc131-1ccb-4ddf-9a2e-df2bcf47afb5" />|
| Final Association | <img width="1918" height="952" alt="image" src="https://github.com/user-attachments/assets/d0691724-6957-4b5f-ab23-1711226ebd43" />|

---

# Key Concepts Learned

### Virtual Private Cloud (VPC)

A logically isolated virtual network where AWS resources can securely operate.

### Public Subnet

A subnet with access to the internet through an Internet Gateway.

### Private Subnet

A subnet without direct internet access.

### Internet Gateway

Connects the VPC to the public internet.

### Route Table

Determines how traffic flows between subnets and external networks.

---

# Skills Demonstrated

- AWS Networking
- VPC Design
- CIDR Planning
- Public & Private Subnets
- Route Tables
- Internet Gateway Configuration
- AWS Console Navigation
- Cloud Infrastructure Fundamentals

---

# Technologies Used

- Amazon VPC
- AWS Management Console
- IPv4 Networking
- CIDR Blocks

---

# Future Improvements

- Launch EC2 instances
- Configure Security Groups
- Configure Network ACLs
- Add a NAT Gateway
- Deploy a multi-tier application

---

# Learning Outcome

This project strengthened my understanding of AWS networking fundamentals and how different networking components work together to securely connect cloud resources.

It also provides a strong foundation for future projects involving EC2, Load Balancers, Auto Scaling, and other AWS services.
