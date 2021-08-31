view: udm_events_aggregates {
  sql_table_name: @{DATASET_NAME}.@{UDM_EVENTS_AGGREGRATES};;

  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension_group: event_hour {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_hour ;;
  }

  dimension: principal_ip {
    type: string
    sql: ${TABLE}.principal_ip ;;
  }

  dimension: principal_userid {
    type: string
    sql: ${TABLE}.principal_userid ;;
  }

  dimension: userid_for_drill {
    type: string
    sql: ${TABLE}.principal_userid ;;
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/userResults?userName={{value}}"
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
  }

  dimension: target_application {
    type: string
    sql: ${TABLE}.target_application ;;
  }

  dimension: target_hostname {
    type: string
    sql: ${TABLE}.target_hostname ;;
  }

  dimension: target_ip {
    type: string
    sql: ${TABLE}.target_ip ;;
  }

  dimension: target_userid {
    type: string
    sql: ${TABLE}.target_userid ;;
  }

  measure: count {
    type: count
  }
}
