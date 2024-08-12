variable "REGION" {
  default = "ap-south-1"
}
variable "ZONE1" {
  default = "ap-south-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    ap-south-1 = "ami-0ad21ae1d0696ad58"
  }
}

variable "subnet" {
  type = map(any)
  default = {
    public-1 = "subnet-0a37e8dc6730d6105"
  }
}