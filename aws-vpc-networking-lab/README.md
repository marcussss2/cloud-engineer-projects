# AWS VPC Networking Lab

## 📖 Overview

This project demonstrates how to build a custom Virtual Private Cloud (VPC) in AWS.

The objective was to understand how networking works in AWS by creating a VPC, configuring public and private subnets, attaching an Internet Gateway, creating a Route Table, and associating it with a public subnet.

---

## 🛠 AWS Services Used

- Amazon VPC
- Subnets
- Internet Gateway
- Route Tables

---

## 📐 Network Design

| Resource | Configuration |
|----------|---------------|
| VPC | Marcus-VPC |
| VPC CIDR | 10.0.0.0/16 |
| Public Subnet | 10.0.1.0/24 |
| Private Subnet | 10.0.2.0/24 |
| Internet Gateway | Marcus-IGW |
| Route | 0.0.0.0/0 → Internet Gateway |

---

## 🏗 Architecture

```text
                    Internet
                        │
                Internet Gateway
                        │
              Public Route Table
         0.0.0.0/0 → Internet Gateway
                        │
                Marcus-VPC
               10.0.0.0/16
                ┌──────────┐
                │          │
         Public Subnet   Private Subnet
         10.0.1.0/24     10.0.2.0/24
```

---

## ✅ What I Built

- Created a custom VPC
- Created a Public Subnet
- Created a Private Subnet
- Created an Internet Gateway
- Attached the Internet Gateway to the VPC
- Created a Public Route Table
- Added the default route (0.0.0.0/0)
- Associated the Public Route Table with the Public Subnet

---

## 🎯 Skills Demonstrated

- AWS Networking
- Amazon VPC
- CIDR Planning
- Public vs Private Subnets
- Route Tables
- Internet Gateway
- Cloud Architecture

---

## 📚 Key Concepts Learned

### VPC

A Virtual Private Cloud (VPC) is a logically isolated network inside AWS.

### Public Subnet

A subnet with a route to an Internet Gateway.

### Private Subnet

A subnet without direct internet access.

### Internet Gateway

Enables communication between the VPC and the public internet.

### Route Table

Controls how traffic flows within the VPC and to external networks.

---

## 🚀 Future Improvements

- Launch EC2 instances
- Configure Security Groups
- Configure Network ACLs
- Add a NAT Gateway
- Deploy a multi-tier application
