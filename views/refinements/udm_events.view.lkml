include: "/views/udm_events.view.lkml"

view: +udm_events {

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${TABLE}.metadata.product_log_id, ${TABLE}.metadata.event_timestamp.seconds, ${TABLE}.metadata.event_timestamp.nanos, ${TABLE}.metadata.event_type, ${TABLE}.metadata.vendor_name, ${TABLE}.metadata.product_name);;
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
    sql: ${TABLE}.metadata.event_timestamp.seconds ;;
  }

  filter: time_filter {
    type: date_time
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
    sql: ${period} IS NOT NULL ;;
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

  dimension: domain {
    type: string
    sql: REGEXP_EXTRACT(COALESCE(${TABLE}.network.dns.questions[SAFE_OFFSET(0)].name, ${TABLE}.target.hostname), r"^(?:[a-zA-Z0-9-]+\.)*([a-zA-Z0-9-]+\.[a-zA-Z0-9-]*[a-zA-Z-][a-zA-Z0-9-]*)$");;
  }

  dimension: asset {
    type: string
    label: "Asset"
    sql: COALESCE(${TABLE}.principal.hostname, ${TABLE}.principal.ip[SAFE_OFFSET(0)]) ;;
  }


  dimension: full_domain {
    type: string
    sql: COALESCE(${TABLE}.network.dns.questions[SAFE_OFFSET(0)].name, ${TABLE}.target.hostname);;
  }

  dimension: source_domain {
    type: string
    sql: REGEXP_EXTRACT(COALESCE(${TABLE}.network.dns.questions[SAFE_OFFSET(0)].name, ${TABLE}.principal.hostname), r"^(?:[a-zA-Z0-9-]+\.)*([a-zA-Z0-9-]+\.[a-zA-Z0-9-]*[a-zA-Z-][a-zA-Z0-9-]*)$");;
  }

  dimension: prevalence {
    type: number
    sql: COALESCE(${TABLE}.principal.hostname}, ${TABLE}.principal.ip}) ;;
  }

  # Naming enums
  dimension: metadata__event_type_enum_name {
    type:  string
    sql:  ${metadata__event_type__enum.enum_name} ;;
  }
}

# Naming enums
view: +udm_events__security_result{
  dimension: about__platform_enum_name {
    type:  string
    sql:  ${udm_events__security_result__about__platform__enum.enum_name} ;;
  }

  dimension: alert_state_enum_name {
    type: string
    sql: ${udm_events__security_result__alert_state__enum.enum_name} ;;
  }

  dimension: severity_enum_name {
    type:  string
    sql:  ${udm_events__security_result__severity__enum.enum_name} ;;
  }

  dimension: confidence_enum_name {
    type:  string
    sql:  ${udm_events__security_result__confidence__enum.enum_name} ;;
  }

  dimension: priority_enum_name {
    type:  string
    sql:  ${udm_events__security_result__priority__enum.enum_name} ;;
  }

  dimension: category_enum_name {
    type:  string
    sql:  ${udm_events__security_result__category__enum.enum_name} ;;
  }

  dimension: threat_status_enum_name {
    type:  string
    sql:  ${udm_events__security_result__threat_status__enum.enum_name} ;;
  }
}

view: +udm_events__security_result__action {
  dimension: enum__backstory__security_result__action_enum_name {
    type:  string
    sql:  ${udm_events__security_result__action__enum.enum_name} ;;
  }
}

view: +udm_events__extensions__vulns__vulnerabilities {
  dimension: severity_enum_name {
    type:  string
    sql:  ${udm_events__extensions__vulns__vulnerabilities__severity__enum.enum_name} ;;
  }
}

# Adding views to fix the generated (broken) joins for some nested repeated fields.
view: +udm_events__about {
  dimension: ip {
    hidden: yes
    sql: ${TABLE}.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: mac {
    hidden: yes
    sql: ${TABLE}.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }
}

view: +udm_events__intermediary {
  dimension: ip {
    hidden: yes
    sql: ${TABLE}.ip ;;
    group_label: "Intermediary"
    group_item_label: "IP"
  }

  dimension: mac {
    hidden: yes
    sql: ${TABLE}.mac ;;
    group_label: "Intermediary"
    group_item_label: "Mac"
  }
}
