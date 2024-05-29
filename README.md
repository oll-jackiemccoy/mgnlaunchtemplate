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
- Select Source Servers
- Click **Source Server Name**
- Click **Launch Settings**
- Under EC2 Launch Template, Copy the Template ID
    - lt-0cbce13a7370e75e7
#### Import the launch template into Terraform
- Add the following to your Terraform main.tf
```
resource "aws_launch_template" "launch_template" {
}
resource "aws_launch_template" "launch_template_2" {
}
```
- Import the Template
```
terraform import aws_launch_template.launch_template lt-0b5be66a8e786297b
terraform import aws_launch_template.launch_template_2 lt-0cbce13a7370e75e7
```
- Use the imported *terraform.tfstate* to build the template
#### Build Terraform and the Templates
The thought process behind the design is to have a .tfvar file per EC2 configuration with the customizations required for migration. 
- main.tf
- ec2name.tfvars
- ec2name-test.tfvars
- variable.tf
#### Running Terraform
- terraform plan -var-file="ec2name-test.tfvars"
- terraform apply -var-file="ec2name-test.tfvars"
