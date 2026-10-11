resource "oci_data_safe_unified_audit_policy" "data_safe_unified_audit_policies" {
  for_each = var.data_safe_unified_audit_policies

  compartment_id                     = each.value.compartment_id
  security_policy_id                 = each.value.security_policy_id
  status                             = each.value.status
  unified_audit_policy_definition_id = each.value.unified_audit_policy_definition_id
  defined_tags                       = each.value.defined_tags
  description                        = each.value.description
  display_name                       = each.value.display_name
  freeform_tags                      = each.value.freeform_tags

  dynamic "conditions" {
    for_each = each.value.conditions
    content {
      attribute_set_id = conditions.value.attribute_set_id
      entity_selection = conditions.value.entity_selection
      entity_type      = conditions.value.entity_type
      operation_status = conditions.value.operation_status
      role_names       = conditions.value.role_names
      user_names       = conditions.value.user_names
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

