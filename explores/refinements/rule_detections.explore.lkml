include: "/views/refinements/rule_detections.view.lkml"
include: "/explores/rule_detections.explore.lkml"

explore: +rule_detections {
  # Overwriting the generated (broken) joins for some nested repeated fields.
  join: rule_detections__detection__events__about__ip {
    view_label: "Udm Events: About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.ip}) as rule_detections__detection__events__about__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__mac {
    view_label: "Udm Events: About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.mac}) as rule_detections__detection__events__about__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__ip {
    view_label: "Udm Events: Intermediary Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.ip}) as rule_detections__detection__events__intermediary__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__mac {
    view_label: "Udm Events: Intermediary Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.mac}) as rule_detections__detection__events__intermediary__mac ;;
    relationship: one_to_many
  }
}
