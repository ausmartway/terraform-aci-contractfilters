# Define your outputs here
output "filterList" {
  value       = [aci_filter.filter[*].id]
  description = "list of aci_filter.id"
}
