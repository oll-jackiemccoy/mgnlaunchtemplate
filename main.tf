provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_template" "launch_template" {
  name = "created-and-used-by-application-migration-service-s-3c80b276ffc10b5fa-242405-155643"
  instance_type = var.instance_type
  default_version = 6
  network_interfaces {
    security_groups = [var.security_group_id]
    subnet_id       = var.subnet_id
  }
  iam_instance_profile {
    name = var.iam_role_name
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      AWSApplicationMigrationServiceManaged      = "mgn.amazonaws.com"
      AWSApplicationMigrationServiceSourceServerID = "s-3c80b276ffc10b5fa"
      Name = "ip-172-16-5-49"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      AWSApplicationMigrationServiceManaged      = "mgn.amazonaws.com"
      AWSApplicationMigrationServiceSourceServerID = "s-3c80b276ffc10b5fa"
      Name = "ip-172-16-5-49"
    }
  }
}
resource "aws_launch_template" "launch_template_2" {
  name = "created-and-used-by-application-migration-service-s-3c18ccc888b3538a0-242905-144128"
  instance_type = var.instance_type
  default_version = 6
  network_interfaces {
    security_groups = [var.security_group_id]
    subnet_id       = var.subnet_id
  }
  iam_instance_profile {
    name = var.iam_role_name
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      AWSApplicationMigrationServiceManaged      = "mgn.amazonaws.com"
      AWSApplicationMigrationServiceSourceServerID = "s-3c18ccc888b3538a0"
      Name = "EC2AMAZ-E93KFHD"
    }
  }

  tag_specifications {
    resource_type = "volume"
    tags = {
      AWSApplicationMigrationServiceManaged      = "mgn.amazonaws.com"
      AWSApplicationMigrationServiceSourceServerID = "s-3c18ccc888b3538a0"
      Name = "EC2AMAZ-E93KFHD"
    }
  }
}