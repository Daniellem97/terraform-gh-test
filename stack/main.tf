resource "spacelift_stack" "this" {
  bitbucket_datacenter {
    namespace = var.namespace
  }

  administrative        = var.administrative
  autodeploy            = var.autodeploy
  autoretry             = var.autoretry
  branch                = var.branch
  description           = var.description
  labels                = var.labels
  manage_state          = var.manage_state
  name                  = var.name
  project_root          = var.project_root
  protect_from_deletion = var.protect_from_deletion
  repository            = var.repository
  space_id              = var.space_id
  terraform_version     = var.terraform_version
}

resource "spacelift_aws_integration_attachment" "this" {

  count = var.integration_id != null ? 1 : 0

  integration_id = var.integration_id
  stack_id       = spacelift_stack.s3-this.id
  read           = var.read
  write          = var.write
}
