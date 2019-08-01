# IBM Cloud PaaS API Key:
variable "ibm_bx_api_key" {}

# IBM Cloud IaaS User (aka SoftLayer Username)
variable "ibm_sl_username" {}

# IBM Cloud IaaS User API key (aka SoftLayer User Api Key)
variable "ibm_sl_api_key" {}

variable "datacenter" {
  type = "map"

  default = {
    us-east1  = "wdc04"
    us-east2  = "wdc06"
    us-east3  = "wdc07"
    us-south1 = "dal10"
    us-south2 = "dal12"
    us-south3 = "dal13"
  }
}

variable "node_count" {
  default = "1"
}

variable "os" {
  type = "map"

  default = {
    u16   = "UBUNTU_16_64"
    u18   = "UBUNTU_18_64"
    win16 = "WIN_2016-STD_64"
  }
}

variable "vm_flavor" {
  type = "map"

  default = {
    micro  = "B1_1X2X100"
    small  = "B1_2X4X100"
    medium = "B1_8X16X100"
    large  = "B1_16X32X100"
  }
}

variable "domainname: {
  default = "cdetesting.com"
}
