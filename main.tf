##main.tf
#HTTP Traffic
resource "aci_filter" "filter" {
  for_each  = var.openports
  name      = "filter-${each.key}"
  tenant_dn = var.tenant_id
}

resource "aci_filter_entry" "filter_entry" {
  for_each    = var.openports
  filter_dn   = aci_filter.filter[each.key].id
  name        = each.key
  ether_t     = "ip"
  prot        = each.value.protocol
  d_from_port = each.value.from_port
  d_to_port   = each.value.to_port
}