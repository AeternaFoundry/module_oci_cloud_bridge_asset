resource "oci_cloud_bridge_asset" "cloud_bridge_assets" {
  for_each = var.cloud_bridge_assets

  asset_type          = each.value.asset_type
  compartment_id      = each.value.compartment_id
  external_asset_key  = each.value.external_asset_key
  inventory_id        = each.value.inventory_id
  source_key          = each.value.source_key
  asset_class_name    = each.value.asset_class_name
  asset_class_version = each.value.asset_class_version
  asset_details       = each.value.asset_details
  asset_source_ids    = each.value.asset_source_ids
  defined_tags        = each.value.defined_tags
  display_name        = each.value.display_name
  freeform_tags       = each.value.freeform_tags

  dynamic "attached_ebs_volumes_cost" {
    for_each = each.value.attached_ebs_volumes_cost != null ? [each.value.attached_ebs_volumes_cost] : []
    content {
      amount        = attached_ebs_volumes_cost.value.amount
      currency_code = attached_ebs_volumes_cost.value.currency_code
    }
  }

  dynamic "aws_ebs" {
    for_each = each.value.aws_ebs != null ? [each.value.aws_ebs] : []
    content {
      dynamic "attachments" {
        for_each = aws_ebs.value.attachments != null ? aws_ebs.value.attachments : []
        content {
          device                   = attachments.value.device
          instance_key             = attachments.value.instance_key
          is_delete_on_termination = attachments.value.is_delete_on_termination
          status                   = attachments.value.status
          volume_key               = attachments.value.volume_key
        }
      }
      availability_zone       = aws_ebs.value.availability_zone
      iops                    = aws_ebs.value.iops
      is_encrypted            = aws_ebs.value.is_encrypted
      is_multi_attach_enabled = aws_ebs.value.is_multi_attach_enabled
      size_in_gi_bs           = aws_ebs.value.size_in_gi_bs
      status                  = aws_ebs.value.status
      dynamic "tags" {
        for_each = aws_ebs.value.tags != null ? aws_ebs.value.tags : []
        content {
          key   = tags.value.key
          value = tags.value.value
        }
      }
      throughput  = aws_ebs.value.throughput
      volume_key  = aws_ebs.value.volume_key
      volume_type = aws_ebs.value.volume_type
    }
  }

  dynamic "aws_ec2" {
    for_each = each.value.aws_ec2 != null ? [each.value.aws_ec2] : []
    content {
      architecture                               = aws_ec2.value.architecture
      are_elastic_inference_accelerators_present = aws_ec2.value.are_elastic_inference_accelerators_present
      boot_mode                                  = aws_ec2.value.boot_mode
      capacity_reservation_key                   = aws_ec2.value.capacity_reservation_key
      image_key                                  = aws_ec2.value.image_key
      instance_key                               = aws_ec2.value.instance_key
      instance_lifecycle                         = aws_ec2.value.instance_lifecycle
      instance_type                              = aws_ec2.value.instance_type
      ip_address                                 = aws_ec2.value.ip_address
      ipv6address                                = aws_ec2.value.ipv6address
      is_enclave_options                         = aws_ec2.value.is_enclave_options
      is_hibernation_options                     = aws_ec2.value.is_hibernation_options
      is_source_dest_check                       = aws_ec2.value.is_source_dest_check
      is_spot_instance                           = aws_ec2.value.is_spot_instance
      kernel_key                                 = aws_ec2.value.kernel_key
      licenses                                   = aws_ec2.value.licenses
      maintenance_options                        = aws_ec2.value.maintenance_options
      monitoring                                 = aws_ec2.value.monitoring
      dynamic "network_interfaces" {
        for_each = aws_ec2.value.network_interfaces != null ? aws_ec2.value.network_interfaces : []
        content {
          dynamic "association" {
            for_each = network_interfaces.value.association != null ? [network_interfaces.value.association] : []
            content {
              carrier_ip        = association.value.carrier_ip
              customer_owned_ip = association.value.customer_owned_ip
              ip_owner_key      = association.value.ip_owner_key
              public_dns_name   = association.value.public_dns_name
              public_ip         = association.value.public_ip
            }
          }
          dynamic "attachment" {
            for_each = network_interfaces.value.attachment != null ? [network_interfaces.value.attachment] : []
            content {
              attachment_key           = attachment.value.attachment_key
              device_index             = attachment.value.device_index
              is_delete_on_termination = attachment.value.is_delete_on_termination
              network_card_index       = attachment.value.network_card_index
              status                   = attachment.value.status
              time_attach              = attachment.value.time_attach
            }
          }
          description           = network_interfaces.value.description
          interface_type        = network_interfaces.value.interface_type
          ipv4prefixes          = network_interfaces.value.ipv4prefixes
          ipv6addresses         = network_interfaces.value.ipv6addresses
          ipv6prefixes          = network_interfaces.value.ipv6prefixes
          is_source_dest_check  = network_interfaces.value.is_source_dest_check
          mac_address           = network_interfaces.value.mac_address
          network_interface_key = network_interfaces.value.network_interface_key
          owner_key             = network_interfaces.value.owner_key
          dynamic "private_ip_addresses" {
            for_each = network_interfaces.value.private_ip_addresses != null ? network_interfaces.value.private_ip_addresses : []
            content {
              dynamic "association" {
                for_each = private_ip_addresses.value.association != null ? [private_ip_addresses.value.association] : []
                content {
                  carrier_ip        = association.value.carrier_ip
                  customer_owned_ip = association.value.customer_owned_ip
                  ip_owner_key      = association.value.ip_owner_key
                  public_dns_name   = association.value.public_dns_name
                  public_ip         = association.value.public_ip
                }
              }
              is_primary         = private_ip_addresses.value.is_primary
              private_dns_name   = private_ip_addresses.value.private_dns_name
              private_ip_address = private_ip_addresses.value.private_ip_address
            }
          }
          dynamic "security_groups" {
            for_each = network_interfaces.value.security_groups != null ? network_interfaces.value.security_groups : []
            content {
              group_key  = security_groups.value.group_key
              group_name = security_groups.value.group_name
            }
          }
          status     = network_interfaces.value.status
          subnet_key = network_interfaces.value.subnet_key
        }
      }
      dynamic "placement" {
        for_each = aws_ec2.value.placement != null ? [aws_ec2.value.placement] : []
        content {
          affinity                = placement.value.affinity
          availability_zone       = placement.value.availability_zone
          group_name              = placement.value.group_name
          host_key                = placement.value.host_key
          host_resource_group_arn = placement.value.host_resource_group_arn
          partition_number        = placement.value.partition_number
          spread_domain           = placement.value.spread_domain
          tenancy                 = placement.value.tenancy
        }
      }
      private_dns_name   = aws_ec2.value.private_dns_name
      private_ip_address = aws_ec2.value.private_ip_address
      root_device_name   = aws_ec2.value.root_device_name
      root_device_type   = aws_ec2.value.root_device_type
      dynamic "security_groups" {
        for_each = aws_ec2.value.security_groups != null ? aws_ec2.value.security_groups : []
        content {
          group_key  = security_groups.value.group_key
          group_name = security_groups.value.group_name
        }
      }
      sriov_net_support = aws_ec2.value.sriov_net_support
      dynamic "state" {
        for_each = aws_ec2.value.state != null ? [aws_ec2.value.state] : []
        content {
          code = state.value.code
          name = state.value.name
        }
      }
      subnet_key = aws_ec2.value.subnet_key
      dynamic "tags" {
        for_each = aws_ec2.value.tags != null ? aws_ec2.value.tags : []
        content {
          key   = tags.value.key
          value = tags.value.value
        }
      }
      time_launch         = aws_ec2.value.time_launch
      tpm_support         = aws_ec2.value.tpm_support
      virtualization_type = aws_ec2.value.virtualization_type
      vpc_key             = aws_ec2.value.vpc_key
    }
  }

  dynamic "aws_ec2cost" {
    for_each = each.value.aws_ec2cost != null ? [each.value.aws_ec2cost] : []
    content {
      amount        = aws_ec2cost.value.amount
      currency_code = aws_ec2cost.value.currency_code
    }
  }

  dynamic "compute" {
    for_each = each.value.compute != null ? [each.value.compute] : []
    content {
      connected_networks = compute.value.connected_networks
      cores_count        = compute.value.cores_count
      cpu_model          = compute.value.cpu_model
      description        = compute.value.description
      dynamic "disks" {
        for_each = compute.value.disks != null ? compute.value.disks : []
        content {
          boot_order      = disks.value.boot_order
          is_cbt_enabled  = disks.value.is_cbt_enabled
          location        = disks.value.location
          name            = disks.value.name
          persistent_mode = disks.value.persistent_mode
          size_in_mbs     = disks.value.size_in_mbs
          uuid            = disks.value.uuid
          uuid_lun        = disks.value.uuid_lun
        }
      }
      disks_count = compute.value.disks_count
      dns_name    = compute.value.dns_name
      firmware    = compute.value.firmware
      dynamic "gpu_devices" {
        for_each = compute.value.gpu_devices != null ? compute.value.gpu_devices : []
        content {
          cores_count   = gpu_devices.value.cores_count
          description   = gpu_devices.value.description
          manufacturer  = gpu_devices.value.manufacturer
          memory_in_mbs = gpu_devices.value.memory_in_mbs
          name          = gpu_devices.value.name
        }
      }
      gpu_devices_count   = compute.value.gpu_devices_count
      guest_state         = compute.value.guest_state
      hardware_version    = compute.value.hardware_version
      host_name           = compute.value.host_name
      is_pmem_enabled     = compute.value.is_pmem_enabled
      is_tpm_enabled      = compute.value.is_tpm_enabled
      latency_sensitivity = compute.value.latency_sensitivity
      memory_in_mbs       = compute.value.memory_in_mbs
      dynamic "nics" {
        for_each = compute.value.nics != null ? compute.value.nics : []
        content {
          ip_addresses     = nics.value.ip_addresses
          label            = nics.value.label
          mac_address      = nics.value.mac_address
          mac_address_type = nics.value.mac_address_type
          network_name     = nics.value.network_name
          switch_name      = nics.value.switch_name
        }
      }
      nics_count = compute.value.nics_count
      dynamic "nvdimm_controller" {
        for_each = compute.value.nvdimm_controller != null ? [compute.value.nvdimm_controller] : []
        content {
          bus_number = nvdimm_controller.value.bus_number
          label      = nvdimm_controller.value.label
        }
      }
      dynamic "nvdimms" {
        for_each = compute.value.nvdimms != null ? compute.value.nvdimms : []
        content {
          controller_key = nvdimms.value.controller_key
          label          = nvdimms.value.label
          unit_number    = nvdimms.value.unit_number
        }
      }
      operating_system         = compute.value.operating_system
      operating_system_version = compute.value.operating_system_version
      pmem_in_mbs              = compute.value.pmem_in_mbs
      power_state              = compute.value.power_state
      primary_ip               = compute.value.primary_ip
      dynamic "scsi_controller" {
        for_each = compute.value.scsi_controller != null ? [compute.value.scsi_controller] : []
        content {
          label       = scsi_controller.value.label
          shared_bus  = scsi_controller.value.shared_bus
          unit_number = scsi_controller.value.unit_number
        }
      }
      storage_provisioned_in_mbs = compute.value.storage_provisioned_in_mbs
      threads_per_core_count     = compute.value.threads_per_core_count
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vm" {
    for_each = each.value.vm != null ? [each.value.vm] : []
    content {
      hypervisor_host    = vm.value.hypervisor_host
      hypervisor_vendor  = vm.value.hypervisor_vendor
      hypervisor_version = vm.value.hypervisor_version
    }
  }

  dynamic "vmware_vcenter" {
    for_each = each.value.vmware_vcenter != null ? [each.value.vmware_vcenter] : []
    content {
      data_center     = vmware_vcenter.value.data_center
      vcenter_key     = vmware_vcenter.value.vcenter_key
      vcenter_version = vmware_vcenter.value.vcenter_version
    }
  }

  dynamic "vmware_vm" {
    for_each = each.value.vmware_vm != null ? [each.value.vmware_vm] : []
    content {
      cluster         = vmware_vm.value.cluster
      customer_fields = vmware_vm.value.customer_fields
      dynamic "customer_tags" {
        for_each = vmware_vm.value.customer_tags != null ? vmware_vm.value.customer_tags : []
        content {
          description = customer_tags.value.description
          name        = customer_tags.value.name
        }
      }
      fault_tolerance_bandwidth         = vmware_vm.value.fault_tolerance_bandwidth
      fault_tolerance_secondary_latency = vmware_vm.value.fault_tolerance_secondary_latency
      fault_tolerance_state             = vmware_vm.value.fault_tolerance_state
      instance_uuid                     = vmware_vm.value.instance_uuid
      is_disks_cbt_enabled              = vmware_vm.value.is_disks_cbt_enabled
      is_disks_uuid_enabled             = vmware_vm.value.is_disks_uuid_enabled
      path                              = vmware_vm.value.path
      vmware_tools_status               = vmware_vm.value.vmware_tools_status
    }
  }
}

