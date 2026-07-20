# AWS IAM Fundamentals Lab

![AWS](https://img.shields.io/badge/AWS-IAM-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)

![Security](https://img.shields.io/badge/Security-Least%20Privilege-0052CC?style=for-the-badge&logo=shield&logoColor=white)

---

# Project Overview

This project demonstrates how to implement **AWS Identity and Access Management (IAM)** following the **Principle of Least Privilege**.

The objective of this lab was to understand how AWS controls access to cloud resources by creating IAM users, groups, custom policies, and roles.

During this project, I configured multiple IAM identities with different permission levels and verified their access by performing real-world permission tests against Amazon EC2 and Amazon S3.

### Objectives

- Create IAM Users
- Create IAM User Groups
- Assign AWS Managed Policies
- Create a Custom IAM Policy
- Implement Least Privilege Access
- Test Permission Restrictions
- Create IAM Roles
- Understand Role-Based Access Control (RBAC)

---

# Architecture

The following diagram illustrates the IAM architecture created during this lab.

```
                    AWS Account
                         │
        ┌────────────────┼────────────────┐
        │                │                │
        ▼                ▼                ▼
 CloudEngineers      S3Auditors     EC2ReadOnlyRole
        │                │                │
        ▼                ▼                ▼
 ViewOnlyAccess   S3ReadOnlyCustomPolicy  AmazonEC2ReadOnlyAccess
        │                │
        ▼                ▼
      Marcus         S3Auditor
```

---

# AWS Services Used

| AWS Service | Purpose |
|-------------|---------|
| AWS IAM | Identity and Access Management |
| IAM Users | Represents individual users |
| IAM Groups | Organizes users with shared permissions |
| IAM Policies | Defines permissions |
| IAM Roles | Grants temporary permissions |
| Amazon EC2 | Permission testing |
| Amazon S3 | Access validation |

---

# What I Built

✅ CloudEngineers User Group

✅ Marcus IAM User

✅ ViewOnlyAccess Permission

✅ Custom S3 ReadOnly Policy

✅ S3Auditors User Group

✅ S3Auditor IAM User

✅ EC2 ReadOnly IAM Role

✅ Permission Validation Tests

---

# Security Concepts Demonstrated

| Security Principle | Status |
|--------------------|--------|
| Principle of Least Privilege | ✅ |
| IAM User Management | ✅ |
| IAM Groups | ✅ |
| AWS Managed Policies | ✅ |
| Custom JSON Policies | ✅ |
| IAM Roles | ✅ |
| Permission Testing | ✅ |
| Role-Based Access Control (RBAC) | ✅ |

---

# Project Workflow

### Step 1 — Create IAM User Group

Created a user group named **CloudEngineers** and attached the AWS managed **ViewOnlyAccess** policy.

**Purpose**

- Organize users
- Assign permissions through groups
- Simplify permission management

---

### Step 2 — Create IAM User

Created an IAM user named **Marcus**.

The user was assigned to the **CloudEngineers** group.

This user inherited the ViewOnlyAccess policy from the group.

---

### Step 3 — Test Permissions

Logged into AWS using the IAM user credentials.

Attempted to launch an EC2 instance.

Result:

❌ Access Denied

Reason:

The ViewOnlyAccess policy only allows viewing AWS resources.

Creating EC2 resources requires additional permissions.

---

### Step 4 — Create Custom IAM Policy

Created a custom JSON policy named:

**S3ReadOnlyCustomPolicy**

The policy allows users to:

- List S3 Buckets
- View Bucket Locations

while preventing:

- Bucket Creation
- Bucket Deletion
- Object Upload
- Object Deletion

This demonstrates implementing the Principle of Least Privilege using custom IAM policies.

---

### Step 5 — Create S3Auditors Group

Created another IAM group named:

**S3Auditors**

Attached the custom policy:

**S3ReadOnlyCustomPolicy**

---

### Step 6 — Create S3Auditor User

Created an IAM user named:

**S3Auditor**

Assigned the user to the **S3Auditors** group.

---

### Step 7 — Validate S3 Permissions

Logged in as the **S3Auditor** user.

Attempted to create a new S3 bucket.

Result:

❌ Access Denied

Reason:

The custom policy intentionally prevents bucket creation.

The user is only allowed to view bucket information.

---

### Step 8 — Create IAM Role

Created an IAM Role named:

**EC2ReadOnlyRole**

Trusted Entity:

- Amazon EC2

Attached Policy:

- AmazonEC2ReadOnlyAccess

Purpose:

Demonstrate how AWS services obtain temporary permissions using IAM Roles instead of long-term credentials.

---

# Permission Validation

| Action | Marcus | S3Auditor |
|---------|--------|-----------|
| View AWS Resources | ✅ | ❌ |
| Launch EC2 Instance | ❌ | ❌ |
| View S3 Buckets | ❌ | ✅ |
| Create S3 Bucket | ❌ | ❌ |

---

# Lessons Learned

Throughout this project, I learned how AWS IAM secures cloud resources by controlling access through users, groups, policies, and roles.

I gained hands-on experience implementing least privilege permissions and validating them through real permission tests.

I also learned the differences between:

- IAM Users
- IAM Groups
- Managed Policies
- Custom Policies
- IAM Roles

Understanding these components is essential for building secure AWS environments.

---

# Key Takeaways

- IAM permissions should always follow the Principle of Least Privilege.
- Groups simplify permission management.
- Managed Policies provide predefined permissions.
- Custom Policies provide granular access control.
- IAM Roles provide temporary credentials for AWS services.
- Testing permissions is essential to verify security configurations.

---

# Project Screenshots

| Step | Screenshot |
|------|------------|
| IAM Dashboard | *(Insert Screenshot)* |
| CloudEngineers Group Created | *(Insert Screenshot)* |
| Marcus User Created | *(Insert Screenshot)* |
| EC2 Access Denied | *(Insert Screenshot)* |
| Custom IAM Policy | *(Insert Screenshot)* |
| S3Auditors Group Created | *(Insert Screenshot)* |
| S3Auditor User Created | *(Insert Screenshot)* |
| S3 Bucket Access Denied | *(Insert Screenshot)* |
| EC2 ReadOnly Role Created | *(Insert Screenshot)* |

---

# Skills Demonstrated

- AWS Identity and Access Management (IAM)
- IAM Users
- IAM Groups
- IAM Roles
- AWS Managed Policies
- Custom JSON Policies
- Principle of Least Privilege
- Role-Based Access Control (RBAC)
- Amazon S3 Permissions
- Amazon EC2 Permissions
- AWS Security Best Practices

---

# Future Improvements

- Implement Multi-Factor Authentication (MFA)
- Configure IAM Permission Boundaries
- Explore IAM Identity Center (AWS SSO)
- Test Cross-Account IAM Roles
- Integrate IAM Roles with EC2 Instances
