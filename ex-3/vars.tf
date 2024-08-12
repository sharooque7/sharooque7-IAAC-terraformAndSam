variable "REGION" {
  default = "ap-south-1"
}
variable "Availabiltiy_Zone" {
  type = map(any)
  default = {
    zone1 = "ap-south-1a"
    zone2 = "ap-south-1b"
  }
}

variable "security" {
  type = map(any)
  default = {
    ainszon = "sg-075376040f07afd69"
  }
}

variable "AMIS" {
  type = map(any)
  default = {
    aws     = "ami-0a4408457f9a03be3"
    aws2    = "ami-0d473344347276854"
    red-hat = "ami-022ce6f32988af5fa"
    ubuntu  = "ami-0ad21ae1d0696ad58"

  }
}

variable "subnet" {
  type = map(any)
  default = {
    public-1 = "subnet-0a37e8dc6730d6105"
    public-2 = "subnet-07e5600cd5f34e325"
    private  = "subnet-058ce1b66db8f6029"
  }
}