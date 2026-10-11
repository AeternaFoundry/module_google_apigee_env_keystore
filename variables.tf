variable "apigee_env_keystores" {
  description = <<EOT
Map of apigee_env_keystores, attributes below
Required:
    - env_id
    - name
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    env_id          = string
    name            = string
    deletion_policy = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

