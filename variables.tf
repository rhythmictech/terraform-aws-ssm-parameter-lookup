variable "return_insecure" {
  default     = false
  description = "Return an insecure value of the parameter"
  type        = bool
}

variable "ssm_parameter" {
  description = "Full path of the SSM parameter to return"
  type        = string

  validation {
    condition     = can(regex("^(/.*/)([^/]+)$", var.ssm_parameter))
    error_message = "ssm_parameter must be full path of parameter, e.g. '/my/custom/parameter'"
  }
}
