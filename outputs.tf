output "codecatalyst_dev_environments_id" {
  description = "Map of id values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codecatalyst_dev_environments_alias" {
  description = "Map of alias values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "codecatalyst_dev_environments_ides" {
  description = "Map of ides values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => one(v.ides) if v.ides != null && length(v.ides) > 0 }
}
output "codecatalyst_dev_environments_inactivity_timeout_minutes" {
  description = "Map of inactivity_timeout_minutes values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.inactivity_timeout_minutes if v.inactivity_timeout_minutes != null }
}
output "codecatalyst_dev_environments_instance_type" {
  description = "Map of instance_type values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "codecatalyst_dev_environments_persistent_storage" {
  description = "Map of persistent_storage values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => one(v.persistent_storage) if v.persistent_storage != null && length(v.persistent_storage) > 0 }
}
output "codecatalyst_dev_environments_project_name" {
  description = "Map of project_name values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.project_name if v.project_name != null && length(v.project_name) > 0 }
}
output "codecatalyst_dev_environments_region" {
  description = "Map of region values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codecatalyst_dev_environments_repositories" {
  description = "Map of repositories values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.repositories if v.repositories != null && length(v.repositories) > 0 }
}
output "codecatalyst_dev_environments_space_name" {
  description = "Map of space_name values across all codecatalyst_dev_environments, keyed the same as var.codecatalyst_dev_environments"
  value       = { for k, v in aws_codecatalyst_dev_environment.codecatalyst_dev_environments : k => v.space_name if v.space_name != null && length(v.space_name) > 0 }
}

