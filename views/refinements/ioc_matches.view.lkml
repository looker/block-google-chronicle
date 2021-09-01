include: "/views/ioc_matches.view"

view: +ioc_matches {
  dimension: asset {
    hidden: yes
    sql: ${TABLE}.asset ;;
  }

  dimension: asset_hostname {
    sql: COALESCE(${asset}.hostname, ${asset}.asset_ip_address) ;;
    # link: {
    #   label: "Asset Lookup on {{value}}"
    #   url: "@{ASSET_LOOKUP}"
    #   icon_url: "@{DASHBOARD_ICON_URL}"
    # }
    link: {
      label: "Investigate in Chronicle"
      url: "
      {% if value != ioc_matches.asset__asset_ip_address._value %}
      @{CHRONICLE_URL}/assetResults?assetIdentifier={{value}}&assetType=hostname
      {% else %}
      @{CHRONICLE_URL}/assetResults?assetIdentifier={{value}}&assetType=ip
      {% endif %}
      "
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
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
    sql: ${TABLE}.ioc_ingest_time.seconds ;;
  }

  dimension : ioc_value_domain {
    type: string
    sql:
    CASE
      WHEN ${TABLE}.ioc_type= 'IOC_TYPE_DOMAIN' THEN ${TABLE}.ioc_value
    END;;
    # link: {
    #   label: "Domain Lookup on {{value}}"
    #   url: "@{DOMAIN_LOOKUP}"
    #   icon_url: "@{DASHBOARD_ICON_URL}"
    # }
      link: {
        label: "Investigate in Chronicle"
        url: "@{CHRONICLE_URL}/domainResults?domain={{value}}"
        icon_url: "@{CHRONICLE_ICON_URL}"
      }
    }
}
