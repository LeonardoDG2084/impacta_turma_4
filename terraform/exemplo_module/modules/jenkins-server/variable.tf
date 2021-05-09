variable "project" {
  type = string
}

variable "zone" {
  type = string
  default = "us-central1-a"
}

variable "machine_size" {
  default = {
      "qa" = "e2-small",
      "prod" = "e2-medium"
  }
}

variable "resource_tags" {
    default = {
       "application_role" = "ci/cd"
    }  
}

variable "env" {
    type = string
}
