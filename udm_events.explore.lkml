explore: udm_events_core {
  join: udm_events__principal {
    view_label: "Udm Events: Principal"
    sql: LEFT JOIN UNNEST([${udm_events.principal}]) as udm_events__principal ;;
    relationship: one_to_one
  }

  join: udm_events__principal__registry {
    view_label: "Udm Events: Principal Registry"
    sql: LEFT JOIN UNNEST([${udm_events__principal.registry}]) as udm_events__principal__registry ;;
    relationship: one_to_one
  }

  join: udm_events__principal__process__file {
    view_label: "Udm Events: Principal Process File"
    sql: LEFT JOIN UNNEST([${udm_events__principal__process.file}]) as udm_events__principal__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__principal__process__file__file_metadata__pe {
    view_label: "Udm Events: Principal Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__principal__process__file__file_metadata.pe}]) as udm_events__principal__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__principal__process {
    view_label: "Udm Events: Principal Process"
    sql: LEFT JOIN UNNEST([${udm_events__principal.process}]) as udm_events__principal__process ;;
    relationship: one_to_one
  }

  join: udm_events__principal__resource {
    view_label: "Udm Events: Principal Resource"
    sql: LEFT JOIN UNNEST([${udm_events__principal.resource}]) as udm_events__principal__resource ;;
    relationship: one_to_one
  }

  join: udm_events__principal__labels {
    view_label: "Udm Events: Principal Labels"
    sql: LEFT JOIN UNNEST(${udm_events__principal.labels}) as udm_events__principal__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud {
    view_label: "Udm Events: Principal Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__principal.cloud}]) as udm_events__principal__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__principal__cloud__vpc {
    view_label: "Udm Events: Principal Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__principal__cloud.vpc}]) as udm_events__principal__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__principal__cloud__project {
    view_label: "Udm Events: Principal Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__principal__cloud.project}]) as udm_events__principal__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__principal__file {
    view_label: "Udm Events: Principal File"
    sql: LEFT JOIN UNNEST([${udm_events__principal.file}]) as udm_events__principal__file ;;
    relationship: one_to_one
  }

  join: udm_events__principal__file__file_metadata__pe {
    view_label: "Udm Events: Principal File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__principal__file__file_metadata.pe}]) as udm_events__principal__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__principal__location {
    view_label: "Udm Events: Principal Location"
    sql: LEFT JOIN UNNEST([${udm_events__principal.location}]) as udm_events__principal__location ;;
    relationship: one_to_one
  }

  join: udm_events__principal__user {
    view_label: "Udm Events: Principal User"
    sql: LEFT JOIN UNNEST([${udm_events__principal.user}]) as udm_events__principal__user ;;
    relationship: one_to_one
  }

  join: udm_events__principal__user__hire_date {
    view_label: "Udm Events: Principal User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__principal__user.hire_date}]) as udm_events__principal__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__principal__user__personal_address {
    view_label: "Udm Events: Principal User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__principal__user.personal_address}]) as udm_events__principal__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__principal__user__office_address {
    view_label: "Udm Events: Principal User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__principal__user.office_address}]) as udm_events__principal__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__principal__user__termination_date {
    view_label: "Udm Events: Principal User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__principal__user.termination_date}]) as udm_events__principal__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__principal__group__creation_time {
    view_label: "Udm Events: Principal group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__principal__group.creation_time}]) as udm_events__principal__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__principal__group {
    view_label: "Udm Events: Principal group"
    sql: LEFT JOIN UNNEST([${udm_events__principal.group}]) as udm_events__principal__group ;;
    relationship: one_to_one
  }

  join: udm_events__observer {
    view_label: "Udm Events: Observer"
    sql: LEFT JOIN UNNEST([${udm_events.observer}]) as udm_events__observer ;;
    relationship: one_to_one
  }

  join: udm_events__observer__registry {
    view_label: "Udm Events: Observer Registry"
    sql: LEFT JOIN UNNEST([${udm_events__observer.registry}]) as udm_events__observer__registry ;;
    relationship: one_to_one
  }

  join: udm_events__observer__process__file {
    view_label: "Udm Events: Observer Process File"
    sql: LEFT JOIN UNNEST([${udm_events__observer__process.file}]) as udm_events__observer__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__observer__process__file__file_metadata__pe {
    view_label: "Udm Events: Observer Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__observer__process__file__file_metadata.pe}]) as udm_events__observer__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__observer__process {
    view_label: "Udm Events: Observer Process"
    sql: LEFT JOIN UNNEST([${udm_events__observer.process}]) as udm_events__observer__process ;;
    relationship: one_to_one
  }

  join: udm_events__observer__resource {
    view_label: "Udm Events: Observer Resource"
    sql: LEFT JOIN UNNEST([${udm_events__observer.resource}]) as udm_events__observer__resource ;;
    relationship: one_to_one
  }

  join: udm_events__observer__labels {
    view_label: "Udm Events: Observer Labels"
    sql: LEFT JOIN UNNEST(${udm_events__observer.labels}) as udm_events__observer__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud {
    view_label: "Udm Events: Observer Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__observer.cloud}]) as udm_events__observer__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__observer__cloud__vpc {
    view_label: "Udm Events: Observer Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__observer__cloud.vpc}]) as udm_events__observer__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__observer__cloud__project {
    view_label: "Udm Events: Observer Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__observer__cloud.project}]) as udm_events__observer__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__observer__file {
    view_label: "Udm Events: Observer File"
    sql: LEFT JOIN UNNEST([${udm_events__observer.file}]) as udm_events__observer__file ;;
    relationship: one_to_one
  }

  join: udm_events__observer__file__file_metadata__pe {
    view_label: "Udm Events: Observer File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__observer__file__file_metadata.pe}]) as udm_events__observer__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__observer__location {
    view_label: "Udm Events: Observer Location"
    sql: LEFT JOIN UNNEST([${udm_events__observer.location}]) as udm_events__observer__location ;;
    relationship: one_to_one
  }

  join: udm_events__observer__user {
    view_label: "Udm Events: Observer User"
    sql: LEFT JOIN UNNEST([${udm_events__observer.user}]) as udm_events__observer__user ;;
    relationship: one_to_one
  }

  join: udm_events__observer__user__hire_date {
    view_label: "Udm Events: Observer User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__observer__user.hire_date}]) as udm_events__observer__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__observer__user__personal_address {
    view_label: "Udm Events: Observer User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__observer__user.personal_address}]) as udm_events__observer__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__observer__user__office_address {
    view_label: "Udm Events: Observer User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__observer__user.office_address}]) as udm_events__observer__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__observer__user__termination_date {
    view_label: "Udm Events: Observer User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__observer__user.termination_date}]) as udm_events__observer__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__observer__group__creation_time {
    view_label: "Udm Events: Observer group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__observer__group.creation_time}]) as udm_events__observer__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__observer__group {
    view_label: "Udm Events: Observer group"
    sql: LEFT JOIN UNNEST([${udm_events__observer.group}]) as udm_events__observer__group ;;
    relationship: one_to_one
  }

  join: udm_events__metadata {
    view_label: "Udm Events: Metadata"
    sql: LEFT JOIN UNNEST([${udm_events.metadata}]) as udm_events__metadata ;;
    relationship: one_to_one
  }

  join: udm_events__metadata__ingested_timestamp {
    view_label: "Udm Events: Metadata Ingested Timestamp"
    sql: LEFT JOIN UNNEST([${udm_events__metadata.ingested_timestamp}]) as udm_events__metadata__ingested_timestamp ;;
    relationship: one_to_one
  }

  join: udm_events__metadata__collected_timestamp {
    view_label: "Udm Events: Metadata Collected Timestamp"
    sql: LEFT JOIN UNNEST([${udm_events__metadata.collected_timestamp}]) as udm_events__metadata__collected_timestamp ;;
    relationship: one_to_one
  }

  join: udm_events__metadata__event_timestamp {
    view_label: "Udm Events: Metadata Event Timestamp"
    sql: LEFT JOIN UNNEST([${udm_events__metadata.event_timestamp}]) as udm_events__metadata__event_timestamp ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__auth {
    view_label: "Udm Events: Extensions Auth"
    sql: LEFT JOIN UNNEST([${udm_events__extensions.auth}]) as udm_events__extensions__auth ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns.vulnerabilities}) as udm_events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__first_found {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities First Found"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities.first_found}]) as udm_events__extensions__vulns__vulnerabilities__first_found ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__scan_start_time {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities Scan Start Time"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities.scan_start_time}]) as udm_events__extensions__vulns__vulnerabilities__scan_start_time ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__scan_end_time {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities Scan End Time"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities.scan_end_time}]) as udm_events__extensions__vulns__vulnerabilities__scan_end_time ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities.about}]) as udm_events__extensions__vulns__vulnerabilities__about ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__registry {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Registry"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.registry}]) as udm_events__extensions__vulns__vulnerabilities__about__registry ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process__file {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process File"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__process.file}]) as udm_events__extensions__vulns__vulnerabilities__about__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata__pe {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata.pe}]) as udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.process}]) as udm_events__extensions__vulns__vulnerabilities__about__process ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__resource {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.resource}]) as udm_events__extensions__vulns__vulnerabilities__about__resource ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about.labels}) as udm_events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.cloud}]) as udm_events__extensions__vulns__vulnerabilities__about__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__cloud.vpc}]) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__cloud.project}]) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__file {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About File"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.file}]) as udm_events__extensions__vulns__vulnerabilities__about__file ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata__pe {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata.pe}]) as udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__location {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Location"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.location}]) as udm_events__extensions__vulns__vulnerabilities__about__location ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.user}]) as udm_events__extensions__vulns__vulnerabilities__about__user ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__hire_date {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__user.hire_date}]) as udm_events__extensions__vulns__vulnerabilities__about__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__personal_address {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__user.personal_address}]) as udm_events__extensions__vulns__vulnerabilities__about__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__office_address {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__user.office_address}]) as udm_events__extensions__vulns__vulnerabilities__about__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__termination_date {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__user.termination_date}]) as udm_events__extensions__vulns__vulnerabilities__about__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group__creation_time {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__group.creation_time}]) as udm_events__extensions__vulns__vulnerabilities__about__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About group"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about.group}]) as udm_events__extensions__vulns__vulnerabilities__about__group ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__last_found {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities Last Found"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities.last_found}]) as udm_events__extensions__vulns__vulnerabilities__last_found ;;
    relationship: one_to_one
  }

  join: udm_events__src {
    view_label: "Udm Events: Src"
    sql: LEFT JOIN UNNEST([${udm_events.src}]) as udm_events__src ;;
    relationship: one_to_one
  }

  join: udm_events__src__registry {
    view_label: "Udm Events: Src Registry"
    sql: LEFT JOIN UNNEST([${udm_events__src.registry}]) as udm_events__src__registry ;;
    relationship: one_to_one
  }

  join: udm_events__src__process__file {
    view_label: "Udm Events: Src Process File"
    sql: LEFT JOIN UNNEST([${udm_events__src__process.file}]) as udm_events__src__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__src__process__file__file_metadata__pe {
    view_label: "Udm Events: Src Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__src__process__file__file_metadata.pe}]) as udm_events__src__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__src__process {
    view_label: "Udm Events: Src Process"
    sql: LEFT JOIN UNNEST([${udm_events__src.process}]) as udm_events__src__process ;;
    relationship: one_to_one
  }

  join: udm_events__src__resource {
    view_label: "Udm Events: Src Resource"
    sql: LEFT JOIN UNNEST([${udm_events__src.resource}]) as udm_events__src__resource ;;
    relationship: one_to_one
  }

  join: udm_events__src__labels {
    view_label: "Udm Events: Src Labels"
    sql: LEFT JOIN UNNEST(${udm_events__src.labels}) as udm_events__src__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud {
    view_label: "Udm Events: Src Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__src.cloud}]) as udm_events__src__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__src__cloud__vpc {
    view_label: "Udm Events: Src Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__src__cloud.vpc}]) as udm_events__src__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__src__cloud__project {
    view_label: "Udm Events: Src Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__src__cloud.project}]) as udm_events__src__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__src__file {
    view_label: "Udm Events: Src File"
    sql: LEFT JOIN UNNEST([${udm_events__src.file}]) as udm_events__src__file ;;
    relationship: one_to_one
  }

  join: udm_events__src__file__file_metadata__pe {
    view_label: "Udm Events: Src File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__src__file__file_metadata.pe}]) as udm_events__src__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__src__location {
    view_label: "Udm Events: Src Location"
    sql: LEFT JOIN UNNEST([${udm_events__src.location}]) as udm_events__src__location ;;
    relationship: one_to_one
  }

  join: udm_events__src__user {
    view_label: "Udm Events: Src User"
    sql: LEFT JOIN UNNEST([${udm_events__src.user}]) as udm_events__src__user ;;
    relationship: one_to_one
  }

  join: udm_events__src__user__hire_date {
    view_label: "Udm Events: Src User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__src__user.hire_date}]) as udm_events__src__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__src__user__personal_address {
    view_label: "Udm Events: Src User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__src__user.personal_address}]) as udm_events__src__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__src__user__office_address {
    view_label: "Udm Events: Src User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__src__user.office_address}]) as udm_events__src__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__src__user__termination_date {
    view_label: "Udm Events: Src User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__src__user.termination_date}]) as udm_events__src__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__src__group__creation_time {
    view_label: "Udm Events: Src group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__src__group.creation_time}]) as udm_events__src__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__src__group {
    view_label: "Udm Events: Src group"
    sql: LEFT JOIN UNNEST([${udm_events__src.group}]) as udm_events__src__group ;;
    relationship: one_to_one
  }

  join: udm_events__additional__fields__value {
    view_label: "Udm Events: Additional Fields Value"
    sql: LEFT JOIN UNNEST([${udm_events__additional__fields.value}]) as udm_events__additional__fields__value ;;
    relationship: one_to_one
  }

  join: udm_events__additional__fields {
    view_label: "Udm Events: Additional Fields"
    sql: LEFT JOIN UNNEST(${udm_events__additional.fields}) as udm_events__additional__fields ;;
    relationship: one_to_many
  }

  join: udm_events__about {
    view_label: "Udm Events: About"
    sql: LEFT JOIN UNNEST(${udm_events.about}) as udm_events__about ;;
    relationship: one_to_many
  }

  join: udm_events__about__registry {
    view_label: "Udm Events: About Registry"
    sql: LEFT JOIN UNNEST([${udm_events__about.registry}]) as udm_events__about__registry ;;
    relationship: one_to_one
  }

  join: udm_events__about__process__file {
    view_label: "Udm Events: About Process File"
    sql: LEFT JOIN UNNEST([${udm_events__about__process.file}]) as udm_events__about__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__about__process__file__file_metadata__pe {
    view_label: "Udm Events: About Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__about__process__file__file_metadata.pe}]) as udm_events__about__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__about__process {
    view_label: "Udm Events: About Process"
    sql: LEFT JOIN UNNEST([${udm_events__about.process}]) as udm_events__about__process ;;
    relationship: one_to_one
  }

  join: udm_events__about__resource {
    view_label: "Udm Events: About Resource"
    sql: LEFT JOIN UNNEST([${udm_events__about.resource}]) as udm_events__about__resource ;;
    relationship: one_to_one
  }

  join: udm_events__about__labels {
    view_label: "Udm Events: About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.labels}) as udm_events__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud {
    view_label: "Udm Events: About Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__about.cloud}]) as udm_events__about__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__about__cloud__vpc {
    view_label: "Udm Events: About Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__about__cloud.vpc}]) as udm_events__about__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__about__cloud__project {
    view_label: "Udm Events: About Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__about__cloud.project}]) as udm_events__about__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__about__file {
    view_label: "Udm Events: About File"
    sql: LEFT JOIN UNNEST([${udm_events__about.file}]) as udm_events__about__file ;;
    relationship: one_to_one
  }

  join: udm_events__about__file__file_metadata__pe {
    view_label: "Udm Events: About File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__about__file__file_metadata.pe}]) as udm_events__about__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__about__location {
    view_label: "Udm Events: About Location"
    sql: LEFT JOIN UNNEST([${udm_events__about.location}]) as udm_events__about__location ;;
    relationship: one_to_one
  }

  join: udm_events__about__user {
    view_label: "Udm Events: About User"
    sql: LEFT JOIN UNNEST([${udm_events__about.user}]) as udm_events__about__user ;;
    relationship: one_to_one
  }

  join: udm_events__about__user__hire_date {
    view_label: "Udm Events: About User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__about__user.hire_date}]) as udm_events__about__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__about__user__personal_address {
    view_label: "Udm Events: About User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__about__user.personal_address}]) as udm_events__about__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__about__user__office_address {
    view_label: "Udm Events: About User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__about__user.office_address}]) as udm_events__about__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__about__user__termination_date {
    view_label: "Udm Events: About User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__about__user.termination_date}]) as udm_events__about__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__about__group__creation_time {
    view_label: "Udm Events: About group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__about__group.creation_time}]) as udm_events__about__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__about__group {
    view_label: "Udm Events: About group"
    sql: LEFT JOIN UNNEST([${udm_events__about.group}]) as udm_events__about__group ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary {
    view_label: "Udm Events: Intermediary"
    sql: LEFT JOIN UNNEST(${udm_events.intermediary}) as udm_events__intermediary ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__registry {
    view_label: "Udm Events: Intermediary Registry"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.registry}]) as udm_events__intermediary__registry ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__process__file {
    view_label: "Udm Events: Intermediary Process File"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__process.file}]) as udm_events__intermediary__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__process__file__file_metadata__pe {
    view_label: "Udm Events: Intermediary Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__process__file__file_metadata.pe}]) as udm_events__intermediary__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__process {
    view_label: "Udm Events: Intermediary Process"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.process}]) as udm_events__intermediary__process ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__resource {
    view_label: "Udm Events: Intermediary Resource"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.resource}]) as udm_events__intermediary__resource ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__labels {
    view_label: "Udm Events: Intermediary Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.labels}) as udm_events__intermediary__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud {
    view_label: "Udm Events: Intermediary Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.cloud}]) as udm_events__intermediary__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__cloud__vpc {
    view_label: "Udm Events: Intermediary Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__cloud.vpc}]) as udm_events__intermediary__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__cloud__project {
    view_label: "Udm Events: Intermediary Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__cloud.project}]) as udm_events__intermediary__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__file {
    view_label: "Udm Events: Intermediary File"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.file}]) as udm_events__intermediary__file ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__file__file_metadata__pe {
    view_label: "Udm Events: Intermediary File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__file__file_metadata.pe}]) as udm_events__intermediary__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__location {
    view_label: "Udm Events: Intermediary Location"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.location}]) as udm_events__intermediary__location ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__user {
    view_label: "Udm Events: Intermediary User"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.user}]) as udm_events__intermediary__user ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__user__hire_date {
    view_label: "Udm Events: Intermediary User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__user.hire_date}]) as udm_events__intermediary__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__user__personal_address {
    view_label: "Udm Events: Intermediary User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__user.personal_address}]) as udm_events__intermediary__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__user__office_address {
    view_label: "Udm Events: Intermediary User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__user.office_address}]) as udm_events__intermediary__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__user__termination_date {
    view_label: "Udm Events: Intermediary User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__user.termination_date}]) as udm_events__intermediary__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__group__creation_time {
    view_label: "Udm Events: Intermediary group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__group.creation_time}]) as udm_events__intermediary__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__group {
    view_label: "Udm Events: Intermediary group"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary.group}]) as udm_events__intermediary__group ;;
    relationship: one_to_one
  }

  join: udm_events__security_result {
    view_label: "Udm Events: Security Result"
    sql: LEFT JOIN UNNEST([${udm_events.security_result}]) as udm_events__security_result;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about {
    view_label: "Udm Events: Security Result About"
    sql: LEFT JOIN UNNEST([${udm_events__security_result.about}]) as udm_events__security_result__about ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__registry {
    view_label: "Udm Events: Security Result About Registry"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.registry}]) as udm_events__security_result__about__registry ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__process__file {
    view_label: "Udm Events: Security Result About Process File"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__process.file}]) as udm_events__security_result__about__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__process__file__file_metadata__pe {
    view_label: "Udm Events: Security Result About Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__process__file__file_metadata.pe}]) as udm_events__security_result__about__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__process {
    view_label: "Udm Events: Security Result About Process"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.process}]) as udm_events__security_result__about__process ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__resource {
    view_label: "Udm Events: Security Result About Resource"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.resource}]) as udm_events__security_result__about__resource ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__labels {
    view_label: "Udm Events: Security Result About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about.labels}) as udm_events__security_result__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud {
    view_label: "Udm Events: Security Result About Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.cloud}]) as udm_events__security_result__about__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__cloud__vpc {
    view_label: "Udm Events: Security Result About Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__cloud.vpc}]) as udm_events__security_result__about__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__cloud__project {
    view_label: "Udm Events: Security Result About Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__cloud.project}]) as udm_events__security_result__about__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__file {
    view_label: "Udm Events: Security Result About File"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.file}]) as udm_events__security_result__about__file ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__file__file_metadata__pe {
    view_label: "Udm Events: Security Result About File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__file__file_metadata.pe}]) as udm_events__security_result__about__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__location {
    view_label: "Udm Events: Security Result About Location"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.location}]) as udm_events__security_result__about__location ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__user {
    view_label: "Udm Events: Security Result About User"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.user}]) as udm_events__security_result__about__user ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__user__hire_date {
    view_label: "Udm Events: Security Result About User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__user.hire_date}]) as udm_events__security_result__about__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__user__personal_address {
    view_label: "Udm Events: Security Result About User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__user.personal_address}]) as udm_events__security_result__about__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__user__office_address {
    view_label: "Udm Events: Security Result About User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__user.office_address}]) as udm_events__security_result__about__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__user__termination_date {
    view_label: "Udm Events: Security Result About User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__user.termination_date}]) as udm_events__security_result__about__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__group__creation_time {
    view_label: "Udm Events: Security Result About group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__group.creation_time}]) as udm_events__security_result__about__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__group {
    view_label: "Udm Events: Security Result About group"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about.group}]) as udm_events__security_result__about__group ;;
    relationship: one_to_one
  }

  join: udm_events__target {
    view_label: "Udm Events: Target"
    sql: LEFT JOIN UNNEST([${udm_events.target}]) as udm_events__target ;;
    relationship: one_to_one
  }

  join: udm_events__target__registry {
    view_label: "Udm Events: Target Registry"
    sql: LEFT JOIN UNNEST([${udm_events__target.registry}]) as udm_events__target__registry ;;
    relationship: one_to_one
  }

  join: udm_events__target__process__file {
    view_label: "Udm Events: Target Process File"
    sql: LEFT JOIN UNNEST([${udm_events__target__process.file}]) as udm_events__target__process__file ;;
    relationship: one_to_one
  }

  join: udm_events__target__process__file__file_metadata__pe {
    view_label: "Udm Events: Target Process File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__target__process__file__file_metadata.pe}]) as udm_events__target__process__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__target__process {
    view_label: "Udm Events: Target Process"
    sql: LEFT JOIN UNNEST([${udm_events__target.process}]) as udm_events__target__process ;;
    relationship: one_to_one
  }

  join: udm_events__target__resource {
    view_label: "Udm Events: Target Resource"
    sql: LEFT JOIN UNNEST([${udm_events__target.resource}]) as udm_events__target__resource ;;
    relationship: one_to_one
  }

  join: udm_events__target__labels {
    view_label: "Udm Events: Target Labels"
    sql: LEFT JOIN UNNEST(${udm_events__target.labels}) as udm_events__target__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud {
    view_label: "Udm Events: Target Cloud"
    sql: LEFT JOIN UNNEST([${udm_events__target.cloud}]) as udm_events__target__cloud ;;
    relationship: one_to_one
  }

  join: udm_events__target__cloud__vpc {
    view_label: "Udm Events: Target Cloud Vpc"
    sql: LEFT JOIN UNNEST([${udm_events__target__cloud.vpc}]) as udm_events__target__cloud__vpc ;;
    relationship: one_to_one
  }

  join: udm_events__target__cloud__project {
    view_label: "Udm Events: Target Cloud Project"
    sql: LEFT JOIN UNNEST([${udm_events__target__cloud.project}]) as udm_events__target__cloud__project ;;
    relationship: one_to_one
  }

  join: udm_events__target__file {
    view_label: "Udm Events: Target File"
    sql: LEFT JOIN UNNEST([${udm_events__target.file}]) as udm_events__target__file ;;
    relationship: one_to_one
  }

  join: udm_events__target__file__file_metadata__pe {
    view_label: "Udm Events: Target File File Metadata Pe"
    sql: LEFT JOIN UNNEST([${udm_events__target__file__file_metadata.pe}]) as udm_events__target__file__file_metadata__pe ;;
    relationship: one_to_one
  }

  join: udm_events__target__location {
    view_label: "Udm Events: Target Location"
    sql: LEFT JOIN UNNEST([${udm_events__target.location}]) as udm_events__target__location ;;
    relationship: one_to_one
  }

  join: udm_events__target__user {
    view_label: "Udm Events: Target User"
    sql: LEFT JOIN UNNEST([${udm_events__target.user}]) as udm_events__target__user ;;
    relationship: one_to_one
  }

  join: udm_events__target__user__hire_date {
    view_label: "Udm Events: Target User Hire Date"
    sql: LEFT JOIN UNNEST([${udm_events__target__user.hire_date}]) as udm_events__target__user__hire_date ;;
    relationship: one_to_one
  }

  join: udm_events__target__user__personal_address {
    view_label: "Udm Events: Target User Personal Address"
    sql: LEFT JOIN UNNEST([${udm_events__target__user.personal_address}]) as udm_events__target__user__personal_address ;;
    relationship: one_to_one
  }

  join: udm_events__target__user__office_address {
    view_label: "Udm Events: Target User Office Address"
    sql: LEFT JOIN UNNEST([${udm_events__target__user.office_address}]) as udm_events__target__user__office_address ;;
    relationship: one_to_one
  }

  join: udm_events__target__user__termination_date {
    view_label: "Udm Events: Target User Termination Date"
    sql: LEFT JOIN UNNEST([${udm_events__target__user.termination_date}]) as udm_events__target__user__termination_date ;;
    relationship: one_to_one
  }

  join: udm_events__target__group__creation_time {
    view_label: "Udm Events: Target group Creation Time"
    sql: LEFT JOIN UNNEST([${udm_events__target__group.creation_time}]) as udm_events__target__group__creation_time ;;
    relationship: one_to_one
  }

  join: udm_events__target__group {
    view_label: "Udm Events: Target group"
    sql: LEFT JOIN UNNEST([${udm_events__target.group}]) as udm_events__target__group ;;
    relationship: one_to_one
  }

  join: udm_events__network {
    view_label: "Udm Events: Network"
    sql: LEFT JOIN UNNEST([${udm_events.network}]) as udm_events__network ;;
    relationship: one_to_one
  }

  join: udm_events__network__ftp {
    view_label: "Udm Events: Network Ftp"
    sql: LEFT JOIN UNNEST([${udm_events__network.ftp}]) as udm_events__network__ftp ;;
    relationship: one_to_one
  }

  join: udm_events__network__dns {
    view_label: "Udm Events: Network Dns"
    sql: LEFT JOIN UNNEST([${udm_events__network.dns}]) as udm_events__network__dns ;;
    relationship: one_to_one
  }

  join: udm_events__network__dns__authority {
    view_label: "Udm Events: Network Dns Authority"
    sql: LEFT JOIN UNNEST(${udm_events__network__dns.authority}) as udm_events__network__dns__authority ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__additional {
    view_label: "Udm Events: Network Dns Additional"
    sql: LEFT JOIN UNNEST(${udm_events__network__dns.additional}) as udm_events__network__dns__additional ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__questions {
    view_label: "Udm Events: Network Dns Questions"
    sql: LEFT JOIN UNNEST(${udm_events__network__dns.questions}) as udm_events__network__dns__questions ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__answers {
    view_label: "Udm Events: Network Dns Answers"
    sql: LEFT JOIN UNNEST(${udm_events__network__dns.answers}) as udm_events__network__dns__answers ;;
    relationship: one_to_many
  }

  join: udm_events__network__session_duration {
    view_label: "Udm Events: Network Session Duration"
    sql: LEFT JOIN UNNEST([${udm_events__network.session_duration}]) as udm_events__network__session_duration ;;
    relationship: one_to_one
  }

  join: udm_events__network__http {
    view_label: "Udm Events: Network Http"
    sql: LEFT JOIN UNNEST([${udm_events__network.http}]) as udm_events__network__http ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls {
    view_label: "Udm Events: Network Tls"
    sql: LEFT JOIN UNNEST([${udm_events__network.tls}]) as udm_events__network__tls ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__server {
    view_label: "Udm Events: Network Tls Server"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls.server}]) as udm_events__network__tls__server ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__server__certificate {
    view_label: "Udm Events: Network Tls Server Certificate"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__server.certificate}]) as udm_events__network__tls__server__certificate ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__server__certificate__not_after {
    view_label: "Udm Events: Network Tls Server Certificate Not After"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__server__certificate.not_after}]) as udm_events__network__tls__server__certificate__not_after ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__server__certificate__not_before {
    view_label: "Udm Events: Network Tls Server Certificate Not Before"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__server__certificate.not_before}]) as udm_events__network__tls__server__certificate__not_before ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__client {
    view_label: "Udm Events: Network Tls Client"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls.client}]) as udm_events__network__tls__client ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__client__certificate {
    view_label: "Udm Events: Network Tls Client Certificate"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__client.certificate}]) as udm_events__network__tls__client__certificate ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__client__certificate__not_after {
    view_label: "Udm Events: Network Tls Client Certificate Not After"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__client__certificate.not_after}]) as udm_events__network__tls__client__certificate__not_after ;;
    relationship: one_to_one
  }

  join: udm_events__network__tls__client__certificate__not_before {
    view_label: "Udm Events: Network Tls Client Certificate Not Before"
    sql: LEFT JOIN UNNEST([${udm_events__network__tls__client__certificate.not_before}]) as udm_events__network__tls__client__certificate__not_before ;;
    relationship: one_to_one
  }

  join: udm_events__network__email {
    view_label: "Udm Events: Network Email"
    sql: LEFT JOIN UNNEST([${udm_events__network.email}]) as udm_events__network__email ;;
    relationship: one_to_one
  }

  join: udm_events__network__dhcp {
    view_label: "Udm Events: Network Dhcp"
    sql: LEFT JOIN UNNEST([${udm_events__network.dhcp}]) as udm_events__network__dhcp ;;
    relationship: one_to_one
  }

  join: udm_events__network__dhcp__options {
    view_label: "Udm Events: Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${udm_events__network__dhcp.options}) as udm_events__network__dhcp__options ;;
    relationship: one_to_many
  }

  join: udm_events__principal__process__file__file_metadata {
    view_label: "Udm Events: Principal Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__principal__process__file.file_metadata}]) as udm_events__principal__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__principal__file__file_metadata {
    view_label: "Udm Events: Principal File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__principal__file.file_metadata}]) as udm_events__principal__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__observer__process__file__file_metadata {
    view_label: "Udm Events: Observer Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__observer__process__file.file_metadata}]) as udm_events__observer__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__observer__file__file_metadata {
    view_label: "Udm Events: Observer File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__observer__file.file_metadata}]) as udm_events__observer__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__extensions {
    view_label: "Udm Events: Extensions"
    sql: LEFT JOIN UNNEST([${udm_events.extensions}]) as udm_events__extensions ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns {
    view_label: "Udm Events: Extensions Vulns"
    sql: LEFT JOIN UNNEST([${udm_events__extensions.vulns}]) as udm_events__extensions__vulns ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__process__file.file_metadata}]) as udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__extensions__vulns__vulnerabilities__about__file.file_metadata}]) as udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__src__process__file__file_metadata {
    view_label: "Udm Events: Src Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__src__process__file.file_metadata}]) as udm_events__src__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__src__file__file_metadata {
    view_label: "Udm Events: Src File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__src__file.file_metadata}]) as udm_events__src__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__additional {
    view_label: "Udm Events: Additional"
    sql: LEFT JOIN UNNEST([${udm_events.additional}]) as udm_events__additional ;;
    relationship: one_to_one
  }

  join: udm_events__about__process__file__file_metadata {
    view_label: "Udm Events: About Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__about__process__file.file_metadata}]) as udm_events__about__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__about__file__file_metadata {
    view_label: "Udm Events: About File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__about__file.file_metadata}]) as udm_events__about__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__process__file__file_metadata {
    view_label: "Udm Events: Intermediary Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__process__file.file_metadata}]) as udm_events__intermediary__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__intermediary__file__file_metadata {
    view_label: "Udm Events: Intermediary File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__intermediary__file.file_metadata}]) as udm_events__intermediary__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__process__file__file_metadata {
    view_label: "Udm Events: Security Result About Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__process__file.file_metadata}]) as udm_events__security_result__about__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__security_result__about__file__file_metadata {
    view_label: "Udm Events: Security Result About File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__security_result__about__file.file_metadata}]) as udm_events__security_result__about__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__target__process__file__file_metadata {
    view_label: "Udm Events: Target Process File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__target__process__file.file_metadata}]) as udm_events__target__process__file__file_metadata ;;
    relationship: one_to_one
  }

  join: udm_events__target__file__file_metadata {
    view_label: "Udm Events: Target File File Metadata"
    sql: LEFT JOIN UNNEST([${udm_events__target__file.file_metadata}]) as udm_events__target__file__file_metadata ;;
    relationship: one_to_one
  }
}
