
module "vpn_connection" {
  source = "git::https://github.com/DNXLabs/terraform-aws-vpn-connection?ref=1.0.0"
  vpc_id                                    = ""
  vpn_gateway_amazon_side_asn               = 64512
  customer_gateway_bgp_asn                  = 65000
  customer_gateway_ip_address               = "172.0.0.1"
  route_table_ids                           = []
  vpn_connection_static_routes_only         = true
  vpn_connection_static_routes_destinations = ["10.80.1.0/24"]
  vpn_connection_tunnel1_inside_cidr        = null
  vpn_connection_tunnel2_inside_cidr        = null
  vpn_connection_tunnel1_preshared_key      = null
  vpn_connection_tunnel2_preshared_key      = null
}
