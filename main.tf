terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

module "nginx" {
  source = "./Modules/Nginx"
}

module "mongoDB" {
  source = "./Modules/MongoDB"
}

module "vault" {
  source = "./Modules/Vault"
}