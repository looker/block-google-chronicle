include: "/views/ingestion_stats.view"

view: +ingestion_stats {
  dimension_group: timestamp{
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
    sql: ${TABLE}.timestamp_sec ;;
  }

  measure: total_entry_number {
    type: sum
    sql: ${entry_number} ;;
  }

  measure: total_entry_number_in_million {
    type: sum
    sql: round(${entry_number}/1000000, 0) ;;
  }

  measure: total_entry_number_in_million_for_drill {
    type: sum
    sql: round(${entry_number}/1000000, 0) ;;
    link: {
      label: "Data Ingestion and Health Dashboard"
      url: "@{DATA_INGESTION_AND_HEALTH_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  measure: total_entry_number {
    type: sum
    sql: ${entry_number} ;;
  }

  measure: total_entry_number_in_million {
    type: sum
    sql: round(${entry_number}/1000000, 0) ;;
  }

  measure: total_entry_number_in_million_for_drill {
    type: sum
    sql: round(${entry_number}/1000000, 0) ;;
    link: {
      label: "Data Ingestion and Health Dashboard"
      url: "@{DATA_INGESTION_AND_HEALTH_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  measure: total_error_count_in_million {
    type: sum
    sql: round(${total_error_count}/1000000, 0) ;;
  }

  measure: total_size_bytes {
    type: sum
    sql: ${size_bytes} ;;
  }

  measure: total_size_bytes_GB {
    type: sum
    sql: round(${size_bytes}/1000/1000/1000, 2) ;;
  }

  measure: total_size_bytes_GB_for_drill {
    type: sum
    sql: round(${size_bytes}/1000/1000/1000, 2) ;;
    link: {
      label: "Data Ingestion and Health Dashboard"
      url: "@{DATA_INGESTION_AND_HEALTH_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  measure: total_size_bytes_GiB {
    type: sum
    sql: round(${size_bytes}/1024/1024/1024, 2) ;;
  }
  measure: total_events {
    type: sum
    sql: ${entry_number} ;;
  }

  measure: total_error_events {
    type: sum
    sql: ${total_error_count} ;;
  }

  measure: total_normalized_events {
    type: sum
    sql: ${normalized_event_count} ;;
  }


  measure: total_validation_error_events {
    type: sum
    sql: ${validation_error_count} ;;
  }

  measure: total_parsing_error_events {
    type: sum
    sql: ${parsing_error_count} ;;
  }

  # Breaks Events Over Time right now...
  dimension: period {
    type: string
    description: "The reporting period as selected by the Period Filter. Values - 'This Period' and 'Previous Period'.
    Apply Filter 'This Period' to get values from current period."
    sql:
      CASE
        WHEN {% date_start period_filter %} is not null AND {% date_end period_filter %} is not null /* date ranges or in the past x days */
          THEN
            CASE
              WHEN ${timestamp_raw} >= UNIX_SECONDS({% date_start period_filter %})
                AND ${timestamp_raw} <= UNIX_SECONDS({% date_end period_filter %})
                THEN 'This Period'
              WHEN ${timestamp_raw} >= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL 1 * (TIMESTAMP_DIFF({% date_start period_filter %},{% date_end period_filter %}, DAY))  DAY))
                AND ${timestamp_raw} <= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL -1 DAY))
                THEN 'Previous Period'
            END
        END ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
    sql: ${period} IS NOT NULL ;;
  }

  dimension: log_type_for_drill {
    type: string
    sql: ${log_type} ;;
    link: {
      label: "Data Ingestion and Health Dashboard"
      # url: "@{DATA_INGESTION_AND_HEALTH_DASHBOARD}"
      # icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }
}
