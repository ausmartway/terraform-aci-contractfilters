# Define your outputs here
output "filterList" {
  value       = [
      for filter in aci_filter.filters : filter.id
  ]

  description = "list of aci_filter.id"
}
