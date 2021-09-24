include: "/views/refinements/ioc_matches.view.lkml"

explore: ioc_matches {
  # join: ioc_matches__asset {
  #   view_label: "Ioc Matches: Asset"
  #   sql: LEFT JOIN UNNEST([${ioc_matches.asset}]) as ioc_matches__asset ;;
  #   relationship: one_to_one
  # }

  # join: ioc_matches__ioc_ingest_time {
  #   view_label: "Ioc Matches: Ioc Ingest Time"
  #   sql: LEFT JOIN UNNEST([${ioc_matches.ioc_ingest_time}]) as ioc_matches__ioc_ingest_time ;;
  #   relationship: one_to_one
  # }
}
