provider "oraclepaas" {
  version = "1.5.3"
}
provider "google" {}
provider "google-beta" {}
provider "azurerm" {}
provider "kubernetes" {}
provider "helm" {}
provider "aws" {
  version = "3.11.0"
}

terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.32.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.1.0"
    }
   }
  }
