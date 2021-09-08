view: job_metadata {
  sql_table_name: `@{DATASET_NAME}.@{JOB_METADATA}`
    ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: event_time_bucket {
    type: number
    sql: ${TABLE}.event_time_bucket ;;
  }

  dimension: export_path {
    type: string
    sql: ${TABLE}.export_path ;;
  }

  dimension: partition_name {
    type: string
    sql: ${TABLE}.partition_name ;;
  }

  measure: count {
    type: count
    drill_fields: [partition_name]
  }
}
