output "data_safe_unified_audit_policies_id" {
  description = "Map of id values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_unified_audit_policies_compartment_id" {
  description = "Map of compartment_id values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no compartment_id are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "data_safe_unified_audit_policies_conditions" {
  description = "Map of conditions values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no conditions are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "data_safe_unified_audit_policies_defined_tags" {
  description = "Map of defined_tags values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no defined_tags are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "data_safe_unified_audit_policies_description" {
  description = "Map of description values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no description are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_safe_unified_audit_policies_display_name" {
  description = "Map of display_name values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no display_name are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_safe_unified_audit_policies_enabled_entities" {
  description = "Map of enabled_entities values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no enabled_entities are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.enabled_entities if v.enabled_entities != null && length(v.enabled_entities) > 0 }
}
output "data_safe_unified_audit_policies_freeform_tags" {
  description = "Map of freeform_tags values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "data_safe_unified_audit_policies_is_seeded" {
  description = "Map of is_seeded values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no is_seeded are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.is_seeded if v.is_seeded != null }
}
output "data_safe_unified_audit_policies_lifecycle_details" {
  description = "Map of lifecycle_details values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "data_safe_unified_audit_policies_security_policy_id" {
  description = "Map of security_policy_id values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no security_policy_id are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.security_policy_id if v.security_policy_id != null && length(v.security_policy_id) > 0 }
}
output "data_safe_unified_audit_policies_state" {
  description = "Map of state values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no state are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.state if v.state != null && length(v.state) > 0 }
}
output "data_safe_unified_audit_policies_status" {
  description = "Map of status values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no status are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.status if v.status != null && length(v.status) > 0 }
}
output "data_safe_unified_audit_policies_system_tags" {
  description = "Map of system_tags values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no system_tags are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "data_safe_unified_audit_policies_time_created" {
  description = "Map of time_created values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no time_created are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "data_safe_unified_audit_policies_time_updated" {
  description = "Map of time_updated values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no time_updated are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "data_safe_unified_audit_policies_unified_audit_policy_definition_id" {
  description = "Map of unified_audit_policy_definition_id values across all data_safe_unified_audit_policies, keyed the same as var.data_safe_unified_audit_policies except keys with no unified_audit_policy_definition_id are omitted"
  value       = { for k, v in oci_data_safe_unified_audit_policy.data_safe_unified_audit_policies : k => v.unified_audit_policy_definition_id if v.unified_audit_policy_definition_id != null && length(v.unified_audit_policy_definition_id) > 0 }
}

