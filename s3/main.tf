resource "aws_s3_bucket" "example" {
    bucket = var.bucket
  

  tags = {
    Name = var.Name
    owner = var.Owner
    #Environment = "Dev"
  }
  
}