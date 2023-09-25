module "ec2ins" {
  source = "../ec2"
  for_each = var.loop_name
  ami=each.value.ami
  instance_type=each.value.ins_type
    # ami = "ami-02bb7d8191b50f4bb"
    #  instance_type = "t2.micro"
  # subnet_id="subnet-0962069167a59d185"
  Name = each.value.Name
  owner = var.owner
 

  
}
module "s3mod" {
  source = "../s3"
  count = length(var.bucket_names)
  bucket = var.bucket_names[count.index]
  Name = var.bucket_names[count.index]
  Owner = var.owner

}