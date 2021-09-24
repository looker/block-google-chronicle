include: "/views/refinements/rule_detections.view.lkml"

explore: rule_detections {
  join: rule_detections__detection__assets {
    view_label: "Rule Detections: Detection Assets"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__assets}) as rule_detections__detection__assets ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__fields {
    view_label: "Rule Detections: Detection Fields"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__fields}) as rule_detections__detection__fields ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__users {
    view_label: "Rule Detections: Detection Users"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__users}) as rule_detections__detection__users ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__ip {
    view_label: "Rule Detections: Detection Events Src Ip"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events__src__ip}) as rule_detections__detection__events__src__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__mac {
    view_label: "Rule Detections: Detection Events Src Mac"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events__src__mac}) as rule_detections__detection__events__src__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events {
    view_label: "Rule Detections: Detection Events"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events}) as rule_detections__detection__events ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__ip {
    view_label: "Rule Detections: Detection Events About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about__ip}) as rule_detections__detection__events__about__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__mac {
    view_label: "Rule Detections: Detection Events About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about__mac}) as rule_detections__detection__events__about__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about {
    view_label: "Rule Detections: Detection Events About"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about}) as rule_detections__detection__events__about ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__ip {
    view_label: "Rule Detections: Detection Events Target Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__ip}) as rule_detections__detection__events__target__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__nat_ip {
    view_label: "Rule Detections: Detection Events Src Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__nat_ip}) as rule_detections__detection__events__src__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__mac {
    view_label: "Rule Detections: Detection Events Target Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__mac}) as rule_detections__detection__events__target__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__ip {
    view_label: "Rule Detections: Detection Events Observer Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__ip}) as rule_detections__detection__events__observer__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__ip {
    view_label: "Rule Detections: Detection Events Principal Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__ip}) as rule_detections__detection__events__principal__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__mac {
    view_label: "Rule Detections: Detection Events Observer Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__mac}) as rule_detections__detection__events__observer__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__ip {
    view_label: "Rule Detections: Detection Events Src Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__ip}) as rule_detections__detection__events__src__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__nat_ip {
    view_label: "Rule Detections: Detection Events About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.nat_ip}) as rule_detections__detection__events__about__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__mac {
    view_label: "Rule Detections: Detection Events Principal Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__mac}) as rule_detections__detection__events__principal__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__mac {
    view_label: "Rule Detections: Detection Events Src Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__mac}) as rule_detections__detection__events__src__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__nat_ip {
    view_label: "Rule Detections: Detection Events Target Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__nat_ip}) as rule_detections__detection__events__target__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__labels {
    view_label: "Rule Detections: Detection Events Src Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__labels}) as rule_detections__detection__events__src__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__ip {
    view_label: "Rule Detections: Detection Events About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__ip}) as rule_detections__detection__events__about__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__nat_ip {
    view_label: "Rule Detections: Detection Events Observer Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__nat_ip}) as rule_detections__detection__events__observer__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__mac {
    view_label: "Rule Detections: Detection Events About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__mac}) as rule_detections__detection__events__about__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__ip {
    view_label: "Rule Detections: Detection Events Intermediary Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary__ip}) as rule_detections__detection__events__intermediary__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__ip {
    view_label: "Rule Detections: Detection Events Target Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__ip}) as rule_detections__detection__events__target__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__nat_ip {
    view_label: "Rule Detections: Detection Events Principal Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__nat_ip}) as rule_detections__detection__events__principal__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__labels {
    view_label: "Rule Detections: Detection Events About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.labels}) as rule_detections__detection__events__about__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__mac {
    view_label: "Rule Detections: Detection Events Intermediary Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary__mac}) as rule_detections__detection__events__intermediary__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary {
    view_label: "Rule Detections: Detection Events Intermediary"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary}) as rule_detections__detection__events__intermediary ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__mac {
    view_label: "Rule Detections: Detection Events Target Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__mac}) as rule_detections__detection__events__target__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__email__cc {
    view_label: "Rule Detections: Detection Events Network Email Cc"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__cc}) as rule_detections__detection__events__network__email__cc ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__ip {
    view_label: "Rule Detections: Detection Events Observer Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__ip}) as rule_detections__detection__events__observer__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__labels {
    view_label: "Rule Detections: Detection Events Target Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__labels}) as rule_detections__detection__events__target__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__email__bcc {
    view_label: "Rule Detections: Detection Events Network Email Bcc"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__bcc}) as rule_detections__detection__events__network__email__bcc ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__ip {
    view_label: "Rule Detections: Detection Events Principal Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__ip}) as rule_detections__detection__events__principal__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__mac {
    view_label: "Rule Detections: Detection Events Observer Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__mac}) as rule_detections__detection__events__observer__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__email__to {
    view_label: "Rule Detections: Detection Events Network Email To"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__to}) as rule_detections__detection__events__network__email__to ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__mac {
    view_label: "Rule Detections: Detection Events Principal Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__mac}) as rule_detections__detection__events__principal__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__labels {
    view_label: "Rule Detections: Detection Events Observer Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__labels}) as rule_detections__detection__events__observer__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user__department {
    view_label: "Rule Detections: Detection Events Src User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__department}) as rule_detections__detection__events__src__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__nat_ip {
    view_label: "Rule Detections: Detection Events Intermediary Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.nat_ip}) as rule_detections__detection__events__intermediary__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__labels {
    view_label: "Rule Detections: Detection Events Principal Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__labels}) as rule_detections__detection__events__principal__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__labels {
    view_label: "Rule Detections: Detection Events Src Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__labels}) as rule_detections__detection__events__src__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__additional__fields {
    view_label: "Rule Detections: Detection Events Additional Fields"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.additional__fields}) as rule_detections__detection__events__additional__fields ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user__department {
    view_label: "Rule Detections: Detection Events About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__department}) as rule_detections__detection__events__about__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__ip {
    view_label: "Rule Detections: Detection Events Intermediary Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__ip}) as rule_detections__detection__events__intermediary__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__email__subject {
    view_label: "Rule Detections: Detection Events Network Email Subject"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__subject}) as rule_detections__detection__events__network__email__subject ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__hardware {
    view_label: "Rule Detections: Detection Events Src Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__hardware}) as rule_detections__detection__events__src__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Src User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__phone_numbers}) as rule_detections__detection__events__src__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__labels {
    view_label: "Rule Detections: Detection Events About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__labels}) as rule_detections__detection__events__about__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__mac {
    view_label: "Rule Detections: Detection Events Intermediary Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__mac}) as rule_detections__detection__events__intermediary__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__action {
    view_label: "Rule Detections: Detection Events Security Result Action"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.security_result__action}) as rule_detections__detection__events__security_result__action ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user__department {
    view_label: "Rule Detections: Detection Events Target User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__department}) as rule_detections__detection__events__target__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__software {
    view_label: "Rule Detections: Detection Events Src Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__software}) as rule_detections__detection__events__src__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__labels {
    view_label: "Rule Detections: Detection Events Intermediary Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.labels}) as rule_detections__detection__events__intermediary__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result {
    view_label: "Rule Detections: Detection Events Security Result"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.security_result}) as rule_detections__detection__events__security_result ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__labels {
    view_label: "Rule Detections: Detection Events Target Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__labels}) as rule_detections__detection__events__target__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__dns__answers {
    view_label: "Rule Detections: Detection Events Network Dns Answers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__answers}) as rule_detections__detection__events__network__dns__answers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user__department {
    view_label: "Rule Detections: Detection Events Observer User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__department}) as rule_detections__detection__events__observer__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user__email_addresses {
    view_label: "Rule Detections: Detection Events Src User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__email_addresses}) as rule_detections__detection__events__src__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__hardware {
    view_label: "Rule Detections: Detection Events About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__hardware}) as rule_detections__detection__events__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__phone_numbers}) as rule_detections__detection__events__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__ip {
    view_label: "Rule Detections: Detection Events Security Result About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__ip}) as rule_detections__detection__events__security_result__about__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__category {
    view_label: "Rule Detections: Detection Events Security Result Category"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.category}) as rule_detections__detection__events__security_result__category ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user__department {
    view_label: "Rule Detections: Detection Events Principal User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__department}) as rule_detections__detection__events__principal__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__labels {
    view_label: "Rule Detections: Detection Events Observer Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__labels}) as rule_detections__detection__events__observer__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__auth__mechanism {
    view_label: "Rule Detections: Detection Events Extensions Auth Mechanism"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.extensions__auth__mechanism}) as rule_detections__detection__events__extensions__auth__mechanism ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__process_ancestors {
    view_label: "Rule Detections: Detection Events Src Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__process_ancestors}) as rule_detections__detection__events__src__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__software {
    view_label: "Rule Detections: Detection Events About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__software}) as rule_detections__detection__events__about__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__mac {
    view_label: "Rule Detections: Detection Events Security Result About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__mac}) as rule_detections__detection__events__security_result__about__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__hardware {
    view_label: "Rule Detections: Detection Events Target Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__hardware}) as rule_detections__detection__events__target__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Target User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__phone_numbers}) as rule_detections__detection__events__target__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__dns__authority {
    view_label: "Rule Detections: Detection Events Network Dns Authority"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__authority}) as rule_detections__detection__events__network__dns__authority ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__dhcp__options {
    view_label: "Rule Detections: Detection Events Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dhcp__options}) as rule_detections__detection__events__network__dhcp__options ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__labels {
    view_label: "Rule Detections: Detection Events Principal Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__labels}) as rule_detections__detection__events__principal__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__investigation__comments {
    view_label: "Rule Detections: Detection Events Src Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__investigation__comments}) as rule_detections__detection__events__src__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Src User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__group_identifiers}) as rule_detections__detection__events__src__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__email_addresses}) as rule_detections__detection__events__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__software {
    view_label: "Rule Detections: Detection Events Target Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__software}) as rule_detections__detection__events__target__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__dns__additional {
    view_label: "Rule Detections: Detection Events Network Dns Additional"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__additional}) as rule_detections__detection__events__network__dns__additional ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__dns__questions {
    view_label: "Rule Detections: Detection Events Network Dns Questions"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__questions}) as rule_detections__detection__events__network__dns__questions ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__hardware {
    view_label: "Rule Detections: Detection Events Observer Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__hardware}) as rule_detections__detection__events__observer__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Observer User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__phone_numbers}) as rule_detections__detection__events__observer__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__group__email_addresses {
    view_label: "Rule Detections: Detection Events Src Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__group__email_addresses}) as rule_detections__detection__events__src__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__process_ancestors {
    view_label: "Rule Detections: Detection Events About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.process_ancestors}) as rule_detections__detection__events__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user__email_addresses {
    view_label: "Rule Detections: Detection Events Target User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__email_addresses}) as rule_detections__detection__events__target__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__hardware {
    view_label: "Rule Detections: Detection Events Principal Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__hardware}) as rule_detections__detection__events__principal__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Principal User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__phone_numbers}) as rule_detections__detection__events__principal__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__software {
    view_label: "Rule Detections: Detection Events Observer Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__software}) as rule_detections__detection__events__observer__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__investigation__comments {
    view_label: "Rule Detections: Detection Events About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.investigation__comments}) as rule_detections__detection__events__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__group_identifiers}) as rule_detections__detection__events__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user__department {
    view_label: "Rule Detections: Detection Events Intermediary User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__department}) as rule_detections__detection__events__intermediary__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__nat_ip {
    view_label: "Rule Detections: Detection Events Security Result About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__nat_ip}) as rule_detections__detection__events__security_result__about__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__process_ancestors {
    view_label: "Rule Detections: Detection Events Target Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__process_ancestors}) as rule_detections__detection__events__target__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__software {
    view_label: "Rule Detections: Detection Events Principal Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__software}) as rule_detections__detection__events__principal__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user__email_addresses {
    view_label: "Rule Detections: Detection Events Observer User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__email_addresses}) as rule_detections__detection__events__observer__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__metadata__ingestion_labels {
    view_label: "Rule Detections: Detection Events Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.metadata__ingestion_labels}) as rule_detections__detection__events__metadata__ingestion_labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Src User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__attribute__labels}) as rule_detections__detection__events__src__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.group__email_addresses}) as rule_detections__detection__events__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__labels {
    view_label: "Rule Detections: Detection Events Intermediary Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__labels}) as rule_detections__detection__events__intermediary__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__investigation__comments {
    view_label: "Rule Detections: Detection Events Target Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__investigation__comments}) as rule_detections__detection__events__target__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Target User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__group_identifiers}) as rule_detections__detection__events__target__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user__email_addresses {
    view_label: "Rule Detections: Detection Events Principal User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__email_addresses}) as rule_detections__detection__events__principal__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__process_ancestors {
    view_label: "Rule Detections: Detection Events Observer Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__process_ancestors}) as rule_detections__detection__events__observer__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__attribute__labels}) as rule_detections__detection__events__src__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__ip {
    view_label: "Rule Detections: Detection Events Security Result About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__ip}) as rule_detections__detection__events__security_result__about__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__group__email_addresses {
    view_label: "Rule Detections: Detection Events Target Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__group__email_addresses}) as rule_detections__detection__events__target__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__process_ancestors {
    view_label: "Rule Detections: Detection Events Principal Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__process_ancestors}) as rule_detections__detection__events__principal__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__investigation__comments {
    view_label: "Rule Detections: Detection Events Observer Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__investigation__comments}) as rule_detections__detection__events__observer__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Observer User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__group_identifiers}) as rule_detections__detection__events__observer__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain {
    view_label: "Rule Detections: Detection Events Src User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user_management_chain}) as rule_detections__detection__events__src__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__attribute__labels}) as rule_detections__detection__events__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__hardware {
    view_label: "Rule Detections: Detection Events Intermediary Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__hardware}) as rule_detections__detection__events__intermediary__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Intermediary User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__phone_numbers}) as rule_detections__detection__events__intermediary__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__mac {
    view_label: "Rule Detections: Detection Events Security Result About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__mac}) as rule_detections__detection__events__security_result__about__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__investigation__comments {
    view_label: "Rule Detections: Detection Events Principal Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__investigation__comments}) as rule_detections__detection__events__principal__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Principal User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__group_identifiers}) as rule_detections__detection__events__principal__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__group__email_addresses {
    view_label: "Rule Detections: Detection Events Observer Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__group__email_addresses}) as rule_detections__detection__events__observer__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__group__attribute__labels}) as rule_detections__detection__events__src__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__attribute__labels}) as rule_detections__detection__events__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__software {
    view_label: "Rule Detections: Detection Events Intermediary Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__software}) as rule_detections__detection__events__intermediary__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__labels {
    view_label: "Rule Detections: Detection Events Security Result About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__labels}) as rule_detections__detection__events__security_result__about__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__category_details {
    view_label: "Rule Detections: Detection Events Security Result Category Details"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.category_details}) as rule_detections__detection__events__security_result__category_details ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Target User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__attribute__labels}) as rule_detections__detection__events__target__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__group__email_addresses {
    view_label: "Rule Detections: Detection Events Principal Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__group__email_addresses}) as rule_detections__detection__events__principal__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__resource__attribute__labels}) as rule_detections__detection__events__src__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain {
    view_label: "Rule Detections: Detection Events About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user_management_chain}) as rule_detections__detection__events__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__email_addresses}) as rule_detections__detection__events__intermediary__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__attribute__labels}) as rule_detections__detection__events__target__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__attribute__labels}) as rule_detections__detection__events__observer__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__cloud__vpc__attribute__labels}) as rule_detections__detection__events__src__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.group__attribute__labels}) as rule_detections__detection__events__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__process_ancestors {
    view_label: "Rule Detections: Detection Events Intermediary Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.process_ancestors}) as rule_detections__detection__events__intermediary__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain {
    view_label: "Rule Detections: Detection Events Target User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user_management_chain}) as rule_detections__detection__events__target__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__attribute__labels}) as rule_detections__detection__events__principal__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__attribute__labels}) as rule_detections__detection__events__observer__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.resource__attribute__labels}) as rule_detections__detection__events__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__investigation__comments {
    view_label: "Rule Detections: Detection Events Intermediary Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.investigation__comments}) as rule_detections__detection__events__intermediary__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Intermediary User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__group_identifiers}) as rule_detections__detection__events__intermediary__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__group__attribute__labels}) as rule_detections__detection__events__target__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__attribute__labels}) as rule_detections__detection__events__principal__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain {
    view_label: "Rule Detections: Detection Events Observer User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user_management_chain}) as rule_detections__detection__events__observer__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Src User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.department}) as rule_detections__detection__events__src__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.cloud__vpc__attribute__labels}) as rule_detections__detection__events__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__group__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.group__email_addresses}) as rule_detections__detection__events__intermediary__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__detection_fields {
    view_label: "Rule Detections: Detection Events Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.detection_fields}) as rule_detections__detection__events__security_result__detection_fields ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__resource__attribute__labels}) as rule_detections__detection__events__target__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__network__tls__client__supported_ciphers {
    view_label: "Rule Detections: Detection Events Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__tls__client__supported_ciphers}) as rule_detections__detection__events__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain {
    view_label: "Rule Detections: Detection Events Principal User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user_management_chain}) as rule_detections__detection__events__principal__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__group__attribute__labels}) as rule_detections__detection__events__observer__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.extensions__vulns__vulnerabilities}) as rule_detections__detection__events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user__department {
    view_label: "Rule Detections: Detection Events Security Result About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__department}) as rule_detections__detection__events__security_result__about__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__cloud__vpc__attribute__labels}) as rule_detections__detection__events__target__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__group__attribute__labels}) as rule_detections__detection__events__principal__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__resource__attribute__labels}) as rule_detections__detection__events__observer__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__cloud__project__attribute__labels}) as rule_detections__detection__events__src__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.department}) as rule_detections__detection__events__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__attribute__labels}) as rule_detections__detection__events__intermediary__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__labels {
    view_label: "Rule Detections: Detection Events Security Result About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__labels}) as rule_detections__detection__events__security_result__about__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__resource__attribute__labels}) as rule_detections__detection__events__principal__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__cloud__vpc__attribute__labels}) as rule_detections__detection__events__observer__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Src User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.phone_numbers}) as rule_detections__detection__events__src__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__attribute__labels}) as rule_detections__detection__events__intermediary__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Target User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.department}) as rule_detections__detection__events__target__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__cloud__vpc__attribute__labels}) as rule_detections__detection__events__principal__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.cloud__project__attribute__labels}) as rule_detections__detection__events__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user_management_chain}) as rule_detections__detection__events__intermediary__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__hardware {
    view_label: "Rule Detections: Detection Events Security Result About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__hardware}) as rule_detections__detection__events__security_result__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Security Result About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__phone_numbers}) as rule_detections__detection__events__security_result__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.department}) as rule_detections__detection__events__observer__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Src User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.email_addresses}) as rule_detections__detection__events__src__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.group__attribute__labels}) as rule_detections__detection__events__intermediary__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__software {
    view_label: "Rule Detections: Detection Events Security Result About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__software}) as rule_detections__detection__events__security_result__about__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__cloud__project__attribute__labels}) as rule_detections__detection__events__target__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.department}) as rule_detections__detection__events__principal__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__mac {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__mac}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.resource__attribute__labels}) as rule_detections__detection__events__intermediary__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__email_addresses}) as rule_detections__detection__events__security_result__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Target User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.phone_numbers}) as rule_detections__detection__events__target__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__cloud__project__attribute__labels}) as rule_detections__detection__events__observer__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Src User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.group_identifiers}) as rule_detections__detection__events__src__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.email_addresses}) as rule_detections__detection__events__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.cloud__vpc__attribute__labels}) as rule_detections__detection__events__intermediary__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__process_ancestors {
    view_label: "Rule Detections: Detection Events Security Result About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__process_ancestors}) as rule_detections__detection__events__security_result__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__cloud__project__attribute__labels}) as rule_detections__detection__events__principal__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.phone_numbers}) as rule_detections__detection__events__observer__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__investigation__comments {
    view_label: "Rule Detections: Detection Events Security Result About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__investigation__comments}) as rule_detections__detection__events__security_result__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Security Result About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__group_identifiers}) as rule_detections__detection__events__security_result__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Target User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.email_addresses}) as rule_detections__detection__events__target__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.phone_numbers}) as rule_detections__detection__events__principal__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__nat_ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__nat_ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__nat_ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.department}) as rule_detections__detection__events__intermediary__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__group__email_addresses}) as rule_detections__detection__events__security_result__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.email_addresses}) as rule_detections__detection__events__observer__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__src__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Src User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.attribute__labels}) as rule_detections__detection__events__src__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Target User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.group_identifiers}) as rule_detections__detection__events__target__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.email_addresses}) as rule_detections__detection__events__principal__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__ip ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.cloud__project__attribute__labels}) as rule_detections__detection__events__intermediary__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__attribute__labels}) as rule_detections__detection__events__security_result__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.group_identifiers}) as rule_detections__detection__events__observer__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__mac {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__mac}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__mac ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.phone_numbers}) as rule_detections__detection__events__intermediary__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__attribute__labels}) as rule_detections__detection__events__security_result__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.group_identifiers}) as rule_detections__detection__events__principal__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user_management_chain}) as rule_detections__detection__events__security_result__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__target__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Target User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.attribute__labels}) as rule_detections__detection__events__target__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.email_addresses}) as rule_detections__detection__events__intermediary__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__group__attribute__labels}) as rule_detections__detection__events__security_result__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__observer__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.attribute__labels}) as rule_detections__detection__events__observer__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__resource__attribute__labels}) as rule_detections__detection__events__security_result__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__principal__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.attribute__labels}) as rule_detections__detection__events__principal__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.group_identifiers}) as rule_detections__detection__events__intermediary__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__cloud__vpc__attribute__labels}) as rule_detections__detection__events__security_result__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__department {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__department}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.department}) as rule_detections__detection__events__security_result__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__intermediary__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.attribute__labels}) as rule_detections__detection__events__intermediary__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__cloud__project__attribute__labels}) as rule_detections__detection__events__security_result__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__hardware {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__hardware}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__hardware ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__phone_numbers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__security_result__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__software {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__software}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__software ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.email_addresses}) as rule_detections__detection__events__security_result__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__process_ancestors {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__process_ancestors}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__process_ancestors ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__investigation__comments {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__investigation__comments}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__group_identifiers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__security_result__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__group__email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__security_result__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__security_result__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user_management_chain}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__group__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__resource__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__resource__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.department}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }

  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
}
