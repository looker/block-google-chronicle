include: "/views/ioc_matches.view"

view: global_threat_map_ioc {
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
          `@{IOC_MATCHES}`
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
