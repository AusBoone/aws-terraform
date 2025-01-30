AWS Cloud Infrastructure with Terraform

This repository contains Terraform configurations for provisioning AWS infrastructure, including networking, compute instances, security configurations, and storage resources.

Features
- Virtual Private Cloud (VPC): Defines the network topology, subnets, and routing.
- Elastic Compute Cloud (EC2): Configures virtual machines with necessary user data.
- Application Load Balancer (ALB): Distributes incoming traffic among instances.
- Security Groups: Manages firewall rules for resource access control.
- DynamoDB: Provides NoSQL database services.
- S3 Buckets: Offers scalable object storage.

File Structure
- vpc.tf - Defines the VPC, subnets, and route tables.
- ec2.tf - Configures EC2 instances and associated user data.
- alb.tf - Provisions an Application Load Balancer.
- security.tf - Manages security groups and firewall rules.
- dynamodb.tf - Defines DynamoDB tables.
- s3.tf - Configures S3 buckets for storage.
- user_data.sh - Bootstrap script for EC2 instances.
