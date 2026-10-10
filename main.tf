resource "aws_codecatalyst_dev_environment" "codecatalyst_dev_environments" {
  for_each = var.codecatalyst_dev_environments

  instance_type              = each.value.instance_type
  project_name               = each.value.project_name
  space_name                 = each.value.space_name
  alias                      = each.value.alias
  inactivity_timeout_minutes = each.value.inactivity_timeout_minutes
  region                     = each.value.region

  ides {
    name    = each.value.ides.name
    runtime = each.value.ides.runtime
  }

  persistent_storage {
    size = each.value.persistent_storage.size
  }

  dynamic "repositories" {
    for_each = each.value.repositories != null ? each.value.repositories : []
    content {
      branch_name     = repositories.value.branch_name
      repository_name = repositories.value.repository_name
    }
  }
}

