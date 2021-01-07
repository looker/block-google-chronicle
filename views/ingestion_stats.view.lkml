include: "//@{CONFIG_PROJECT_NAME}/views/ingestion_stats.view.lkml"


view: ingestion_stats {
  extends: [ingestion_stats_config]
}

###################################################

view: ingestion_stats_core {
  sql_table_name: `@{DATASET_NAME}.@{INGESTION_STATS}`
    ;;

  dimension: enrichment_error_count {
    type: number
    sql: ${TABLE}.enrichment_error_count ;;
  }

  dimension: enrichment_error_ratio {
    type: number
    sql: ${TABLE}.enrichment_error_ratio ;;
  }

  dimension: entry_number {
    type: number
    sql: ${TABLE}.entry_number ;;
  }

  dimension: log_type {
    type: string
    sql: ${TABLE}.log_type ;;
  }

  dimension: log_type_for_drill {
    type: string
    sql: ${log_type} ;;
    link: {
      label: "Data Ingestion and Health Dashboard"
      url: "@{DATA_INGESTION_AND_HEALTH_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  dimension: normalization_ratio {
    type: number
    sql: ${TABLE}.normalization_ratio ;;
  }

  dimension: normalized_event_count {
    type: number
    sql: ${TABLE}.normalized_event_count ;;
  }

  dimension: parsing_error_count {
    type: number
    sql: ${TABLE}.parsing_error_count ;;
  }

  dimension: parsing_error_ratio {
    type: number
    sql: ${TABLE}.parsing_error_ratio ;;
  }

  dimension: size_bytes {
    type: number
    sql: ${TABLE}.size_bytes ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: time_bucket {
    type: string
    sql: ${TABLE}.time_bucket ;;
  }

  dimension: timestamp_sec {
    type: number
    sql: ${TABLE}.timestamp_sec ;;
  }

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

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
    sql: ${period} IS NOT NULL ;;
  }

# ${timestamp_raw} is the timestamp dimension we are building our reporting period off of

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


  dimension: total_error_count {
    type: number
    sql: ${TABLE}.total_error_count ;;
  }

  dimension: total_error_ratio {
    type: number
    sql: ${TABLE}.total_error_ratio ;;
  }

  dimension: validation_error_count {
    type: number
    sql: ${TABLE}.validation_error_count ;;
  }

  dimension: validation_error_ratio {
    type: number
    sql: ${TABLE}.validation_error_ratio ;;
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

  measure: count {
    type: count

  }
}
