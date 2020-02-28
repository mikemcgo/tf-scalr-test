variable "subscription-id" {
  type    = string
}

variable "tenant-id" {
  type    = string
}

variable "environment-owner" {
  type        = string
  description = "Group of individuals that have owner on the subscription"
  default     = "asdf"
}
