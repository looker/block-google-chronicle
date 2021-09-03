view: ingestion_stats {
  sql_table_name: `@{DATASET_NAME}.@{INGESTION_STATS}`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

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

  measure: count {
    type: count
    drill_fields: []
  }
}
