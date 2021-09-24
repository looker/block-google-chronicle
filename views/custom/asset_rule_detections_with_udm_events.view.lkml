view: asset_rule_detections_with_udm_events {
  derived_table: {
    sql: WITH udm_events AS (SELECT
        COALESCE(udm_events.principal.hostname, udm_events.principal.ip[SAFE_OFFSET(0)]) AS asset,
        TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) AS time,
        COUNT(*) AS udm_events_count
      FROM `@{DATASET_NAME}.@{UDM_EVENTS}` AS udm_events
      WHERE
        (((COALESCE(udm_events.principal.hostname, udm_events.principal.ip[SAFE_OFFSET(0)])) IS NOT NULL))
        AND {% condition period_filter %} TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) {% endcondition %}
      GROUP BY 1, 2),
      rule_detections AS (SELECT
        COALESCE(rule_detections__detection__assets.hostname, rule_detections__detection__assets.asset_ip_address) AS asset,
        TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) AS time,
        COUNT(*) AS rule_detections_count
      FROM `@{DATASET_NAME}.@{RULE_DETECTIONS}` AS rule_detections
      LEFT JOIN UNNEST([rule_detections.detection]) as rule_detections__detection
      LEFT JOIN UNNEST([rule_detections__detection.detection_timestamp]) as rule_detections__detection__detection_timestamp
      LEFT JOIN UNNEST(rule_detections__detection.assets) as rule_detections__detection__assets
      WHERE
        (((COALESCE(rule_detections__detection__assets.hostname, rule_detections__detection__assets.asset_ip_address)) IS NOT NULL))
        AND {% condition period_filter %} TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) {% endcondition %}
      GROUP BY 1,2)
      SELECT * FROM @{RULE_DETECTIONS} FULL JOIN @{UDM_EVENTS} USING (asset, time) ORDER BY time DESC
       ;;
  }

  measure: count {
    type: count
  }

  dimension: asset {
    type: string
    sql: ${TABLE}.asset ;;
  }

  dimension_group: event_timestamp{
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      hour,
      minute,
      year
    ]
    datatype: timestamp
    sql: ${TABLE}.time ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
  }

  dimension: rule_detections_count {
    type: number
    sql: ${TABLE}.rule_detections_count ;;
  }

  dimension: udm_events_count {
    type: number
    sql: ${TABLE}.udm_events_count ;;
  }

}
