output "cloud_bridge_assets_id" {
  description = "Map of id values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_bridge_assets_asset_class_name" {
  description = "Map of asset_class_name values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no asset_class_name are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.asset_class_name if v.asset_class_name != null && length(v.asset_class_name) > 0 }
}
output "cloud_bridge_assets_asset_class_version" {
  description = "Map of asset_class_version values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no asset_class_version are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.asset_class_version if v.asset_class_version != null && length(v.asset_class_version) > 0 }
}
output "cloud_bridge_assets_asset_details" {
  description = "Map of asset_details values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no asset_details are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.asset_details if v.asset_details != null && length(v.asset_details) > 0 }
}
output "cloud_bridge_assets_asset_source_ids" {
  description = "Map of asset_source_ids values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no asset_source_ids are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.asset_source_ids if v.asset_source_ids != null && length(v.asset_source_ids) > 0 }
}
output "cloud_bridge_assets_asset_type" {
  description = "Map of asset_type values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no asset_type are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.asset_type if v.asset_type != null && length(v.asset_type) > 0 }
}
output "cloud_bridge_assets_attached_ebs_volumes_cost" {
  description = "Map of attached_ebs_volumes_cost values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no attached_ebs_volumes_cost are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.attached_ebs_volumes_cost) if v.attached_ebs_volumes_cost != null && length(v.attached_ebs_volumes_cost) > 0 }
}
output "cloud_bridge_assets_aws_ebs" {
  description = "Map of aws_ebs values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no aws_ebs are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.aws_ebs) if v.aws_ebs != null && length(v.aws_ebs) > 0 }
}
output "cloud_bridge_assets_aws_ec2" {
  description = "Map of aws_ec2 values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no aws_ec2 are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.aws_ec2) if v.aws_ec2 != null && length(v.aws_ec2) > 0 }
}
output "cloud_bridge_assets_aws_ec2cost" {
  description = "Map of aws_ec2cost values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no aws_ec2cost are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.aws_ec2cost) if v.aws_ec2cost != null && length(v.aws_ec2cost) > 0 }
}
output "cloud_bridge_assets_compartment_id" {
  description = "Map of compartment_id values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_bridge_assets_compute" {
  description = "Map of compute values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no compute are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.compute) if v.compute != null && length(v.compute) > 0 }
}
output "cloud_bridge_assets_defined_tags" {
  description = "Map of defined_tags values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_bridge_assets_display_name" {
  description = "Map of display_name values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_bridge_assets_environment_type" {
  description = "Map of environment_type values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no environment_type are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.environment_type if v.environment_type != null && length(v.environment_type) > 0 }
}
output "cloud_bridge_assets_external_asset_key" {
  description = "Map of external_asset_key values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no external_asset_key are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.external_asset_key if v.external_asset_key != null && length(v.external_asset_key) > 0 }
}
output "cloud_bridge_assets_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_bridge_assets_inventory_id" {
  description = "Map of inventory_id values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no inventory_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.inventory_id if v.inventory_id != null && length(v.inventory_id) > 0 }
}
output "cloud_bridge_assets_source_key" {
  description = "Map of source_key values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no source_key are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.source_key if v.source_key != null && length(v.source_key) > 0 }
}
output "cloud_bridge_assets_state" {
  description = "Map of state values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no state are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_bridge_assets_system_tags" {
  description = "Map of system_tags values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_bridge_assets_time_created" {
  description = "Map of time_created values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_bridge_assets_time_updated" {
  description = "Map of time_updated values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "cloud_bridge_assets_vm" {
  description = "Map of vm values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no vm are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.vm) if v.vm != null && length(v.vm) > 0 }
}
output "cloud_bridge_assets_vmware_vcenter" {
  description = "Map of vmware_vcenter values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no vmware_vcenter are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.vmware_vcenter) if v.vmware_vcenter != null && length(v.vmware_vcenter) > 0 }
}
output "cloud_bridge_assets_vmware_vm" {
  description = "Map of vmware_vm values across all cloud_bridge_assets, keyed the same as var.cloud_bridge_assets except keys with no vmware_vm are omitted"
  value       = { for k, v in oci_cloud_bridge_asset.cloud_bridge_assets : k => one(v.vmware_vm) if v.vmware_vm != null && length(v.vmware_vm) > 0 }
}

