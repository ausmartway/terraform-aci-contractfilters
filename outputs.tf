# Define your outputs here
output "filterList" {
  value       = [
      for f in aci_filter.filter : f.id
  ]

  description = "list of aci_filter.id"
}
