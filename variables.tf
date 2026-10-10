variable "codecatalyst_dev_environments" {
  description = <<EOT
Map of codecatalyst_dev_environments, attributes below
Required:
    - instance_type
    - project_name
    - space_name
    - ides (block):
        - name (optional)
        - runtime (optional)
    - persistent_storage (block):
        - size (required)
Optional:
    - alias
    - inactivity_timeout_minutes
    - region
    - repositories (block):
        - branch_name (optional)
        - repository_name (required)
EOT

  type = map(object({
    instance_type              = string
    project_name               = string
    space_name                 = string
    alias                      = optional(string)
    inactivity_timeout_minutes = optional(number)
    region                     = optional(string)
    ides = object({
      name    = optional(string)
      runtime = optional(string)
    })
    persistent_storage = object({
      size = number
    })
    repositories = optional(list(object({
      branch_name     = optional(string)
      repository_name = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codecatalyst_dev_environments : (
        v.repositories == null || (length(v.repositories) <= 100)
      )
    ])
    error_message = "Each repositories list must contain at most 100 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

