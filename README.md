# AWS Launch Template for Application Migration Service
AWS Application Migration Service, also known as MGN, creates an EC2 Launch Template when the server is added to the console. This Terraform template will update the EC2 Launch Template portion of the MGN configuration.

### Replication Settings
The Replication Settings for the AWS Application Migration Service Replication Server can be configured in the console or via the AWS CLI. 
### General Launch Settings
The general launch settings also need to be configured in the console or via the AWS CLI.
- Instance type right sizing = Off
- MAP program tagging = migXXXXXXX *(If applicable)*
### EC2 Launch Template
In order to update the Launch template that MGN assigns to the EC2 we will need to import the template into Terraform. To get the Launch Template ID. Login to MGN Console
-Select Source Servers
-Click **Source Server Name**
-Click **Launch Settings**
-Under EC2 Launch Template, Copy the Template ID 
-- lt-0cbce13a7370e75e7
resource "aws_launch_template" "launch_template_2"
