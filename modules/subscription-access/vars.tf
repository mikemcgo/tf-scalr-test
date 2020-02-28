# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

variable "subscription-id" {
  type = string
}

variable "subscription-owner" {
  type = string
  description = "Group of individuals that have owner on the subscription"
}

variable "subscription-ops" {
  type = string
  description = "Group of individuals that have operational responsibilities on the subscription"
}

variable "automation-teams" {
  type = string
  description = "Group of individuals that have building in resource groups in the subscription"
}

variable "support-team" {
  type = string
  description = "Group of individuals that have support responsibilities in the subscription" 
}

variable "security-operations-team" {
  type = string
  description = "Group of individuals that have security operations responsibilities in the subscription" 
}