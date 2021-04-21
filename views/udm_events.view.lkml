include: "//@{CONFIG_PROJECT_NAME}/views/udm_events.view.lkml"


view: udm_events {
  extends: [udm_events_config]
}

###################################################
view: udm_events_core {
  sql_table_name: @{DATASET_NAME}.@{UDM_EVENTS};;

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

  dimension: about {
    hidden: yes
    sql: ${TABLE}.about ;;
  }

  dimension: additional {
    hidden: yes
    sql: ${TABLE}.additional ;;
  }

  dimension: extensions {
    hidden: yes
    sql: ${TABLE}.extensions ;;
  }

  dimension: intermediary {
    hidden: yes
    sql: ${TABLE}.intermediary ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension: network {
    hidden: yes
    sql: ${TABLE}.network ;;
  }

  dimension: observer {
    hidden: yes
    sql: ${TABLE}.observer ;;
  }

  dimension: principal {
    hidden: yes
    sql: ${TABLE}.principal ;;
  }

  dimension: security_result {
    hidden: yes
    sql: ${TABLE}.security_result[SAFE_OFFSET(0)] ;;
  }

  dimension: src {
    hidden: yes
    sql: ${TABLE}.src ;;
  }

  dimension: target {
    hidden: yes
    sql: ${TABLE}.target ;;
  }

  measure: count {
    type: count
  }
}

view: udm_events__principal {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip[SAFE_OFFSET(0)] ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__principal__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__principal__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__principal__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__principal__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__principal__resource {

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__principal__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__principal__cloud__vpc {

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__principal__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__principal__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__principal__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__principal__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__principal__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: userid_for_drill {
    type: string
    sql: ${TABLE}.userid ;;
    # link: {
    #   label: "User Lookup on {{value}}"
    #   url: "@{USER_LOOKUP}"
    #   icon_url: "@{DASHBOARD_ICON_URL}"
    # }
    link: {
      label: "Investigate in Chronicle"
      url: "@{CHRONICLE_URL}/userResults?userName={{value}}"
      icon_url: "@{CHRONICLE_ICON_URL}"
    }
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__principal__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__principal__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__principal__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__principal__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__principal__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__principal__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__observer {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__observer__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__observer__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__observer__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__observer__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__observer__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__observer__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__observer__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__observer__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__observer__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__observer__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__observer__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__observer__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__observer__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__observer__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__observer__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__observer__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__observer__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__observer__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__metadata {
  dimension: collected_timestamp {
    hidden: yes
    sql: ${TABLE}.collected_timestamp ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: event_timestamp {
    hidden: yes
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_type {
    type: number
    sql: ${TABLE}.event_type ;;
  }

  dimension: ingested_timestamp {
    hidden: yes
    sql: ${TABLE}.ingested_timestamp ;;
  }

  dimension: product_event_type {
    type: string
    sql: ${TABLE}.product_event_type ;;
  }

  dimension: product_log_id {
    type: string
    sql: ${TABLE}.product_log_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_version {
    type: string
    sql: ${TABLE}.product_version ;;
  }

  dimension: url_back_to_product {
    type: string
    sql: ${TABLE}.url_back_to_product ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }
}

view: udm_events__metadata__ingested_timestamp {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__metadata__collected_timestamp {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__metadata__event_timestamp {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__auth {
  dimension: auth_details {
    type: string
    sql: ${TABLE}.auth_details ;;
  }

  dimension: mechanism {
    type: number
    sql: ${TABLE}.mechanism[SAFE_OFFSET(0)] ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities {
  dimension: about {
    hidden: yes
    sql: ${TABLE}.about ;;
  }

  dimension: cvss_base_score {
    type: number
    sql: ${TABLE}.cvss_base_score ;;
  }

  dimension: cvss_vector {
    type: string
    sql: ${TABLE}.cvss_vector ;;
  }

  dimension: cvss_version {
    type: string
    sql: ${TABLE}.cvss_version ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_found {
    hidden: yes
    sql: ${TABLE}.first_found ;;
  }

  dimension: last_found {
    hidden: yes
    sql: ${TABLE}.last_found ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time {
    hidden: yes
    sql: ${TABLE}.scan_end_time ;;
  }

  dimension: scan_start_time {
    hidden: yes
    sql: ${TABLE}.scan_start_time ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__first_found {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__scan_start_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__scan_end_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__last_found {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__src {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__src__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__src__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__src__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__src__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__src__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__src__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__src__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__src__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__src__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__src__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__src__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__src__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__src__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__src__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__src__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__src__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__src__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__src__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__additional__fields__value {
  dimension: bool_value {
    type: yesno
    sql: ${TABLE}.bool_value ;;
  }

  dimension: null_value {
    type: number
    sql: ${TABLE}.null_value ;;
  }

  dimension: number_value {
    type: number
    sql: ${TABLE}.number_value ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.string_value ;;
  }
}

view: udm_events__additional__fields {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    hidden: yes
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__about__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__about__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__about__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__about__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__about__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__about__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}


view: udm_events__about__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__about__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__about__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__about__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__about__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__about__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__about__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__about__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__about__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__about__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__about__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__about__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__intermediary {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__intermediary__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__intermediary__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__intermediary__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__intermediary__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__intermediary__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__intermediary__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__intermediary__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__intermediary__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__intermediary__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__intermediary__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__intermediary__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__intermediary__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__intermediary__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__intermediary__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__intermediary__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__intermediary__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__intermediary__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__intermediary__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__security_result {
  dimension: about {
    hidden: yes
    sql: ${TABLE}.about ;;
  }

  dimension: action {
    type: number
    sql: ${TABLE}.action[SAFE_OFFSET(0)] ;;
  }

  dimension: security_result_action_as_string {
    type: string
    label: "security_result[0].action[0].string"
    sql:
    CASE
WHEN ${action} = 0 THEN 'UNKNOWN_ACTION'
WHEN ${action} = 1 THEN 'ALLOW'
WHEN ${action} = 2 THEN 'BLOCK'
WHEN ${action} = 3 THEN 'ALLOW_WITH_MODIFICATION'
WHEN ${action} = 4 THEN 'QUARANTINE'
    ELSE
      CAST(${action} AS STRING)
    END ;;
  }

  dimension: action_details {
    type: string
    sql: ${TABLE}.action_details ;;
  }

  dimension: alert_state {
    type: number
    sql: ${TABLE}.alert_state ;;
  }

  dimension: category {
    type: number
    sql: ${TABLE}.category ;;
  }

  dimension: category_details {
    type: string
    sql: ${TABLE}.category_details ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.confidence ;;
  }

  dimension: confidence_details {
    type: string
    sql: ${TABLE}.confidence_details ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: priority_details {
    type: string
    sql: ${TABLE}.priority_details ;;
  }

  dimension: rule_id {
    type: string
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }

  dimension: rule_type {
    type: string
    sql: ${TABLE}.rule_type ;;
  }

  dimension: rule_version {
    type: string
    sql: ${TABLE}.rule_version ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: threat_id {
    type: string
    sql: ${TABLE}.threat_id ;;
  }

  dimension: threat_name {
    type: string
    sql: ${TABLE}.threat_name ;;
  }

  dimension: threat_status {
    type: number
    sql: ${TABLE}.threat_status ;;
  }

  dimension: url_back_to_product {
    type: string
    sql: ${TABLE}.url_back_to_product ;;
  }
}

view: udm_events__security_result__about {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__security_result__about__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__security_result__about__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__security_result__about__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__security_result__about__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__security_result__about__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__security_result__about__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__security_result__about__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__security_result__about__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__security_result__about__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__security_result__about__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__security_result__about__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__security_result__about__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__security_result__about__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__security_result__about__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__security_result__about__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__security_result__about__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__security_result__about__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__security_result__about__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__target {
  dimension: administrative_domain {
    type: string
    sql: ${TABLE}.administrative_domain ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud {
    hidden: yes
    sql: ${TABLE}.cloud ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: group {
    hidden: yes
    sql: ${TABLE}.`group` ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip[SAFE_OFFSET(0)] ;;
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location {
    hidden: yes
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    type: string
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_patch_level {
    type: string
    sql: ${TABLE}.platform_patch_level ;;
  }

  dimension: platform_version {
    type: string
    sql: ${TABLE}.platform_version ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.port ;;
  }

  dimension: process {
    hidden: yes
    sql: ${TABLE}.process ;;
  }

  dimension: registry {
    hidden: yes
    sql: ${TABLE}.registry ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: udm_events__target__registry {
  dimension: registry_key {
    type: string
    sql: ${TABLE}.registry_key ;;
  }

  dimension: registry_value_data {
    type: string
    sql: ${TABLE}.registry_value_data ;;
  }

  dimension: registry_value_name {
    type: string
    sql: ${TABLE}.registry_value_name ;;
  }
}

view: udm_events__target__process__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__target__process__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__target__process {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: file {
    hidden: yes
    sql: ${TABLE}.file ;;
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: udm_events__target__resource {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__target__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: map_value {
    map_layer_name: countries
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__cloud {
  dimension: availability_zone {
    type: string
    sql: ${TABLE}.availability_zone ;;
  }

  dimension: environment {
    type: number
    sql: ${TABLE}.environment ;;
  }

  dimension: project {
    hidden: yes
    sql: ${TABLE}.project ;;
  }

  dimension: vpc {
    hidden: yes
    sql: ${TABLE}.vpc ;;
  }
}

view: udm_events__target__cloud__vpc {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__target__cloud__project {


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__target__file {
  dimension: file_metadata {
    hidden: yes
    sql: ${TABLE}.file_metadata ;;
  }

  dimension: full_path {
    type: string
    sql: ${TABLE}.full_path ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
}

view: udm_events__target__file__file_metadata__pe {
  dimension: import_hash {
    type: string
    sql: ${TABLE}.import_hash ;;
  }
}

view: udm_events__target__location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__target__user {
  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: group_identifiers {
    type: string
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date {
    hidden: yes
    sql: ${TABLE}.hire_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address {
    hidden: yes
    sql: ${TABLE}.office_address ;;
  }

  dimension: personal_address {
    hidden: yes
    sql: ${TABLE}.personal_address ;;
  }

  dimension: phone_numbers {
    type: string
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date {
    hidden: yes
    sql: ${TABLE}.termination_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__target__user__hire_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__target__user__personal_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__target__user__office_address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: udm_events__target__user__termination_date {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__target__group__creation_time {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__target__group {
  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.creation_time ;;
  }

  dimension: email_addresses {
    type: string
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: group_display_name {
    type: string
    sql: ${TABLE}.group_display_name ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: udm_events__network {
  dimension: application_protocol {
    type: number
    sql: ${TABLE}.application_protocol ;;
  }

  dimension: community_id {
    type: string
    sql: ${TABLE}.community_id ;;
  }

  dimension: dhcp {
    hidden: yes
    sql: ${TABLE}.dhcp ;;
  }

  dimension: direction {
    type: number
    sql: ${TABLE}.direction ;;
  }

  dimension: dns {
    hidden: yes
    sql: ${TABLE}.dns ;;
  }

  dimension: email {
    hidden: yes
    sql: ${TABLE}.email ;;
  }

  dimension: ftp {
    hidden: yes
    sql: ${TABLE}.ftp ;;
  }

  dimension: http {
    hidden: yes
    sql: ${TABLE}.http ;;
  }

  dimension: ip_protocol {
    type: number
    sql: ${TABLE}.ip_protocol ;;
  }

  dimension: received_bytes {
    type: number
    sql: ${TABLE}.received_bytes ;;
  }

  dimension: sent_bytes {
    type: number
    sql: ${TABLE}.sent_bytes ;;
  }

  dimension: session_duration {
    hidden: yes
    sql: ${TABLE}.session_duration ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: tls {
    hidden: yes
    sql: ${TABLE}.tls ;;
  }
}

view: udm_events__network__ftp {
  dimension: command {
    type: string
    sql: ${TABLE}.command ;;
  }
}

view: udm_events__network__dns {


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional {
    hidden: yes
    sql: ${TABLE}.additional ;;
  }

  dimension: answers {
    hidden: yes
    sql: ${TABLE}.answers ;;
  }

  dimension: authoritative {
    type: yesno
    sql: ${TABLE}.authoritative ;;
  }

  dimension: authority {
    hidden: yes
    sql: ${TABLE}.authority ;;
  }

  dimension: opcode {
    type: number
    sql: ${TABLE}.opcode ;;
  }

  dimension: questions {
    hidden: yes
    sql: ${TABLE}.questions ;;
  }

  dimension: recursion_available {
    type: yesno
    sql: ${TABLE}.recursion_available ;;
  }

  dimension: recursion_desired {
    type: yesno
    sql: ${TABLE}.recursion_desired ;;
  }

  dimension: response {
    type: yesno
    sql: ${TABLE}.response ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.response_code ;;
  }

  dimension: truncated {
    type: yesno
    sql: ${TABLE}.truncated ;;
  }
}

view: udm_events__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: udm_events__network__session_duration {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__network__http {
  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: referral_url {
    type: string
    sql: ${TABLE}.referral_url ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.response_code ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }
}

view: udm_events__network__tls {
  dimension: cipher {
    type: string
    sql: ${TABLE}.cipher ;;
  }

  dimension: client {
    hidden: yes
    sql: ${TABLE}.client ;;
  }

  dimension: curve {
    type: string
    sql: ${TABLE}.curve ;;
  }

  dimension: established {
    type: yesno
    sql: ${TABLE}.established ;;
  }

  dimension: next_protocol {
    type: string
    sql: ${TABLE}.next_protocol ;;
  }

  dimension: resumed {
    type: yesno
    sql: ${TABLE}.resumed ;;
  }

  dimension: server {
    hidden: yes
    sql: ${TABLE}.server ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: version_protocol {
    type: string
    sql: ${TABLE}.version_protocol ;;
  }
}

view: udm_events__network__tls__server {
  dimension: certificate {
    hidden: yes
    sql: ${TABLE}.certificate ;;
  }

  dimension: ja3s {
    type: string
    sql: ${TABLE}.ja3s ;;
  }
}

view: udm_events__network__tls__server__certificate {
  dimension: issuer {
    type: string
    sql: ${TABLE}.issuer ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: not_after {
    hidden: yes
    sql: ${TABLE}.not_after ;;
  }

  dimension: not_before {
    hidden: yes
    sql: ${TABLE}.not_before ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__network__tls__server__certificate__not_after {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__network__tls__server__certificate__not_before {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__network__tls__client {
  dimension: certificate {
    hidden: yes
    sql: ${TABLE}.certificate ;;
  }

  dimension: ja3 {
    type: string
    sql: ${TABLE}.ja3 ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.server_name ;;
  }

  dimension: supported_ciphers {
    type: string
    sql: ${TABLE}.supported_ciphers ;;
  }
}

view: udm_events__network__tls__client__certificate {
  dimension: issuer {
    type: string
    sql: ${TABLE}.issuer ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
  }

  dimension: not_after {
    hidden: yes
    sql: ${TABLE}.not_after ;;
  }

  dimension: not_before {
    hidden: yes
    sql: ${TABLE}.not_before ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }

  dimension: sha1 {
    type: string
    sql: ${TABLE}.sha1 ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__network__tls__client__certificate__not_after {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__network__tls__client__certificate__not_before {
  dimension: nanos {
    type: number
    sql: ${TABLE}.nanos ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }
}

view: udm_events__network__email {
  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.`from`[SAFE_OFFSET(0)] ;;
  }

  dimension: mail_id {
    type: string
    sql: ${TABLE}.mail_id ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}.`to`[SAFE_OFFSET(0)] ;;
  }
}

view: udm_events__network__dhcp {
  dimension: chaddr {
    type: string
    sql: ${TABLE}.chaddr ;;
  }

  dimension: ciaddr {
    type: string
    sql: ${TABLE}.ciaddr ;;
  }

  dimension: client_hostname {
    type: string
    sql: ${TABLE}.client_hostname ;;
  }

  dimension: client_identifier {
    type: string
    sql: ${TABLE}.client_identifier ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }

  dimension: giaddr {
    type: string
    sql: ${TABLE}.giaddr ;;
  }

  dimension: hlen {
    type: number
    sql: ${TABLE}.hlen ;;
  }

  dimension: hops {
    type: number
    sql: ${TABLE}.hops ;;
  }

  dimension: htype {
    type: number
    sql: ${TABLE}.htype ;;
  }

  dimension: lease_time_seconds {
    type: number
    sql: ${TABLE}.lease_time_seconds ;;
  }

  dimension: opcode {
    type: number
    sql: ${TABLE}.opcode ;;
  }

  dimension: options {
    hidden: yes
    sql: ${TABLE}.options ;;
  }

  dimension: requested_address {
    type: string
    sql: ${TABLE}.requested_address ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }

  dimension: siaddr {
    type: string
    sql: ${TABLE}.siaddr ;;
  }

  dimension: sname {
    type: string
    sql: ${TABLE}.sname ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: yiaddr {
    type: string
    sql: ${TABLE}.yiaddr ;;
  }
}

view: udm_events__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: udm_events__principal__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__principal__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__observer__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__observer__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__extensions {
  dimension: auth {
    hidden: yes
    sql: ${TABLE}.auth ;;
  }

  dimension: vulns {
    hidden: yes
    sql: ${TABLE}.vulns ;;
  }
}

view: udm_events__extensions__vulns {
  dimension: vulnerabilities {
    hidden: yes
    sql: ${TABLE}.vulnerabilities ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__src__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__src__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__additional {
  dimension: fields {
    hidden: yes
    sql: ${TABLE}.fields ;;
  }
}

view: udm_events__about__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__about__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__intermediary__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__intermediary__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__security_result__about__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__security_result__about__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__target__process__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

view: udm_events__target__file__file_metadata {
  dimension: pe {
    hidden: yes
    sql: ${TABLE}.pe ;;
  }
}

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

view: asset_rule_detections_with_udm_events {
  extends: [asset_rule_detections_with_udm_events_config]
}

###################################################

view: asset_rule_detections_with_udm_events_core {
  derived_table: {
    sql: WITH udm_events AS (SELECT
        COALESCE(udm_events.principal.hostname, udm_events.principal.ip[SAFE_OFFSET(0)]) AS asset,
        TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) AS time,
        COUNT(*) AS udm_events_count
      FROM `@{DATASET_NAME}.@{UDM_EVENTS}` AS udm_events
      WHERE
        (((COALESCE(udm_events.principal.hostname, udm_events.principal.ip[SAFE_OFFSET(0)])) IS NOT NULL))
        AND {% condition period_filter %} TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) {% endcondition %}
      GROUP BY 1, 2),
      rule_detections AS (SELECT
        COALESCE(rule_detections__detection__assets.hostname, rule_detections__detection__assets.asset_ip_address) AS asset,
        TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) AS time,
        COUNT(*) AS rule_detections_count
      FROM `@{DATASET_NAME}.@{RULE_DETECTIONS}` AS rule_detections
      LEFT JOIN UNNEST([rule_detections.detection]) as rule_detections__detection
      LEFT JOIN UNNEST([rule_detections__detection.detection_timestamp]) as rule_detections__detection__detection_timestamp
      LEFT JOIN UNNEST(rule_detections__detection.assets) as rule_detections__detection__assets
      WHERE
        (((COALESCE(rule_detections__detection__assets.hostname, rule_detections__detection__assets.asset_ip_address)) IS NOT NULL))
        AND {% condition period_filter %} TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) {% endcondition %}
      GROUP BY 1,2)
      SELECT * FROM @{RULE_DETECTIONS} FULL JOIN @{UDM_EVENTS} USING (asset, time) ORDER BY time DESC
       ;;
  }

  measure: count {
    type: count
  }

  dimension: asset {
    type: string
    sql: ${TABLE}.asset ;;
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
    datatype: timestamp
    sql: ${TABLE}.time ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
  }

  dimension: rule_detections_count {
    type: number
    sql: ${TABLE}.rule_detections_count ;;
  }

  dimension: udm_events_count {
    type: number
    sql: ${TABLE}.udm_events_count ;;
  }

}

view: user_rule_detections_with_udm_events {
  extends: [user_rule_detections_with_udm_events_config]
}

###################################################
view: user_rule_detections_with_udm_events_core {
  derived_table: {
    sql: WITH udm_events AS (SELECT
        udm_events.principal.user.userid AS user_name,
        TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) AS time,
        COUNT(*) AS udm_events_count
      FROM `@{DATASET_NAME}.@{UDM_EVENTS}` AS udm_events
      WHERE udm_events.principal.user.userid IS NOT NULL
      AND {% condition period_filter %} TIMESTAMP_SECONDS(udm_events.metadata.event_timestamp.seconds) {% endcondition %}
      GROUP BY 1, 2),
      rule_detections AS (SELECT
        rule_detections__detection__users.user_name AS user_name,
        TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) AS time,
        COUNT(*) AS rule_detections_count
      FROM `@{DATASET_NAME}.@{RULE_DETECTIONS}` AS rule_detections
      LEFT JOIN UNNEST([rule_detections.detection]) as rule_detections__detection
      LEFT JOIN UNNEST([rule_detections__detection.detection_timestamp]) as rule_detections__detection__detection_timestamp
      LEFT JOIN UNNEST(rule_detections__detection.users) as rule_detections__detection__users
      WHERE rule_detections__detection__users.user_name IS NOT NULL
      AND {% condition period_filter %} TIMESTAMP_SECONDS(rule_detections__detection__detection_timestamp.seconds) {% endcondition %}
      GROUP BY 1,2)
      SELECT * FROM @{RULE_DETECTIONS} FULL JOIN @{UDM_EVENTS} USING (user_name, time) ORDER BY time DESC
       ;;
  }

  measure: count {
    type: count
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
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
    datatype: timestamp
    sql: ${TABLE}.time ;;
  }

  filter: period_filter {
    type: date
    description: "Use this filter to define the current and previous period for analysis"
  }

  dimension: rule_detections_count {
    type: number
    sql: ${TABLE}.rule_detections_count ;;
  }

  dimension: udm_events_count {
    type: number
    sql: ${TABLE}.udm_events_count ;;
  }

}
