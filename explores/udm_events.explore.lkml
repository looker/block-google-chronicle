include: "/views/refinements/udm_events.view.lkml"

explore: udm_events {
  join: udm_events__src__ip {
    view_label: "Udm Events: Src Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__ip}) as udm_events__src__ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__mac {
    view_label: "Udm Events: Src Mac"
    sql: LEFT JOIN UNNEST(${udm_events.src__mac}) as udm_events__src__mac ;;
    relationship: one_to_many
  }

  join: udm_events__about__ip {
    view_label: "Udm Events: About Ip"
    sql: LEFT JOIN UNNEST(${udm_events.about__ip}) as udm_events__about__ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__mac {
    view_label: "Udm Events: About Mac"
    sql: LEFT JOIN UNNEST(${udm_events.about__mac}) as udm_events__about__mac ;;
    relationship: one_to_many
  }

  join: udm_events__about {
    view_label: "Udm Events: About"
    sql: LEFT JOIN UNNEST(${udm_events.about}) as udm_events__about ;;
    relationship: one_to_many
  }

  join: udm_events__target__ip {
    view_label: "Udm Events: Target Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__ip}) as udm_events__target__ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__nat_ip {
    view_label: "Udm Events: Src Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__nat_ip}) as udm_events__src__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__mac {
    view_label: "Udm Events: Target Mac"
    sql: LEFT JOIN UNNEST(${udm_events.target__mac}) as udm_events__target__mac ;;
    relationship: one_to_many
  }

  join: udm_events__observer__ip {
    view_label: "Udm Events: Observer Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__ip}) as udm_events__observer__ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__ip {
    view_label: "Udm Events: Src Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__ip}) as udm_events__src__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__nat_ip {
    view_label: "Udm Events: About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.nat_ip}) as udm_events__about__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__principal__ip {
    view_label: "Udm Events: Principal Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__ip}) as udm_events__principal__ip ;;
    relationship: one_to_many
  }

  join: udm_events__observer__mac {
    view_label: "Udm Events: Observer Mac"
    sql: LEFT JOIN UNNEST(${udm_events.observer__mac}) as udm_events__observer__mac ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__mac {
    view_label: "Udm Events: Src Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__mac}) as udm_events__src__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__target__nat_ip {
    view_label: "Udm Events: Target Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__nat_ip}) as udm_events__target__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__principal__mac {
    view_label: "Udm Events: Principal Mac"
    sql: LEFT JOIN UNNEST(${udm_events.principal__mac}) as udm_events__principal__mac ;;
    relationship: one_to_many
  }

  join: udm_events__src__labels {
    view_label: "Udm Events: Src Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__labels}) as udm_events__src__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__ip {
    view_label: "Udm Events: About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__ip}) as udm_events__about__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__mac {
    view_label: "Udm Events: About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__mac}) as udm_events__about__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__ip {
    view_label: "Udm Events: Intermediary Ip"
    sql: LEFT JOIN UNNEST(${udm_events.intermediary__ip}) as udm_events__intermediary__ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__ip {
    view_label: "Udm Events: Target Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__ip}) as udm_events__target__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__observer__nat_ip {
    view_label: "Udm Events: Observer Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__nat_ip}) as udm_events__observer__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__nat_ip {
    view_label: "Udm Events: Src Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__nat_ip}) as udm_events__src__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__labels {
    view_label: "Udm Events: About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.labels}) as udm_events__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__mac {
    view_label: "Udm Events: Intermediary Mac"
    sql: LEFT JOIN UNNEST(${udm_events.intermediary__mac}) as udm_events__intermediary__mac ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary {
    view_label: "Udm Events: Intermediary"
    sql: LEFT JOIN UNNEST(${udm_events.intermediary}) as udm_events__intermediary ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__mac {
    view_label: "Udm Events: Target Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__mac}) as udm_events__target__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__network__email__cc {
    view_label: "Udm Events: Network Email Cc"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__cc}) as udm_events__network__email__cc ;;
    relationship: one_to_many
  }

  join: udm_events__principal__nat_ip {
    view_label: "Udm Events: Principal Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__nat_ip}) as udm_events__principal__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__labels {
    view_label: "Udm Events: Target Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__labels}) as udm_events__target__labels ;;
    relationship: one_to_many
  }

  join: udm_events__network__email__bcc {
    view_label: "Udm Events: Network Email Bcc"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__bcc}) as udm_events__network__email__bcc ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__ip {
    view_label: "Udm Events: Observer Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__ip}) as udm_events__observer__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__nat_ip {
    view_label: "Udm Events: About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__nat_ip}) as udm_events__about__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__network__email__to {
    view_label: "Udm Events: Network Email To"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__to}) as udm_events__network__email__to ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__ip {
    view_label: "Udm Events: Principal Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__ip}) as udm_events__principal__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__mac {
    view_label: "Udm Events: Observer Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__mac}) as udm_events__observer__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__department {
    view_label: "Udm Events: Src User Department"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__department}) as udm_events__src__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__nat_ip {
    view_label: "Udm Events: Intermediary Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.nat_ip}) as udm_events__intermediary__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__nat_ip {
    view_label: "Udm Events: Target Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__nat_ip}) as udm_events__target__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__mac {
    view_label: "Udm Events: Principal Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__mac}) as udm_events__principal__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__observer__labels {
    view_label: "Udm Events: Observer Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__labels}) as udm_events__observer__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__labels {
    view_label: "Udm Events: Src Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__labels}) as udm_events__src__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__labels {
    view_label: "Udm Events: Principal Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__labels}) as udm_events__principal__labels ;;
    relationship: one_to_many
  }

  join: udm_events__additional__fields {
    view_label: "Udm Events: Additional Fields"
    sql: LEFT JOIN UNNEST(${udm_events.additional__fields}) as udm_events__additional__fields ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__department {
    view_label: "Udm Events: About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__department}) as udm_events__about__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__ip {
    view_label: "Udm Events: Intermediary Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__ip}) as udm_events__intermediary__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__network__email__subject {
    view_label: "Udm Events: Network Email Subject"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__subject}) as udm_events__network__email__subject ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__nat_ip {
    view_label: "Udm Events: Observer Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__nat_ip}) as udm_events__observer__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__hardware {
    view_label: "Udm Events: Src Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__hardware}) as udm_events__src__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__phone_numbers {
    view_label: "Udm Events: Src User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__phone_numbers}) as udm_events__src__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__labels {
    view_label: "Udm Events: About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__labels}) as udm_events__about__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__mac {
    view_label: "Udm Events: Intermediary Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__mac}) as udm_events__intermediary__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__action {
    view_label: "Udm Events: Security Result Action"
    sql: LEFT JOIN UNNEST(${udm_events.security_result__action}) as udm_events__security_result__action ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__department {
    view_label: "Udm Events: Target User Department"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__department}) as udm_events__target__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__nat_ip {
    view_label: "Udm Events: Principal Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__nat_ip}) as udm_events__principal__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__metadata__tags__tenant_id {
    view_label: "Udm Events: Metadata Tags Tenant Id"
    sql: LEFT JOIN UNNEST(${udm_events.metadata__tags__tenant_id}) as udm_events__metadata__tags__tenant_id ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__software {
    view_label: "Udm Events: Src Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__software}) as udm_events__src__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__labels {
    view_label: "Udm Events: Intermediary Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.labels}) as udm_events__intermediary__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result {
    view_label: "Udm Events: Security Result"
    sql: LEFT JOIN UNNEST(${udm_events.security_result}) as udm_events__security_result ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__labels {
    view_label: "Udm Events: Target Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__labels}) as udm_events__target__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__answers {
    view_label: "Udm Events: Network Dns Answers"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__answers}) as udm_events__network__dns__answers ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__email_addresses {
    view_label: "Udm Events: Src User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__email_addresses}) as udm_events__src__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__hardware {
    view_label: "Udm Events: About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__hardware}) as udm_events__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__phone_numbers {
    view_label: "Udm Events: About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__phone_numbers}) as udm_events__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__ip {
    view_label: "Udm Events: Security Result About Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__ip}) as udm_events__security_result__about__ip ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__category {
    view_label: "Udm Events: Security Result Category"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.category}) as udm_events__security_result__category ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__department {
    view_label: "Udm Events: Observer User Department"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__department}) as udm_events__observer__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__src__process_ancestors {
    view_label: "Udm Events: Src Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.src__process_ancestors}) as udm_events__src__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__software {
    view_label: "Udm Events: About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__software}) as udm_events__about__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__nat_ip {
    view_label: "Udm Events: Intermediary Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__nat_ip}) as udm_events__intermediary__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__mac {
    view_label: "Udm Events: Security Result About Mac"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__mac}) as udm_events__security_result__about__mac ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__hardware {
    view_label: "Udm Events: Target Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__hardware}) as udm_events__target__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__phone_numbers {
    view_label: "Udm Events: Target User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__phone_numbers}) as udm_events__target__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__authority {
    view_label: "Udm Events: Network Dns Authority"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__authority}) as udm_events__network__dns__authority ;;
    relationship: one_to_many
  }

  join: udm_events__network__dhcp__options {
    view_label: "Udm Events: Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${udm_events.network__dhcp__options}) as udm_events__network__dhcp__options ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__department {
    view_label: "Udm Events: Principal User Department"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__department}) as udm_events__principal__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__labels {
    view_label: "Udm Events: Observer Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__labels}) as udm_events__observer__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__auth__mechanism {
    view_label: "Udm Events: Extensions Auth Mechanism"
    sql: LEFT JOIN UNNEST(${udm_events.extensions__auth__mechanism}) as udm_events__extensions__auth__mechanism ;;
    relationship: one_to_many
  }

  join: udm_events__src__investigation__comments {
    view_label: "Udm Events: Src Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.src__investigation__comments}) as udm_events__src__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__group_identifiers {
    view_label: "Udm Events: Src User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__group_identifiers}) as udm_events__src__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__email_addresses {
    view_label: "Udm Events: About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__email_addresses}) as udm_events__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__software {
    view_label: "Udm Events: Target Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__software}) as udm_events__target__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__additional {
    view_label: "Udm Events: Network Dns Additional"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__additional}) as udm_events__network__dns__additional ;;
    relationship: one_to_many
  }

  join: udm_events__network__dns__questions {
    view_label: "Udm Events: Network Dns Questions"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__questions}) as udm_events__network__dns__questions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__labels {
    view_label: "Udm Events: Principal Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__labels}) as udm_events__principal__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__group__email_addresses {
    view_label: "Udm Events: Src Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__email_addresses}) as udm_events__src__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__about__process_ancestors {
    view_label: "Udm Events: About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__about.process_ancestors}) as udm_events__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__email_addresses {
    view_label: "Udm Events: Target User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__email_addresses}) as udm_events__target__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__hardware {
    view_label: "Udm Events: Observer Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__hardware}) as udm_events__observer__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__phone_numbers {
    view_label: "Udm Events: Observer User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__phone_numbers}) as udm_events__observer__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__about__investigation__comments {
    view_label: "Udm Events: About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__about.investigation__comments}) as udm_events__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__group_identifiers {
    view_label: "Udm Events: About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__group_identifiers}) as udm_events__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__department {
    view_label: "Udm Events: Intermediary User Department"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__department}) as udm_events__intermediary__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__nat_ip {
    view_label: "Udm Events: Security Result About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__nat_ip}) as udm_events__security_result__about__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__process_ancestors {
    view_label: "Udm Events: Target Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.target__process_ancestors}) as udm_events__target__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__hardware {
    view_label: "Udm Events: Principal Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__hardware}) as udm_events__principal__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__phone_numbers {
    view_label: "Udm Events: Principal User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__phone_numbers}) as udm_events__principal__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__software {
    view_label: "Udm Events: Observer Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__software}) as udm_events__observer__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__metadata__ingestion_labels {
    view_label: "Udm Events: Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${udm_events.metadata__ingestion_labels}) as udm_events__metadata__ingestion_labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__time_off {
    view_label: "Udm Events: Src User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__time_off}) as udm_events__src__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__attribute__roles {
    view_label: "Udm Events: Src User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__roles}) as udm_events__src__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__attribute__labels {
    view_label: "Udm Events: Src User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__labels}) as udm_events__src__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__group__email_addresses {
    view_label: "Udm Events: About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__email_addresses}) as udm_events__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__labels {
    view_label: "Udm Events: Intermediary Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__labels}) as udm_events__intermediary__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__investigation__comments {
    view_label: "Udm Events: Target Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.target__investigation__comments}) as udm_events__target__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__group_identifiers {
    view_label: "Udm Events: Target User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__group_identifiers}) as udm_events__target__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__software {
    view_label: "Udm Events: Principal Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__software}) as udm_events__principal__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__email_addresses {
    view_label: "Udm Events: Observer User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__email_addresses}) as udm_events__observer__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__vulnerabilities {
    view_label: "Udm Events: Src Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__vulnerabilities}) as udm_events__src__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__attribute__roles {
    view_label: "Udm Events: Src Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__roles}) as udm_events__src__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__attribute__labels {
    view_label: "Udm Events: Src Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__labels}) as udm_events__src__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__ip {
    view_label: "Udm Events: Security Result About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__ip}) as udm_events__security_result__about__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__group__email_addresses {
    view_label: "Udm Events: Target Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__email_addresses}) as udm_events__target__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__email_addresses {
    view_label: "Udm Events: Principal User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__email_addresses}) as udm_events__principal__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__observer__process_ancestors {
    view_label: "Udm Events: Observer Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.observer__process_ancestors}) as udm_events__observer__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain {
    view_label: "Udm Events: Src User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.src__user_management_chain}) as udm_events__src__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__time_off {
    view_label: "Udm Events: About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__time_off}) as udm_events__about__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__attribute__roles {
    view_label: "Udm Events: About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__roles}) as udm_events__about__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__attribute__labels {
    view_label: "Udm Events: About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__labels}) as udm_events__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__hardware {
    view_label: "Udm Events: Intermediary Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__hardware}) as udm_events__intermediary__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__phone_numbers {
    view_label: "Udm Events: Intermediary User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__phone_numbers}) as udm_events__intermediary__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__mac {
    view_label: "Udm Events: Security Result About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__mac}) as udm_events__security_result__about__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__rule_labels {
    view_label: "Udm Events: Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.rule_labels}) as udm_events__security_result__rule_labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__process_ancestors {
    view_label: "Udm Events: Principal Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.principal__process_ancestors}) as udm_events__principal__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__observer__investigation__comments {
    view_label: "Udm Events: Observer Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.observer__investigation__comments}) as udm_events__observer__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__group_identifiers {
    view_label: "Udm Events: Observer User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__group_identifiers}) as udm_events__observer__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__src__group__attribute__roles {
    view_label: "Udm Events: Src Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__roles}) as udm_events__src__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__group__attribute__labels {
    view_label: "Udm Events: Src Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__labels}) as udm_events__src__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__process__command_line_history {
    view_label: "Udm Events: Src Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.src__process__command_line_history}) as udm_events__src__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__vulnerabilities {
    view_label: "Udm Events: About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__vulnerabilities}) as udm_events__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__attribute__roles {
    view_label: "Udm Events: About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__roles}) as udm_events__about__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__attribute__labels {
    view_label: "Udm Events: About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__labels}) as udm_events__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__software {
    view_label: "Udm Events: Intermediary Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__software}) as udm_events__intermediary__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__labels {
    view_label: "Udm Events: Security Result About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__labels}) as udm_events__security_result__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__category_details {
    view_label: "Udm Events: Security Result Category Details"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.category_details}) as udm_events__security_result__category_details ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__time_off {
    view_label: "Udm Events: Target User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__time_off}) as udm_events__target__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__attribute__roles {
    view_label: "Udm Events: Target User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__roles}) as udm_events__target__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__attribute__labels {
    view_label: "Udm Events: Target User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__labels}) as udm_events__target__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__investigation__comments {
    view_label: "Udm Events: Principal Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.principal__investigation__comments}) as udm_events__principal__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__group_identifiers {
    view_label: "Udm Events: Principal User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__group_identifiers}) as udm_events__principal__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__observer__group__email_addresses {
    view_label: "Udm Events: Observer Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__email_addresses}) as udm_events__observer__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__src__resource__attribute__roles {
    view_label: "Udm Events: Src Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__roles}) as udm_events__src__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__resource__attribute__labels {
    view_label: "Udm Events: Src Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__labels}) as udm_events__src__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain {
    view_label: "Udm Events: About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__about.user_management_chain}) as udm_events__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__email_addresses {
    view_label: "Udm Events: Intermediary User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__email_addresses}) as udm_events__intermediary__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__vulnerabilities {
    view_label: "Udm Events: Target Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__vulnerabilities}) as udm_events__target__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__attribute__roles {
    view_label: "Udm Events: Target Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__roles}) as udm_events__target__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__attribute__labels {
    view_label: "Udm Events: Target Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__labels}) as udm_events__target__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__group__email_addresses {
    view_label: "Udm Events: Principal Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__email_addresses}) as udm_events__principal__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Src Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__roles}) as udm_events__src__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Src Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__labels}) as udm_events__src__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__group__attribute__roles {
    view_label: "Udm Events: About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__roles}) as udm_events__about__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__group__attribute__labels {
    view_label: "Udm Events: About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__labels}) as udm_events__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__process__command_line_history {
    view_label: "Udm Events: About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__about.process__command_line_history}) as udm_events__about__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__process_ancestors {
    view_label: "Udm Events: Intermediary Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.process_ancestors}) as udm_events__intermediary__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__nat_ip {
    view_label: "Udm Events: Security Result About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__nat_ip}) as udm_events__security_result__about__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain {
    view_label: "Udm Events: Target User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.target__user_management_chain}) as udm_events__target__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__time_off {
    view_label: "Udm Events: Observer User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__time_off}) as udm_events__observer__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__attribute__roles {
    view_label: "Udm Events: Observer User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__roles}) as udm_events__observer__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__attribute__labels {
    view_label: "Udm Events: Observer User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__labels}) as udm_events__observer__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__user__attribute__permissions {
    view_label: "Udm Events: Src User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__permissions}) as udm_events__src__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__resource__attribute__roles {
    view_label: "Udm Events: About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__roles}) as udm_events__about__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__resource__attribute__labels {
    view_label: "Udm Events: About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__labels}) as udm_events__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__investigation__comments {
    view_label: "Udm Events: Intermediary Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.investigation__comments}) as udm_events__intermediary__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__group_identifiers {
    view_label: "Udm Events: Intermediary User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__group_identifiers}) as udm_events__intermediary__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__target__group__attribute__roles {
    view_label: "Udm Events: Target Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__roles}) as udm_events__target__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__group__attribute__labels {
    view_label: "Udm Events: Target Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__labels}) as udm_events__target__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__process__command_line_history {
    view_label: "Udm Events: Target Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.target__process__command_line_history}) as udm_events__target__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__time_off {
    view_label: "Udm Events: Principal User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__time_off}) as udm_events__principal__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__attribute__roles {
    view_label: "Udm Events: Principal User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__roles}) as udm_events__principal__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__attribute__labels {
    view_label: "Udm Events: Principal User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__labels}) as udm_events__principal__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__vulnerabilities {
    view_label: "Udm Events: Observer Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__vulnerabilities}) as udm_events__observer__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__attribute__roles {
    view_label: "Udm Events: Observer Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__roles}) as udm_events__observer__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__attribute__labels {
    view_label: "Udm Events: Observer Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__labels}) as udm_events__observer__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__department {
    view_label: "Udm Events: Src User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.department}) as udm_events__src__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__src__asset__attribute__permissions {
    view_label: "Udm Events: Src Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__permissions}) as udm_events__src__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__roles}) as udm_events__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__labels}) as udm_events__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__group__email_addresses {
    view_label: "Udm Events: Intermediary Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__email_addresses}) as udm_events__intermediary__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__detection_fields {
    view_label: "Udm Events: Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.detection_fields}) as udm_events__security_result__detection_fields ;;
    relationship: one_to_many
  }

  join: udm_events__target__resource__attribute__roles {
    view_label: "Udm Events: Target Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__roles}) as udm_events__target__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__resource__attribute__labels {
    view_label: "Udm Events: Target Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__labels}) as udm_events__target__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__network__tls__client__supported_ciphers {
    view_label: "Udm Events: Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${udm_events.network__tls__client__supported_ciphers}) as udm_events__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__vulnerabilities {
    view_label: "Udm Events: Principal Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__vulnerabilities}) as udm_events__principal__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__attribute__roles {
    view_label: "Udm Events: Principal Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__roles}) as udm_events__principal__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__attribute__labels {
    view_label: "Udm Events: Principal Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__labels}) as udm_events__principal__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain {
    view_label: "Udm Events: Observer User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user_management_chain}) as udm_events__observer__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__about__user__attribute__permissions {
    view_label: "Udm Events: About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__permissions}) as udm_events__about__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__department {
    view_label: "Udm Events: Security Result About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__department}) as udm_events__security_result__about__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Target Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__roles}) as udm_events__target__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Target Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__labels}) as udm_events__target__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain {
    view_label: "Udm Events: Principal User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user_management_chain}) as udm_events__principal__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__observer__group__attribute__roles {
    view_label: "Udm Events: Observer Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__roles}) as udm_events__observer__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__group__attribute__labels {
    view_label: "Udm Events: Observer Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__labels}) as udm_events__observer__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__process__command_line_history {
    view_label: "Udm Events: Observer Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.observer__process__command_line_history}) as udm_events__observer__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.extensions__vulns__vulnerabilities}) as udm_events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__project__attribute__roles {
    view_label: "Udm Events: Src Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__roles}) as udm_events__src__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__project__attribute__labels {
    view_label: "Udm Events: Src Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__labels}) as udm_events__src__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__group__attribute__permissions {
    view_label: "Udm Events: Src Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__permissions}) as udm_events__src__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__department {
    view_label: "Udm Events: About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.department}) as udm_events__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__about__asset__attribute__permissions {
    view_label: "Udm Events: About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__permissions}) as udm_events__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__time_off {
    view_label: "Udm Events: Intermediary User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__time_off}) as udm_events__intermediary__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__attribute__roles {
    view_label: "Udm Events: Intermediary User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__roles}) as udm_events__intermediary__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__attribute__labels {
    view_label: "Udm Events: Intermediary User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__labels}) as udm_events__intermediary__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__labels {
    view_label: "Udm Events: Security Result About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__labels}) as udm_events__security_result__about__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__user__attribute__permissions {
    view_label: "Udm Events: Target User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__permissions}) as udm_events__target__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__group__attribute__roles {
    view_label: "Udm Events: Principal Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__roles}) as udm_events__principal__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__group__attribute__labels {
    view_label: "Udm Events: Principal Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__labels}) as udm_events__principal__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__process__command_line_history {
    view_label: "Udm Events: Principal Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.principal__process__command_line_history}) as udm_events__principal__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__observer__resource__attribute__roles {
    view_label: "Udm Events: Observer Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__roles}) as udm_events__observer__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__resource__attribute__labels {
    view_label: "Udm Events: Observer Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__labels}) as udm_events__observer__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__resource__attribute__permissions {
    view_label: "Udm Events: Src Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__permissions}) as udm_events__src__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__phone_numbers {
    view_label: "Udm Events: Src User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.phone_numbers}) as udm_events__src__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__vulnerabilities {
    view_label: "Udm Events: Intermediary Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__vulnerabilities}) as udm_events__intermediary__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__attribute__roles {
    view_label: "Udm Events: Intermediary Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__roles}) as udm_events__intermediary__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__attribute__labels {
    view_label: "Udm Events: Intermediary Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__labels}) as udm_events__intermediary__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__department {
    view_label: "Udm Events: Target User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.department}) as udm_events__target__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__target__asset__attribute__permissions {
    view_label: "Udm Events: Target Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__permissions}) as udm_events__target__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__resource__attribute__roles {
    view_label: "Udm Events: Principal Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__roles}) as udm_events__principal__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__resource__attribute__labels {
    view_label: "Udm Events: Principal Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__labels}) as udm_events__principal__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__roles}) as udm_events__observer__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__labels}) as udm_events__observer__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Src Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__permissions}) as udm_events__src__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__project__attribute__roles {
    view_label: "Udm Events: About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__roles}) as udm_events__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__project__attribute__labels {
    view_label: "Udm Events: About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__labels}) as udm_events__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__group__attribute__permissions {
    view_label: "Udm Events: About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__permissions}) as udm_events__about__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain {
    view_label: "Udm Events: Intermediary User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user_management_chain}) as udm_events__intermediary__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__hardware {
    view_label: "Udm Events: Security Result About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__hardware}) as udm_events__security_result__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__phone_numbers {
    view_label: "Udm Events: Security Result About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__phone_numbers}) as udm_events__security_result__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__roles}) as udm_events__principal__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__labels}) as udm_events__principal__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user__attribute__permissions {
    view_label: "Udm Events: Observer User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__permissions}) as udm_events__observer__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__email_addresses {
    view_label: "Udm Events: Src User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.email_addresses}) as udm_events__src__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__about__resource__attribute__permissions {
    view_label: "Udm Events: About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__permissions}) as udm_events__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.phone_numbers}) as udm_events__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__group__attribute__roles {
    view_label: "Udm Events: Intermediary Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__roles}) as udm_events__intermediary__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__group__attribute__labels {
    view_label: "Udm Events: Intermediary Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__labels}) as udm_events__intermediary__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__process__command_line_history {
    view_label: "Udm Events: Intermediary Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.process__command_line_history}) as udm_events__intermediary__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__software {
    view_label: "Udm Events: Security Result About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__software}) as udm_events__security_result__about__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__project__attribute__roles {
    view_label: "Udm Events: Target Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__roles}) as udm_events__target__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__project__attribute__labels {
    view_label: "Udm Events: Target Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__labels}) as udm_events__target__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__group__attribute__permissions {
    view_label: "Udm Events: Target Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__permissions}) as udm_events__target__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user__attribute__permissions {
    view_label: "Udm Events: Principal User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__permissions}) as udm_events__principal__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__department {
    view_label: "Udm Events: Observer User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.department}) as udm_events__observer__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__observer__asset__attribute__permissions {
    view_label: "Udm Events: Observer Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__permissions}) as udm_events__observer__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__ip}) as udm_events__extensions__vulns__vulnerabilities__about__ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__process_ancestors__command_line_history {
    view_label: "Udm Events: Src Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__src__process_ancestors.command_line_history}) as udm_events__src__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__permissions}) as udm_events__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__resource__attribute__roles {
    view_label: "Udm Events: Intermediary Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__roles}) as udm_events__intermediary__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__resource__attribute__labels {
    view_label: "Udm Events: Intermediary Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__labels}) as udm_events__intermediary__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__email_addresses {
    view_label: "Udm Events: Security Result About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__email_addresses}) as udm_events__security_result__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__target__resource__attribute__permissions {
    view_label: "Udm Events: Target Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__permissions}) as udm_events__target__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__phone_numbers {
    view_label: "Udm Events: Target User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.phone_numbers}) as udm_events__target__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__department {
    view_label: "Udm Events: Principal User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.department}) as udm_events__principal__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__principal__asset__attribute__permissions {
    view_label: "Udm Events: Principal Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__permissions}) as udm_events__principal__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__mac {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Mac"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__mac}) as udm_events__extensions__vulns__vulnerabilities__about__mac ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__group_identifiers {
    view_label: "Udm Events: Src User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.group_identifiers}) as udm_events__src__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__email_addresses {
    view_label: "Udm Events: About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.email_addresses}) as udm_events__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__roles}) as udm_events__intermediary__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__labels}) as udm_events__intermediary__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__process_ancestors {
    view_label: "Udm Events: Security Result About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__process_ancestors}) as udm_events__security_result__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Target Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__permissions}) as udm_events__target__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__project__attribute__roles {
    view_label: "Udm Events: Observer Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__roles}) as udm_events__observer__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__project__attribute__labels {
    view_label: "Udm Events: Observer Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__labels}) as udm_events__observer__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__group__attribute__permissions {
    view_label: "Udm Events: Observer Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__permissions}) as udm_events__observer__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__src__cloud__project__attribute__permissions {
    view_label: "Udm Events: Src Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__permissions}) as udm_events__src__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__process_ancestors__command_line_history {
    view_label: "Udm Events: About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__about__process_ancestors.command_line_history}) as udm_events__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user__attribute__permissions {
    view_label: "Udm Events: Intermediary User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__permissions}) as udm_events__intermediary__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__investigation__comments {
    view_label: "Udm Events: Security Result About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__investigation__comments}) as udm_events__security_result__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__group_identifiers {
    view_label: "Udm Events: Security Result About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__group_identifiers}) as udm_events__security_result__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__email_addresses {
    view_label: "Udm Events: Target User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.email_addresses}) as udm_events__target__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__project__attribute__roles {
    view_label: "Udm Events: Principal Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__roles}) as udm_events__principal__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__project__attribute__labels {
    view_label: "Udm Events: Principal Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__labels}) as udm_events__principal__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__group__attribute__permissions {
    view_label: "Udm Events: Principal Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__permissions}) as udm_events__principal__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__observer__resource__attribute__permissions {
    view_label: "Udm Events: Observer Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__permissions}) as udm_events__observer__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__phone_numbers {
    view_label: "Udm Events: Observer User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.phone_numbers}) as udm_events__observer__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.group_identifiers}) as udm_events__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__department {
    view_label: "Udm Events: Intermediary User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.department}) as udm_events__intermediary__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__asset__attribute__permissions {
    view_label: "Udm Events: Intermediary Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__permissions}) as udm_events__intermediary__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__group__email_addresses {
    view_label: "Udm Events: Security Result About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__email_addresses}) as udm_events__security_result__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__target__process_ancestors__command_line_history {
    view_label: "Udm Events: Target Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__target__process_ancestors.command_line_history}) as udm_events__target__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__principal__resource__attribute__permissions {
    view_label: "Udm Events: Principal Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__permissions}) as udm_events__principal__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__phone_numbers {
    view_label: "Udm Events: Principal User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.phone_numbers}) as udm_events__principal__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__permissions}) as udm_events__observer__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__nat_ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__nat_ip}) as udm_events__extensions__vulns__vulnerabilities__about__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__time_off {
    view_label: "Udm Events: Src User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.time_off}) as udm_events__src__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__attribute__roles {
    view_label: "Udm Events: Src User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__roles}) as udm_events__src__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__attribute__labels {
    view_label: "Udm Events: Src User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__labels}) as udm_events__src__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__permissions}) as udm_events__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__group_identifiers {
    view_label: "Udm Events: Target User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.group_identifiers}) as udm_events__target__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__permissions}) as udm_events__principal__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__email_addresses {
    view_label: "Udm Events: Observer User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.email_addresses}) as udm_events__observer__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__project__attribute__roles {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__roles}) as udm_events__intermediary__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__project__attribute__labels {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__labels}) as udm_events__intermediary__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__group__attribute__permissions {
    view_label: "Udm Events: Intermediary Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__permissions}) as udm_events__intermediary__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__time_off {
    view_label: "Udm Events: Security Result About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__time_off}) as udm_events__security_result__about__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__attribute__roles {
    view_label: "Udm Events: Security Result About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__roles}) as udm_events__security_result__about__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__attribute__labels {
    view_label: "Udm Events: Security Result About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__labels}) as udm_events__security_result__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__cloud__project__attribute__permissions {
    view_label: "Udm Events: Target Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__permissions}) as udm_events__target__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__email_addresses {
    view_label: "Udm Events: Principal User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.email_addresses}) as udm_events__principal__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__observer__process_ancestors__command_line_history {
    view_label: "Udm Events: Observer Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__observer__process_ancestors.command_line_history}) as udm_events__observer__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__ip}) as udm_events__extensions__vulns__vulnerabilities__about__asset__ip ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__time_off {
    view_label: "Udm Events: About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.time_off}) as udm_events__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__roles}) as udm_events__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__labels}) as udm_events__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__resource__attribute__permissions {
    view_label: "Udm Events: Intermediary Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__permissions}) as udm_events__intermediary__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__phone_numbers {
    view_label: "Udm Events: Intermediary User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.phone_numbers}) as udm_events__intermediary__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__vulnerabilities {
    view_label: "Udm Events: Security Result About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__vulnerabilities}) as udm_events__security_result__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__attribute__roles {
    view_label: "Udm Events: Security Result About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__roles}) as udm_events__security_result__about__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__attribute__labels {
    view_label: "Udm Events: Security Result About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__labels}) as udm_events__security_result__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__process_ancestors__command_line_history {
    view_label: "Udm Events: Principal Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__principal__process_ancestors.command_line_history}) as udm_events__principal__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__group_identifiers {
    view_label: "Udm Events: Observer User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.group_identifiers}) as udm_events__observer__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__mac {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__mac}) as udm_events__extensions__vulns__vulnerabilities__about__asset__mac ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__permissions}) as udm_events__intermediary__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain {
    view_label: "Udm Events: Security Result About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user_management_chain}) as udm_events__security_result__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__time_off {
    view_label: "Udm Events: Target User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.time_off}) as udm_events__target__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__attribute__roles {
    view_label: "Udm Events: Target User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__roles}) as udm_events__target__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__attribute__labels {
    view_label: "Udm Events: Target User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__labels}) as udm_events__target__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__group_identifiers {
    view_label: "Udm Events: Principal User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.group_identifiers}) as udm_events__principal__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__observer__cloud__project__attribute__permissions {
    view_label: "Udm Events: Observer Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__permissions}) as udm_events__observer__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__labels}) as udm_events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__email_addresses {
    view_label: "Udm Events: Intermediary User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.email_addresses}) as udm_events__intermediary__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__group__attribute__roles {
    view_label: "Udm Events: Security Result About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__roles}) as udm_events__security_result__about__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__group__attribute__labels {
    view_label: "Udm Events: Security Result About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__labels}) as udm_events__security_result__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__process__command_line_history {
    view_label: "Udm Events: Security Result About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__process__command_line_history}) as udm_events__security_result__about__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__principal__cloud__project__attribute__permissions {
    view_label: "Udm Events: Principal Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__permissions}) as udm_events__principal__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__process_ancestors__command_line_history {
    view_label: "Udm Events: Intermediary Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__process_ancestors.command_line_history}) as udm_events__intermediary__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__resource__attribute__roles {
    view_label: "Udm Events: Security Result About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__roles}) as udm_events__security_result__about__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__resource__attribute__labels {
    view_label: "Udm Events: Security Result About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__labels}) as udm_events__security_result__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__time_off {
    view_label: "Udm Events: Observer User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.time_off}) as udm_events__observer__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__attribute__roles {
    view_label: "Udm Events: Observer User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__roles}) as udm_events__observer__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__attribute__labels {
    view_label: "Udm Events: Observer User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__labels}) as udm_events__observer__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__nat_ip}) as udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip ;;
    relationship: one_to_many
  }

  join: udm_events__src__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Src User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__permissions}) as udm_events__src__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__group_identifiers {
    view_label: "Udm Events: Intermediary User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.group_identifiers}) as udm_events__intermediary__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__roles}) as udm_events__security_result__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__labels}) as udm_events__security_result__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__time_off {
    view_label: "Udm Events: Principal User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.time_off}) as udm_events__principal__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__attribute__roles {
    view_label: "Udm Events: Principal User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__roles}) as udm_events__principal__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__attribute__labels {
    view_label: "Udm Events: Principal User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__labels}) as udm_events__principal__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__cloud__project__attribute__permissions {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__permissions}) as udm_events__intermediary__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user__attribute__permissions {
    view_label: "Udm Events: Security Result About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__permissions}) as udm_events__security_result__about__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__permissions}) as udm_events__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__department {
    view_label: "Udm Events: Security Result About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.department}) as udm_events__security_result__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__asset__attribute__permissions {
    view_label: "Udm Events: Security Result About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__permissions}) as udm_events__security_result__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__department {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__department}) as udm_events__extensions__vulns__vulnerabilities__about__user__department ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__time_off {
    view_label: "Udm Events: Intermediary User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.time_off}) as udm_events__intermediary__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__attribute__roles {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__roles}) as udm_events__intermediary__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__attribute__labels {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__labels}) as udm_events__intermediary__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__target__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Target User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__permissions}) as udm_events__target__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__labels}) as udm_events__extensions__vulns__vulnerabilities__about__asset__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__project__attribute__roles {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__roles}) as udm_events__security_result__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__project__attribute__labels {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__labels}) as udm_events__security_result__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__group__attribute__permissions {
    view_label: "Udm Events: Security Result About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__permissions}) as udm_events__security_result__about__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__resource__attribute__permissions {
    view_label: "Udm Events: Security Result About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__permissions}) as udm_events__security_result__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: Security Result About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.phone_numbers}) as udm_events__security_result__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__observer__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Observer User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__permissions}) as udm_events__observer__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__hardware {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__hardware}) as udm_events__extensions__vulns__vulnerabilities__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__phone_numbers}) as udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__permissions}) as udm_events__security_result__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__principal__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Principal User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__permissions}) as udm_events__principal__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__software {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__software}) as udm_events__extensions__vulns__vulnerabilities__about__asset__software ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__email_addresses {
    view_label: "Udm Events: Security Result About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.email_addresses}) as udm_events__security_result__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__process_ancestors__command_line_history {
    view_label: "Udm Events: Security Result About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__process_ancestors.command_line_history}) as udm_events__security_result__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__process_ancestors}) as udm_events__extensions__vulns__vulnerabilities__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: udm_events__intermediary__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__permissions}) as udm_events__intermediary__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: Security Result About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.group_identifiers}) as udm_events__security_result__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__investigation__comments {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__investigation__comments}) as udm_events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__group_identifiers}) as udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__permissions}) as udm_events__security_result__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__time_off {
    view_label: "Udm Events: Security Result About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.time_off}) as udm_events__security_result__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__roles}) as udm_events__security_result__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__labels}) as udm_events__security_result__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__time_off {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__time_off}) as udm_events__extensions__vulns__vulnerabilities__about__user__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user_management_chain}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__process__command_line_history}) as udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__security_result__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__permissions}) as udm_events__security_result__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.department}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.phone_numbers}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__process_ancestors.command_line_history}) as udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.group_identifiers}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.time_off}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
}
