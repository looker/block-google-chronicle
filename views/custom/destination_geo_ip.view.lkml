view: destination_geo_ip {
  derived_table: {
    sql: SELECT
      a.ts,
      a.principal_hostname,
      a.principal_ip,
      a.target_ip,
      IFNULL(city, 'Other') AS city,
      IFNULL(countryLabel, 'Other') AS countryLabel,
      latitude,
      longitude
    FROM
    (
      SELECT
        ts,
        principal_hostname,
        principal_ip,
        target_ip,
        NET.IPV4_TO_INT64(NET.IP_FROM_STRING(target_ip)) AS clientIpNum,
        TRUNC(NET.IPV4_TO_INT64(NET.IP_FROM_STRING(target_ip))/(256*256)) AS classB
      FROM
      (
        SELECT
          metadata.event_timestamp.seconds as ts,
          principal.hostname as principal_hostname,
          principal.ip[SAFE_OFFSET(0)] as principal_ip,
          target.ip[SAFE_OFFSET(0)] as target_ip,
          metadata.event_type as event_type
        FROM
          `@{DATASET_NAME}.@{UDM_EVENTS}` as udm_events
          WHERE {% condition time_filter %} udm_events._PARTITIONTIME {% endcondition %}
                AND {% condition time_filter %} TIMESTAMP_SECONDS(metadata.event_timestamp.seconds) {% endcondition %}

      ) as x
      WHERE
      (
        REGEXP_CONTAINS(target_ip, "\\d+\\.\\d+\\.\\d+\\.\\d+")
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

  dimension_group: event_timestamp {
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

  filter: time_filter {
    type: date_time
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
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
              WHEN ${event_timestamp_raw} >= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL 1 * (TIMESTAMP_DIFF({% date_start period_filter %},{% date_end period_filter %}, DAY))  DAY))
                AND ${event_timestamp_raw} <= UNIX_SECONDS(TIMESTAMP_ADD({% date_start period_filter %}, INTERVAL -1 DAY))
                THEN 'Previous Period'
            END
        END ;;
  }


  dimension: principal_hostname {
    type: string
    sql: ${TABLE}.principal_hostname ;;
  }

  dimension: principal_ip {
    type: string
    sql: ${TABLE}.principal_ip ;;
  }

  dimension: asset {
    type: string
    sql: COALESCE(${TABLE}.principal_hostname,${TABLE}.principal_ip) ;;
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
