# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

variable "scope-id" {
  type = string
}

variable "group-name" {
  type = string
  description = "Group of individuals that have owner on the subscription"
}

variable "scope-type" {
  type = string
  description = "Group of individuals that have operational responsibilities on the subscription"
}

variable "role-name" {
  type = string
  default = "Reader"
}