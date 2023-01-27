output "nat_id" {
  value = module.tf_project_vpc.nat_ids[*]
}

output "nat_public_ips" {
  value = module.tf_project_vpc.nat_public_ips[*]
}