# Define your variables in here.
variable "tenant_id" {
  description = "the dn of ACI tenant"
}
variable "openports" {
  default = {
    http = {
      from_port = "80",
      to_port   = "80"
      protocol  = "tcp",
    },
    ssh = {
      from_port = "22",
      to_port   = "22",
      protocol  = "tcp",
    }
  }
  description = "List of ports that should be open."
}
