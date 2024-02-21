terraform {
  required_version = ">= 0.14.8"
}

provider "aws" {
  region = var.region
}

module "dap_terraform_state" {
  source          = "git::https://hpunjab:ODU4MzQyNjI3NjkwOqXs0SU2rujmiG6qTh+Kg8eI4fcR@msstash.morningstar.com/scm/dc/dc-ms-aws-infra.git//modules/s3?ref=develop"
  region          = var.region
  bucket_name     = var.bucket_name
  env_name        = "qa"
  service_id      = var.service_id
  team_location   = var.team_location
  budget_id       = var.budget_id
  bucket_owner    = var.bucket_owner
  function        = var.function
  tid             = var.tid
  s3_version_flag = var.s3_version_flag
}