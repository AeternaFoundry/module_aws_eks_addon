variable "eks_addons" {
  description = <<EOT
Map of eks_addons, attributes below
Required:
    - addon_name
    - cluster_name
Optional:
    - addon_version
    - configuration_values
    - preserve
    - region
    - resolve_conflicts_on_create
    - resolve_conflicts_on_update
    - service_account_role_arn
    - tags
    - tags_all
    - namespace_config (block):
        - namespace (optional)
    - pod_identity_association (block):
        - role_arn (required)
        - service_account (required)
EOT

  type = map(object({
    addon_name                  = string
    cluster_name                = string
    addon_version               = optional(string)
    configuration_values        = optional(string)
    preserve                    = optional(bool)
    region                      = optional(string)
    resolve_conflicts_on_create = optional(string)
    resolve_conflicts_on_update = optional(string)
    service_account_role_arn    = optional(string)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
    namespace_config = optional(object({
      namespace = optional(string)
    }))
    pod_identity_association = optional(list(object({
      role_arn        = string
      service_account = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eks_addons : (
        v.addon_version == null || ((can(regex("^v(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[A-Za-z-][0-9A-Za-z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[A-Za-z-][0-9A-Za-z-]*))*))?(?:\\+([0-9A-Za-z-]+(?:\\.[0-9A-Za-z-]+)*))?$", v.addon_version))))
      )
    ])
    error_message = "all of: must follow semantic version format"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

