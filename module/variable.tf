variable "loop_name" {
  type = map(any)
  description = "Key:Value Pairs"
}

variable "owner" {
  type=string
  description = "Owner email id"
}

variable "purpose" {
  type = string
}

variable "bucket_names" {
  type        = list(string)
}

# variable "bucketname" {
#   type        = list(string)
# }