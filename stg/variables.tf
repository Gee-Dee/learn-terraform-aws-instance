variable "vm_tags" {
  type = map(string)
  default = {
    Name  = "stg01"
    env   = "stg"
    name  = "stgapp01"
  }
}

# variable "provider_region" {
#   type = string
#   default = "us-west-2"
# }
