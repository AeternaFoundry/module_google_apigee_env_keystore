output "apigee_env_keystores_id" {
  description = "Map of id values across all apigee_env_keystores, keyed the same as var.apigee_env_keystores except keys with no id are omitted"
  value       = { for k, v in google_apigee_env_keystore.apigee_env_keystores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_env_keystores_aliases" {
  description = "Map of aliases values across all apigee_env_keystores, keyed the same as var.apigee_env_keystores except keys with no aliases are omitted"
  value       = { for k, v in google_apigee_env_keystore.apigee_env_keystores : k => v.aliases if v.aliases != null && length(v.aliases) > 0 }
}
output "apigee_env_keystores_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_env_keystores, keyed the same as var.apigee_env_keystores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_env_keystore.apigee_env_keystores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_env_keystores_env_id" {
  description = "Map of env_id values across all apigee_env_keystores, keyed the same as var.apigee_env_keystores except keys with no env_id are omitted"
  value       = { for k, v in google_apigee_env_keystore.apigee_env_keystores : k => v.env_id if v.env_id != null && length(v.env_id) > 0 }
}
output "apigee_env_keystores_name" {
  description = "Map of name values across all apigee_env_keystores, keyed the same as var.apigee_env_keystores except keys with no name are omitted"
  value       = { for k, v in google_apigee_env_keystore.apigee_env_keystores : k => v.name if v.name != null && length(v.name) > 0 }
}

