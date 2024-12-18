run "check_not_provisioned_managed_gpt_4o" {
  command = plan

  assert {
    condition = !contains(
      ["GlobalProvisionedManaged", "DataZoneProvisionedManaged", "ProvisionedManaged"],
      module.aoai.gpt_4o_sku_name
    )
    error_message = "The sku name must not be ProvisionedManaged"
  }
}

run "check_not_provisioned_managed_gpt_4o_mini" {
  command = plan

  assert {
    condition = !contains(
      ["GlobalProvisionedManaged", "DataZoneProvisionedManaged", "ProvisionedManaged"],
      module.aoai.gpt_4o_mini_sku_name
    )
    error_message = "The sku name must not be ProvisionedManaged"
  }
}