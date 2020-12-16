connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"
include: "*.dashboard"
include: "*.explore.lkml"

include: "//@{CONFIG_PROJECT_NAME}/views/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"


datagroup: block_google_chronicle_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: block_google_chronicle_default_datagroup

explore: ingestion_stats {
  extends: [ingestion_stats_config]
}

explore: user_login_source_geo_ip {
  extends: [user_login_source_geo_ip_config]
}

explore: destination_geo_ip {
  extends: [destination_geo_ip_config]
}

explore: global_threat_map_ioc {
  extends: [global_threat_map_ioc_config]
}

explore: asset_rule_detections_with_udm_events {
  extends: [asset_rule_detections_with_udm_events_config]
}

explore: user_rule_detections_with_udm_events {
  extends: [user_rule_detections_with_udm_events_config]
}

explore: ioc_matches {
  extends: [ioc_matches_config]
}

explore: rule_detections {
  extends: [rule_detections_config]
}

explore: udm_enum_value_to_name_mapping {
  extends: [udm_enum_value_to_name_mapping_config]
}

explore: udm_events {
  extends: [udm_events_config]
}
