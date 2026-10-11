resource "google_apigee_env_keystore" "apigee_env_keystores" {
  for_each = var.apigee_env_keystores

  env_id          = each.value.env_id
  name            = each.value.name
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

