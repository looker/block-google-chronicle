explore: rule_detections_core {
  join: rule_detections__detection__detection_timestamp {
    view_label: "Rule Detections: Detection Detection Timestamp"
    sql: LEFT JOIN UNNEST([${rule_detections__detection.detection_timestamp}]) as rule_detections__detection__detection_timestamp ;;
    relationship: one_to_one
  }

  join: rule_detections__detection {
    view_label: "Rule Detections: Detection"
    sql: LEFT JOIN UNNEST([${rule_detections.detection}]) as rule_detections__detection ;;
    relationship: one_to_one
  }

  join: rule_detections__detection__assets {
    view_label: "Rule Detections: Detection Assets"
    sql: LEFT JOIN UNNEST(${rule_detections__detection.assets}) as rule_detections__detection__assets ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__fields {
    view_label: "Rule Detections: Detection Fields"
    sql: LEFT JOIN UNNEST(${rule_detections__detection.fields}) as rule_detections__detection__fields ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__users {
    view_label: "Rule Detections: Detection Users"
    sql: LEFT JOIN UNNEST(${rule_detections__detection.users}) as rule_detections__detection__users ;;
    relationship: one_to_many
  }

}
