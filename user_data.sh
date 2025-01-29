#!/bin/bash
# Update system packages
sudo yum update -y

# Install Python and dependencies
sudo yum install -y python3 pip
pip3 install -r /home/ec2-user/simple_webapp/requirements.txt

# Export AWS environment variables for the app
echo "export AWS_REGION=us-east-1" >> /home/ec2-user/.bashrc
echo "export DYNAMODB_TABLE=AppTable" >> /home/ec2-user/.bashrc
echo "export S3_BUCKET=my-app-bucket" >> /home/ec2-user/.bashrc

# Reload environment variables
source /home/ec2-user/.bashrc

# Start the Flask application
cd /home/ec2-user/simple_webapp
python3 app.py
