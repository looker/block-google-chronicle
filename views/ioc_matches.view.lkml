include: "//@{CONFIG_PROJECT_NAME}/views/ioc_matches.view.lkml"


view: ioc_matches {
  extends: [ioc_matches_config]
}

###################################################
view: ioc_matches_core {
  sql_table_name: `@{DATASET_NAME}.@{IOC_MATCHES}`
    ;;

  dimension: asset {
    hidden: yes
    sql: ${TABLE}.asset ;;
  }

  dimension: asset_hostname {
    sql: COALESCE(${asset}.hostname, ${asset}.asset_ip_address) ;;
    link: {
      label: "Asset Lookup on {{value}}"
      url: "@{ASSET_LOOKUP}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/assetResults?assetIdentifier={{value}}"
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
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

  dimension: ioc_ingest_time {
    hidden: yes
    sql: ${TABLE}.ioc_ingest_time ;;
  }

  dimension: ioc_type {
    type: string
    sql: ${TABLE}.ioc_type ;;
  }

  dimension: ioc_value {
    type: string
    sql: ${TABLE}.ioc_value ;;
  }


  dimension : ioc_value_domain {
    type: string
    sql:
    CASE
      WHEN ${TABLE}.ioc_type= 'IOC_TYPE_DOMAIN' THEN ${TABLE}.ioc_value
    END;;
    link: {
      label: "Domain Lookup on {{value}}"
      url: "@{DOMAIN_LOOKUP}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/domainResults?domain={{value}}"
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
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
  }
}

view: ioc_matches__asset {
  extends: [ioc_matches__asset_config]
}

###################################################
view: ioc_matches__asset_core {
  dimension: asset_ip_address {
    type: string
    sql: ${TABLE}.asset_ip_address ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }
  measure: count {
    type: count
  }
}

view: ioc_matches__ioc_ingest_time {
  extends: [ioc_matches__ioc_ingest_time_config]
}

###################################################
view: ioc_matches__ioc_ingest_time_core {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      year
    ]
    datatype: epoch
    sql: ${TABLE}.seconds ;;
  }
}

view: global_threat_map_ioc {
  extends: [global_threat_map_ioc_config]
}

###################################################

view: global_threat_map_ioc_core {
  derived_table: {
    sql: SELECT
        a.ts,
        a.ioc_matches_test_ioc_value,
        IFNULL(city, 'Other') AS city,
        IFNULL(countryLabel, 'Other') AS country,
        latitude,
        longitude
      FROM
      (
        SELECT
          ts,
          ioc_matches_test_ioc_value,
          NET.IPV4_TO_INT64(NET.IP_FROM_STRING(ioc_matches_test_ioc_value)) AS clientIpNum,
          TRUNC(NET.IPV4_TO_INT64(NET.IP_FROM_STRING(ioc_matches_test_ioc_value))/(256*256)) AS classB
        FROM
        (
          SELECT
            ioc_ingest_time.seconds as ts,
            ioc_value as ioc_matches_test_ioc_value,
            ioc_type
          FROM
            `@{DATASET_NAME}.@{IOC_MATCHES}`
        ) as x
        WHERE
        (
          REGEXP_CONTAINS(ioc_matches_test_ioc_value, "\\d+\\.\\d+\\.\\d+\\.\\d+")
          AND ioc_type = 'IOC_TYPE_IP'
          AND {% condition period_filter %} TIMESTAMP_SECONDS(ts) {% endcondition %}
        )
      ) AS A

      LEFT OUTER JOIN
        `fh-bigquery.geocode.geolite_city_bq_b2b` AS b
        ON
        a.classB = b.classB
        AND a.clientIpNum BETWEEN b.startIpNum AND b.endIpNum
        WHERE
          countryLabel != "Other"
 ;;
  }

  measure: count {
    type: count
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
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
    datatype: epoch
    sql: ${TABLE}.ts ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
  }

  dimension: ioc_matches_test_ioc_value {
    type: string
    sql: ${TABLE}.ioc_matches_test_ioc_value ;;
    link: {
      label: "IOC Matches Dashboard"
      url: "@{IOC_MATCHES_DASHBOARD}"
      icon_url: "@{DASHBOARD_ICON_URL}"
    }
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

}
