output "eks_addons_id" {
  description = "Map of id values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_addons_addon_name" {
  description = "Map of addon_name values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.addon_name if v.addon_name != null && length(v.addon_name) > 0 }
}
output "eks_addons_addon_version" {
  description = "Map of addon_version values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.addon_version if v.addon_version != null && length(v.addon_version) > 0 }
}
output "eks_addons_arn" {
  description = "Map of arn values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "eks_addons_cluster_name" {
  description = "Map of cluster_name values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "eks_addons_configuration_values" {
  description = "Map of configuration_values values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.configuration_values if v.configuration_values != null && length(v.configuration_values) > 0 }
}
output "eks_addons_created_at" {
  description = "Map of created_at values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "eks_addons_modified_at" {
  description = "Map of modified_at values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.modified_at if v.modified_at != null && length(v.modified_at) > 0 }
}
output "eks_addons_namespace_config" {
  description = "Map of namespace_config values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => one(v.namespace_config) if v.namespace_config != null && length(v.namespace_config) > 0 }
}
output "eks_addons_pod_identity_association" {
  description = "Map of pod_identity_association values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.pod_identity_association if v.pod_identity_association != null && length(v.pod_identity_association) > 0 }
}
output "eks_addons_preserve" {
  description = "Map of preserve values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.preserve if v.preserve != null }
}
output "eks_addons_region" {
  description = "Map of region values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_addons_resolve_conflicts_on_create" {
  description = "Map of resolve_conflicts_on_create values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.resolve_conflicts_on_create if v.resolve_conflicts_on_create != null && length(v.resolve_conflicts_on_create) > 0 }
}
output "eks_addons_resolve_conflicts_on_update" {
  description = "Map of resolve_conflicts_on_update values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.resolve_conflicts_on_update if v.resolve_conflicts_on_update != null && length(v.resolve_conflicts_on_update) > 0 }
}
output "eks_addons_service_account_role_arn" {
  description = "Map of service_account_role_arn values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.service_account_role_arn if v.service_account_role_arn != null && length(v.service_account_role_arn) > 0 }
}
output "eks_addons_tags" {
  description = "Map of tags values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eks_addons_tags_all" {
  description = "Map of tags_all values across all eks_addons, keyed the same as var.eks_addons"
  value       = { for k, v in aws_eks_addon.eks_addons : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

