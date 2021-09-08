view: user_login_source_geo_ip {
  derived_table: {
    sql: SELECT
        a.ts,
        a.principal_ip,
        a.target_ip,
        IFNULL(city, 'Other') AS city,
        IFNULL(countryLabel, 'Other') AS countryLabel,
        latitude,
        longitude,
      FROM
      (
        SELECT
          ts,
          principal_ip,
          target_ip,
          NET.IPV4_TO_INT64(NET.IP_FROM_STRING(principal_ip)) AS clientIpNum,
          TRUNC(NET.IPV4_TO_INT64(NET.IP_FROM_STRING(principal_ip))/(256*256)) AS classB
        FROM
        (
          SELECT
            event_hour as ts,
            principal_ip as principal_ip,
            target_ip as target_ip,
          FROM
            `@{DATASET_NAME}.@{UDM_EVENTS_AGGREGRATES}`  as udm_events
          WHERE {% condition time_filter %} event_hour{% endcondition %}
        ) as x
        WHERE
        (
          REGEXP_CONTAINS(principal_ip, "\\d+\\.\\d+\\.\\d+\\.\\d+")
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
  filter: time_filter {
    type: date_time
  }

  dimension_group: event_timestamp {
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
    sql: ${TABLE}.ts ;;
  }


  dimension: principal_ip {
    type: string
    sql: ${TABLE}.principal_ip ;;
  }

  dimension: target_ip {
    type: string
    sql: ${TABLE}.target_ip ;;
  }

  dimension: target_port {
    type: number
    sql: ${TABLE}.target_port ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_label {
    type: string
    sql: ${TABLE}.countryLabel ;;
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
