###
### Stack variables
###

variable "namespace" {
  description = "the Bitbucket namespace in which the project is managed"
  type        = string
}

variable "administrative" {
  description = "Indicates whether this stack can manage others"
  type        = bool
  default     = false
}

variable "autodeploy" {
  description = "Indicates whether changes to this stack can be automatically deployed"
  type        = bool
  default     = false
}

variable "autoretry" {
  description = "Indicates whether obsolete proposed changes should automatically be retried"
  type        = bool
  default     = false
}

variable "branch" {
  description = "the Bitbucket branch to apply changes to"
  type        = string
}

variable "description" {
  description = "Free-form stack description for users"
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels for the stack"
  type        = set(string)
  default     = null
}

variable "manage_state" {
  description = "Determines if Spacelift should manage state for this stack"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the stack - should be unique in one account"
  type        = string
}

variable "project_root" {
  description = "Project root is the optional directory relative to the workspace root containing the entrypoint to the Stack."
  type        = string
  default     = null
}

variable "protect_from_deletion" {
  description = "Project root is the optional directory relative to the workspace root containing the entrypoint to the Stack."
  type        = bool
  default     = false
}

variable "repository" {
  description = "the repository in which the project is managed"
  type        = string
}

variable "space_id" {
  description = "ID (slug) of the space the stack is in"
  type        = string
  default     = null
}

variable "terraform_version" {
  description = "Terraform version to use"
  type        = string
  default     = null
}

###
### AWS integration attachment variables
###

variable "integration_id" {
  description = "ID of the integration to attach"
  type        = string
  default     = null
}

variable "read" {
  description = "Indicates whether this attachment is used for read operations"
  type        = bool
  default     = true
}

variable "write" {
  description = "Indicates whether this attachment is used for write operations"
  type        = bool
  default     = true
}
