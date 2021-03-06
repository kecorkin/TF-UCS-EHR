resource "intersight_fcpool_pool" "nvme_pool" {
  name        = var.name_of_nvme_pool
  description = var.description_of_nvme_pool

  assignment_order = "default"
  pool_purpose     = var.type_of_nvme_pool

  id_blocks = [{
    from = var.nvme_pool_start
    size = var.size_of_nvme_pool
  additional_properties = "", to = "", class_id = "fcpool.Block", object_type = "fcpool.Block" }]

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}