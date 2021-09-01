include: "/views/custom/global_threat_map_ioc.view.lkml"

explore: destination_geo_ip {
  extension: required
  hidden: yes
}
