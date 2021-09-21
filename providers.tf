terraform {
  required_providers {
    PROVIDERNAME = {
      source = "repository"
      version = "x.x.x"
    }
  }
}

provider "PROVIDERNAME" {
  param = "value"
}
