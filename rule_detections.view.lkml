view: rule_detections {
  sql_table_name: `@{DATASET_NAME}.@{RULE_DETECTIONS}`
    ;;

  dimension: detection {
    hidden: yes
    sql: ${TABLE}.detection ;;
  }

  dimension: rule_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/ruleDetections?ruleId={{rule_detections.rule_id._value}}"
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
  }

  dimension: rule_text {
    type: string
    sql: ${TABLE}.rule_text ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: version_timestamp {
    hidden: yes
    sql: ${TABLE}.version_timestamp ;;
  }

  measure: count {
    type: count
  }

  measure: count_for_drill {
    type: count
    link: {
      label: "Rule Detections Dashboard"
      url: "@{RULE_DETECTIONS_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }
}

view: rule_detections__detection__detection_timestamp {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
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
    sql: ${seconds} ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
    sql: ${period} IS NOT NULL ;;
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
}


view: rule_detections__detection {

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assets {
    hidden: yes
    sql: ${TABLE}.assets ;;
  }

  dimension: commit_timestamp {
    hidden: yes
    sql: ${TABLE}.commit_timestamp ;;
  }

  dimension: detection_timestamp {
    hidden: yes
    sql: ${TABLE}.detection_timestamp ;;
  }

  dimension: events {
    hidden: yes
    sql: ${TABLE}.events ;;
  }

  dimension: fields {
    hidden: yes
    sql: ${TABLE}.fields ;;
  }

  dimension: rule_type {
    type: number
    sql: ${TABLE}.rule_type ;;
  }

  dimension: time_window {
    hidden: yes
    sql: ${TABLE}.time_window ;;
  }

  dimension: users {
    hidden: yes
    sql: ${TABLE}.users ;;
  }
}

view: rule_detections__detection__assets {
  dimension: asset_ip_address {
    type: string
    primary_key: yes
    sql: ${TABLE}.asset_ip_address ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
    link: {
      label: "Asset Lookup on {{value}}"
      url: "@{ASSET_LOOKUP}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  dimension: asset {
    type: string
    sql: COALESCE(${TABLE}.hostname, ${TABLE}.asset_ip_address) ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }
}


view: rule_detections__detection__fields {
  dimension: bool_val {
    type: yesno
    sql: ${TABLE}.bool_val ;;
  }

  dimension: bytes_val {
    type: string
    sql: ${TABLE}.bytes_val ;;
  }

  dimension: double_val {
    type: number
    sql: ${TABLE}.double_val ;;
  }

  dimension: int64_val {
    type: number
    sql: ${TABLE}.int64_val ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: string_val {
    type: string
    sql: ${TABLE}.string_val ;;
  }

  dimension: uint64_val {
    type: number
    sql: ${TABLE}.uint64_val ;;
  }
}

view: rule_detections__detection__users {
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: user_name {
    type: string
    primary_key: yes
    sql: ${TABLE}.user_name ;;
    link: {
      label: "User Lookup on {{value}}"
      url: "@{USER_LOOKUP}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}
