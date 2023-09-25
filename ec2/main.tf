resource "aws_instance" "ec2ins" {    
    ami=var.ami
    instance_type=var.instance_type
    #subnet_id="subnet-0962069167a59d185"
    
  tags={
    Name=var.Name
    owner=var.owner 
 
  }
   volume_tags = {
    Name = var.Name
    owner = var.owner
  }
}
