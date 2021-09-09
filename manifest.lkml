constant: CONNECTION_NAME{
  value: "your-bq-connection"
  export: override_required
}

constant: DATASET_NAME{
  value: "dataset"
  export: override_required
}

constant: CHRONICLE_URL{
  value: "https://your_chronicle_url.backstory.chronicle.security"
  export: override_required
}

constant: MODEL_NAME{
  value: "block_google_chronicle_v2"
}

constant: IOC_MATCHES{
  value: "ioc_matches"
}

constant: INGESTION_STATS{
  value: "ingestion_stats"
}

constant: UDM_MAPPINGS{
  value: "udm_enum_value_to_name_mapping"
}

constant: RULE_DETECTIONS{
  value: "rule_detections"
}

constant: UDM_EVENTS{
  value: "udm_events"
}

constant: UDM_EVENTS_AGGREGRATES{
  value: "udm_events_aggregates"
}

constant: JOB_METADATA {
  value: "job_metadata"
}

constant: DATA_INGESTION_AND_HEALTH_DASHBOARD{
  value: "/dashboards-next/@{MODEL_NAME}::data_ingestion_and_health"
}

constant: RULE_DETECTIONS_DASHBOARD{
  value: "/dashboards-next/@{MODEL_NAME}::rule_detections"
}

constant: IOC_MATCHES_DASHBOARD{
  value: "/dashboards-next/@{MODEL_NAME}::ioc_matches"
}

constant: ASSET_LOOKUP{
  value: "/dashboards-next/@{MODEL_NAME}::asset_lookup?Asset={{value}}"
}

constant: USER_LOOKUP{
  value: "/dashboards-next/@{MODEL_NAME}::user_lookup?User ID={{value}}"
}

constant: DOMAIN_LOOKUP{
  value: "/dashboards-next/@{MODEL_NAME}::domain_lookup?Domain=%25{{value}}"
}

constant: DASHBOARD_ICON_URL{
  value: "https://www.google.com/s2/favicons?domain=looker.com"
}

constant: CHRONICLE_ICON_URL{
  value: "https://storage.googleapis.com/bml-image/Chronicle-RGB-Icon-Color.png"
}
