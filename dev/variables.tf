variable "vm_tags" {
  type = map(string)
  default = {
    Name  = "dev01"
    env   = "dev"
    name  = "appserver"
  }
}

# variable "provider_region" {
#   type = string
#   default = "us-west-2"
# }
