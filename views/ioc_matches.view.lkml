view: ioc_matches {
  sql_table_name: `@{DATASET_NAME}.@{IOC_MATCHES}`
    ;;

  dimension: asset__asset_ip_address {
    type: string
    sql: ${TABLE}.asset.asset_ip_address ;;
    group_label: "Asset"
    group_item_label: "Asset IP Address"
  }

  dimension: asset__hostname {
    type: string
    sql: ${TABLE}.asset.hostname ;;
    group_label: "Asset"
    group_item_label: "Hostname"
  }

  dimension: asset__is_any_namespace {
    type: yesno
    sql: ${TABLE}.asset.is_any_namespace ;;
    group_label: "Asset"
    group_item_label: "Is Any Namespace"
  }

  dimension: asset__is_namespace_ignored {
    type: yesno
    sql: ${TABLE}.asset.is_namespace_ignored ;;
    group_label: "Asset"
    group_item_label: "Is Namespace Ignored"
  }

  dimension: asset__mac {
    type: string
    sql: ${TABLE}.asset.mac ;;
    group_label: "Asset"
    group_item_label: "Mac"
  }

  dimension: asset__namespace {
    type: string
    sql: ${TABLE}.asset.namespace ;;
    group_label: "Asset"
    group_item_label: "Namespace"
  }

  dimension: asset__product_id {
    type: string
    sql: ${TABLE}.asset.product_id ;;
    group_label: "Asset"
    group_item_label: "Product ID"
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: confidence_score {
    type: string
    sql: ${TABLE}.confidence_score ;;
  }

  dimension: day_bucket_seconds {
    type: number
    sql: ${TABLE}.day_bucket_seconds ;;
  }

  dimension: feed_log_type {
    type: string
    sql: ${TABLE}.feed_log_type ;;
  }

  dimension: feed_name {
    type: string
    sql: ${TABLE}.feed_name ;;
  }

  dimension: ioc_ingest_time__nanos {
    type: number
    sql: ${TABLE}.ioc_ingest_time.nanos ;;
    group_label: "Ioc Ingest Time"
    group_item_label: "Nanos"
  }

  dimension: ioc_ingest_time__seconds {
    type: number
    sql: ${TABLE}.ioc_ingest_time.seconds ;;
    group_label: "Ioc Ingest Time"
    group_item_label: "Seconds"
  }

  dimension: ioc_type {
    type: string
    sql: ${TABLE}.ioc_type ;;
  }

  dimension: ioc_value {
    type: string
    sql: ${TABLE}.ioc_value ;;
  }

  dimension: is_global {
    type: yesno
    sql: ${TABLE}.is_global ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  measure: count {
    type: count
    drill_fields: [feed_name, asset__hostname]
  }
}
