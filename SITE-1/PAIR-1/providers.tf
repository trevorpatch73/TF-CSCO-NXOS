terraform {
  required_providers {
    nxos = {
      source = "CiscoDevNet/nxos"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  backend "s3" {
    bucket = "tf-csco-nxos-tfstate"
    key    = "root/workspaces/github/terraform.tfstate"
    region = "us-east-1"
  }  
}

provider "nxos" {
  alias    = "DEVICE_1"
  username = var.CSCO_NXOS_TF_USERNAME
  password = var.CSCO_NXOS_TF_PASSWORD
  url      = "https://sbx-nxos-mgmt.cisco.com/"
  insecure = true
}

provider "nxos" {
  alias    = "DEVICE_2"
  username = var.CSCO_NXOS_TF_USERNAME
  password = var.CSCO_NXOS_TF_PASSWORD
  url      = "https://X.X.X.X"
  insecure = true
}