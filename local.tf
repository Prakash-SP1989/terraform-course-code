locals {
  resource_name_prefix = "${var.department}-${var.environment}"
  project_tags = {
    Department  = var.department
    Environment = var.environment
    project     = "terraform"
    type        = "modernization"
  }
}