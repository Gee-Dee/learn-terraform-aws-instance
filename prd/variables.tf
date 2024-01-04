variable "vm_tags" {
  type = map(string)
  default = {
    Name  = "prd01"
    env   = "prd"
    name  = "prdapp01"
  }
}

# variable "provider_region" {
#   type = string
#   default = "us-west-2"
# }
