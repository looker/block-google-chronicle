include: "/views/rule_detections.view.lkml"

view: +rule_detections {
  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${TABLE}.detection.version_timestamp.seconds, ${TABLE}.detection.version_timestamp.nanos, ${TABLE}.detection.id);;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/ruleDetections?ruleId={{rule_detections.rule_id._value}}"
      icon_url: "@{RULE_DETECTIONS_PAGE_ICON_URL}"
    }
  }

  measure: count_for_drill {
    type: count
    link: {
      label: "Rule Detections Dashboard"
      url: "@{RULE_DETECTIONS_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
    sql: ${period} IS NOT NULL ;;
  }

  dimension: severity {
    type: string
    sql: UPPER(${TABLE}.severity) ;;
  }

# ${event_timestamp_raw} is the timestamp dimension we are building our reporting period off of

  dimension: period {
    type: string
    description: "The reporting period as selected by the Period Filter. Values - 'This Period' and 'Previous Period'.
    Apply Filter 'This Period' to get values from current period."
    sql:
      CASE
        WHEN {% date_start period_filter %} is not null AND {% date_end period_filter %} is not null /* date ranges or in the past x days */
          THEN
            CASE
              WHEN ${event_timestamp_raw} >= UNIX_SECONDS({% date_start period_filter %})
                AND ${event_timestamp_raw} <= UNIX_SECONDS({% date_end period_filter %})
                THEN 'This Period'
              WHEN ${event_timestamp_raw} >= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL 1 * (TIMESTAMP_DIFF({% date_start period_filter %},{% date_end period_filter %}, DAY)) DAY))
                AND ${event_timestamp_raw} <= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL -1 DAY))
                THEN 'Previous Period'
            END
        END ;;
  }

  dimension_group: event_timestamp  {
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
    datatype: epoch
    sql: ${detection__detection_timestamp__seconds} ;;
  }
}

# Adding views to fix the generated (broken) joins for some nested repeated fields.
view: +rule_detections__detection__events__about {
  dimension: ip {
    hidden: yes
    sql: ${TABLE}.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: mac {
    hidden: yes
    sql: ${TABLE}.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }
}

view: +rule_detections__detection__events__intermediary {
  dimension: ip {
    hidden: yes
    sql: ${TABLE}.ip ;;
    group_label: "Intermediary"
    group_item_label: "IP"
  }

  dimension: mac {
    hidden: yes
    sql: ${TABLE}.mac ;;
    group_label: "Intermediary"
    group_item_label: "Mac"
  }
}
