variable "data_safe_unified_audit_policies" {
  description = <<EOT
Map of data_safe_unified_audit_policies, attributes below
Required:
    - compartment_id
    - security_policy_id
    - status
    - unified_audit_policy_definition_id
    - conditions (block):
        - attribute_set_id (optional)
        - entity_selection (required)
        - entity_type (required)
        - operation_status (required)
        - role_names (optional)
        - user_names (optional)
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                     = string
    security_policy_id                 = string
    status                             = string
    unified_audit_policy_definition_id = string
    defined_tags                       = optional(map(string))
    description                        = optional(string)
    display_name                       = optional(string)
    freeform_tags                      = optional(map(string))
    conditions = list(object({
      attribute_set_id = optional(string)
      entity_selection = string
      entity_type      = string
      operation_status = string
      role_names       = optional(list(string))
      user_names       = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_unified_audit_policies : (
        length(v.conditions) >= 1
      )
    ])
    error_message = "Each conditions list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_safe_unified_audit_policies : (
        alltrue([for item in v.conditions : (contains([for v in ["ALL_USERS", "ATTRIBUTE_SET", "ROLE", "USER"] : lower(v)], lower(item.entity_type)))])
      )
    ])
    error_message = "must be one of: \"ALL_USERS\", \"ATTRIBUTE_SET\", \"ROLE\", \"USER\""
  }
}

