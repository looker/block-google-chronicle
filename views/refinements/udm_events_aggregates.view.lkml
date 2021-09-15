include: "/views/udm_events_aggregates.view.lkml"

view: +udm_events_aggregates {
  dimension: userid_for_drill {
    type: string
    sql: ${TABLE}.principal_userid ;;
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/userResults?userName={{value}}"
      icon_url: "@{USER_PAGE_ICON_URL}"
    }
  }
}
