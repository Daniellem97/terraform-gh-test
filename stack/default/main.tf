# module "stack" {
#   source = "../../"

#   namespace  = "INFRA"
#   branch     = "master"
#   name       = "test"
#   repository = "spacelift-terraform-modules"
# }

resource "random_uuid" "this" {
  keepers = {
    version = "foobar"
  }
}
