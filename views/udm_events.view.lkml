view: udm_events {
  sql_table_name: `@{DATASET_NAME}.@{UDM_EVENTS}`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: about {
    hidden: yes
    sql: ${TABLE}.about ;;
  }

  dimension: about__ip {
    hidden: yes
    sql: ${TABLE}.about.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: about__mac {
    hidden: yes
    sql: ${TABLE}.about.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }

  dimension: additional__fields {
    hidden: yes
    sql: ${TABLE}.additional.fields ;;
    group_label: "Additional"
    group_item_label: "Fields"
  }

  dimension: extensions__auth__auth_details {
    type: string
    sql: ${TABLE}.extensions.auth.auth_details ;;
    group_label: "Extensions Auth"
    group_item_label: "Auth Details"
  }

  dimension: extensions__auth__mechanism {
    hidden: yes
    sql: ${TABLE}.extensions.auth.mechanism ;;
    group_label: "Extensions Auth"
    group_item_label: "Mechanism"
  }

  dimension: extensions__auth__type {
    type: number
    sql: ${TABLE}.extensions.auth.type ;;
    group_label: "Extensions Auth"
    group_item_label: "Type"
  }

  dimension: extensions__vulns__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.extensions.vulns.vulnerabilities ;;
    group_label: "Extensions Vulns"
    group_item_label: "Vulnerabilities"
  }

  dimension: intermediary {
    hidden: yes
    sql: ${TABLE}.intermediary ;;
  }

  dimension: intermediary__ip {
    hidden: yes
    sql: ${TABLE}.intermediary.ip ;;
    group_label: "Intermediary"
    group_item_label: "IP"
  }

  dimension: intermediary__mac {
    hidden: yes
    sql: ${TABLE}.intermediary.mac ;;
    group_label: "Intermediary"
    group_item_label: "Mac"
  }

  dimension: metadata__collected_timestamp__nanos {
    type: number
    sql: ${TABLE}.metadata.collected_timestamp.nanos ;;
    group_label: "Metadata Collected Timestamp"
    group_item_label: "Nanos"
  }

  dimension: metadata__collected_timestamp__seconds {
    type: number
    sql: ${TABLE}.metadata.collected_timestamp.seconds ;;
    group_label: "Metadata Collected Timestamp"
    group_item_label: "Seconds"
  }

  dimension: metadata__description {
    type: string
    sql: ${TABLE}.metadata.description ;;
    group_label: "Metadata"
    group_item_label: "Description"
  }

  dimension: metadata__event_timestamp__nanos {
    type: number
    sql: ${TABLE}.metadata.event_timestamp.nanos ;;
    group_label: "Metadata Event Timestamp"
    group_item_label: "Nanos"
  }

  dimension: metadata__event_timestamp__seconds {
    type: number
    sql: ${TABLE}.metadata.event_timestamp.seconds ;;
    group_label: "Metadata Event Timestamp"
    group_item_label: "Seconds"
  }

  dimension: metadata__event_type {
    type: number
    sql: ${TABLE}.metadata.event_type ;;
    group_label: "Metadata"
    group_item_label: "Event Type"
  }

  dimension: metadata__ingested_timestamp__nanos {
    type: number
    sql: ${TABLE}.metadata.ingested_timestamp.nanos ;;
    group_label: "Metadata Ingested Timestamp"
    group_item_label: "Nanos"
  }

  dimension: metadata__ingested_timestamp__seconds {
    type: number
    sql: ${TABLE}.metadata.ingested_timestamp.seconds ;;
    group_label: "Metadata Ingested Timestamp"
    group_item_label: "Seconds"
  }

  dimension: metadata__ingestion_labels {
    hidden: yes
    sql: ${TABLE}.metadata.ingestion_labels ;;
    group_label: "Metadata"
    group_item_label: "Ingestion Labels"
  }

  dimension: metadata__product_deployment_id {
    type: string
    sql: ${TABLE}.metadata.product_deployment_id ;;
    group_label: "Metadata"
    group_item_label: "Product Deployment ID"
  }

  dimension: metadata__product_event_type {
    type: string
    sql: ${TABLE}.metadata.product_event_type ;;
    group_label: "Metadata"
    group_item_label: "Product Event Type"
  }

  dimension: metadata__product_log_id {
    type: string
    sql: ${TABLE}.metadata.product_log_id ;;
    group_label: "Metadata"
    group_item_label: "Product Log ID"
  }

  dimension: metadata__product_name {
    type: string
    sql: ${TABLE}.metadata.product_name ;;
    group_label: "Metadata"
    group_item_label: "Product Name"
  }

  dimension: metadata__product_version {
    type: string
    sql: ${TABLE}.metadata.product_version ;;
    group_label: "Metadata"
    group_item_label: "Product Version"
  }

  dimension: metadata__tags__tenant_id {
    hidden: yes
    sql: ${TABLE}.metadata.tags.tenant_id ;;
    group_label: "Metadata Tags"
    group_item_label: "Tenant ID"
  }

  dimension: metadata__url_back_to_product {
    type: string
    sql: ${TABLE}.metadata.url_back_to_product ;;
    group_label: "Metadata"
    group_item_label: "URL Back to Product"
  }

  dimension: metadata__vendor_name {
    type: string
    sql: ${TABLE}.metadata.vendor_name ;;
    group_label: "Metadata"
    group_item_label: "Vendor Name"
  }

  dimension: network__application_protocol {
    type: number
    sql: ${TABLE}.network.application_protocol ;;
    group_label: "Network"
    group_item_label: "Application Protocol"
  }

  dimension: network__community_id {
    type: string
    sql: ${TABLE}.network.community_id ;;
    group_label: "Network"
    group_item_label: "Community ID"
  }

  dimension: network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.network.dhcp.chaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.network.dhcp.ciaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.network.dhcp.client_hostname ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.network.dhcp.client_identifier ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: network__dhcp__file {
    type: string
    sql: ${TABLE}.network.dhcp.file ;;
    group_label: "Network Dhcp"
    group_item_label: "File"
  }

  dimension: network__dhcp__flags {
    type: number
    sql: ${TABLE}.network.dhcp.flags ;;
    group_label: "Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.network.dhcp.giaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: network__dhcp__hlen {
    type: number
    sql: ${TABLE}.network.dhcp.hlen ;;
    group_label: "Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: network__dhcp__hops {
    type: number
    sql: ${TABLE}.network.dhcp.hops ;;
    group_label: "Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: network__dhcp__htype {
    type: number
    sql: ${TABLE}.network.dhcp.htype ;;
    group_label: "Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.network.dhcp.lease_time_seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: network__dhcp__opcode {
    type: number
    sql: ${TABLE}.network.dhcp.opcode ;;
    group_label: "Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.network.dhcp.options ;;
    group_label: "Network Dhcp"
    group_item_label: "Options"
  }

  dimension: network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.network.dhcp.requested_address ;;
    group_label: "Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: network__dhcp__seconds {
    type: number
    sql: ${TABLE}.network.dhcp.seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.network.dhcp.siaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: network__dhcp__sname {
    type: string
    sql: ${TABLE}.network.dhcp.sname ;;
    group_label: "Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.network.dhcp.transaction_id ;;
    group_label: "Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: network__dhcp__type {
    type: number
    sql: ${TABLE}.network.dhcp.type ;;
    group_label: "Network Dhcp"
    group_item_label: "Type"
  }

  dimension: network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.network.dhcp.yiaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: network__direction {
    type: number
    sql: ${TABLE}.network.direction ;;
    group_label: "Network"
    group_item_label: "Direction"
  }

  dimension: network__dns__additional {
    hidden: yes
    sql: ${TABLE}.network.dns.additional ;;
    group_label: "Network Dns"
    group_item_label: "Additional"
  }

  dimension: network__dns__answers {
    hidden: yes
    sql: ${TABLE}.network.dns.answers ;;
    group_label: "Network Dns"
    group_item_label: "Answers"
  }

  dimension: network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.network.dns.authoritative ;;
    group_label: "Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: network__dns__authority {
    hidden: yes
    sql: ${TABLE}.network.dns.authority ;;
    group_label: "Network Dns"
    group_item_label: "Authority"
  }

  dimension: network__dns__id {
    type: number
    sql: ${TABLE}.network.dns.id ;;
    group_label: "Network Dns"
    group_item_label: "ID"
  }

  dimension: network__dns__opcode {
    type: number
    sql: ${TABLE}.network.dns.opcode ;;
    group_label: "Network Dns"
    group_item_label: "Opcode"
  }

  dimension: network__dns__questions {
    hidden: yes
    sql: ${TABLE}.network.dns.questions ;;
    group_label: "Network Dns"
    group_item_label: "Questions"
  }

  dimension: network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_available ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_desired ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: network__dns__response {
    type: yesno
    sql: ${TABLE}.network.dns.response ;;
    group_label: "Network Dns"
    group_item_label: "Response"
  }

  dimension: network__dns__response_code {
    type: number
    sql: ${TABLE}.network.dns.response_code ;;
    group_label: "Network Dns"
    group_item_label: "Response Code"
  }

  dimension: network__dns__truncated {
    type: yesno
    sql: ${TABLE}.network.dns.truncated ;;
    group_label: "Network Dns"
    group_item_label: "Truncated"
  }

  dimension: network__email__bcc {
    hidden: yes
    sql: ${TABLE}.network.email.bcc ;;
    group_label: "Network Email"
    group_item_label: "Bcc"
  }

  dimension: network__email__cc {
    hidden: yes
    sql: ${TABLE}.network.email.cc ;;
    group_label: "Network Email"
    group_item_label: "Cc"
  }

  dimension: network__email__from {
    type: string
    sql: ${TABLE}.network.email.`from` ;;
    group_label: "Network Email"
    group_item_label: "From"
  }

  dimension: network__email__mail_id {
    type: string
    sql: ${TABLE}.network.email.mail_id ;;
    group_label: "Network Email"
    group_item_label: "Mail ID"
  }

  dimension: network__email__reply_to {
    type: string
    sql: ${TABLE}.network.email.reply_to ;;
    group_label: "Network Email"
    group_item_label: "Reply To"
  }

  dimension: network__email__subject {
    hidden: yes
    sql: ${TABLE}.network.email.subject ;;
    group_label: "Network Email"
    group_item_label: "Subject"
  }

  dimension: network__email__to {
    hidden: yes
    sql: ${TABLE}.network.email.`to` ;;
    group_label: "Network Email"
    group_item_label: "To"
  }

  dimension: network__ftp__command {
    type: string
    sql: ${TABLE}.network.ftp.command ;;
    group_label: "Network Ftp"
    group_item_label: "Command"
  }

  dimension: network__http__method {
    type: string
    sql: ${TABLE}.network.http.method ;;
    group_label: "Network HTTP"
    group_item_label: "Method"
  }

  dimension: network__http__referral_url {
    type: string
    sql: ${TABLE}.network.http.referral_url ;;
    group_label: "Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: network__http__response_code {
    type: number
    sql: ${TABLE}.network.http.response_code ;;
    group_label: "Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: network__http__user_agent {
    type: string
    sql: ${TABLE}.network.http.user_agent ;;
    group_label: "Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: network__ip_protocol {
    type: number
    sql: ${TABLE}.network.ip_protocol ;;
    group_label: "Network"
    group_item_label: "IP Protocol"
  }

  dimension: network__received_bytes {
    type: number
    sql: ${TABLE}.network.received_bytes ;;
    group_label: "Network"
    group_item_label: "Received Bytes"
  }

  dimension: network__sent_bytes {
    type: number
    sql: ${TABLE}.network.sent_bytes ;;
    group_label: "Network"
    group_item_label: "Sent Bytes"
  }

  dimension: network__session_duration__nanos {
    type: number
    sql: ${TABLE}.network.session_duration.nanos ;;
    group_label: "Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: network__session_duration__seconds {
    type: number
    sql: ${TABLE}.network.session_duration.seconds ;;
    group_label: "Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: network__session_id {
    type: string
    sql: ${TABLE}.network.session_id ;;
    group_label: "Network"
    group_item_label: "Session ID"
  }

  dimension: network__tls__cipher {
    type: string
    sql: ${TABLE}.network.tls.cipher ;;
    group_label: "Network Tls"
    group_item_label: "Cipher"
  }

  dimension: network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.issuer ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.md5 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.serial ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha1 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha256 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.subject ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.version ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.network.tls.client.ja3 ;;
    group_label: "Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: network__tls__client__server_name {
    type: string
    sql: ${TABLE}.network.tls.client.server_name ;;
    group_label: "Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.network.tls.client.supported_ciphers ;;
    group_label: "Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: network__tls__curve {
    type: string
    sql: ${TABLE}.network.tls.curve ;;
    group_label: "Network Tls"
    group_item_label: "Curve"
  }

  dimension: network__tls__established {
    type: yesno
    sql: ${TABLE}.network.tls.established ;;
    group_label: "Network Tls"
    group_item_label: "Established"
  }

  dimension: network__tls__next_protocol {
    type: string
    sql: ${TABLE}.network.tls.next_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: network__tls__resumed {
    type: yesno
    sql: ${TABLE}.network.tls.resumed ;;
    group_label: "Network Tls"
    group_item_label: "Resumed"
  }

  dimension: network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.issuer ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.md5 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.serial ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha1 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha256 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.subject ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.version ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.network.tls.server.ja3s ;;
    group_label: "Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: network__tls__version {
    type: string
    sql: ${TABLE}.network.tls.version ;;
    group_label: "Network Tls"
    group_item_label: "Version"
  }

  dimension: network__tls__version_protocol {
    type: string
    sql: ${TABLE}.network.tls.version_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: observer__administrative_domain {
    type: string
    sql: ${TABLE}.observer.administrative_domain ;;
    group_label: "Observer"
    group_item_label: "Administrative Domain"
  }

  dimension: observer__application {
    type: string
    sql: ${TABLE}.observer.application ;;
    group_label: "Observer"
    group_item_label: "Application"
  }

  dimension: observer__asset__asset_id {
    type: string
    sql: ${TABLE}.observer.asset.asset_id ;;
    group_label: "Observer Asset"
    group_item_label: "Asset ID"
  }

  dimension: observer__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.availability_zone ;;
    group_label: "Observer Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: observer__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.observer.asset.attribute.cloud.environment ;;
    group_label: "Observer Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: observer__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.id ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: observer__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.name ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: observer__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.parent ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: observer__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: observer__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.observer.asset.attribute.cloud.project.resource_type ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: observer__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.project.type ;;
    group_label: "Observer Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: observer__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.id ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: observer__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.name ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: observer__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.parent ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: observer__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: observer__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: observer__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.observer.asset.attribute.cloud.vpc.type ;;
    group_label: "Observer Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: observer__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.attribute.creation_time.nanos ;;
    group_label: "Observer Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.attribute.creation_time.seconds ;;
    group_label: "Observer Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.asset.attribute.labels ;;
    group_label: "Observer Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.attribute.last_update_time.nanos ;;
    group_label: "Observer Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.attribute.last_update_time.seconds ;;
    group_label: "Observer Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.asset.attribute.permissions ;;
    group_label: "Observer Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.asset.attribute.roles ;;
    group_label: "Observer Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__asset__category {
    type: string
    sql: ${TABLE}.observer.asset.category ;;
    group_label: "Observer Asset"
    group_item_label: "Category"
  }

  dimension: observer__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.creation_time.nanos ;;
    group_label: "Observer Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.creation_time.seconds ;;
    group_label: "Observer Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__deployment_status {
    type: number
    sql: ${TABLE}.observer.asset.deployment_status ;;
    group_label: "Observer Asset"
    group_item_label: "Deployment Status"
  }

  dimension: observer__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.first_discover_time.nanos ;;
    group_label: "Observer Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.first_discover_time.seconds ;;
    group_label: "Observer Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__hardware {
    hidden: yes
    sql: ${TABLE}.observer.asset.hardware ;;
    group_label: "Observer Asset"
    group_item_label: "Hardware"
  }

  dimension: observer__asset__hostname {
    type: string
    sql: ${TABLE}.observer.asset.hostname ;;
    group_label: "Observer Asset"
    group_item_label: "Hostname"
  }

  dimension: observer__asset__ip {
    hidden: yes
    sql: ${TABLE}.observer.asset.ip ;;
    group_label: "Observer Asset"
    group_item_label: "IP"
  }

  dimension: observer__asset__labels {
    hidden: yes
    sql: ${TABLE}.observer.asset.labels ;;
    group_label: "Observer Asset"
    group_item_label: "Labels"
  }

  dimension: observer__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.last_boot_time.nanos ;;
    group_label: "Observer Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.last_boot_time.seconds ;;
    group_label: "Observer Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.last_discover_time.nanos ;;
    group_label: "Observer Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.last_discover_time.seconds ;;
    group_label: "Observer Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__location__city {
    type: string
    sql: ${TABLE}.observer.asset.location.city ;;
    group_label: "Observer Asset Location"
    group_item_label: "City"
  }

  dimension: observer__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.observer.asset.location.country_or_region ;;
    group_label: "Observer Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: observer__asset__location__name {
    type: string
    sql: ${TABLE}.observer.asset.location.name ;;
    group_label: "Observer Asset Location"
    group_item_label: "Name"
  }

  dimension: observer__asset__location__state {
    type: string
    sql: ${TABLE}.observer.asset.location.state ;;
    group_label: "Observer Asset Location"
    group_item_label: "State"
  }

  dimension: observer__asset__mac {
    hidden: yes
    sql: ${TABLE}.observer.asset.mac ;;
    group_label: "Observer Asset"
    group_item_label: "Mac"
  }

  dimension: observer__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.observer.asset.nat_ip ;;
    group_label: "Observer Asset"
    group_item_label: "Nat IP"
  }

  dimension: observer__asset__network_domain {
    type: string
    sql: ${TABLE}.observer.asset.network_domain ;;
    group_label: "Observer Asset"
    group_item_label: "Network Domain"
  }

  dimension: observer__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.observer.asset.platform_software.platform ;;
    group_label: "Observer Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: observer__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.observer.asset.platform_software.platform_patch_level ;;
    group_label: "Observer Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: observer__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.observer.asset.platform_software.platform_version ;;
    group_label: "Observer Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: observer__asset__product_object_id {
    type: string
    sql: ${TABLE}.observer.asset.product_object_id ;;
    group_label: "Observer Asset"
    group_item_label: "Product Object ID"
  }

  dimension: observer__asset__software {
    hidden: yes
    sql: ${TABLE}.observer.asset.software ;;
    group_label: "Observer Asset"
    group_item_label: "Software"
  }

  dimension: observer__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.asset.system_last_update_time.nanos ;;
    group_label: "Observer Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.asset.system_last_update_time.seconds ;;
    group_label: "Observer Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__asset__type {
    type: number
    sql: ${TABLE}.observer.asset.type ;;
    group_label: "Observer Asset"
    group_item_label: "Type"
  }

  dimension: observer__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.observer.asset.vulnerabilities ;;
    group_label: "Observer Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: observer__asset_id {
    type: string
    sql: ${TABLE}.observer.asset_id ;;
    group_label: "Observer"
    group_item_label: "Asset ID"
  }

  dimension: observer__cloud__availability_zone {
    type: string
    sql: ${TABLE}.observer.cloud.availability_zone ;;
    group_label: "Observer Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: observer__cloud__environment {
    type: number
    sql: ${TABLE}.observer.cloud.environment ;;
    group_label: "Observer Cloud"
    group_item_label: "Environment"
  }

  dimension: observer__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Observer Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Observer Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.cloud.project.attribute.labels ;;
    group_label: "Observer Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Observer Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Observer Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.cloud.project.attribute.permissions ;;
    group_label: "Observer Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.cloud.project.attribute.roles ;;
    group_label: "Observer Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__cloud__project__id {
    type: string
    sql: ${TABLE}.observer.cloud.project.id ;;
    group_label: "Observer Cloud Project"
    group_item_label: "ID"
  }

  dimension: observer__cloud__project__name {
    type: string
    sql: ${TABLE}.observer.cloud.project.name ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Name"
  }

  dimension: observer__cloud__project__parent {
    type: string
    sql: ${TABLE}.observer.cloud.project.parent ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Parent"
  }

  dimension: observer__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.observer.cloud.project.product_object_id ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: observer__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.observer.cloud.project.resource_subtype ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.observer.cloud.project.resource_type ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: observer__cloud__project__type {
    type: string
    sql: ${TABLE}.observer.cloud.project.type ;;
    group_label: "Observer Cloud Project"
    group_item_label: "Type"
  }

  dimension: observer__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Observer Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Observer Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.cloud.vpc.attribute.labels ;;
    group_label: "Observer Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Observer Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Observer Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.cloud.vpc.attribute.permissions ;;
    group_label: "Observer Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.cloud.vpc.attribute.roles ;;
    group_label: "Observer Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__cloud__vpc__id {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.id ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: observer__cloud__vpc__name {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.name ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: observer__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.parent ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: observer__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.product_object_id ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: observer__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.resource_subtype ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.observer.cloud.vpc.resource_type ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: observer__cloud__vpc__type {
    type: string
    sql: ${TABLE}.observer.cloud.vpc.type ;;
    group_label: "Observer Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: observer__email {
    type: string
    sql: ${TABLE}.observer.email ;;
    group_label: "Observer"
    group_item_label: "Email"
  }

  dimension: observer__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.observer.file.file_metadata.pe.import_hash ;;
    group_label: "Observer File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: observer__file__full_path {
    type: string
    sql: ${TABLE}.observer.file.full_path ;;
    group_label: "Observer File"
    group_item_label: "Full Path"
  }

  dimension: observer__file__md5 {
    type: string
    sql: ${TABLE}.observer.file.md5 ;;
    group_label: "Observer File"
    group_item_label: "Md5"
  }

  dimension: observer__file__mime_type {
    type: string
    sql: ${TABLE}.observer.file.mime_type ;;
    group_label: "Observer File"
    group_item_label: "Mime Type"
  }

  dimension: observer__file__sha1 {
    type: string
    sql: ${TABLE}.observer.file.sha1 ;;
    group_label: "Observer File"
    group_item_label: "Sha1"
  }

  dimension: observer__file__sha256 {
    type: string
    sql: ${TABLE}.observer.file.sha256 ;;
    group_label: "Observer File"
    group_item_label: "Sha256"
  }

  dimension: observer__file__size {
    type: number
    sql: ${TABLE}.observer.file.size ;;
    group_label: "Observer File"
    group_item_label: "Size"
  }

  dimension: observer__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.availability_zone ;;
    group_label: "Observer Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: observer__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.cloud.environment ;;
    group_label: "Observer Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: observer__group__attribute__cloud__pripoject__id {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.id ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: observer__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.name ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: observer__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.parent ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: observer__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: observer__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: observer__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.project.type ;;
    group_label: "Observer Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: observer__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.id ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: observer__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.name ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: observer__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: observer__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: observer__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: observer__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.observer.`group`.attribute.cloud.vpc.type ;;
    group_label: "Observer Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: observer__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.creation_time.nanos ;;
    group_label: "Observer Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.creation_time.seconds ;;
    group_label: "Observer Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.group.attribute.labels ;;
    group_label: "Observer Group Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.last_update_time.nanos ;;
    group_label: "Observer Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.`group`.attribute.last_update_time.seconds ;;
    group_label: "Observer Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.group.attribute.permissions ;;
    group_label: "Observer Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.group.attribute.roles ;;
    group_label: "Observer Group Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.`group`.creation_time.nanos ;;
    group_label: "Observer Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.`group`.creation_time.seconds ;;
    group_label: "Observer Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.observer.group.email_addresses ;;
    group_label: "Observer Group"
    group_item_label: "Email Addresses"
  }

  dimension: observer__group__group_display_name {
    type: string
    sql: ${TABLE}.observer.`group`.group_display_name ;;
    group_label: "Observer Group"
    group_item_label: "Group Display Name"
  }

  dimension: observer__group__product_object_id {
    type: string
    sql: ${TABLE}.observer.`group`.product_object_id ;;
    group_label: "Observer Group"
    group_item_label: "Product Object ID"
  }

  dimension: observer__group__windows_sid {
    type: string
    sql: ${TABLE}.observer.`group`.windows_sid ;;
    group_label: "Observer Group"
    group_item_label: "Windows Sid"
  }

  dimension: observer__hostname {
    type: string
    sql: ${TABLE}.observer.hostname ;;
    group_label: "Observer"
    group_item_label: "Hostname"
  }

  dimension: observer__investigation__comments {
    hidden: yes
    sql: ${TABLE}.observer.investigation.comments ;;
    group_label: "Observer Investigation"
    group_item_label: "Comments"
  }

  dimension: observer__investigation__reputation {
    type: number
    sql: ${TABLE}.observer.investigation.reputation ;;
    group_label: "Observer Investigation"
    group_item_label: "Reputation"
  }

  dimension: observer__investigation__severity_score {
    type: number
    sql: ${TABLE}.observer.investigation.severity_score ;;
    group_label: "Observer Investigation"
    group_item_label: "Severity Score"
  }

  dimension: observer__investigation__status {
    type: number
    sql: ${TABLE}.observer.investigation.status ;;
    group_label: "Observer Investigation"
    group_item_label: "Status"
  }

  dimension: observer__investigation__verdict {
    type: number
    sql: ${TABLE}.observer.investigation.verdict ;;
    group_label: "Observer Investigation"
    group_item_label: "Verdict"
  }

  dimension: observer__ip {
    hidden: yes
    sql: ${TABLE}.observer.ip ;;
    group_label: "Observer"
    group_item_label: "IP"
  }

  dimension: observer__labels {
    hidden: yes
    sql: ${TABLE}.observer.labels ;;
    group_label: "Observer"
    group_item_label: "Labels"
  }

  dimension: observer__location__city {
    type: string
    sql: ${TABLE}.observer.location.city ;;
    group_label: "Observer Location"
    group_item_label: "City"
  }

  dimension: observer__location__country_or_region {
    type: string
    sql: ${TABLE}.observer.location.country_or_region ;;
    group_label: "Observer Location"
    group_item_label: "Country or Region"
  }

  dimension: observer__location__name {
    type: string
    sql: ${TABLE}.observer.location.name ;;
    group_label: "Observer Location"
    group_item_label: "Name"
  }

  dimension: observer__location__state {
    type: string
    sql: ${TABLE}.observer.location.state ;;
    group_label: "Observer Location"
    group_item_label: "State"
  }

  dimension: observer__mac {
    hidden: yes
    sql: ${TABLE}.observer.mac ;;
    group_label: "Observer"
    group_item_label: "Mac"
  }

  dimension: observer__namespace {
    type: string
    sql: ${TABLE}.observer.namespace ;;
    group_label: "Observer"
    group_item_label: "Namespace"
  }

  dimension: observer__nat_ip {
    hidden: yes
    sql: ${TABLE}.observer.nat_ip ;;
    group_label: "Observer"
    group_item_label: "Nat IP"
  }

  dimension: observer__nat_port {
    type: number
    sql: ${TABLE}.observer.nat_port ;;
    group_label: "Observer"
    group_item_label: "Nat Port"
  }

  dimension: observer__object_reference__id {
    type: string
    sql: ${TABLE}.observer.object_reference.id ;;
    group_label: "Observer Object Reference"
    group_item_label: "ID"
  }

  dimension: observer__object_reference__namespace {
    type: number
    sql: ${TABLE}.observer.object_reference.namespace ;;
    group_label: "Observer Object Reference"
    group_item_label: "Namespace"
  }

  dimension: observer__platform {
    type: number
    sql: ${TABLE}.observer.platform ;;
    group_label: "Observer"
    group_item_label: "Platform"
  }

  dimension: observer__platform_patch_level {
    type: string
    sql: ${TABLE}.observer.platform_patch_level ;;
    group_label: "Observer"
    group_item_label: "Platform Patch Level"
  }

  dimension: observer__platform_version {
    type: string
    sql: ${TABLE}.observer.platform_version ;;
    group_label: "Observer"
    group_item_label: "Platform Version"
  }

  dimension: observer__port {
    type: number
    sql: ${TABLE}.observer.port ;;
    group_label: "Observer"
    group_item_label: "Port"
  }

  dimension: observer__process__access_mask {
    type: number
    sql: ${TABLE}.observer.process.access_mask ;;
    group_label: "Observer Process"
    group_item_label: "Access Mask"
  }

  dimension: observer__process__command_line {
    type: string
    sql: ${TABLE}.observer.process.command_line ;;
    group_label: "Observer Process"
    group_item_label: "Command Line"
  }

  dimension: observer__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.observer.process.command_line_history ;;
    group_label: "Observer Process"
    group_item_label: "Command Line History"
  }

  dimension: observer__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.observer.process.file.file_metadata.pe.import_hash ;;
    group_label: "Observer Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: observer__process__file__full_path {
    type: string
    sql: ${TABLE}.observer.process.file.full_path ;;
    group_label: "Observer Process File"
    group_item_label: "Full Path"
  }

  dimension: observer__process__file__md5 {
    type: string
    sql: ${TABLE}.observer.process.file.md5 ;;
    group_label: "Observer Process File"
    group_item_label: "Md5"
  }

  dimension: observer__process__file__mime_type {
    type: string
    sql: ${TABLE}.observer.process.file.mime_type ;;
    group_label: "Observer Process File"
    group_item_label: "Mime Type"
  }

  dimension: observer__process__file__sha1 {
    type: string
    sql: ${TABLE}.observer.process.file.sha1 ;;
    group_label: "Observer Process File"
    group_item_label: "Sha1"
  }

  dimension: observer__process__file__sha256 {
    type: string
    sql: ${TABLE}.observer.process.file.sha256 ;;
    group_label: "Observer Process File"
    group_item_label: "Sha256"
  }

  dimension: observer__process__file__size {
    type: number
    sql: ${TABLE}.observer.process.file.size ;;
    group_label: "Observer Process File"
    group_item_label: "Size"
  }

  dimension: observer__process__parent_pid {
    type: string
    sql: ${TABLE}.observer.process.parent_pid ;;
    group_label: "Observer Process"
    group_item_label: "Parent Pid"
  }

  dimension: observer__process__pid {
    type: string
    sql: ${TABLE}.observer.process.pid ;;
    group_label: "Observer Process"
    group_item_label: "Pid"
  }

  dimension: observer__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.observer.process.product_specific_parent_process_id ;;
    group_label: "Observer Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: observer__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.observer.process.product_specific_process_id ;;
    group_label: "Observer Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: observer__process_ancestors {
    hidden: yes
    sql: ${TABLE}.observer.process_ancestors ;;
    group_label: "Observer"
    group_item_label: "Process Ancestors"
  }

  dimension: observer__registry__registry_key {
    type: string
    sql: ${TABLE}.observer.registry.registry_key ;;
    group_label: "Observer Registry"
    group_item_label: "Registry Key"
  }

  dimension: observer__registry__registry_value_data {
    type: string
    sql: ${TABLE}.observer.registry.registry_value_data ;;
    group_label: "Observer Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: observer__registry__registry_value_name {
    type: string
    sql: ${TABLE}.observer.registry.registry_value_name ;;
    group_label: "Observer Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: observer__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.observer.resource.attribute.cloud.availability_zone ;;
    group_label: "Observer Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: observer__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.observer.resource.attribute.cloud.environment ;;
    group_label: "Observer Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: observer__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.resource.attribute.creation_time.nanos ;;
    group_label: "Observer Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.resource.attribute.creation_time.seconds ;;
    group_label: "Observer Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.resource.attribute.labels ;;
    group_label: "Observer Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.resource.attribute.last_update_time.nanos ;;
    group_label: "Observer Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.resource.attribute.last_update_time.seconds ;;
    group_label: "Observer Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.resource.attribute.permissions ;;
    group_label: "Observer Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.resource.attribute.roles ;;
    group_label: "Observer Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__resource__id {
    type: string
    sql: ${TABLE}.observer.resource.id ;;
    group_label: "Observer Resource"
    group_item_label: "ID"
  }

  dimension: observer__resource__name {
    type: string
    sql: ${TABLE}.observer.resource.name ;;
    group_label: "Observer Resource"
    group_item_label: "Name"
  }

  dimension: observer__resource__parent {
    type: string
    sql: ${TABLE}.observer.resource.parent ;;
    group_label: "Observer Resource"
    group_item_label: "Parent"
  }

  dimension: observer__resource__product_object_id {
    type: string
    sql: ${TABLE}.observer.resource.product_object_id ;;
    group_label: "Observer Resource"
    group_item_label: "Product Object ID"
  }

  dimension: observer__resource__resource_subtype {
    type: string
    sql: ${TABLE}.observer.resource.resource_subtype ;;
    group_label: "Observer Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__resource__resource_type {
    type: number
    sql: ${TABLE}.observer.resource.resource_type ;;
    group_label: "Observer Resource"
    group_item_label: "Resource Type"
  }

  dimension: observer__resource__type {
    type: string
    sql: ${TABLE}.observer.resource.type ;;
    group_label: "Observer Resource"
    group_item_label: "Type"
  }

  dimension: observer__url {
    type: string
    sql: ${TABLE}.observer.url ;;
    group_label: "Observer"
    group_item_label: "URL"
  }

  dimension: observer__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.availability_zone ;;
    group_label: "Observer User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: observer__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.observer.user.attribute.cloud.environment ;;
    group_label: "Observer User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: observer__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.id ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: observer__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.name ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: observer__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.parent ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: observer__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.product_object_id ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: observer__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.observer.user.attribute.cloud.project.resource_type ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: observer__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.project.type ;;
    group_label: "Observer User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: observer__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.id ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: observer__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.name ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: observer__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.parent ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: observer__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: observer__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: observer__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: observer__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.observer.user.attribute.cloud.vpc.type ;;
    group_label: "Observer User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: observer__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.observer.user.attribute.creation_time.nanos ;;
    group_label: "Observer User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: observer__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.observer.user.attribute.creation_time.seconds ;;
    group_label: "Observer User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: observer__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.observer.user.attribute.labels ;;
    group_label: "Observer User Attribute"
    group_item_label: "Labels"
  }

  dimension: observer__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.observer.user.attribute.last_update_time.nanos ;;
    group_label: "Observer User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: observer__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.observer.user.attribute.last_update_time.seconds ;;
    group_label: "Observer User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: observer__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.observer.user.attribute.permissions ;;
    group_label: "Observer User Attribute"
    group_item_label: "Permissions"
  }

  dimension: observer__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.observer.user.attribute.roles ;;
    group_label: "Observer User Attribute"
    group_item_label: "Roles"
  }

  dimension: observer__user__company_name {
    type: string
    sql: ${TABLE}.observer.user.company_name ;;
    group_label: "Observer User"
    group_item_label: "Company Name"
  }

  dimension: observer__user__department {
    hidden: yes
    sql: ${TABLE}.observer.user.department ;;
    group_label: "Observer User"
    group_item_label: "Department"
  }

  dimension: observer__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.observer.user.email_addresses ;;
    group_label: "Observer User"
    group_item_label: "Email Addresses"
  }

  dimension: observer__user__employee_id {
    type: string
    sql: ${TABLE}.observer.user.employee_id ;;
    group_label: "Observer User"
    group_item_label: "Employee ID"
  }

  dimension: observer__user__first_name {
    type: string
    sql: ${TABLE}.observer.user.first_name ;;
    group_label: "Observer User"
    group_item_label: "First Name"
  }

  dimension: observer__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.observer.user.group_identifiers ;;
    group_label: "Observer User"
    group_item_label: "Group Identifiers"
  }

  dimension: observer__user__groupid {
    type: string
    sql: ${TABLE}.observer.user.groupid ;;
    group_label: "Observer User"
    group_item_label: "Groupid"
  }

  dimension: observer__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.observer.user.hire_date.nanos ;;
    group_label: "Observer User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: observer__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.observer.user.hire_date.seconds ;;
    group_label: "Observer User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: observer__user__last_name {
    type: string
    sql: ${TABLE}.observer.user.last_name ;;
    group_label: "Observer User"
    group_item_label: "Last Name"
  }

  dimension: observer__user__middle_name {
    type: string
    sql: ${TABLE}.observer.user.middle_name ;;
    group_label: "Observer User"
    group_item_label: "Middle Name"
  }

  dimension: observer__user__office_address__city {
    type: string
    sql: ${TABLE}.observer.user.office_address.city ;;
    group_label: "Observer User Office Address"
    group_item_label: "City"
  }

  dimension: observer__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.observer.user.office_address.country_or_region ;;
    group_label: "Observer User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: observer__user__office_address__name {
    type: string
    sql: ${TABLE}.observer.user.office_address.name ;;
    group_label: "Observer User Office Address"
    group_item_label: "Name"
  }

  dimension: observer__user__office_address__state {
    type: string
    sql: ${TABLE}.observer.user.office_address.state ;;
    group_label: "Observer User Office Address"
    group_item_label: "State"
  }

  dimension: observer__user__personal_address__city {
    type: string
    sql: ${TABLE}.observer.user.personal_address.city ;;
    group_label: "Observer User Personal Address"
    group_item_label: "City"
  }

  dimension: observer__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.observer.user.personal_address.country_or_region ;;
    group_label: "Observer User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: observer__user__personal_address__name {
    type: string
    sql: ${TABLE}.observer.user.personal_address.name ;;
    group_label: "Observer User Personal Address"
    group_item_label: "Name"
  }

  dimension: observer__user__personal_address__state {
    type: string
    sql: ${TABLE}.observer.user.personal_address.state ;;
    group_label: "Observer User Personal Address"
    group_item_label: "State"
  }

  dimension: observer__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.observer.user.phone_numbers ;;
    group_label: "Observer User"
    group_item_label: "Phone Numbers"
  }

  dimension: observer__user__product_object_id {
    type: string
    sql: ${TABLE}.observer.user.product_object_id ;;
    group_label: "Observer User"
    group_item_label: "Product Object ID"
  }

  dimension: observer__user__role_description {
    type: string
    sql: ${TABLE}.observer.user.role_description ;;
    group_label: "Observer User"
    group_item_label: "Role Description"
  }

  dimension: observer__user__role_name {
    type: string
    sql: ${TABLE}.observer.user.role_name ;;
    group_label: "Observer User"
    group_item_label: "Role Name"
  }

  dimension: observer__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.observer.user.termination_date.nanos ;;
    group_label: "Observer User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: observer__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.observer.user.termination_date.seconds ;;
    group_label: "Observer User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: observer__user__time_off {
    hidden: yes
    sql: ${TABLE}.observer.user.time_off ;;
    group_label: "Observer User"
    group_item_label: "Time Off"
  }

  dimension: observer__user__title {
    type: string
    sql: ${TABLE}.observer.user.title ;;
    group_label: "Observer User"
    group_item_label: "Title"
  }

  dimension: observer__user__user_authentication_status {
    type: number
    sql: ${TABLE}.observer.user.user_authentication_status ;;
    group_label: "Observer User"
    group_item_label: "User Authentication Status"
  }

  dimension: observer__user__user_display_name {
    type: string
    sql: ${TABLE}.observer.user.user_display_name ;;
    group_label: "Observer User"
    group_item_label: "User Display Name"
  }

  dimension: observer__user__user_role {
    type: number
    sql: ${TABLE}.observer.user.user_role ;;
    group_label: "Observer User"
    group_item_label: "User Role"
  }

  dimension: observer__user__userid {
    type: string
    sql: ${TABLE}.observer.user.userid ;;
    group_label: "Observer User"
    group_item_label: "Userid"
  }

  dimension: observer__user__windows_sid {
    type: string
    sql: ${TABLE}.observer.user.windows_sid ;;
    group_label: "Observer User"
    group_item_label: "Windows Sid"
  }

  dimension: observer__user_management_chain {
    hidden: yes
    sql: ${TABLE}.observer.user_management_chain ;;
    group_label: "Observer"
    group_item_label: "User Management Chain"
  }

  dimension: principal__administrative_domain {
    type: string
    sql: ${TABLE}.principal.administrative_domain ;;
    group_label: "Principal"
    group_item_label: "Administrative Domain"
  }

  dimension: principal__application {
    type: string
    sql: ${TABLE}.principal.application ;;
    group_label: "Principal"
    group_item_label: "Application"
  }

  dimension: principal__asset__asset_id {
    type: string
    sql: ${TABLE}.principal.asset.asset_id ;;
    group_label: "Principal Asset"
    group_item_label: "Asset ID"
  }

  dimension: principal__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.availability_zone ;;
    group_label: "Principal Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: principal__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.principal.asset.attribute.cloud.environment ;;
    group_label: "Principal Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: principal__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.id ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: principal__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.name ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: principal__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.parent ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: principal__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: principal__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.principal.asset.attribute.cloud.project.resource_type ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: principal__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.project.type ;;
    group_label: "Principal Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: principal__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.id ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: principal__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.name ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: principal__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.parent ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: principal__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: principal__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: principal__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.principal.asset.attribute.cloud.vpc.type ;;
    group_label: "Principal Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: principal__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.attribute.creation_time.nanos ;;
    group_label: "Principal Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.attribute.creation_time.seconds ;;
    group_label: "Principal Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.asset.attribute.labels ;;
    group_label: "Principal Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.attribute.last_update_time.nanos ;;
    group_label: "Principal Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.attribute.last_update_time.seconds ;;
    group_label: "Principal Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.asset.attribute.permissions ;;
    group_label: "Principal Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.asset.attribute.roles ;;
    group_label: "Principal Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__asset__category {
    type: string
    sql: ${TABLE}.principal.asset.category ;;
    group_label: "Principal Asset"
    group_item_label: "Category"
  }

  dimension: principal__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.creation_time.nanos ;;
    group_label: "Principal Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.creation_time.seconds ;;
    group_label: "Principal Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__deployment_status {
    type: number
    sql: ${TABLE}.principal.asset.deployment_status ;;
    group_label: "Principal Asset"
    group_item_label: "Deployment Status"
  }

  dimension: principal__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.first_discover_time.nanos ;;
    group_label: "Principal Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.first_discover_time.seconds ;;
    group_label: "Principal Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__hardware {
    hidden: yes
    sql: ${TABLE}.principal.asset.hardware ;;
    group_label: "Principal Asset"
    group_item_label: "Hardware"
  }

  dimension: principal__asset__hostname {
    type: string
    sql: ${TABLE}.principal.asset.hostname ;;
    group_label: "Principal Asset"
    group_item_label: "Hostname"
  }

  dimension: principal__asset__ip {
    hidden: yes
    sql: ${TABLE}.principal.asset.ip ;;
    group_label: "Principal Asset"
    group_item_label: "IP"
  }

  dimension: principal__asset__labels {
    hidden: yes
    sql: ${TABLE}.principal.asset.labels ;;
    group_label: "Principal Asset"
    group_item_label: "Labels"
  }

  dimension: principal__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.last_boot_time.nanos ;;
    group_label: "Principal Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.last_boot_time.seconds ;;
    group_label: "Principal Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.last_discover_time.nanos ;;
    group_label: "Principal Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.last_discover_time.seconds ;;
    group_label: "Principal Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__location__city {
    type: string
    sql: ${TABLE}.principal.asset.location.city ;;
    group_label: "Principal Asset Location"
    group_item_label: "City"
  }

  dimension: principal__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.principal.asset.location.country_or_region ;;
    group_label: "Principal Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: principal__asset__location__name {
    type: string
    sql: ${TABLE}.principal.asset.location.name ;;
    group_label: "Principal Asset Location"
    group_item_label: "Name"
  }

  dimension: principal__asset__location__state {
    type: string
    sql: ${TABLE}.principal.asset.location.state ;;
    group_label: "Principal Asset Location"
    group_item_label: "State"
  }

  dimension: principal__asset__mac {
    hidden: yes
    sql: ${TABLE}.principal.asset.mac ;;
    group_label: "Principal Asset"
    group_item_label: "Mac"
  }

  dimension: principal__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.principal.asset.nat_ip ;;
    group_label: "Principal Asset"
    group_item_label: "Nat IP"
  }

  dimension: principal__asset__network_domain {
    type: string
    sql: ${TABLE}.principal.asset.network_domain ;;
    group_label: "Principal Asset"
    group_item_label: "Network Domain"
  }

  dimension: principal__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.principal.asset.platform_software.platform ;;
    group_label: "Principal Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: principal__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.principal.asset.platform_software.platform_patch_level ;;
    group_label: "Principal Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: principal__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.principal.asset.platform_software.platform_version ;;
    group_label: "Principal Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: principal__asset__product_object_id {
    type: string
    sql: ${TABLE}.principal.asset.product_object_id ;;
    group_label: "Principal Asset"
    group_item_label: "Product Object ID"
  }

  dimension: principal__asset__software {
    hidden: yes
    sql: ${TABLE}.principal.asset.software ;;
    group_label: "Principal Asset"
    group_item_label: "Software"
  }

  dimension: principal__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.asset.system_last_update_time.nanos ;;
    group_label: "Principal Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.asset.system_last_update_time.seconds ;;
    group_label: "Principal Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__asset__type {
    type: number
    sql: ${TABLE}.principal.asset.type ;;
    group_label: "Principal Asset"
    group_item_label: "Type"
  }

  dimension: principal__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.principal.asset.vulnerabilities ;;
    group_label: "Principal Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: principal__asset_id {
    type: string
    sql: ${TABLE}.principal.asset_id ;;
    group_label: "Principal"
    group_item_label: "Asset ID"
  }

  dimension: principal__cloud__availability_zone {
    type: string
    sql: ${TABLE}.principal.cloud.availability_zone ;;
    group_label: "Principal Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: principal__cloud__environment {
    type: number
    sql: ${TABLE}.principal.cloud.environment ;;
    group_label: "Principal Cloud"
    group_item_label: "Environment"
  }

  dimension: principal__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Principal Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Principal Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.cloud.project.attribute.labels ;;
    group_label: "Principal Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Principal Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Principal Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.cloud.project.attribute.permissions ;;
    group_label: "Principal Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.cloud.project.attribute.roles ;;
    group_label: "Principal Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__cloud__project__id {
    type: string
    sql: ${TABLE}.principal.cloud.project.id ;;
    group_label: "Principal Cloud Project"
    group_item_label: "ID"
  }

  dimension: principal__cloud__project__name {
    type: string
    sql: ${TABLE}.principal.cloud.project.name ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Name"
  }

  dimension: principal__cloud__project__parent {
    type: string
    sql: ${TABLE}.principal.cloud.project.parent ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Parent"
  }

  dimension: principal__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.principal.cloud.project.product_object_id ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: principal__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.principal.cloud.project.resource_subtype ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.principal.cloud.project.resource_type ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: principal__cloud__project__type {
    type: string
    sql: ${TABLE}.principal.cloud.project.type ;;
    group_label: "Principal Cloud Project"
    group_item_label: "Type"
  }

  dimension: principal__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Principal Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Principal Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.cloud.vpc.attribute.labels ;;
    group_label: "Principal Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Principal Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Principal Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.cloud.vpc.attribute.permissions ;;
    group_label: "Principal Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.cloud.vpc.attribute.roles ;;
    group_label: "Principal Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__cloud__vpc__id {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.id ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: principal__cloud__vpc__name {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.name ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: principal__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.parent ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: principal__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.product_object_id ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: principal__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.resource_subtype ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.principal.cloud.vpc.resource_type ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: principal__cloud__vpc__type {
    type: string
    sql: ${TABLE}.principal.cloud.vpc.type ;;
    group_label: "Principal Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: principal__email {
    type: string
    sql: ${TABLE}.principal.email ;;
    group_label: "Principal"
    group_item_label: "Email"
  }

  dimension: principal__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.principal.file.file_metadata.pe.import_hash ;;
    group_label: "Principal File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: principal__file__full_path {
    type: string
    sql: ${TABLE}.principal.file.full_path ;;
    group_label: "Principal File"
    group_item_label: "Full Path"
  }

  dimension: principal__file__md5 {
    type: string
    sql: ${TABLE}.principal.file.md5 ;;
    group_label: "Principal File"
    group_item_label: "Md5"
  }

  dimension: principal__file__mime_type {
    type: string
    sql: ${TABLE}.principal.file.mime_type ;;
    group_label: "Principal File"
    group_item_label: "Mime Type"
  }

  dimension: principal__file__sha1 {
    type: string
    sql: ${TABLE}.principal.file.sha1 ;;
    group_label: "Principal File"
    group_item_label: "Sha1"
  }

  dimension: principal__file__sha256 {
    type: string
    sql: ${TABLE}.principal.file.sha256 ;;
    group_label: "Principal File"
    group_item_label: "Sha256"
  }

  dimension: principal__file__size {
    type: number
    sql: ${TABLE}.principal.file.size ;;
    group_label: "Principal File"
    group_item_label: "Size"
  }

  dimension: principal__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.availability_zone ;;
    group_label: "Principal Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: principal__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.cloud.environment ;;
    group_label: "Principal Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: principal__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.id ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: principal__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.name ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: principal__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.parent ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: principal__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: principal__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: principal__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.project.type ;;
    group_label: "Principal Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: principal__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.id ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: principal__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.name ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: principal__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: principal__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: principal__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: principal__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.principal.`group`.attribute.cloud.vpc.type ;;
    group_label: "Principal Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: principal__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.creation_time.nanos ;;
    group_label: "Principal Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.creation_time.seconds ;;
    group_label: "Principal Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.group.attribute.labels ;;
    group_label: "Principal Group Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.last_update_time.nanos ;;
    group_label: "Principal Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.`group`.attribute.last_update_time.seconds ;;
    group_label: "Principal Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.group.attribute.permissions ;;
    group_label: "Principal Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.group.attribute.roles ;;
    group_label: "Principal Group Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.`group`.creation_time.nanos ;;
    group_label: "Principal Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.`group`.creation_time.seconds ;;
    group_label: "Principal Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.principal.group.email_addresses ;;
    group_label: "Principal Group"
    group_item_label: "Email Addresses"
  }

  dimension: principal__group__group_display_name {
    type: string
    sql: ${TABLE}.principal.`group`.group_display_name ;;
    group_label: "Principal Group"
    group_item_label: "Group Display Name"
  }

  dimension: principal__group__product_object_id {
    type: string
    sql: ${TABLE}.principal.`group`.product_object_id ;;
    group_label: "Principal Group"
    group_item_label: "Product Object ID"
  }

  dimension: principal__group__windows_sid {
    type: string
    sql: ${TABLE}.principal.`group`.windows_sid ;;
    group_label: "Principal Group"
    group_item_label: "Windows Sid"
  }

  dimension: principal__hostname {
    type: string
    sql: ${TABLE}.principal.hostname ;;
    group_label: "Principal"
    group_item_label: "Hostname"
  }

  dimension: principal__investigation__comments {
    hidden: yes
    sql: ${TABLE}.principal.investigation.comments ;;
    group_label: "Principal Investigation"
    group_item_label: "Comments"
  }

  dimension: principal__investigation__reputation {
    type: number
    sql: ${TABLE}.principal.investigation.reputation ;;
    group_label: "Principal Investigation"
    group_item_label: "Reputation"
  }

  dimension: principal__investigation__severity_score {
    type: number
    sql: ${TABLE}.principal.investigation.severity_score ;;
    group_label: "Principal Investigation"
    group_item_label: "Severity Score"
  }

  dimension: principal__investigation__status {
    type: number
    sql: ${TABLE}.principal.investigation.status ;;
    group_label: "Principal Investigation"
    group_item_label: "Status"
  }

  dimension: principal__investigation__verdict {
    type: number
    sql: ${TABLE}.principal.investigation.verdict ;;
    group_label: "Principal Investigation"
    group_item_label: "Verdict"
  }

  dimension: principal__ip {
    hidden: yes
    sql: ${TABLE}.principal.ip ;;
    group_label: "Principal"
    group_item_label: "IP"
  }

  dimension: principal__labels {
    hidden: yes
    sql: ${TABLE}.principal.labels ;;
    group_label: "Principal"
    group_item_label: "Labels"
  }

  dimension: principal__location__city {
    type: string
    sql: ${TABLE}.principal.location.city ;;
    group_label: "Principal Location"
    group_item_label: "City"
  }

  dimension: principal__location__country_or_region {
    type: string
    sql: ${TABLE}.principal.location.country_or_region ;;
    group_label: "Principal Location"
    group_item_label: "Country or Region"
  }

  dimension: principal__location__name {
    type: string
    sql: ${TABLE}.principal.location.name ;;
    group_label: "Principal Location"
    group_item_label: "Name"
  }

  dimension: principal__location__state {
    type: string
    sql: ${TABLE}.principal.location.state ;;
    group_label: "Principal Location"
    group_item_label: "State"
  }

  dimension: principal__mac {
    hidden: yes
    sql: ${TABLE}.principal.mac ;;
    group_label: "Principal"
    group_item_label: "Mac"
  }

  dimension: principal__namespace {
    type: string
    sql: ${TABLE}.principal.namespace ;;
    group_label: "Principal"
    group_item_label: "Namespace"
  }

  dimension: principal__nat_ip {
    hidden: yes
    sql: ${TABLE}.principal.nat_ip ;;
    group_label: "Principal"
    group_item_label: "Nat IP"
  }

  dimension: principal__nat_port {
    type: number
    sql: ${TABLE}.principal.nat_port ;;
    group_label: "Principal"
    group_item_label: "Nat Port"
  }

  dimension: principal__object_reference__id {
    type: string
    sql: ${TABLE}.principal.object_reference.id ;;
    group_label: "Principal Object Reference"
    group_item_label: "ID"
  }

  dimension: principal__object_reference__namespace {
    type: number
    sql: ${TABLE}.principal.object_reference.namespace ;;
    group_label: "Principal Object Reference"
    group_item_label: "Namespace"
  }

  dimension: principal__platform {
    type: number
    sql: ${TABLE}.principal.platform ;;
    group_label: "Principal"
    group_item_label: "Platform"
  }

  dimension: principal__platform_patch_level {
    type: string
    sql: ${TABLE}.principal.platform_patch_level ;;
    group_label: "Principal"
    group_item_label: "Platform Patch Level"
  }

  dimension: principal__platform_version {
    type: string
    sql: ${TABLE}.principal.platform_version ;;
    group_label: "Principal"
    group_item_label: "Platform Version"
  }

  dimension: principal__port {
    type: number
    sql: ${TABLE}.principal.port ;;
    group_label: "Principal"
    group_item_label: "Port"
  }

  dimension: principal__process__access_mask {
    type: number
    sql: ${TABLE}.principal.process.access_mask ;;
    group_label: "Principal Process"
    group_item_label: "Access Mask"
  }

  dimension: principal__process__command_line {
    type: string
    sql: ${TABLE}.principal.process.command_line ;;
    group_label: "Principal Process"
    group_item_label: "Command Line"
  }

  dimension: principal__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.principal.process.command_line_history ;;
    group_label: "Principal Process"
    group_item_label: "Command Line History"
  }

  dimension: principal__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.principal.process.file.file_metadata.pe.import_hash ;;
    group_label: "Principal Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: principal__process__file__full_path {
    type: string
    sql: ${TABLE}.principal.process.file.full_path ;;
    group_label: "Principal Process File"
    group_item_label: "Full Path"
  }

  dimension: principal__process__file__md5 {
    type: string
    sql: ${TABLE}.principal.process.file.md5 ;;
    group_label: "Principal Process File"
    group_item_label: "Md5"
  }

  dimension: principal__process__file__mime_type {
    type: string
    sql: ${TABLE}.principal.process.file.mime_type ;;
    group_label: "Principal Process File"
    group_item_label: "Mime Type"
  }

  dimension: principal__process__file__sha1 {
    type: string
    sql: ${TABLE}.principal.process.file.sha1 ;;
    group_label: "Principal Process File"
    group_item_label: "Sha1"
  }

  dimension: principal__process__file__sha256 {
    type: string
    sql: ${TABLE}.principal.process.file.sha256 ;;
    group_label: "Principal Process File"
    group_item_label: "Sha256"
  }

  dimension: principal__process__file__size {
    type: number
    sql: ${TABLE}.principal.process.file.size ;;
    group_label: "Principal Process File"
    group_item_label: "Size"
  }

  dimension: principal__process__parent_pid {
    type: string
    sql: ${TABLE}.principal.process.parent_pid ;;
    group_label: "Principal Process"
    group_item_label: "Parent Pid"
  }

  dimension: principal__process__pid {
    type: string
    sql: ${TABLE}.principal.process.pid ;;
    group_label: "Principal Process"
    group_item_label: "Pid"
  }

  dimension: principal__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.principal.process.product_specific_parent_process_id ;;
    group_label: "Principal Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: principal__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.principal.process.product_specific_process_id ;;
    group_label: "Principal Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: principal__process_ancestors {
    hidden: yes
    sql: ${TABLE}.principal.process_ancestors ;;
    group_label: "Principal"
    group_item_label: "Process Ancestors"
  }

  dimension: principal__registry__registry_key {
    type: string
    sql: ${TABLE}.principal.registry.registry_key ;;
    group_label: "Principal Registry"
    group_item_label: "Registry Key"
  }

  dimension: principal__registry__registry_value_data {
    type: string
    sql: ${TABLE}.principal.registry.registry_value_data ;;
    group_label: "Principal Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: principal__registry__registry_value_name {
    type: string
    sql: ${TABLE}.principal.registry.registry_value_name ;;
    group_label: "Principal Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: principal__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.principal.resource.attribute.cloud.availability_zone ;;
    group_label: "Principal Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: principal__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.principal.resource.attribute.cloud.environment ;;
    group_label: "Principal Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: principal__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.resource.attribute.creation_time.nanos ;;
    group_label: "Principal Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.resource.attribute.creation_time.seconds ;;
    group_label: "Principal Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.resource.attribute.labels ;;
    group_label: "Principal Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.resource.attribute.last_update_time.nanos ;;
    group_label: "Principal Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.resource.attribute.last_update_time.seconds ;;
    group_label: "Principal Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.resource.attribute.permissions ;;
    group_label: "Principal Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.resource.attribute.roles ;;
    group_label: "Principal Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__resource__id {
    type: string
    sql: ${TABLE}.principal.resource.id ;;
    group_label: "Principal Resource"
    group_item_label: "ID"
  }

  dimension: principal__resource__name {
    type: string
    sql: ${TABLE}.principal.resource.name ;;
    group_label: "Principal Resource"
    group_item_label: "Name"
  }

  dimension: principal__resource__parent {
    type: string
    sql: ${TABLE}.principal.resource.parent ;;
    group_label: "Principal Resource"
    group_item_label: "Parent"
  }

  dimension: principal__resource__product_object_id {
    type: string
    sql: ${TABLE}.principal.resource.product_object_id ;;
    group_label: "Principal Resource"
    group_item_label: "Product Object ID"
  }

  dimension: principal__resource__resource_subtype {
    type: string
    sql: ${TABLE}.principal.resource.resource_subtype ;;
    group_label: "Principal Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__resource__resource_type {
    type: number
    sql: ${TABLE}.principal.resource.resource_type ;;
    group_label: "Principal Resource"
    group_item_label: "Resource Type"
  }

  dimension: principal__resource__type {
    type: string
    sql: ${TABLE}.principal.resource.type ;;
    group_label: "Principal Resource"
    group_item_label: "Type"
  }

  dimension: principal__url {
    type: string
    sql: ${TABLE}.principal.url ;;
    group_label: "Principal"
    group_item_label: "URL"
  }

  dimension: principal__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.availability_zone ;;
    group_label: "Principal User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: principal__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.principal.user.attribute.cloud.environment ;;
    group_label: "Principal User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: principal__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.id ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: principal__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.name ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: principal__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.parent ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: principal__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.product_object_id ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: principal__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.principal.user.attribute.cloud.project.resource_type ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: principal__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.project.type ;;
    group_label: "Principal User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: principal__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.id ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: principal__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.name ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: principal__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.parent ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: principal__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: principal__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: principal__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: principal__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.principal.user.attribute.cloud.vpc.type ;;
    group_label: "Principal User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: principal__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.principal.user.attribute.creation_time.nanos ;;
    group_label: "Principal User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: principal__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.principal.user.attribute.creation_time.seconds ;;
    group_label: "Principal User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: principal__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.principal.user.attribute.labels ;;
    group_label: "Principal User Attribute"
    group_item_label: "Labels"
  }

  dimension: principal__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.principal.user.attribute.last_update_time.nanos ;;
    group_label: "Principal User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: principal__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.principal.user.attribute.last_update_time.seconds ;;
    group_label: "Principal User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: principal__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.principal.user.attribute.permissions ;;
    group_label: "Principal User Attribute"
    group_item_label: "Permissions"
  }

  dimension: principal__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.principal.user.attribute.roles ;;
    group_label: "Principal User Attribute"
    group_item_label: "Roles"
  }

  dimension: principal__user__company_name {
    type: string
    sql: ${TABLE}.principal.user.company_name ;;
    group_label: "Principal User"
    group_item_label: "Company Name"
  }

  dimension: principal__user__department {
    hidden: yes
    sql: ${TABLE}.principal.user.department ;;
    group_label: "Principal User"
    group_item_label: "Department"
  }

  dimension: principal__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.principal.user.email_addresses ;;
    group_label: "Principal User"
    group_item_label: "Email Addresses"
  }

  dimension: principal__user__employee_id {
    type: string
    sql: ${TABLE}.principal.user.employee_id ;;
    group_label: "Principal User"
    group_item_label: "Employee ID"
  }

  dimension: principal__user__first_name {
    type: string
    sql: ${TABLE}.principal.user.first_name ;;
    group_label: "Principal User"
    group_item_label: "First Name"
  }

  dimension: principal__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.principal.user.group_identifiers ;;
    group_label: "Principal User"
    group_item_label: "Group Identifiers"
  }

  dimension: principal__user__groupid {
    type: string
    sql: ${TABLE}.principal.user.groupid ;;
    group_label: "Principal User"
    group_item_label: "Groupid"
  }

  dimension: principal__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.principal.user.hire_date.nanos ;;
    group_label: "Principal User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: principal__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.principal.user.hire_date.seconds ;;
    group_label: "Principal User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: principal__user__last_name {
    type: string
    sql: ${TABLE}.principal.user.last_name ;;
    group_label: "Principal User"
    group_item_label: "Last Name"
  }

  dimension: principal__user__middle_name {
    type: string
    sql: ${TABLE}.principal.user.middle_name ;;
    group_label: "Principal User"
    group_item_label: "Middle Name"
  }

  dimension: principal__user__office_address__city {
    type: string
    sql: ${TABLE}.principal.user.office_address.city ;;
    group_label: "Principal User Office Address"
    group_item_label: "City"
  }

  dimension: principal__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.principal.user.office_address.country_or_region ;;
    group_label: "Principal User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: principal__user__office_address__name {
    type: string
    sql: ${TABLE}.principal.user.office_address.name ;;
    group_label: "Principal User Office Address"
    group_item_label: "Name"
  }

  dimension: principal__user__office_address__state {
    type: string
    sql: ${TABLE}.principal.user.office_address.state ;;
    group_label: "Principal User Office Address"
    group_item_label: "State"
  }

  dimension: principal__user__personal_address__city {
    type: string
    sql: ${TABLE}.principal.user.personal_address.city ;;
    group_label: "Principal User Personal Address"
    group_item_label: "City"
  }

  dimension: principal__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.principal.user.personal_address.country_or_region ;;
    group_label: "Principal User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: principal__user__personal_address__name {
    type: string
    sql: ${TABLE}.principal.user.personal_address.name ;;
    group_label: "Principal User Personal Address"
    group_item_label: "Name"
  }

  dimension: principal__user__personal_address__state {
    type: string
    sql: ${TABLE}.principal.user.personal_address.state ;;
    group_label: "Principal User Personal Address"
    group_item_label: "State"
  }

  dimension: principal__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.principal.user.phone_numbers ;;
    group_label: "Principal User"
    group_item_label: "Phone Numbers"
  }

  dimension: principal__user__product_object_id {
    type: string
    sql: ${TABLE}.principal.user.product_object_id ;;
    group_label: "Principal User"
    group_item_label: "Product Object ID"
  }

  dimension: principal__user__role_description {
    type: string
    sql: ${TABLE}.principal.user.role_description ;;
    group_label: "Principal User"
    group_item_label: "Role Description"
  }

  dimension: principal__user__role_name {
    type: string
    sql: ${TABLE}.principal.user.role_name ;;
    group_label: "Principal User"
    group_item_label: "Role Name"
  }

  dimension: principal__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.principal.user.termination_date.nanos ;;
    group_label: "Principal User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: principal__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.principal.user.termination_date.seconds ;;
    group_label: "Principal User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: principal__user__time_off {
    hidden: yes
    sql: ${TABLE}.principal.user.time_off ;;
    group_label: "Principal User"
    group_item_label: "Time Off"
  }

  dimension: principal__user__title {
    type: string
    sql: ${TABLE}.principal.user.title ;;
    group_label: "Principal User"
    group_item_label: "Title"
  }

  dimension: principal__user__user_authentication_status {
    type: number
    sql: ${TABLE}.principal.user.user_authentication_status ;;
    group_label: "Principal User"
    group_item_label: "User Authentication Status"
  }

  dimension: principal__user__user_display_name {
    type: string
    sql: ${TABLE}.principal.user.user_display_name ;;
    group_label: "Principal User"
    group_item_label: "User Display Name"
  }

  dimension: principal__user__user_role {
    type: number
    sql: ${TABLE}.principal.user.user_role ;;
    group_label: "Principal User"
    group_item_label: "User Role"
  }

  dimension: principal__user__userid {
    type: string
    sql: ${TABLE}.principal.user.userid ;;
    group_label: "Principal User"
    group_item_label: "Userid"
  }

  dimension: principal__user__windows_sid {
    type: string
    sql: ${TABLE}.principal.user.windows_sid ;;
    group_label: "Principal User"
    group_item_label: "Windows Sid"
  }

  dimension: principal__user_management_chain {
    hidden: yes
    sql: ${TABLE}.principal.user_management_chain ;;
    group_label: "Principal"
    group_item_label: "User Management Chain"
  }

  dimension: security_result {
    hidden: yes
    sql: ${TABLE}.security_result ;;
  }

  dimension: security_result__action {
    hidden: yes
    sql: ${TABLE}.security_result.action ;;
    group_label: "Security Result"
    group_item_label: "Action"
  }

  dimension: src__administrative_domain {
    type: string
    sql: ${TABLE}.src.administrative_domain ;;
    group_label: "Src"
    group_item_label: "Administrative Domain"
  }

  dimension: src__application {
    type: string
    sql: ${TABLE}.src.application ;;
    group_label: "Src"
    group_item_label: "Application"
  }

  dimension: src__asset__asset_id {
    type: string
    sql: ${TABLE}.src.asset.asset_id ;;
    group_label: "Src Asset"
    group_item_label: "Asset ID"
  }

  dimension: src__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.availability_zone ;;
    group_label: "Src Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: src__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.src.asset.attribute.cloud.environment ;;
    group_label: "Src Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: src__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.id ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: src__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.name ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: src__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.parent ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: src__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: src__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: src__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.src.asset.attribute.cloud.project.resource_type ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: src__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.project.type ;;
    group_label: "Src Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: src__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.id ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: src__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.name ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: src__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.parent ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: src__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: src__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: src__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: src__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.src.asset.attribute.cloud.vpc.type ;;
    group_label: "Src Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: src__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.attribute.creation_time.nanos ;;
    group_label: "Src Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.attribute.creation_time.seconds ;;
    group_label: "Src Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.asset.attribute.labels ;;
    group_label: "Src Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: src__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.attribute.last_update_time.nanos ;;
    group_label: "Src Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.attribute.last_update_time.seconds ;;
    group_label: "Src Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.asset.attribute.permissions ;;
    group_label: "Src Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.asset.attribute.roles ;;
    group_label: "Src Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: src__asset__category {
    type: string
    sql: ${TABLE}.src.asset.category ;;
    group_label: "Src Asset"
    group_item_label: "Category"
  }

  dimension: src__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.creation_time.nanos ;;
    group_label: "Src Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.creation_time.seconds ;;
    group_label: "Src Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__deployment_status {
    type: number
    sql: ${TABLE}.src.asset.deployment_status ;;
    group_label: "Src Asset"
    group_item_label: "Deployment Status"
  }

  dimension: src__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.first_discover_time.nanos ;;
    group_label: "Src Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.first_discover_time.seconds ;;
    group_label: "Src Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__hardware {
    hidden: yes
    sql: ${TABLE}.src.asset.hardware ;;
    group_label: "Src Asset"
    group_item_label: "Hardware"
  }

  dimension: src__asset__hostname {
    type: string
    sql: ${TABLE}.src.asset.hostname ;;
    group_label: "Src Asset"
    group_item_label: "Hostname"
  }

  dimension: src__asset__ip {
    hidden: yes
    sql: ${TABLE}.src.asset.ip ;;
    group_label: "Src Asset"
    group_item_label: "IP"
  }

  dimension: src__asset__labels {
    hidden: yes
    sql: ${TABLE}.src.asset.labels ;;
    group_label: "Src Asset"
    group_item_label: "Labels"
  }

  dimension: src__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.last_boot_time.nanos ;;
    group_label: "Src Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.last_boot_time.seconds ;;
    group_label: "Src Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.last_discover_time.nanos ;;
    group_label: "Src Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.last_discover_time.seconds ;;
    group_label: "Src Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__location__city {
    type: string
    sql: ${TABLE}.src.asset.location.city ;;
    group_label: "Src Asset Location"
    group_item_label: "City"
  }

  dimension: src__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.src.asset.location.country_or_region ;;
    group_label: "Src Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: src__asset__location__name {
    type: string
    sql: ${TABLE}.src.asset.location.name ;;
    group_label: "Src Asset Location"
    group_item_label: "Name"
  }

  dimension: src__asset__location__state {
    type: string
    sql: ${TABLE}.src.asset.location.state ;;
    group_label: "Src Asset Location"
    group_item_label: "State"
  }

  dimension: src__asset__mac {
    hidden: yes
    sql: ${TABLE}.src.asset.mac ;;
    group_label: "Src Asset"
    group_item_label: "Mac"
  }

  dimension: src__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.src.asset.nat_ip ;;
    group_label: "Src Asset"
    group_item_label: "Nat IP"
  }

  dimension: src__asset__network_domain {
    type: string
    sql: ${TABLE}.src.asset.network_domain ;;
    group_label: "Src Asset"
    group_item_label: "Network Domain"
  }

  dimension: src__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.src.asset.platform_software.platform ;;
    group_label: "Src Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: src__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.src.asset.platform_software.platform_patch_level ;;
    group_label: "Src Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: src__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.src.asset.platform_software.platform_version ;;
    group_label: "Src Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: src__asset__product_object_id {
    type: string
    sql: ${TABLE}.src.asset.product_object_id ;;
    group_label: "Src Asset"
    group_item_label: "Product Object ID"
  }

  dimension: src__asset__software {
    hidden: yes
    sql: ${TABLE}.src.asset.software ;;
    group_label: "Src Asset"
    group_item_label: "Software"
  }

  dimension: src__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.asset.system_last_update_time.nanos ;;
    group_label: "Src Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.asset.system_last_update_time.seconds ;;
    group_label: "Src Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__asset__type {
    type: number
    sql: ${TABLE}.src.asset.type ;;
    group_label: "Src Asset"
    group_item_label: "Type"
  }

  dimension: src__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.src.asset.vulnerabilities ;;
    group_label: "Src Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: src__asset_id {
    type: string
    sql: ${TABLE}.src.asset_id ;;
    group_label: "Src"
    group_item_label: "Asset ID"
  }

  dimension: src__cloud__availability_zone {
    type: string
    sql: ${TABLE}.src.cloud.availability_zone ;;
    group_label: "Src Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: src__cloud__environment {
    type: number
    sql: ${TABLE}.src.cloud.environment ;;
    group_label: "Src Cloud"
    group_item_label: "Environment"
  }

  dimension: src__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Src Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Src Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.cloud.project.attribute.labels ;;
    group_label: "Src Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: src__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Src Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Src Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.cloud.project.attribute.permissions ;;
    group_label: "Src Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.cloud.project.attribute.roles ;;
    group_label: "Src Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: src__cloud__project__id {
    type: string
    sql: ${TABLE}.src.cloud.project.id ;;
    group_label: "Src Cloud Project"
    group_item_label: "ID"
  }

  dimension: src__cloud__project__name {
    type: string
    sql: ${TABLE}.src.cloud.project.name ;;
    group_label: "Src Cloud Project"
    group_item_label: "Name"
  }

  dimension: src__cloud__project__parent {
    type: string
    sql: ${TABLE}.src.cloud.project.parent ;;
    group_label: "Src Cloud Project"
    group_item_label: "Parent"
  }

  dimension: src__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.src.cloud.project.product_object_id ;;
    group_label: "Src Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: src__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.src.cloud.project.resource_subtype ;;
    group_label: "Src Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: src__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.src.cloud.project.resource_type ;;
    group_label: "Src Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: src__cloud__project__type {
    type: string
    sql: ${TABLE}.src.cloud.project.type ;;
    group_label: "Src Cloud Project"
    group_item_label: "Type"
  }

  dimension: src__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Src Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Src Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.cloud.vpc.attribute.labels ;;
    group_label: "Src Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: src__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Src Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Src Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.cloud.vpc.attribute.permissions ;;
    group_label: "Src Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.cloud.vpc.attribute.roles ;;
    group_label: "Src Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: src__cloud__vpc__id {
    type: string
    sql: ${TABLE}.src.cloud.vpc.id ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: src__cloud__vpc__name {
    type: string
    sql: ${TABLE}.src.cloud.vpc.name ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: src__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.src.cloud.vpc.parent ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: src__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.src.cloud.vpc.product_object_id ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: src__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.src.cloud.vpc.resource_subtype ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: src__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.src.cloud.vpc.resource_type ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: src__cloud__vpc__type {
    type: string
    sql: ${TABLE}.src.cloud.vpc.type ;;
    group_label: "Src Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: src__email {
    type: string
    sql: ${TABLE}.src.email ;;
    group_label: "Src"
    group_item_label: "Email"
  }

  dimension: src__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.src.file.file_metadata.pe.import_hash ;;
    group_label: "Src File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: src__file__full_path {
    type: string
    sql: ${TABLE}.src.file.full_path ;;
    group_label: "Src File"
    group_item_label: "Full Path"
  }

  dimension: src__file__md5 {
    type: string
    sql: ${TABLE}.src.file.md5 ;;
    group_label: "Src File"
    group_item_label: "Md5"
  }

  dimension: src__file__mime_type {
    type: string
    sql: ${TABLE}.src.file.mime_type ;;
    group_label: "Src File"
    group_item_label: "Mime Type"
  }

  dimension: src__file__sha1 {
    type: string
    sql: ${TABLE}.src.file.sha1 ;;
    group_label: "Src File"
    group_item_label: "Sha1"
  }

  dimension: src__file__sha256 {
    type: string
    sql: ${TABLE}.src.file.sha256 ;;
    group_label: "Src File"
    group_item_label: "Sha256"
  }

  dimension: src__file__size {
    type: number
    sql: ${TABLE}.src.file.size ;;
    group_label: "Src File"
    group_item_label: "Size"
  }

  dimension: src__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.availability_zone ;;
    group_label: "Src Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: src__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.src.`group`.attribute.cloud.environment ;;
    group_label: "Src Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: src__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.id ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: src__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.name ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: src__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.parent ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: src__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: src__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: src__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.src.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: src__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.project.type ;;
    group_label: "Src Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: src__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.id ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: src__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.name ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: src__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: src__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: src__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: src__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: src__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.src.`group`.attribute.cloud.vpc.type ;;
    group_label: "Src Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: src__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.`group`.attribute.creation_time.nanos ;;
    group_label: "Src Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.`group`.attribute.creation_time.seconds ;;
    group_label: "Src Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.group.attribute.labels ;;
    group_label: "Src Group Attribute"
    group_item_label: "Labels"
  }

  dimension: src__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.`group`.attribute.last_update_time.nanos ;;
    group_label: "Src Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.`group`.attribute.last_update_time.seconds ;;
    group_label: "Src Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.group.attribute.permissions ;;
    group_label: "Src Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.group.attribute.roles ;;
    group_label: "Src Group Attribute"
    group_item_label: "Roles"
  }

  dimension: src__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.`group`.creation_time.nanos ;;
    group_label: "Src Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.`group`.creation_time.seconds ;;
    group_label: "Src Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.src.group.email_addresses ;;
    group_label: "Src Group"
    group_item_label: "Email Addresses"
  }

  dimension: src__group__group_display_name {
    type: string
    sql: ${TABLE}.src.`group`.group_display_name ;;
    group_label: "Src Group"
    group_item_label: "Group Display Name"
  }

  dimension: src__group__product_object_id {
    type: string
    sql: ${TABLE}.src.`group`.product_object_id ;;
    group_label: "Src Group"
    group_item_label: "Product Object ID"
  }

  dimension: src__group__windows_sid {
    type: string
    sql: ${TABLE}.src.`group`.windows_sid ;;
    group_label: "Src Group"
    group_item_label: "Windows Sid"
  }

  dimension: src__hostname {
    type: string
    sql: ${TABLE}.src.hostname ;;
    group_label: "Src"
    group_item_label: "Hostname"
  }

  dimension: src__investigation__comments {
    hidden: yes
    sql: ${TABLE}.src.investigation.comments ;;
    group_label: "Src Investigation"
    group_item_label: "Comments"
  }

  dimension: src__investigation__reputation {
    type: number
    sql: ${TABLE}.src.investigation.reputation ;;
    group_label: "Src Investigation"
    group_item_label: "Reputation"
  }

  dimension: src__investigation__severity_score {
    type: number
    sql: ${TABLE}.src.investigation.severity_score ;;
    group_label: "Src Investigation"
    group_item_label: "Severity Score"
  }

  dimension: src__investigation__status {
    type: number
    sql: ${TABLE}.src.investigation.status ;;
    group_label: "Src Investigation"
    group_item_label: "Status"
  }

  dimension: src__investigation__verdict {
    type: number
    sql: ${TABLE}.src.investigation.verdict ;;
    group_label: "Src Investigation"
    group_item_label: "Verdict"
  }

  dimension: src__ip {
    hidden: yes
    sql: ${TABLE}.src.ip ;;
    group_label: "Src"
    group_item_label: "IP"
  }

  dimension: src__labels {
    hidden: yes
    sql: ${TABLE}.src.labels ;;
    group_label: "Src"
    group_item_label: "Labels"
  }

  dimension: src__location__city {
    type: string
    sql: ${TABLE}.src.location.city ;;
    group_label: "Src Location"
    group_item_label: "City"
  }

  dimension: src__location__country_or_region {
    type: string
    sql: ${TABLE}.src.location.country_or_region ;;
    group_label: "Src Location"
    group_item_label: "Country or Region"
  }

  dimension: src__location__name {
    type: string
    sql: ${TABLE}.src.location.name ;;
    group_label: "Src Location"
    group_item_label: "Name"
  }

  dimension: src__location__state {
    type: string
    sql: ${TABLE}.src.location.state ;;
    group_label: "Src Location"
    group_item_label: "State"
  }

  dimension: src__mac {
    hidden: yes
    sql: ${TABLE}.src.mac ;;
    group_label: "Src"
    group_item_label: "Mac"
  }

  dimension: src__namespace {
    type: string
    sql: ${TABLE}.src.namespace ;;
    group_label: "Src"
    group_item_label: "Namespace"
  }

  dimension: src__nat_ip {
    hidden: yes
    sql: ${TABLE}.src.nat_ip ;;
    group_label: "Src"
    group_item_label: "Nat IP"
  }

  dimension: src__nat_port {
    type: number
    sql: ${TABLE}.src.nat_port ;;
    group_label: "Src"
    group_item_label: "Nat Port"
  }

  dimension: src__object_reference__id {
    type: string
    sql: ${TABLE}.src.object_reference.id ;;
    group_label: "Src Object Reference"
    group_item_label: "ID"
  }

  dimension: src__object_reference__namespace {
    type: number
    sql: ${TABLE}.src.object_reference.namespace ;;
    group_label: "Src Object Reference"
    group_item_label: "Namespace"
  }

  dimension: src__platform {
    type: number
    sql: ${TABLE}.src.platform ;;
    group_label: "Src"
    group_item_label: "Platform"
  }

  dimension: src__platform_patch_level {
    type: string
    sql: ${TABLE}.src.platform_patch_level ;;
    group_label: "Src"
    group_item_label: "Platform Patch Level"
  }

  dimension: src__platform_version {
    type: string
    sql: ${TABLE}.src.platform_version ;;
    group_label: "Src"
    group_item_label: "Platform Version"
  }

  dimension: src__port {
    type: number
    sql: ${TABLE}.src.port ;;
    group_label: "Src"
    group_item_label: "Port"
  }

  dimension: src__process__access_mask {
    type: number
    sql: ${TABLE}.src.process.access_mask ;;
    group_label: "Src Process"
    group_item_label: "Access Mask"
  }

  dimension: src__process__command_line {
    type: string
    sql: ${TABLE}.src.process.command_line ;;
    group_label: "Src Process"
    group_item_label: "Command Line"
  }

  dimension: src__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.src.process.command_line_history ;;
    group_label: "Src Process"
    group_item_label: "Command Line History"
  }

  dimension: src__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.src.process.file.file_metadata.pe.import_hash ;;
    group_label: "Src Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: src__process__file__full_path {
    type: string
    sql: ${TABLE}.src.process.file.full_path ;;
    group_label: "Src Process File"
    group_item_label: "Full Path"
  }

  dimension: src__process__file__md5 {
    type: string
    sql: ${TABLE}.src.process.file.md5 ;;
    group_label: "Src Process File"
    group_item_label: "Md5"
  }

  dimension: src__process__file__mime_type {
    type: string
    sql: ${TABLE}.src.process.file.mime_type ;;
    group_label: "Src Process File"
    group_item_label: "Mime Type"
  }

  dimension: src__process__file__sha1 {
    type: string
    sql: ${TABLE}.src.process.file.sha1 ;;
    group_label: "Src Process File"
    group_item_label: "Sha1"
  }

  dimension: src__process__file__sha256 {
    type: string
    sql: ${TABLE}.src.process.file.sha256 ;;
    group_label: "Src Process File"
    group_item_label: "Sha256"
  }

  dimension: src__process__file__size {
    type: number
    sql: ${TABLE}.src.process.file.size ;;
    group_label: "Src Process File"
    group_item_label: "Size"
  }

  dimension: src__process__parent_pid {
    type: string
    sql: ${TABLE}.src.process.parent_pid ;;
    group_label: "Src Process"
    group_item_label: "Parent Pid"
  }

  dimension: src__process__pid {
    type: string
    sql: ${TABLE}.src.process.pid ;;
    group_label: "Src Process"
    group_item_label: "Pid"
  }

  dimension: src__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.src.process.product_specific_parent_process_id ;;
    group_label: "Src Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: src__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.src.process.product_specific_process_id ;;
    group_label: "Src Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: src__process_ancestors {
    hidden: yes
    sql: ${TABLE}.src.process_ancestors ;;
    group_label: "Src"
    group_item_label: "Process Ancestors"
  }

  dimension: src__registry__registry_key {
    type: string
    sql: ${TABLE}.src.registry.registry_key ;;
    group_label: "Src Registry"
    group_item_label: "Registry Key"
  }

  dimension: src__registry__registry_value_data {
    type: string
    sql: ${TABLE}.src.registry.registry_value_data ;;
    group_label: "Src Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: src__registry__registry_value_name {
    type: string
    sql: ${TABLE}.src.registry.registry_value_name ;;
    group_label: "Src Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: src__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.src.resource.attribute.cloud.availability_zone ;;
    group_label: "Src Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: src__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.src.resource.attribute.cloud.environment ;;
    group_label: "Src Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: src__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.resource.attribute.creation_time.nanos ;;
    group_label: "Src Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.resource.attribute.creation_time.seconds ;;
    group_label: "Src Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.resource.attribute.labels ;;
    group_label: "Src Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: src__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.resource.attribute.last_update_time.nanos ;;
    group_label: "Src Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.resource.attribute.last_update_time.seconds ;;
    group_label: "Src Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.resource.attribute.permissions ;;
    group_label: "Src Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.resource.attribute.roles ;;
    group_label: "Src Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: src__resource__id {
    type: string
    sql: ${TABLE}.src.resource.id ;;
    group_label: "Src Resource"
    group_item_label: "ID"
  }

  dimension: src__resource__name {
    type: string
    sql: ${TABLE}.src.resource.name ;;
    group_label: "Src Resource"
    group_item_label: "Name"
  }

  dimension: src__resource__parent {
    type: string
    sql: ${TABLE}.src.resource.parent ;;
    group_label: "Src Resource"
    group_item_label: "Parent"
  }

  dimension: src__resource__product_object_id {
    type: string
    sql: ${TABLE}.src.resource.product_object_id ;;
    group_label: "Src Resource"
    group_item_label: "Product Object ID"
  }

  dimension: src__resource__resource_subtype {
    type: string
    sql: ${TABLE}.src.resource.resource_subtype ;;
    group_label: "Src Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: src__resource__resource_type {
    type: number
    sql: ${TABLE}.src.resource.resource_type ;;
    group_label: "Src Resource"
    group_item_label: "Resource Type"
  }

  dimension: src__resource__type {
    type: string
    sql: ${TABLE}.src.resource.type ;;
    group_label: "Src Resource"
    group_item_label: "Type"
  }

  dimension: src__url {
    type: string
    sql: ${TABLE}.src.url ;;
    group_label: "Src"
    group_item_label: "URL"
  }

  dimension: src__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.availability_zone ;;
    group_label: "Src User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: src__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.src.user.attribute.cloud.environment ;;
    group_label: "Src User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: src__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.id ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: src__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.name ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: src__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.parent ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: src__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.product_object_id ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: src__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: src__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.src.user.attribute.cloud.project.resource_type ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: src__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.project.type ;;
    group_label: "Src User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: src__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.id ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: src__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.name ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: src__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.parent ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: src__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: src__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: src__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.src.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: src__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.src.user.attribute.cloud.vpc.type ;;
    group_label: "Src User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: src__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.src.user.attribute.creation_time.nanos ;;
    group_label: "Src User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: src__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.src.user.attribute.creation_time.seconds ;;
    group_label: "Src User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: src__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.src.user.attribute.labels ;;
    group_label: "Src User Attribute"
    group_item_label: "Labels"
  }

  dimension: src__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.src.user.attribute.last_update_time.nanos ;;
    group_label: "Src User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: src__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.src.user.attribute.last_update_time.seconds ;;
    group_label: "Src User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: src__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.src.user.attribute.permissions ;;
    group_label: "Src User Attribute"
    group_item_label: "Permissions"
  }

  dimension: src__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.src.user.attribute.roles ;;
    group_label: "Src User Attribute"
    group_item_label: "Roles"
  }

  dimension: src__user__company_name {
    type: string
    sql: ${TABLE}.src.user.company_name ;;
    group_label: "Src User"
    group_item_label: "Company Name"
  }

  dimension: src__user__department {
    hidden: yes
    sql: ${TABLE}.src.user.department ;;
    group_label: "Src User"
    group_item_label: "Department"
  }

  dimension: src__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.src.user.email_addresses ;;
    group_label: "Src User"
    group_item_label: "Email Addresses"
  }

  dimension: src__user__employee_id {
    type: string
    sql: ${TABLE}.src.user.employee_id ;;
    group_label: "Src User"
    group_item_label: "Employee ID"
  }

  dimension: src__user__first_name {
    type: string
    sql: ${TABLE}.src.user.first_name ;;
    group_label: "Src User"
    group_item_label: "First Name"
  }

  dimension: src__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.src.user.group_identifiers ;;
    group_label: "Src User"
    group_item_label: "Group Identifiers"
  }

  dimension: src__user__groupid {
    type: string
    sql: ${TABLE}.src.user.groupid ;;
    group_label: "Src User"
    group_item_label: "Groupid"
  }

  dimension: src__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.src.user.hire_date.nanos ;;
    group_label: "Src User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: src__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.src.user.hire_date.seconds ;;
    group_label: "Src User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: src__user__last_name {
    type: string
    sql: ${TABLE}.src.user.last_name ;;
    group_label: "Src User"
    group_item_label: "Last Name"
  }

  dimension: src__user__middle_name {
    type: string
    sql: ${TABLE}.src.user.middle_name ;;
    group_label: "Src User"
    group_item_label: "Middle Name"
  }

  dimension: src__user__office_address__city {
    type: string
    sql: ${TABLE}.src.user.office_address.city ;;
    group_label: "Src User Office Address"
    group_item_label: "City"
  }

  dimension: src__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.src.user.office_address.country_or_region ;;
    group_label: "Src User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: src__user__office_address__name {
    type: string
    sql: ${TABLE}.src.user.office_address.name ;;
    group_label: "Src User Office Address"
    group_item_label: "Name"
  }

  dimension: src__user__office_address__state {
    type: string
    sql: ${TABLE}.src.user.office_address.state ;;
    group_label: "Src User Office Address"
    group_item_label: "State"
  }

  dimension: src__user__personal_address__city {
    type: string
    sql: ${TABLE}.src.user.personal_address.city ;;
    group_label: "Src User Personal Address"
    group_item_label: "City"
  }

  dimension: src__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.src.user.personal_address.country_or_region ;;
    group_label: "Src User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: src__user__personal_address__name {
    type: string
    sql: ${TABLE}.src.user.personal_address.name ;;
    group_label: "Src User Personal Address"
    group_item_label: "Name"
  }

  dimension: src__user__personal_address__state {
    type: string
    sql: ${TABLE}.src.user.personal_address.state ;;
    group_label: "Src User Personal Address"
    group_item_label: "State"
  }

  dimension: src__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.src.user.phone_numbers ;;
    group_label: "Src User"
    group_item_label: "Phone Numbers"
  }

  dimension: src__user__product_object_id {
    type: string
    sql: ${TABLE}.src.user.product_object_id ;;
    group_label: "Src User"
    group_item_label: "Product Object ID"
  }

  dimension: src__user__role_description {
    type: string
    sql: ${TABLE}.src.user.role_description ;;
    group_label: "Src User"
    group_item_label: "Role Description"
  }

  dimension: src__user__role_name {
    type: string
    sql: ${TABLE}.src.user.role_name ;;
    group_label: "Src User"
    group_item_label: "Role Name"
  }

  dimension: src__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.src.user.termination_date.nanos ;;
    group_label: "Src User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: src__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.src.user.termination_date.seconds ;;
    group_label: "Src User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: src__user__time_off {
    hidden: yes
    sql: ${TABLE}.src.user.time_off ;;
    group_label: "Src User"
    group_item_label: "Time Off"
  }

  dimension: src__user__title {
    type: string
    sql: ${TABLE}.src.user.title ;;
    group_label: "Src User"
    group_item_label: "Title"
  }

  dimension: src__user__user_authentication_status {
    type: number
    sql: ${TABLE}.src.user.user_authentication_status ;;
    group_label: "Src User"
    group_item_label: "User Authentication Status"
  }

  dimension: src__user__user_display_name {
    type: string
    sql: ${TABLE}.src.user.user_display_name ;;
    group_label: "Src User"
    group_item_label: "User Display Name"
  }

  dimension: src__user__user_role {
    type: number
    sql: ${TABLE}.src.user.user_role ;;
    group_label: "Src User"
    group_item_label: "User Role"
  }

  dimension: src__user__userid {
    type: string
    sql: ${TABLE}.src.user.userid ;;
    group_label: "Src User"
    group_item_label: "Userid"
  }

  dimension: src__user__windows_sid {
    type: string
    sql: ${TABLE}.src.user.windows_sid ;;
    group_label: "Src User"
    group_item_label: "Windows Sid"
  }

  dimension: src__user_management_chain {
    hidden: yes
    sql: ${TABLE}.src.user_management_chain ;;
    group_label: "Src"
    group_item_label: "User Management Chain"
  }

  dimension: target__administrative_domain {
    type: string
    sql: ${TABLE}.target.administrative_domain ;;
    group_label: "Target"
    group_item_label: "Administrative Domain"
  }

  dimension: target__application {
    type: string
    sql: ${TABLE}.target.application ;;
    group_label: "Target"
    group_item_label: "Application"
  }

  dimension: target__asset__asset_id {
    type: string
    sql: ${TABLE}.target.asset.asset_id ;;
    group_label: "Target Asset"
    group_item_label: "Asset ID"
  }

  dimension: target__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.availability_zone ;;
    group_label: "Target Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: target__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.target.asset.attribute.cloud.environment ;;
    group_label: "Target Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: target__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.id ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: target__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.name ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: target__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.parent ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: target__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: target__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: target__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.target.asset.attribute.cloud.project.resource_type ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: target__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.project.type ;;
    group_label: "Target Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: target__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.id ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: target__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.name ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: target__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.parent ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: target__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: target__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: target__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: target__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.target.asset.attribute.cloud.vpc.type ;;
    group_label: "Target Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: target__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.attribute.creation_time.nanos ;;
    group_label: "Target Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.attribute.creation_time.seconds ;;
    group_label: "Target Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.asset.attribute.labels ;;
    group_label: "Target Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: target__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.attribute.last_update_time.nanos ;;
    group_label: "Target Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.attribute.last_update_time.seconds ;;
    group_label: "Target Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.asset.attribute.permissions ;;
    group_label: "Target Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.asset.attribute.roles ;;
    group_label: "Target Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: target__asset__category {
    type: string
    sql: ${TABLE}.target.asset.category ;;
    group_label: "Target Asset"
    group_item_label: "Category"
  }

  dimension: target__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.creation_time.nanos ;;
    group_label: "Target Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.creation_time.seconds ;;
    group_label: "Target Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__deployment_status {
    type: number
    sql: ${TABLE}.target.asset.deployment_status ;;
    group_label: "Target Asset"
    group_item_label: "Deployment Status"
  }

  dimension: target__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.first_discover_time.nanos ;;
    group_label: "Target Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.first_discover_time.seconds ;;
    group_label: "Target Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__hardware {
    hidden: yes
    sql: ${TABLE}.target.asset.hardware ;;
    group_label: "Target Asset"
    group_item_label: "Hardware"
  }

  dimension: target__asset__hostname {
    type: string
    sql: ${TABLE}.target.asset.hostname ;;
    group_label: "Target Asset"
    group_item_label: "Hostname"
  }

  dimension: target__asset__ip {
    hidden: yes
    sql: ${TABLE}.target.asset.ip ;;
    group_label: "Target Asset"
    group_item_label: "IP"
  }

  dimension: target__asset__labels {
    hidden: yes
    sql: ${TABLE}.target.asset.labels ;;
    group_label: "Target Asset"
    group_item_label: "Labels"
  }

  dimension: target__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.last_boot_time.nanos ;;
    group_label: "Target Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.last_boot_time.seconds ;;
    group_label: "Target Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.last_discover_time.nanos ;;
    group_label: "Target Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.last_discover_time.seconds ;;
    group_label: "Target Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__location__city {
    type: string
    sql: ${TABLE}.target.asset.location.city ;;
    group_label: "Target Asset Location"
    group_item_label: "City"
  }

  dimension: target__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.target.asset.location.country_or_region ;;
    group_label: "Target Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: target__asset__location__name {
    type: string
    sql: ${TABLE}.target.asset.location.name ;;
    group_label: "Target Asset Location"
    group_item_label: "Name"
  }

  dimension: target__asset__location__state {
    type: string
    sql: ${TABLE}.target.asset.location.state ;;
    group_label: "Target Asset Location"
    group_item_label: "State"
  }

  dimension: target__asset__mac {
    hidden: yes
    sql: ${TABLE}.target.asset.mac ;;
    group_label: "Target Asset"
    group_item_label: "Mac"
  }

  dimension: target__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.target.asset.nat_ip ;;
    group_label: "Target Asset"
    group_item_label: "Nat IP"
  }

  dimension: target__asset__network_domain {
    type: string
    sql: ${TABLE}.target.asset.network_domain ;;
    group_label: "Target Asset"
    group_item_label: "Network Domain"
  }

  dimension: target__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.target.asset.platform_software.platform ;;
    group_label: "Target Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: target__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.target.asset.platform_software.platform_patch_level ;;
    group_label: "Target Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: target__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.target.asset.platform_software.platform_version ;;
    group_label: "Target Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: target__asset__product_object_id {
    type: string
    sql: ${TABLE}.target.asset.product_object_id ;;
    group_label: "Target Asset"
    group_item_label: "Product Object ID"
  }

  dimension: target__asset__software {
    hidden: yes
    sql: ${TABLE}.target.asset.software ;;
    group_label: "Target Asset"
    group_item_label: "Software"
  }

  dimension: target__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.asset.system_last_update_time.nanos ;;
    group_label: "Target Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.asset.system_last_update_time.seconds ;;
    group_label: "Target Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__asset__type {
    type: number
    sql: ${TABLE}.target.asset.type ;;
    group_label: "Target Asset"
    group_item_label: "Type"
  }

  dimension: target__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.target.asset.vulnerabilities ;;
    group_label: "Target Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: target__asset_id {
    type: string
    sql: ${TABLE}.target.asset_id ;;
    group_label: "Target"
    group_item_label: "Asset ID"
  }

  dimension: target__cloud__availability_zone {
    type: string
    sql: ${TABLE}.target.cloud.availability_zone ;;
    group_label: "Target Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: target__cloud__environment {
    type: number
    sql: ${TABLE}.target.cloud.environment ;;
    group_label: "Target Cloud"
    group_item_label: "Environment"
  }

  dimension: target__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Target Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Target Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.cloud.project.attribute.labels ;;
    group_label: "Target Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: target__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Target Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Target Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.cloud.project.attribute.permissions ;;
    group_label: "Target Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.cloud.project.attribute.roles ;;
    group_label: "Target Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: target__cloud__project__id {
    type: string
    sql: ${TABLE}.target.cloud.project.id ;;
    group_label: "Target Cloud Project"
    group_item_label: "ID"
  }

  dimension: target__cloud__project__name {
    type: string
    sql: ${TABLE}.target.cloud.project.name ;;
    group_label: "Target Cloud Project"
    group_item_label: "Name"
  }

  dimension: target__cloud__project__parent {
    type: string
    sql: ${TABLE}.target.cloud.project.parent ;;
    group_label: "Target Cloud Project"
    group_item_label: "Parent"
  }

  dimension: target__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.target.cloud.project.product_object_id ;;
    group_label: "Target Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: target__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.target.cloud.project.resource_subtype ;;
    group_label: "Target Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: target__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.target.cloud.project.resource_type ;;
    group_label: "Target Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: target__cloud__project__type {
    type: string
    sql: ${TABLE}.target.cloud.project.type ;;
    group_label: "Target Cloud Project"
    group_item_label: "Type"
  }

  dimension: target__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Target Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Target Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.cloud.vpc.attribute.labels ;;
    group_label: "Target Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: target__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Target Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Target Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.cloud.vpc.attribute.permissions ;;
    group_label: "Target Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.cloud.vpc.attribute.roles ;;
    group_label: "Target Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: target__cloud__vpc__id {
    type: string
    sql: ${TABLE}.target.cloud.vpc.id ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: target__cloud__vpc__name {
    type: string
    sql: ${TABLE}.target.cloud.vpc.name ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: target__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.target.cloud.vpc.parent ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: target__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.target.cloud.vpc.product_object_id ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: target__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.target.cloud.vpc.resource_subtype ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: target__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.target.cloud.vpc.resource_type ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: target__cloud__vpc__type {
    type: string
    sql: ${TABLE}.target.cloud.vpc.type ;;
    group_label: "Target Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: target__email {
    type: string
    sql: ${TABLE}.target.email ;;
    group_label: "Target"
    group_item_label: "Email"
  }

  dimension: target__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.target.file.file_metadata.pe.import_hash ;;
    group_label: "Target File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: target__file__full_path {
    type: string
    sql: ${TABLE}.target.file.full_path ;;
    group_label: "Target File"
    group_item_label: "Full Path"
  }

  dimension: target__file__md5 {
    type: string
    sql: ${TABLE}.target.file.md5 ;;
    group_label: "Target File"
    group_item_label: "Md5"
  }

  dimension: target__file__mime_type {
    type: string
    sql: ${TABLE}.target.file.mime_type ;;
    group_label: "Target File"
    group_item_label: "Mime Type"
  }

  dimension: target__file__sha1 {
    type: string
    sql: ${TABLE}.target.file.sha1 ;;
    group_label: "Target File"
    group_item_label: "Sha1"
  }

  dimension: target__file__sha256 {
    type: string
    sql: ${TABLE}.target.file.sha256 ;;
    group_label: "Target File"
    group_item_label: "Sha256"
  }

  dimension: target__file__size {
    type: number
    sql: ${TABLE}.target.file.size ;;
    group_label: "Target File"
    group_item_label: "Size"
  }

  dimension: target__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.availability_zone ;;
    group_label: "Target Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: target__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.target.`group`.attribute.cloud.environment ;;
    group_label: "Target Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: target__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.id ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: target__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.name ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: target__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.parent ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: target__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: target__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: target__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.target.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: target__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.project.type ;;
    group_label: "Target Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: target__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.id ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: target__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.name ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: target__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: target__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: target__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: target__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: target__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.target.`group`.attribute.cloud.vpc.type ;;
    group_label: "Target Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: target__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.`group`.attribute.creation_time.nanos ;;
    group_label: "Target Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.`group`.attribute.creation_time.seconds ;;
    group_label: "Target Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.group.attribute.labels ;;
    group_label: "Target Group Attribute"
    group_item_label: "Labels"
  }

  dimension: target__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.`group`.attribute.last_update_time.nanos ;;
    group_label: "Target Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.`group`.attribute.last_update_time.seconds ;;
    group_label: "Target Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.group.attribute.permissions ;;
    group_label: "Target Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.group.attribute.roles ;;
    group_label: "Target Group Attribute"
    group_item_label: "Roles"
  }

  dimension: target__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.`group`.creation_time.nanos ;;
    group_label: "Target Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.`group`.creation_time.seconds ;;
    group_label: "Target Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.target.group.email_addresses ;;
    group_label: "Target Group"
    group_item_label: "Email Addresses"
  }

  dimension: target__group__group_display_name {
    type: string
    sql: ${TABLE}.target.`group`.group_display_name ;;
    group_label: "Target Group"
    group_item_label: "Group Display Name"
  }

  dimension: target__group__product_object_id {
    type: string
    sql: ${TABLE}.target.`group`.product_object_id ;;
    group_label: "Target Group"
    group_item_label: "Product Object ID"
  }

  dimension: target__group__windows_sid {
    type: string
    sql: ${TABLE}.target.`group`.windows_sid ;;
    group_label: "Target Group"
    group_item_label: "Windows Sid"
  }

  dimension: target__hostname {
    type: string
    sql: ${TABLE}.target.hostname ;;
    group_label: "Target"
    group_item_label: "Hostname"
  }

  dimension: target__investigation__comments {
    hidden: yes
    sql: ${TABLE}.target.investigation.comments ;;
    group_label: "Target Investigation"
    group_item_label: "Comments"
  }

  dimension: target__investigation__reputation {
    type: number
    sql: ${TABLE}.target.investigation.reputation ;;
    group_label: "Target Investigation"
    group_item_label: "Reputation"
  }

  dimension: target__investigation__severity_score {
    type: number
    sql: ${TABLE}.target.investigation.severity_score ;;
    group_label: "Target Investigation"
    group_item_label: "Severity Score"
  }

  dimension: target__investigation__status {
    type: number
    sql: ${TABLE}.target.investigation.status ;;
    group_label: "Target Investigation"
    group_item_label: "Status"
  }

  dimension: target__investigation__verdict {
    type: number
    sql: ${TABLE}.target.investigation.verdict ;;
    group_label: "Target Investigation"
    group_item_label: "Verdict"
  }

  dimension: target__ip {
    hidden: yes
    sql: ${TABLE}.target.ip ;;
    group_label: "Target"
    group_item_label: "IP"
  }

  dimension: target__labels {
    hidden: yes
    sql: ${TABLE}.target.labels ;;
    group_label: "Target"
    group_item_label: "Labels"
  }

  dimension: target__location__city {
    type: string
    sql: ${TABLE}.target.location.city ;;
    group_label: "Target Location"
    group_item_label: "City"
  }

  dimension: target__location__country_or_region {
    type: string
    sql: ${TABLE}.target.location.country_or_region ;;
    group_label: "Target Location"
    group_item_label: "Country or Region"
  }

  dimension: target__location__name {
    type: string
    sql: ${TABLE}.target.location.name ;;
    group_label: "Target Location"
    group_item_label: "Name"
  }

  dimension: target__location__state {
    type: string
    sql: ${TABLE}.target.location.state ;;
    group_label: "Target Location"
    group_item_label: "State"
  }

  dimension: target__mac {
    hidden: yes
    sql: ${TABLE}.target.mac ;;
    group_label: "Target"
    group_item_label: "Mac"
  }

  dimension: target__namespace {
    type: string
    sql: ${TABLE}.target.namespace ;;
    group_label: "Target"
    group_item_label: "Namespace"
  }

  dimension: target__nat_ip {
    hidden: yes
    sql: ${TABLE}.target.nat_ip ;;
    group_label: "Target"
    group_item_label: "Nat IP"
  }

  dimension: target__nat_port {
    type: number
    sql: ${TABLE}.target.nat_port ;;
    group_label: "Target"
    group_item_label: "Nat Port"
  }

  dimension: target__object_reference__id {
    type: string
    sql: ${TABLE}.target.object_reference.id ;;
    group_label: "Target Object Reference"
    group_item_label: "ID"
  }

  dimension: target__object_reference__namespace {
    type: number
    sql: ${TABLE}.target.object_reference.namespace ;;
    group_label: "Target Object Reference"
    group_item_label: "Namespace"
  }

  dimension: target__platform {
    type: number
    sql: ${TABLE}.target.platform ;;
    group_label: "Target"
    group_item_label: "Platform"
  }

  dimension: target__platform_patch_level {
    type: string
    sql: ${TABLE}.target.platform_patch_level ;;
    group_label: "Target"
    group_item_label: "Platform Patch Level"
  }

  dimension: target__platform_version {
    type: string
    sql: ${TABLE}.target.platform_version ;;
    group_label: "Target"
    group_item_label: "Platform Version"
  }

  dimension: target__port {
    type: number
    sql: ${TABLE}.target.port ;;
    group_label: "Target"
    group_item_label: "Port"
  }

  dimension: target__process__access_mask {
    type: number
    sql: ${TABLE}.target.process.access_mask ;;
    group_label: "Target Process"
    group_item_label: "Access Mask"
  }

  dimension: target__process__command_line {
    type: string
    sql: ${TABLE}.target.process.command_line ;;
    group_label: "Target Process"
    group_item_label: "Command Line"
  }

  dimension: target__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.target.process.command_line_history ;;
    group_label: "Target Process"
    group_item_label: "Command Line History"
  }

  dimension: target__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.target.process.file.file_metadata.pe.import_hash ;;
    group_label: "Target Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: target__process__file__full_path {
    type: string
    sql: ${TABLE}.target.process.file.full_path ;;
    group_label: "Target Process File"
    group_item_label: "Full Path"
  }

  dimension: target__process__file__md5 {
    type: string
    sql: ${TABLE}.target.process.file.md5 ;;
    group_label: "Target Process File"
    group_item_label: "Md5"
  }

  dimension: target__process__file__mime_type {
    type: string
    sql: ${TABLE}.target.process.file.mime_type ;;
    group_label: "Target Process File"
    group_item_label: "Mime Type"
  }

  dimension: target__process__file__sha1 {
    type: string
    sql: ${TABLE}.target.process.file.sha1 ;;
    group_label: "Target Process File"
    group_item_label: "Sha1"
  }

  dimension: target__process__file__sha256 {
    type: string
    sql: ${TABLE}.target.process.file.sha256 ;;
    group_label: "Target Process File"
    group_item_label: "Sha256"
  }

  dimension: target__process__file__size {
    type: number
    sql: ${TABLE}.target.process.file.size ;;
    group_label: "Target Process File"
    group_item_label: "Size"
  }

  dimension: target__process__parent_pid {
    type: string
    sql: ${TABLE}.target.process.parent_pid ;;
    group_label: "Target Process"
    group_item_label: "Parent Pid"
  }

  dimension: target__process__pid {
    type: string
    sql: ${TABLE}.target.process.pid ;;
    group_label: "Target Process"
    group_item_label: "Pid"
  }

  dimension: target__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.target.process.product_specific_parent_process_id ;;
    group_label: "Target Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: target__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.target.process.product_specific_process_id ;;
    group_label: "Target Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: target__process_ancestors {
    hidden: yes
    sql: ${TABLE}.target.process_ancestors ;;
    group_label: "Target"
    group_item_label: "Process Ancestors"
  }

  dimension: target__registry__registry_key {
    type: string
    sql: ${TABLE}.target.registry.registry_key ;;
    group_label: "Target Registry"
    group_item_label: "Registry Key"
  }

  dimension: target__registry__registry_value_data {
    type: string
    sql: ${TABLE}.target.registry.registry_value_data ;;
    group_label: "Target Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: target__registry__registry_value_name {
    type: string
    sql: ${TABLE}.target.registry.registry_value_name ;;
    group_label: "Target Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: target__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.target.resource.attribute.cloud.availability_zone ;;
    group_label: "Target Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: target__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.target.resource.attribute.cloud.environment ;;
    group_label: "Target Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: target__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.resource.attribute.creation_time.nanos ;;
    group_label: "Target Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.resource.attribute.creation_time.seconds ;;
    group_label: "Target Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.resource.attribute.labels ;;
    group_label: "Target Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: target__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.resource.attribute.last_update_time.nanos ;;
    group_label: "Target Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.resource.attribute.last_update_time.seconds ;;
    group_label: "Target Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.resource.attribute.permissions ;;
    group_label: "Target Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.resource.attribute.roles ;;
    group_label: "Target Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: target__resource__id {
    type: string
    sql: ${TABLE}.target.resource.id ;;
    group_label: "Target Resource"
    group_item_label: "ID"
  }

  dimension: target__resource__name {
    type: string
    sql: ${TABLE}.target.resource.name ;;
    group_label: "Target Resource"
    group_item_label: "Name"
  }

  dimension: target__resource__parent {
    type: string
    sql: ${TABLE}.target.resource.parent ;;
    group_label: "Target Resource"
    group_item_label: "Parent"
  }

  dimension: target__resource__product_object_id {
    type: string
    sql: ${TABLE}.target.resource.product_object_id ;;
    group_label: "Target Resource"
    group_item_label: "Product Object ID"
  }

  dimension: target__resource__resource_subtype {
    type: string
    sql: ${TABLE}.target.resource.resource_subtype ;;
    group_label: "Target Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: target__resource__resource_type {
    type: number
    sql: ${TABLE}.target.resource.resource_type ;;
    group_label: "Target Resource"
    group_item_label: "Resource Type"
  }

  dimension: target__resource__type {
    type: string
    sql: ${TABLE}.target.resource.type ;;
    group_label: "Target Resource"
    group_item_label: "Type"
  }

  dimension: target__url {
    type: string
    sql: ${TABLE}.target.url ;;
    group_label: "Target"
    group_item_label: "URL"
  }

  dimension: target__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.availability_zone ;;
    group_label: "Target User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: target__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.target.user.attribute.cloud.environment ;;
    group_label: "Target User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: target__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.id ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: target__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.name ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: target__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.parent ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: target__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.product_object_id ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: target__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: target__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.target.user.attribute.cloud.project.resource_type ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: target__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.project.type ;;
    group_label: "Target User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: target__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.id ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: target__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.name ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: target__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.parent ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: target__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: target__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: target__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.target.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: target__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.target.user.attribute.cloud.vpc.type ;;
    group_label: "Target User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: target__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.target.user.attribute.creation_time.nanos ;;
    group_label: "Target User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: target__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.target.user.attribute.creation_time.seconds ;;
    group_label: "Target User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: target__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.target.user.attribute.labels ;;
    group_label: "Target User Attribute"
    group_item_label: "Labels"
  }

  dimension: target__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.target.user.attribute.last_update_time.nanos ;;
    group_label: "Target User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: target__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.target.user.attribute.last_update_time.seconds ;;
    group_label: "Target User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: target__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.target.user.attribute.permissions ;;
    group_label: "Target User Attribute"
    group_item_label: "Permissions"
  }

  dimension: target__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.target.user.attribute.roles ;;
    group_label: "Target User Attribute"
    group_item_label: "Roles"
  }

  dimension: target__user__company_name {
    type: string
    sql: ${TABLE}.target.user.company_name ;;
    group_label: "Target User"
    group_item_label: "Company Name"
  }

  dimension: target__user__department {
    hidden: yes
    sql: ${TABLE}.target.user.department ;;
    group_label: "Target User"
    group_item_label: "Department"
  }

  dimension: target__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.target.user.email_addresses ;;
    group_label: "Target User"
    group_item_label: "Email Addresses"
  }

  dimension: target__user__employee_id {
    type: string
    sql: ${TABLE}.target.user.employee_id ;;
    group_label: "Target User"
    group_item_label: "Employee ID"
  }

  dimension: target__user__first_name {
    type: string
    sql: ${TABLE}.target.user.first_name ;;
    group_label: "Target User"
    group_item_label: "First Name"
  }

  dimension: target__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.target.user.group_identifiers ;;
    group_label: "Target User"
    group_item_label: "Group Identifiers"
  }

  dimension: target__user__groupid {
    type: string
    sql: ${TABLE}.target.user.groupid ;;
    group_label: "Target User"
    group_item_label: "Groupid"
  }

  dimension: target__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.target.user.hire_date.nanos ;;
    group_label: "Target User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: target__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.target.user.hire_date.seconds ;;
    group_label: "Target User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: target__user__last_name {
    type: string
    sql: ${TABLE}.target.user.last_name ;;
    group_label: "Target User"
    group_item_label: "Last Name"
  }

  dimension: target__user__middle_name {
    type: string
    sql: ${TABLE}.target.user.middle_name ;;
    group_label: "Target User"
    group_item_label: "Middle Name"
  }

  dimension: target__user__office_address__city {
    type: string
    sql: ${TABLE}.target.user.office_address.city ;;
    group_label: "Target User Office Address"
    group_item_label: "City"
  }

  dimension: target__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.target.user.office_address.country_or_region ;;
    group_label: "Target User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: target__user__office_address__name {
    type: string
    sql: ${TABLE}.target.user.office_address.name ;;
    group_label: "Target User Office Address"
    group_item_label: "Name"
  }

  dimension: target__user__office_address__state {
    type: string
    sql: ${TABLE}.target.user.office_address.state ;;
    group_label: "Target User Office Address"
    group_item_label: "State"
  }

  dimension: target__user__personal_address__city {
    type: string
    sql: ${TABLE}.target.user.personal_address.city ;;
    group_label: "Target User Personal Address"
    group_item_label: "City"
  }

  dimension: target__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.target.user.personal_address.country_or_region ;;
    group_label: "Target User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: target__user__personal_address__name {
    type: string
    sql: ${TABLE}.target.user.personal_address.name ;;
    group_label: "Target User Personal Address"
    group_item_label: "Name"
  }

  dimension: target__user__personal_address__state {
    type: string
    sql: ${TABLE}.target.user.personal_address.state ;;
    group_label: "Target User Personal Address"
    group_item_label: "State"
  }

  dimension: target__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.target.user.phone_numbers ;;
    group_label: "Target User"
    group_item_label: "Phone Numbers"
  }

  dimension: target__user__product_object_id {
    type: string
    sql: ${TABLE}.target.user.product_object_id ;;
    group_label: "Target User"
    group_item_label: "Product Object ID"
  }

  dimension: target__user__role_description {
    type: string
    sql: ${TABLE}.target.user.role_description ;;
    group_label: "Target User"
    group_item_label: "Role Description"
  }

  dimension: target__user__role_name {
    type: string
    sql: ${TABLE}.target.user.role_name ;;
    group_label: "Target User"
    group_item_label: "Role Name"
  }

  dimension: target__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.target.user.termination_date.nanos ;;
    group_label: "Target User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: target__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.target.user.termination_date.seconds ;;
    group_label: "Target User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: target__user__time_off {
    hidden: yes
    sql: ${TABLE}.target.user.time_off ;;
    group_label: "Target User"
    group_item_label: "Time Off"
  }

  dimension: target__user__title {
    type: string
    sql: ${TABLE}.target.user.title ;;
    group_label: "Target User"
    group_item_label: "Title"
  }

  dimension: target__user__user_authentication_status {
    type: number
    sql: ${TABLE}.target.user.user_authentication_status ;;
    group_label: "Target User"
    group_item_label: "User Authentication Status"
  }

  dimension: target__user__user_display_name {
    type: string
    sql: ${TABLE}.target.user.user_display_name ;;
    group_label: "Target User"
    group_item_label: "User Display Name"
  }

  dimension: target__user__user_role {
    type: number
    sql: ${TABLE}.target.user.user_role ;;
    group_label: "Target User"
    group_item_label: "User Role"
  }

  dimension: target__user__userid {
    type: string
    sql: ${TABLE}.target.user.userid ;;
    group_label: "Target User"
    group_item_label: "Userid"
  }

  dimension: target__user__windows_sid {
    type: string
    sql: ${TABLE}.target.user.windows_sid ;;
    group_label: "Target User"
    group_item_label: "Windows Sid"
  }

  dimension: target__user_management_chain {
    hidden: yes
    sql: ${TABLE}.target.user_management_chain ;;
    group_label: "Target"
    group_item_label: "User Management Chain"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      src__hostname,
      target__hostname,
      src__resource__name,
      src__location__name,
      observer__hostname,
      src__cloud__vpc__name,
      src__asset__hostname,
      src__user__last_name,
      src__user__role_name,
      network__dhcp__sname,
      principal__hostname,
      src__user__first_name,
      metadata__vendor_name,
      src__user__middle_name,
      target__resource__name,
      target__location__name,
      metadata__product_name,
      src__user__company_name,
      target__cloud__vpc__name,
      target__asset__hostname,
      target__user__last_name,
      target__user__role_name,
      src__cloud__project__name,
      target__user__first_name,
      observer__resource__name,
      observer__location__name,
      src__asset__location__name,
      target__user__middle_name,
      principal__resource__name,
      principal__location__name,
      observer__cloud__vpc__name,
      observer__asset__hostname,
      observer__user__last_name,
      observer__user__role_name,
      target__user__company_name,
      principal__cloud__vpc__name,
      principal__asset__hostname,
      principal__user__last_name,
      principal__user__role_name,
      observer__user__first_name,
      target__cloud__project__name,
      principal__user__first_name,
      observer__user__middle_name,
      src__user__user_display_name,
      target__asset__location__name,
      principal__user__middle_name,
      observer__user__company_name,
      principal__user__company_name,
      observer__cloud__project__name,
      src__user__office_address__name,
      network__dhcp__client_hostname,
      principal__cloud__project__name,
      observer__asset__location__name,
      target__user__user_display_name,
      principal__asset__location__name,
      src__group__group_display_name,
      src__user__personal_address__name,
      network__tls__client__server_name,
      target__user__office_address__name,
      observer__user__user_display_name,
      src__registry__registry_value_name,
      principal__user__user_display_name,
      src__user__attribute__cloud__vpc__name,
      target__group__group_display_name,
      target__user__personal_address__name,
      observer__user__office_address__name,
      src__asset__attribute__cloud__vpc__name,
      principal__user__office_address__name,
      target__registry__registry_value_name,
      observer__group__group_display_name,
      observer__user__personal_address__name,
      src__group__attribute__cloud__vpc__name,
      target__user__attribute__cloud__vpc__name,
      principal__group__group_display_name,
      principal__user__personal_address__name,
      src__user__attribute__cloud__project__name,
      target__asset__attribute__cloud__vpc__name,
      observer__registry__registry_value_name,
      src__asset__attribute__cloud__project__name,
      principal__registry__registry_value_name,
      observer__user__attribute__cloud__vpc__name,
      target__group__attribute__cloud__vpc__name,
      principal__user__attribute__cloud__vpc__name,
      observer__asset__attribute__cloud__vpc__name,
      src__group__attribute__cloud__project__name,
      target__user__attribute__cloud__project__name,
      principal__asset__attribute__cloud__vpc__name,
      target__asset__attribute__cloud__project__name,
      observer__group__attribute__cloud__vpc__name,
      principal__group__attribute__cloud__vpc__name,
      observer__user__attribute__cloud__project__name,
      target__group__attribute__cloud__project__name,
      principal__user__attribute__cloud__project__name,
      observer__asset__attribute__cloud__project__name,
      principal__asset__attribute__cloud__project__name,
      observer__group__attribute__cloud__project__name,
      principal__group__attribute__cloud__project__name
    ]
  }
}

view: udm_events__src__ip {
  dimension: udm_events__src__ip {
    type: string
    sql: udm_events__src__ip ;;
  }
}

view: udm_events__src__mac {
  dimension: udm_events__src__mac {
    type: string
    sql: udm_events__src__mac ;;
  }
}

view: udm_events__about__ip {
  dimension: udm_events__about__ip {
    type: string
    sql: udm_events__about__ip ;;
  }
}

view: udm_events__about__mac {
  dimension: udm_events__about__mac {
    type: string
    sql: udm_events__about__mac ;;
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

  dimension: asset__asset_id {
    type: string
    sql: ${TABLE}.asset.asset_id ;;
    group_label: "Asset"
    group_item_label: "Asset ID"
  }

  dimension: asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.availability_zone ;;
    group_label: "Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.environment ;;
    group_label: "Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.id ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.name ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.parent ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.project.resource_type ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.type ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.id ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.name ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.parent ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.type ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.asset.attribute.creation_time.nanos ;;
    group_label: "Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.asset.attribute.creation_time.seconds ;;
    group_label: "Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.asset.attribute.labels ;;
    group_label: "Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.asset.attribute.last_update_time.nanos ;;
    group_label: "Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.asset.attribute.last_update_time.seconds ;;
    group_label: "Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.asset.attribute.permissions ;;
    group_label: "Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.asset.attribute.roles ;;
    group_label: "Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: asset__category {
    type: string
    sql: ${TABLE}.asset.category ;;
    group_label: "Asset"
    group_item_label: "Category"
  }

  dimension: asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.asset.creation_time.nanos ;;
    group_label: "Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.asset.creation_time.seconds ;;
    group_label: "Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: asset__deployment_status {
    type: number
    sql: ${TABLE}.asset.deployment_status ;;
    group_label: "Asset"
    group_item_label: "Deployment Status"
  }

  dimension: asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.asset.first_discover_time.nanos ;;
    group_label: "Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.asset.first_discover_time.seconds ;;
    group_label: "Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: asset__hardware {
    hidden: yes
    sql: ${TABLE}.asset.hardware ;;
    group_label: "Asset"
    group_item_label: "Hardware"
  }

  dimension: asset__hostname {
    type: string
    sql: ${TABLE}.asset.hostname ;;
    group_label: "Asset"
    group_item_label: "Hostname"
  }

  dimension: asset__ip {
    hidden: yes
    sql: ${TABLE}.asset.ip ;;
    group_label: "Asset"
    group_item_label: "IP"
  }

  dimension: asset__labels {
    hidden: yes
    sql: ${TABLE}.asset.labels ;;
    group_label: "Asset"
    group_item_label: "Labels"
  }

  dimension: asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.asset.last_boot_time.nanos ;;
    group_label: "Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.asset.last_boot_time.seconds ;;
    group_label: "Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.asset.last_discover_time.nanos ;;
    group_label: "Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.asset.last_discover_time.seconds ;;
    group_label: "Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: asset__location__city {
    type: string
    sql: ${TABLE}.asset.location.city ;;
    group_label: "Asset Location"
    group_item_label: "City"
  }

  dimension: asset__location__country_or_region {
    type: string
    sql: ${TABLE}.asset.location.country_or_region ;;
    group_label: "Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: asset__location__name {
    type: string
    sql: ${TABLE}.asset.location.name ;;
    group_label: "Asset Location"
    group_item_label: "Name"
  }

  dimension: asset__location__state {
    type: string
    sql: ${TABLE}.asset.location.state ;;
    group_label: "Asset Location"
    group_item_label: "State"
  }

  dimension: asset__mac {
    hidden: yes
    sql: ${TABLE}.asset.mac ;;
    group_label: "Asset"
    group_item_label: "Mac"
  }

  dimension: asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.asset.nat_ip ;;
    group_label: "Asset"
    group_item_label: "Nat IP"
  }

  dimension: asset__network_domain {
    type: string
    sql: ${TABLE}.asset.network_domain ;;
    group_label: "Asset"
    group_item_label: "Network Domain"
  }

  dimension: asset__platform_software__platform {
    type: number
    sql: ${TABLE}.asset.platform_software.platform ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.asset.platform_software.platform_patch_level ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.asset.platform_software.platform_version ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: asset__product_object_id {
    type: string
    sql: ${TABLE}.asset.product_object_id ;;
    group_label: "Asset"
    group_item_label: "Product Object ID"
  }

  dimension: asset__software {
    hidden: yes
    sql: ${TABLE}.asset.software ;;
    group_label: "Asset"
    group_item_label: "Software"
  }

  dimension: asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.asset.system_last_update_time.nanos ;;
    group_label: "Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.asset.system_last_update_time.seconds ;;
    group_label: "Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: asset__type {
    type: number
    sql: ${TABLE}.asset.type ;;
    group_label: "Asset"
    group_item_label: "Type"
  }

  dimension: asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.asset.vulnerabilities ;;
    group_label: "Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud__availability_zone {
    type: string
    sql: ${TABLE}.cloud.availability_zone ;;
    group_label: "Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: cloud__environment {
    type: number
    sql: ${TABLE}.cloud.environment ;;
    group_label: "Cloud"
    group_item_label: "Environment"
  }

  dimension: cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.labels ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.permissions ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.roles ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: cloud__project__id {
    type: string
    sql: ${TABLE}.cloud.project.id ;;
    group_label: "Cloud Project"
    group_item_label: "ID"
  }

  dimension: cloud__project__name {
    type: string
    sql: ${TABLE}.cloud.project.name ;;
    group_label: "Cloud Project"
    group_item_label: "Name"
  }

  dimension: cloud__project__parent {
    type: string
    sql: ${TABLE}.cloud.project.parent ;;
    group_label: "Cloud Project"
    group_item_label: "Parent"
  }

  dimension: cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.cloud.project.product_object_id ;;
    group_label: "Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.cloud.project.resource_subtype ;;
    group_label: "Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: cloud__project__resource_type {
    type: number
    sql: ${TABLE}.cloud.project.resource_type ;;
    group_label: "Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: cloud__project__type {
    type: string
    sql: ${TABLE}.cloud.project.type ;;
    group_label: "Cloud Project"
    group_item_label: "Type"
  }

  dimension: cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.labels ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.permissions ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.roles ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: cloud__vpc__id {
    type: string
    sql: ${TABLE}.cloud.vpc.id ;;
    group_label: "Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: cloud__vpc__name {
    type: string
    sql: ${TABLE}.cloud.vpc.name ;;
    group_label: "Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: cloud__vpc__parent {
    type: string
    sql: ${TABLE}.cloud.vpc.parent ;;
    group_label: "Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.cloud.vpc.product_object_id ;;
    group_label: "Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.cloud.vpc.resource_subtype ;;
    group_label: "Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.cloud.vpc.resource_type ;;
    group_label: "Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: cloud__vpc__type {
    type: string
    sql: ${TABLE}.cloud.vpc.type ;;
    group_label: "Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
  }

  dimension: group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.availability_zone ;;
    group_label: "Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.environment ;;
    group_label: "Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.id ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.name ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.parent ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.type ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.id ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.name ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.type ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.`group`.attribute.creation_time.nanos ;;
    group_label: "Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.`group`.attribute.creation_time.seconds ;;
    group_label: "Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.group.attribute.labels ;;
    group_label: "Group Attribute"
    group_item_label: "Labels"
  }

  dimension: group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.`group`.attribute.last_update_time.nanos ;;
    group_label: "Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.`group`.attribute.last_update_time.seconds ;;
    group_label: "Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.group.attribute.permissions ;;
    group_label: "Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.group.attribute.roles ;;
    group_label: "Group Attribute"
    group_item_label: "Roles"
  }

  dimension: group__creation_time__nanos {
    type: number
    sql: ${TABLE}.`group`.creation_time.nanos ;;
    group_label: "Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: group__creation_time__seconds {
    type: number
    sql: ${TABLE}.`group`.creation_time.seconds ;;
    group_label: "Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: group__email_addresses {
    hidden: yes
    sql: ${TABLE}.group.email_addresses ;;
    group_label: "Group"
    group_item_label: "Email Addresses"
  }

  dimension: group__group_display_name {
    type: string
    sql: ${TABLE}.`group`.group_display_name ;;
    group_label: "Group"
    group_item_label: "Group Display Name"
  }

  dimension: group__product_object_id {
    type: string
    sql: ${TABLE}.`group`.product_object_id ;;
    group_label: "Group"
    group_item_label: "Product Object ID"
  }

  dimension: group__windows_sid {
    type: string
    sql: ${TABLE}.`group`.windows_sid ;;
    group_label: "Group"
    group_item_label: "Windows Sid"
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: investigation__comments {
    hidden: yes
    sql: ${TABLE}.investigation.comments ;;
    group_label: "Investigation"
    group_item_label: "Comments"
  }

  dimension: investigation__reputation {
    type: number
    sql: ${TABLE}.investigation.reputation ;;
    group_label: "Investigation"
    group_item_label: "Reputation"
  }

  dimension: investigation__severity_score {
    type: number
    sql: ${TABLE}.investigation.severity_score ;;
    group_label: "Investigation"
    group_item_label: "Severity Score"
  }

  dimension: investigation__status {
    type: number
    sql: ${TABLE}.investigation.status ;;
    group_label: "Investigation"
    group_item_label: "Status"
  }

  dimension: investigation__verdict {
    type: number
    sql: ${TABLE}.investigation.verdict ;;
    group_label: "Investigation"
    group_item_label: "Verdict"
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location__city {
    type: string
    sql: ${TABLE}.location.city ;;
    group_label: "Location"
    group_item_label: "City"
  }

  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.country_or_region ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}.location.name ;;
    group_label: "Location"
    group_item_label: "Name"
  }

  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    hidden: yes
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: object_reference__id {
    type: string
    sql: ${TABLE}.object_reference.id ;;
    group_label: "Object Reference"
    group_item_label: "ID"
  }

  dimension: object_reference__namespace {
    type: number
    sql: ${TABLE}.object_reference.namespace ;;
    group_label: "Object Reference"
    group_item_label: "Namespace"
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

  dimension: process__access_mask {
    type: number
    sql: ${TABLE}.process.access_mask ;;
    group_label: "Process"
    group_item_label: "Access Mask"
  }

  dimension: process__command_line {
    type: string
    sql: ${TABLE}.process.command_line ;;
    group_label: "Process"
    group_item_label: "Command Line"
  }

  dimension: process__command_line_history {
    hidden: yes
    sql: ${TABLE}.process.command_line_history ;;
    group_label: "Process"
    group_item_label: "Command Line History"
  }

  dimension: process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.process.file.file_metadata.pe.import_hash ;;
    group_label: "Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: process__file__full_path {
    type: string
    sql: ${TABLE}.process.file.full_path ;;
    group_label: "Process File"
    group_item_label: "Full Path"
  }

  dimension: process__file__md5 {
    type: string
    sql: ${TABLE}.process.file.md5 ;;
    group_label: "Process File"
    group_item_label: "Md5"
  }

  dimension: process__file__mime_type {
    type: string
    sql: ${TABLE}.process.file.mime_type ;;
    group_label: "Process File"
    group_item_label: "Mime Type"
  }

  dimension: process__file__sha1 {
    type: string
    sql: ${TABLE}.process.file.sha1 ;;
    group_label: "Process File"
    group_item_label: "Sha1"
  }

  dimension: process__file__sha256 {
    type: string
    sql: ${TABLE}.process.file.sha256 ;;
    group_label: "Process File"
    group_item_label: "Sha256"
  }

  dimension: process__file__size {
    type: number
    sql: ${TABLE}.process.file.size ;;
    group_label: "Process File"
    group_item_label: "Size"
  }

  dimension: process__parent_pid {
    type: string
    sql: ${TABLE}.process.parent_pid ;;
    group_label: "Process"
    group_item_label: "Parent Pid"
  }

  dimension: process__pid {
    type: string
    sql: ${TABLE}.process.pid ;;
    group_label: "Process"
    group_item_label: "Pid"
  }

  dimension: process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.process.product_specific_parent_process_id ;;
    group_label: "Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: process__product_specific_process_id {
    type: string
    sql: ${TABLE}.process.product_specific_process_id ;;
    group_label: "Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: process_ancestors {
    hidden: yes
    sql: ${TABLE}.process_ancestors ;;
  }

  dimension: registry__registry_key {
    type: string
    sql: ${TABLE}.registry.registry_key ;;
    group_label: "Registry"
    group_item_label: "Registry Key"
  }

  dimension: registry__registry_value_data {
    type: string
    sql: ${TABLE}.registry.registry_value_data ;;
    group_label: "Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: registry__registry_value_name {
    type: string
    sql: ${TABLE}.registry.registry_value_name ;;
    group_label: "Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.resource.attribute.cloud.availability_zone ;;
    group_label: "Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.resource.attribute.cloud.environment ;;
    group_label: "Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.resource.attribute.creation_time.nanos ;;
    group_label: "Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.resource.attribute.creation_time.seconds ;;
    group_label: "Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.resource.attribute.labels ;;
    group_label: "Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.resource.attribute.last_update_time.nanos ;;
    group_label: "Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.resource.attribute.last_update_time.seconds ;;
    group_label: "Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.resource.attribute.permissions ;;
    group_label: "Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.resource.attribute.roles ;;
    group_label: "Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: resource__id {
    type: string
    sql: ${TABLE}.resource.id ;;
    group_label: "Resource"
    group_item_label: "ID"
  }

  dimension: resource__name {
    type: string
    sql: ${TABLE}.resource.name ;;
    group_label: "Resource"
    group_item_label: "Name"
  }

  dimension: resource__parent {
    type: string
    sql: ${TABLE}.resource.parent ;;
    group_label: "Resource"
    group_item_label: "Parent"
  }

  dimension: resource__product_object_id {
    type: string
    sql: ${TABLE}.resource.product_object_id ;;
    group_label: "Resource"
    group_item_label: "Product Object ID"
  }

  dimension: resource__resource_subtype {
    type: string
    sql: ${TABLE}.resource.resource_subtype ;;
    group_label: "Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: resource__resource_type {
    type: number
    sql: ${TABLE}.resource.resource_type ;;
    group_label: "Resource"
    group_item_label: "Resource Type"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.user.attribute.cloud.availability_zone ;;
    group_label: "User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.user.attribute.cloud.environment ;;
    group_label: "User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.id ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.name ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.parent ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.product_object_id ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.resource_subtype ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.user.attribute.cloud.project.resource_type ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.type ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.id ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.name ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.parent ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.user.attribute.cloud.vpc.resource_type ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.type ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.user.attribute.creation_time.nanos ;;
    group_label: "User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.user.attribute.creation_time.seconds ;;
    group_label: "User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.user.attribute.labels ;;
    group_label: "User Attribute"
    group_item_label: "Labels"
  }

  dimension: user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.user.attribute.last_update_time.nanos ;;
    group_label: "User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.user.attribute.last_update_time.seconds ;;
    group_label: "User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.user.attribute.permissions ;;
    group_label: "User Attribute"
    group_item_label: "Permissions"
  }

  dimension: user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.user.attribute.roles ;;
    group_label: "User Attribute"
    group_item_label: "Roles"
  }

  dimension: user__company_name {
    type: string
    sql: ${TABLE}.user.company_name ;;
    group_label: "User"
    group_item_label: "Company Name"
  }

  dimension: user__department {
    hidden: yes
    sql: ${TABLE}.user.department ;;
    group_label: "User"
    group_item_label: "Department"
  }

  dimension: user__email_addresses {
    hidden: yes
    sql: ${TABLE}.user.email_addresses ;;
    group_label: "User"
    group_item_label: "Email Addresses"
  }

  dimension: user__employee_id {
    type: string
    sql: ${TABLE}.user.employee_id ;;
    group_label: "User"
    group_item_label: "Employee ID"
  }

  dimension: user__first_name {
    type: string
    sql: ${TABLE}.user.first_name ;;
    group_label: "User"
    group_item_label: "First Name"
  }

  dimension: user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.user.group_identifiers ;;
    group_label: "User"
    group_item_label: "Group Identifiers"
  }

  dimension: user__groupid {
    type: string
    sql: ${TABLE}.user.groupid ;;
    group_label: "User"
    group_item_label: "Groupid"
  }

  dimension: user__hire_date__nanos {
    type: number
    sql: ${TABLE}.user.hire_date.nanos ;;
    group_label: "User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: user__hire_date__seconds {
    type: number
    sql: ${TABLE}.user.hire_date.seconds ;;
    group_label: "User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: user__last_name {
    type: string
    sql: ${TABLE}.user.last_name ;;
    group_label: "User"
    group_item_label: "Last Name"
  }

  dimension: user__middle_name {
    type: string
    sql: ${TABLE}.user.middle_name ;;
    group_label: "User"
    group_item_label: "Middle Name"
  }

  dimension: user__office_address__city {
    type: string
    sql: ${TABLE}.user.office_address.city ;;
    group_label: "User Office Address"
    group_item_label: "City"
  }

  dimension: user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.user.office_address.country_or_region ;;
    group_label: "User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: user__office_address__name {
    type: string
    sql: ${TABLE}.user.office_address.name ;;
    group_label: "User Office Address"
    group_item_label: "Name"
  }

  dimension: user__office_address__state {
    type: string
    sql: ${TABLE}.user.office_address.state ;;
    group_label: "User Office Address"
    group_item_label: "State"
  }

  dimension: user__personal_address__city {
    type: string
    sql: ${TABLE}.user.personal_address.city ;;
    group_label: "User Personal Address"
    group_item_label: "City"
  }

  dimension: user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.user.personal_address.country_or_region ;;
    group_label: "User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: user__personal_address__name {
    type: string
    sql: ${TABLE}.user.personal_address.name ;;
    group_label: "User Personal Address"
    group_item_label: "Name"
  }

  dimension: user__personal_address__state {
    type: string
    sql: ${TABLE}.user.personal_address.state ;;
    group_label: "User Personal Address"
    group_item_label: "State"
  }

  dimension: user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.user.phone_numbers ;;
    group_label: "User"
    group_item_label: "Phone Numbers"
  }

  dimension: user__product_object_id {
    type: string
    sql: ${TABLE}.user.product_object_id ;;
    group_label: "User"
    group_item_label: "Product Object ID"
  }

  dimension: user__role_description {
    type: string
    sql: ${TABLE}.user.role_description ;;
    group_label: "User"
    group_item_label: "Role Description"
  }

  dimension: user__role_name {
    type: string
    sql: ${TABLE}.user.role_name ;;
    group_label: "User"
    group_item_label: "Role Name"
  }

  dimension: user__termination_date__nanos {
    type: number
    sql: ${TABLE}.user.termination_date.nanos ;;
    group_label: "User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: user__termination_date__seconds {
    type: number
    sql: ${TABLE}.user.termination_date.seconds ;;
    group_label: "User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: user__time_off {
    hidden: yes
    sql: ${TABLE}.user.time_off ;;
    group_label: "User"
    group_item_label: "Time Off"
  }

  dimension: user__title {
    type: string
    sql: ${TABLE}.user.title ;;
    group_label: "User"
    group_item_label: "Title"
  }

  dimension: user__user_authentication_status {
    type: number
    sql: ${TABLE}.user.user_authentication_status ;;
    group_label: "User"
    group_item_label: "User Authentication Status"
  }

  dimension: user__user_display_name {
    type: string
    sql: ${TABLE}.user.user_display_name ;;
    group_label: "User"
    group_item_label: "User Display Name"
  }

  dimension: user__user_role {
    type: number
    sql: ${TABLE}.user.user_role ;;
    group_label: "User"
    group_item_label: "User Role"
  }

  dimension: user__userid {
    type: string
    sql: ${TABLE}.user.userid ;;
    group_label: "User"
    group_item_label: "Userid"
  }

  dimension: user__windows_sid {
    type: string
    sql: ${TABLE}.user.windows_sid ;;
    group_label: "User"
    group_item_label: "Windows Sid"
  }

  dimension: user_management_chain {
    hidden: yes
    sql: ${TABLE}.user_management_chain ;;
  }
}

view: udm_events__target__ip {
  dimension: udm_events__target__ip {
    type: string
    sql: udm_events__target__ip ;;
  }
}

view: udm_events__src__nat_ip {
  dimension: udm_events__src__nat_ip {
    type: string
    sql: udm_events__src__nat_ip ;;
  }
}

view: udm_events__target__mac {
  dimension: udm_events__target__mac {
    type: string
    sql: udm_events__target__mac ;;
  }
}

view: udm_events__observer__ip {
  dimension: udm_events__observer__ip {
    type: string
    sql: udm_events__observer__ip ;;
  }
}

view: udm_events__src__asset__ip {
  dimension: udm_events__src__asset__ip {
    type: string
    sql: udm_events__src__asset__ip ;;
  }
}

view: udm_events__about__nat_ip {
  dimension: udm_events__about__nat_ip {
    type: string
    sql: udm_events__about__nat_ip ;;
  }
}

view: udm_events__principal__ip {
  dimension: udm_events__principal__ip {
    type: string
    sql: udm_events__principal__ip ;;
  }
}

view: udm_events__observer__mac {
  dimension: udm_events__observer__mac {
    type: string
    sql: udm_events__observer__mac ;;
  }
}

view: udm_events__src__asset__mac {
  dimension: udm_events__src__asset__mac {
    type: string
    sql: udm_events__src__asset__mac ;;
  }
}

view: udm_events__target__nat_ip {
  dimension: udm_events__target__nat_ip {
    type: string
    sql: udm_events__target__nat_ip ;;
  }
}

view: udm_events__principal__mac {
  dimension: udm_events__principal__mac {
    type: string
    sql: udm_events__principal__mac ;;
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

view: udm_events__about__asset__ip {
  dimension: udm_events__about__asset__ip {
    type: string
    sql: udm_events__about__asset__ip ;;
  }
}

view: udm_events__about__asset__mac {
  dimension: udm_events__about__asset__mac {
    type: string
    sql: udm_events__about__asset__mac ;;
  }
}

view: udm_events__intermediary__ip {
  dimension: udm_events__intermediary__ip {
    type: string
    sql: udm_events__intermediary__ip ;;
  }
}

view: udm_events__target__asset__ip {
  dimension: udm_events__target__asset__ip {
    type: string
    sql: udm_events__target__asset__ip ;;
  }
}

view: udm_events__observer__nat_ip {
  dimension: udm_events__observer__nat_ip {
    type: string
    sql: udm_events__observer__nat_ip ;;
  }
}

view: udm_events__src__asset__nat_ip {
  dimension: udm_events__src__asset__nat_ip {
    type: string
    sql: udm_events__src__asset__nat_ip ;;
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

view: udm_events__intermediary__mac {
  dimension: udm_events__intermediary__mac {
    type: string
    sql: udm_events__intermediary__mac ;;
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

  dimension: asset__asset_id {
    type: string
    sql: ${TABLE}.asset.asset_id ;;
    group_label: "Asset"
    group_item_label: "Asset ID"
  }

  dimension: asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.availability_zone ;;
    group_label: "Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.environment ;;
    group_label: "Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.id ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.name ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.parent ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.project.resource_type ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.project.type ;;
    group_label: "Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.id ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.name ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.parent ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.asset.attribute.cloud.vpc.type ;;
    group_label: "Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.asset.attribute.creation_time.nanos ;;
    group_label: "Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.asset.attribute.creation_time.seconds ;;
    group_label: "Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.asset.attribute.labels ;;
    group_label: "Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.asset.attribute.last_update_time.nanos ;;
    group_label: "Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.asset.attribute.last_update_time.seconds ;;
    group_label: "Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.asset.attribute.permissions ;;
    group_label: "Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.asset.attribute.roles ;;
    group_label: "Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: asset__category {
    type: string
    sql: ${TABLE}.asset.category ;;
    group_label: "Asset"
    group_item_label: "Category"
  }

  dimension: asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.asset.creation_time.nanos ;;
    group_label: "Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.asset.creation_time.seconds ;;
    group_label: "Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: asset__deployment_status {
    type: number
    sql: ${TABLE}.asset.deployment_status ;;
    group_label: "Asset"
    group_item_label: "Deployment Status"
  }

  dimension: asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.asset.first_discover_time.nanos ;;
    group_label: "Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.asset.first_discover_time.seconds ;;
    group_label: "Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: asset__hardware {
    hidden: yes
    sql: ${TABLE}.asset.hardware ;;
    group_label: "Asset"
    group_item_label: "Hardware"
  }

  dimension: asset__hostname {
    type: string
    sql: ${TABLE}.asset.hostname ;;
    group_label: "Asset"
    group_item_label: "Hostname"
  }

  dimension: asset__ip {
    hidden: yes
    sql: ${TABLE}.asset.ip ;;
    group_label: "Asset"
    group_item_label: "IP"
  }

  dimension: asset__labels {
    hidden: yes
    sql: ${TABLE}.asset.labels ;;
    group_label: "Asset"
    group_item_label: "Labels"
  }

  dimension: asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.asset.last_boot_time.nanos ;;
    group_label: "Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.asset.last_boot_time.seconds ;;
    group_label: "Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.asset.last_discover_time.nanos ;;
    group_label: "Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.asset.last_discover_time.seconds ;;
    group_label: "Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: asset__location__city {
    type: string
    sql: ${TABLE}.asset.location.city ;;
    group_label: "Asset Location"
    group_item_label: "City"
  }

  dimension: asset__location__country_or_region {
    type: string
    sql: ${TABLE}.asset.location.country_or_region ;;
    group_label: "Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: asset__location__name {
    type: string
    sql: ${TABLE}.asset.location.name ;;
    group_label: "Asset Location"
    group_item_label: "Name"
  }

  dimension: asset__location__state {
    type: string
    sql: ${TABLE}.asset.location.state ;;
    group_label: "Asset Location"
    group_item_label: "State"
  }

  dimension: asset__mac {
    hidden: yes
    sql: ${TABLE}.asset.mac ;;
    group_label: "Asset"
    group_item_label: "Mac"
  }

  dimension: asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.asset.nat_ip ;;
    group_label: "Asset"
    group_item_label: "Nat IP"
  }

  dimension: asset__network_domain {
    type: string
    sql: ${TABLE}.asset.network_domain ;;
    group_label: "Asset"
    group_item_label: "Network Domain"
  }

  dimension: asset__platform_software__platform {
    type: number
    sql: ${TABLE}.asset.platform_software.platform ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.asset.platform_software.platform_patch_level ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.asset.platform_software.platform_version ;;
    group_label: "Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: asset__product_object_id {
    type: string
    sql: ${TABLE}.asset.product_object_id ;;
    group_label: "Asset"
    group_item_label: "Product Object ID"
  }

  dimension: asset__software {
    hidden: yes
    sql: ${TABLE}.asset.software ;;
    group_label: "Asset"
    group_item_label: "Software"
  }

  dimension: asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.asset.system_last_update_time.nanos ;;
    group_label: "Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.asset.system_last_update_time.seconds ;;
    group_label: "Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: asset__type {
    type: number
    sql: ${TABLE}.asset.type ;;
    group_label: "Asset"
    group_item_label: "Type"
  }

  dimension: asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.asset.vulnerabilities ;;
    group_label: "Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: cloud__availability_zone {
    type: string
    sql: ${TABLE}.cloud.availability_zone ;;
    group_label: "Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: cloud__environment {
    type: number
    sql: ${TABLE}.cloud.environment ;;
    group_label: "Cloud"
    group_item_label: "Environment"
  }

  dimension: cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.labels ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.permissions ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.cloud.project.attribute.roles ;;
    group_label: "Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: cloud__project__id {
    type: string
    sql: ${TABLE}.cloud.project.id ;;
    group_label: "Cloud Project"
    group_item_label: "ID"
  }

  dimension: cloud__project__name {
    type: string
    sql: ${TABLE}.cloud.project.name ;;
    group_label: "Cloud Project"
    group_item_label: "Name"
  }

  dimension: cloud__project__parent {
    type: string
    sql: ${TABLE}.cloud.project.parent ;;
    group_label: "Cloud Project"
    group_item_label: "Parent"
  }

  dimension: cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.cloud.project.product_object_id ;;
    group_label: "Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.cloud.project.resource_subtype ;;
    group_label: "Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: cloud__project__resource_type {
    type: number
    sql: ${TABLE}.cloud.project.resource_type ;;
    group_label: "Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: cloud__project__type {
    type: string
    sql: ${TABLE}.cloud.project.type ;;
    group_label: "Cloud Project"
    group_item_label: "Type"
  }

  dimension: cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.labels ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.permissions ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.cloud.vpc.attribute.roles ;;
    group_label: "Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: cloud__vpc__id {
    type: string
    sql: ${TABLE}.cloud.vpc.id ;;
    group_label: "Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: cloud__vpc__name {
    type: string
    sql: ${TABLE}.cloud.vpc.name ;;
    group_label: "Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: cloud__vpc__parent {
    type: string
    sql: ${TABLE}.cloud.vpc.parent ;;
    group_label: "Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.cloud.vpc.product_object_id ;;
    group_label: "Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.cloud.vpc.resource_subtype ;;
    group_label: "Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.cloud.vpc.resource_type ;;
    group_label: "Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: cloud__vpc__type {
    type: string
    sql: ${TABLE}.cloud.vpc.type ;;
    group_label: "Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
  }

  dimension: group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.availability_zone ;;
    group_label: "Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.environment ;;
    group_label: "Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.id ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.name ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.parent ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.project.type ;;
    group_label: "Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.id ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.name ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.`group`.attribute.cloud.vpc.type ;;
    group_label: "Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.`group`.attribute.creation_time.nanos ;;
    group_label: "Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.`group`.attribute.creation_time.seconds ;;
    group_label: "Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.group.attribute.labels ;;
    group_label: "Group Attribute"
    group_item_label: "Labels"
  }

  dimension: group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.`group`.attribute.last_update_time.nanos ;;
    group_label: "Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.`group`.attribute.last_update_time.seconds ;;
    group_label: "Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.group.attribute.permissions ;;
    group_label: "Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.group.attribute.roles ;;
    group_label: "Group Attribute"
    group_item_label: "Roles"
  }

  dimension: group__creation_time__nanos {
    type: number
    sql: ${TABLE}.`group`.creation_time.nanos ;;
    group_label: "Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: group__creation_time__seconds {
    type: number
    sql: ${TABLE}.`group`.creation_time.seconds ;;
    group_label: "Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: group__email_addresses {
    hidden: yes
    sql: ${TABLE}.group.email_addresses ;;
    group_label: "Group"
    group_item_label: "Email Addresses"
  }

  dimension: group__group_display_name {
    type: string
    sql: ${TABLE}.`group`.group_display_name ;;
    group_label: "Group"
    group_item_label: "Group Display Name"
  }

  dimension: group__product_object_id {
    type: string
    sql: ${TABLE}.`group`.product_object_id ;;
    group_label: "Group"
    group_item_label: "Product Object ID"
  }

  dimension: group__windows_sid {
    type: string
    sql: ${TABLE}.`group`.windows_sid ;;
    group_label: "Group"
    group_item_label: "Windows Sid"
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: investigation__comments {
    hidden: yes
    sql: ${TABLE}.investigation.comments ;;
    group_label: "Investigation"
    group_item_label: "Comments"
  }

  dimension: investigation__reputation {
    type: number
    sql: ${TABLE}.investigation.reputation ;;
    group_label: "Investigation"
    group_item_label: "Reputation"
  }

  dimension: investigation__severity_score {
    type: number
    sql: ${TABLE}.investigation.severity_score ;;
    group_label: "Investigation"
    group_item_label: "Severity Score"
  }

  dimension: investigation__status {
    type: number
    sql: ${TABLE}.investigation.status ;;
    group_label: "Investigation"
    group_item_label: "Status"
  }

  dimension: investigation__verdict {
    type: number
    sql: ${TABLE}.investigation.verdict ;;
    group_label: "Investigation"
    group_item_label: "Verdict"
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location__city {
    type: string
    sql: ${TABLE}.location.city ;;
    group_label: "Location"
    group_item_label: "City"
  }

  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.country_or_region ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}.location.name ;;
    group_label: "Location"
    group_item_label: "Name"
  }

  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: nat_ip {
    hidden: yes
    sql: ${TABLE}.nat_ip ;;
  }

  dimension: nat_port {
    type: number
    sql: ${TABLE}.nat_port ;;
  }

  dimension: object_reference__id {
    type: string
    sql: ${TABLE}.object_reference.id ;;
    group_label: "Object Reference"
    group_item_label: "ID"
  }

  dimension: object_reference__namespace {
    type: number
    sql: ${TABLE}.object_reference.namespace ;;
    group_label: "Object Reference"
    group_item_label: "Namespace"
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

  dimension: process__access_mask {
    type: number
    sql: ${TABLE}.process.access_mask ;;
    group_label: "Process"
    group_item_label: "Access Mask"
  }

  dimension: process__command_line {
    type: string
    sql: ${TABLE}.process.command_line ;;
    group_label: "Process"
    group_item_label: "Command Line"
  }

  dimension: process__command_line_history {
    hidden: yes
    sql: ${TABLE}.process.command_line_history ;;
    group_label: "Process"
    group_item_label: "Command Line History"
  }

  dimension: process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.process.file.file_metadata.pe.import_hash ;;
    group_label: "Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: process__file__full_path {
    type: string
    sql: ${TABLE}.process.file.full_path ;;
    group_label: "Process File"
    group_item_label: "Full Path"
  }

  dimension: process__file__md5 {
    type: string
    sql: ${TABLE}.process.file.md5 ;;
    group_label: "Process File"
    group_item_label: "Md5"
  }

  dimension: process__file__mime_type {
    type: string
    sql: ${TABLE}.process.file.mime_type ;;
    group_label: "Process File"
    group_item_label: "Mime Type"
  }

  dimension: process__file__sha1 {
    type: string
    sql: ${TABLE}.process.file.sha1 ;;
    group_label: "Process File"
    group_item_label: "Sha1"
  }

  dimension: process__file__sha256 {
    type: string
    sql: ${TABLE}.process.file.sha256 ;;
    group_label: "Process File"
    group_item_label: "Sha256"
  }

  dimension: process__file__size {
    type: number
    sql: ${TABLE}.process.file.size ;;
    group_label: "Process File"
    group_item_label: "Size"
  }

  dimension: process__parent_pid {
    type: string
    sql: ${TABLE}.process.parent_pid ;;
    group_label: "Process"
    group_item_label: "Parent Pid"
  }

  dimension: process__pid {
    type: string
    sql: ${TABLE}.process.pid ;;
    group_label: "Process"
    group_item_label: "Pid"
  }

  dimension: process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.process.product_specific_parent_process_id ;;
    group_label: "Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: process__product_specific_process_id {
    type: string
    sql: ${TABLE}.process.product_specific_process_id ;;
    group_label: "Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: process_ancestors {
    hidden: yes
    sql: ${TABLE}.process_ancestors ;;
  }

  dimension: registry__registry_key {
    type: string
    sql: ${TABLE}.registry.registry_key ;;
    group_label: "Registry"
    group_item_label: "Registry Key"
  }

  dimension: registry__registry_value_data {
    type: string
    sql: ${TABLE}.registry.registry_value_data ;;
    group_label: "Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: registry__registry_value_name {
    type: string
    sql: ${TABLE}.registry.registry_value_name ;;
    group_label: "Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.resource.attribute.cloud.availability_zone ;;
    group_label: "Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.resource.attribute.cloud.environment ;;
    group_label: "Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.resource.attribute.creation_time.nanos ;;
    group_label: "Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.resource.attribute.creation_time.seconds ;;
    group_label: "Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.resource.attribute.labels ;;
    group_label: "Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.resource.attribute.last_update_time.nanos ;;
    group_label: "Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.resource.attribute.last_update_time.seconds ;;
    group_label: "Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.resource.attribute.permissions ;;
    group_label: "Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.resource.attribute.roles ;;
    group_label: "Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: resource__id {
    type: string
    sql: ${TABLE}.resource.id ;;
    group_label: "Resource"
    group_item_label: "ID"
  }

  dimension: resource__name {
    type: string
    sql: ${TABLE}.resource.name ;;
    group_label: "Resource"
    group_item_label: "Name"
  }

  dimension: resource__parent {
    type: string
    sql: ${TABLE}.resource.parent ;;
    group_label: "Resource"
    group_item_label: "Parent"
  }

  dimension: resource__product_object_id {
    type: string
    sql: ${TABLE}.resource.product_object_id ;;
    group_label: "Resource"
    group_item_label: "Product Object ID"
  }

  dimension: resource__resource_subtype {
    type: string
    sql: ${TABLE}.resource.resource_subtype ;;
    group_label: "Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: resource__resource_type {
    type: number
    sql: ${TABLE}.resource.resource_type ;;
    group_label: "Resource"
    group_item_label: "Resource Type"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.user.attribute.cloud.availability_zone ;;
    group_label: "User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.user.attribute.cloud.environment ;;
    group_label: "User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.id ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.name ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.parent ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.product_object_id ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.resource_subtype ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.user.attribute.cloud.project.resource_type ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.user.attribute.cloud.project.type ;;
    group_label: "User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.id ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.name ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.parent ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.user.attribute.cloud.vpc.resource_type ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.user.attribute.cloud.vpc.type ;;
    group_label: "User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.user.attribute.creation_time.nanos ;;
    group_label: "User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.user.attribute.creation_time.seconds ;;
    group_label: "User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.user.attribute.labels ;;
    group_label: "User Attribute"
    group_item_label: "Labels"
  }

  dimension: user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.user.attribute.last_update_time.nanos ;;
    group_label: "User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.user.attribute.last_update_time.seconds ;;
    group_label: "User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.user.attribute.permissions ;;
    group_label: "User Attribute"
    group_item_label: "Permissions"
  }

  dimension: user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.user.attribute.roles ;;
    group_label: "User Attribute"
    group_item_label: "Roles"
  }

  dimension: user__company_name {
    type: string
    sql: ${TABLE}.user.company_name ;;
    group_label: "User"
    group_item_label: "Company Name"
  }

  dimension: user__department {
    hidden: yes
    sql: ${TABLE}.user.department ;;
    group_label: "User"
    group_item_label: "Department"
  }

  dimension: user__email_addresses {
    hidden: yes
    sql: ${TABLE}.user.email_addresses ;;
    group_label: "User"
    group_item_label: "Email Addresses"
  }

  dimension: user__employee_id {
    type: string
    sql: ${TABLE}.user.employee_id ;;
    group_label: "User"
    group_item_label: "Employee ID"
  }

  dimension: user__first_name {
    type: string
    sql: ${TABLE}.user.first_name ;;
    group_label: "User"
    group_item_label: "First Name"
  }

  dimension: user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.user.group_identifiers ;;
    group_label: "User"
    group_item_label: "Group Identifiers"
  }

  dimension: user__groupid {
    type: string
    sql: ${TABLE}.user.groupid ;;
    group_label: "User"
    group_item_label: "Groupid"
  }

  dimension: user__hire_date__nanos {
    type: number
    sql: ${TABLE}.user.hire_date.nanos ;;
    group_label: "User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: user__hire_date__seconds {
    type: number
    sql: ${TABLE}.user.hire_date.seconds ;;
    group_label: "User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: user__last_name {
    type: string
    sql: ${TABLE}.user.last_name ;;
    group_label: "User"
    group_item_label: "Last Name"
  }

  dimension: user__middle_name {
    type: string
    sql: ${TABLE}.user.middle_name ;;
    group_label: "User"
    group_item_label: "Middle Name"
  }

  dimension: user__office_address__city {
    type: string
    sql: ${TABLE}.user.office_address.city ;;
    group_label: "User Office Address"
    group_item_label: "City"
  }

  dimension: user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.user.office_address.country_or_region ;;
    group_label: "User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: user__office_address__name {
    type: string
    sql: ${TABLE}.user.office_address.name ;;
    group_label: "User Office Address"
    group_item_label: "Name"
  }

  dimension: user__office_address__state {
    type: string
    sql: ${TABLE}.user.office_address.state ;;
    group_label: "User Office Address"
    group_item_label: "State"
  }

  dimension: user__personal_address__city {
    type: string
    sql: ${TABLE}.user.personal_address.city ;;
    group_label: "User Personal Address"
    group_item_label: "City"
  }

  dimension: user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.user.personal_address.country_or_region ;;
    group_label: "User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: user__personal_address__name {
    type: string
    sql: ${TABLE}.user.personal_address.name ;;
    group_label: "User Personal Address"
    group_item_label: "Name"
  }

  dimension: user__personal_address__state {
    type: string
    sql: ${TABLE}.user.personal_address.state ;;
    group_label: "User Personal Address"
    group_item_label: "State"
  }

  dimension: user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.user.phone_numbers ;;
    group_label: "User"
    group_item_label: "Phone Numbers"
  }

  dimension: user__product_object_id {
    type: string
    sql: ${TABLE}.user.product_object_id ;;
    group_label: "User"
    group_item_label: "Product Object ID"
  }

  dimension: user__role_description {
    type: string
    sql: ${TABLE}.user.role_description ;;
    group_label: "User"
    group_item_label: "Role Description"
  }

  dimension: user__role_name {
    type: string
    sql: ${TABLE}.user.role_name ;;
    group_label: "User"
    group_item_label: "Role Name"
  }

  dimension: user__termination_date__nanos {
    type: number
    sql: ${TABLE}.user.termination_date.nanos ;;
    group_label: "User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: user__termination_date__seconds {
    type: number
    sql: ${TABLE}.user.termination_date.seconds ;;
    group_label: "User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: user__time_off {
    hidden: yes
    sql: ${TABLE}.user.time_off ;;
    group_label: "User"
    group_item_label: "Time Off"
  }

  dimension: user__title {
    type: string
    sql: ${TABLE}.user.title ;;
    group_label: "User"
    group_item_label: "Title"
  }

  dimension: user__user_authentication_status {
    type: number
    sql: ${TABLE}.user.user_authentication_status ;;
    group_label: "User"
    group_item_label: "User Authentication Status"
  }

  dimension: user__user_display_name {
    type: string
    sql: ${TABLE}.user.user_display_name ;;
    group_label: "User"
    group_item_label: "User Display Name"
  }

  dimension: user__user_role {
    type: number
    sql: ${TABLE}.user.user_role ;;
    group_label: "User"
    group_item_label: "User Role"
  }

  dimension: user__userid {
    type: string
    sql: ${TABLE}.user.userid ;;
    group_label: "User"
    group_item_label: "Userid"
  }

  dimension: user__windows_sid {
    type: string
    sql: ${TABLE}.user.windows_sid ;;
    group_label: "User"
    group_item_label: "Windows Sid"
  }

  dimension: user_management_chain {
    hidden: yes
    sql: ${TABLE}.user_management_chain ;;
  }
}

view: udm_events__target__asset__mac {
  dimension: udm_events__target__asset__mac {
    type: string
    sql: udm_events__target__asset__mac ;;
  }
}

view: udm_events__network__email__cc {
  dimension: udm_events__network__email__cc {
    type: string
    sql: udm_events__network__email__cc ;;
  }
}

view: udm_events__principal__nat_ip {
  dimension: udm_events__principal__nat_ip {
    type: string
    sql: udm_events__principal__nat_ip ;;
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
}

view: udm_events__network__email__bcc {
  dimension: udm_events__network__email__bcc {
    type: string
    sql: udm_events__network__email__bcc ;;
  }
}

view: udm_events__observer__asset__ip {
  dimension: udm_events__observer__asset__ip {
    type: string
    sql: udm_events__observer__asset__ip ;;
  }
}

view: udm_events__about__asset__nat_ip {
  dimension: udm_events__about__asset__nat_ip {
    type: string
    sql: udm_events__about__asset__nat_ip ;;
  }
}

view: udm_events__network__email__to {
  dimension: udm_events__network__email__to {
    type: string
    sql: udm_events__network__email__to ;;
  }
}

view: udm_events__principal__asset__ip {
  dimension: udm_events__principal__asset__ip {
    type: string
    sql: udm_events__principal__asset__ip ;;
  }
}

view: udm_events__observer__asset__mac {
  dimension: udm_events__observer__asset__mac {
    type: string
    sql: udm_events__observer__asset__mac ;;
  }
}

view: udm_events__src__user__department {
  dimension: udm_events__src__user__department {
    type: string
    sql: udm_events__src__user__department ;;
  }
}

view: udm_events__intermediary__nat_ip {
  dimension: udm_events__intermediary__nat_ip {
    type: string
    sql: udm_events__intermediary__nat_ip ;;
  }
}

view: udm_events__target__asset__nat_ip {
  dimension: udm_events__target__asset__nat_ip {
    type: string
    sql: udm_events__target__asset__nat_ip ;;
  }
}

view: udm_events__principal__asset__mac {
  dimension: udm_events__principal__asset__mac {
    type: string
    sql: udm_events__principal__asset__mac ;;
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

view: udm_events__src__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
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

view: udm_events__additional__fields {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value__bool_value {
    type: yesno
    sql: ${TABLE}.value.bool_value ;;
    group_label: "Value"
    group_item_label: "Bool Value"
  }

  dimension: value__null_value {
    type: number
    sql: ${TABLE}.value.null_value ;;
    group_label: "Value"
    group_item_label: "Null Value"
  }

  dimension: value__number_value {
    type: number
    sql: ${TABLE}.value.number_value ;;
    group_label: "Value"
    group_item_label: "Number Value"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}

view: udm_events__about__user__department {
  dimension: udm_events__about__user__department {
    type: string
    sql: udm_events__about__user__department ;;
  }
}

view: udm_events__intermediary__asset__ip {
  dimension: udm_events__intermediary__asset__ip {
    type: string
    sql: udm_events__intermediary__asset__ip ;;
  }
}

view: udm_events__network__email__subject {
  dimension: udm_events__network__email__subject {
    type: string
    sql: udm_events__network__email__subject ;;
  }
}

view: udm_events__observer__asset__nat_ip {
  dimension: udm_events__observer__asset__nat_ip {
    type: string
    sql: udm_events__observer__asset__nat_ip ;;
  }
}

view: udm_events__src__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__src__user__phone_numbers {
  dimension: udm_events__src__user__phone_numbers {
    type: string
    sql: udm_events__src__user__phone_numbers ;;
  }
}

view: udm_events__about__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__asset__mac {
  dimension: udm_events__intermediary__asset__mac {
    type: string
    sql: udm_events__intermediary__asset__mac ;;
  }
}

view: udm_events__security_result__action {
  dimension: udm_events__security_result__action {
    type: number
    sql: udm_events__security_result__action ;;
  }
}

view: udm_events__target__user__department {
  dimension: udm_events__target__user__department {
    type: string
    sql: udm_events__target__user__department ;;
  }
}

view: udm_events__principal__asset__nat_ip {
  dimension: udm_events__principal__asset__nat_ip {
    type: string
    sql: udm_events__principal__asset__nat_ip ;;
  }
}

view: udm_events__metadata__tags__tenant_id {
  dimension: udm_events__metadata__tags__tenant_id {
    type: string
    sql: udm_events__metadata__tags__tenant_id ;;
  }
}

view: udm_events__src__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
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

view: udm_events__security_result {
  dimension: about__administrative_domain {
    type: string
    sql: ${TABLE}.about.administrative_domain ;;
    group_label: "About"
    group_item_label: "Administrative Domain"
  }

  dimension: about__application {
    type: string
    sql: ${TABLE}.about.application ;;
    group_label: "About"
    group_item_label: "Application"
  }

  dimension: about__asset__asset_id {
    type: string
    sql: ${TABLE}.about.asset.asset_id ;;
    group_label: "About Asset"
    group_item_label: "Asset ID"
  }

  dimension: about__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.availability_zone ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.environment ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.name ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.parent ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.product_object_id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.name ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.parent ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.nanos ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.seconds ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.labels ;;
    group_label: "About Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: about__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.nanos ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.seconds ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.permissions ;;
    group_label: "About Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.roles ;;
    group_label: "About Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: about__asset__category {
    type: string
    sql: ${TABLE}.about.asset.category ;;
    group_label: "About Asset"
    group_item_label: "Category"
  }

  dimension: about__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.creation_time.nanos ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.creation_time.seconds ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__deployment_status {
    type: number
    sql: ${TABLE}.about.asset.deployment_status ;;
    group_label: "About Asset"
    group_item_label: "Deployment Status"
  }

  dimension: about__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.nanos ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.seconds ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__hardware {
    hidden: yes
    sql: ${TABLE}.about.asset.hardware ;;
    group_label: "About Asset"
    group_item_label: "Hardware"
  }

  dimension: about__asset__hostname {
    type: string
    sql: ${TABLE}.about.asset.hostname ;;
    group_label: "About Asset"
    group_item_label: "Hostname"
  }

  dimension: about__asset__ip {
    hidden: yes
    sql: ${TABLE}.about.asset.ip ;;
    group_label: "About Asset"
    group_item_label: "IP"
  }

  dimension: about__asset__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.labels ;;
    group_label: "About Asset"
    group_item_label: "Labels"
  }

  dimension: about__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.nanos ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.seconds ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.nanos ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.seconds ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__location__city {
    type: string
    sql: ${TABLE}.about.asset.location.city ;;
    group_label: "About Asset Location"
    group_item_label: "City"
  }

  dimension: about__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.about.asset.location.country_or_region ;;
    group_label: "About Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: about__asset__location__name {
    type: string
    sql: ${TABLE}.about.asset.location.name ;;
    group_label: "About Asset Location"
    group_item_label: "Name"
  }

  dimension: about__asset__location__state {
    type: string
    sql: ${TABLE}.about.asset.location.state ;;
    group_label: "About Asset Location"
    group_item_label: "State"
  }

  dimension: about__asset__mac {
    hidden: yes
    sql: ${TABLE}.about.asset.mac ;;
    group_label: "About Asset"
    group_item_label: "Mac"
  }

  dimension: about__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.asset.nat_ip ;;
    group_label: "About Asset"
    group_item_label: "Nat IP"
  }

  dimension: about__asset__network_domain {
    type: string
    sql: ${TABLE}.about.asset.network_domain ;;
    group_label: "About Asset"
    group_item_label: "Network Domain"
  }

  dimension: about__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.about.asset.platform_software.platform ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: about__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_patch_level ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_version ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: about__asset__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.product_object_id ;;
    group_label: "About Asset"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__software {
    hidden: yes
    sql: ${TABLE}.about.asset.software ;;
    group_label: "About Asset"
    group_item_label: "Software"
  }

  dimension: about__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.nanos ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.seconds ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__type {
    type: number
    sql: ${TABLE}.about.asset.type ;;
    group_label: "About Asset"
    group_item_label: "Type"
  }

  dimension: about__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.about.asset.vulnerabilities ;;
    group_label: "About Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: about__asset_id {
    type: string
    sql: ${TABLE}.about.asset_id ;;
    group_label: "About"
    group_item_label: "Asset ID"
  }

  dimension: about__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.cloud.availability_zone ;;
    group_label: "About Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__cloud__environment {
    type: number
    sql: ${TABLE}.about.cloud.environment ;;
    group_label: "About Cloud"
    group_item_label: "Environment"
  }

  dimension: about__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.nanos ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.seconds ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.labels ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.permissions ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.roles ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__project__id {
    type: string
    sql: ${TABLE}.about.cloud.project.id ;;
    group_label: "About Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__cloud__project__name {
    type: string
    sql: ${TABLE}.about.cloud.project.name ;;
    group_label: "About Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.cloud.project.parent ;;
    group_label: "About Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.project.product_object_id ;;
    group_label: "About Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.project.resource_subtype ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.project.resource_type ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__project__type {
    type: string
    sql: ${TABLE}.about.cloud.project.type ;;
    group_label: "About Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.labels ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.permissions ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.roles ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.cloud.vpc.name ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.cloud.vpc.parent ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.product_object_id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.vpc.resource_subtype ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.vpc.resource_type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.cloud.vpc.type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__email {
    type: string
    sql: ${TABLE}.about.email ;;
    group_label: "About"
    group_item_label: "Email"
  }

  dimension: about__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.file.file_metadata.pe.import_hash ;;
    group_label: "About File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__file__full_path {
    type: string
    sql: ${TABLE}.about.file.full_path ;;
    group_label: "About File"
    group_item_label: "Full Path"
  }

  dimension: about__file__md5 {
    type: string
    sql: ${TABLE}.about.file.md5 ;;
    group_label: "About File"
    group_item_label: "Md5"
  }

  dimension: about__file__mime_type {
    type: string
    sql: ${TABLE}.about.file.mime_type ;;
    group_label: "About File"
    group_item_label: "Mime Type"
  }

  dimension: about__file__sha1 {
    type: string
    sql: ${TABLE}.about.file.sha1 ;;
    group_label: "About File"
    group_item_label: "Sha1"
  }

  dimension: about__file__sha256 {
    type: string
    sql: ${TABLE}.about.file.sha256 ;;
    group_label: "About File"
    group_item_label: "Sha256"
  }

  dimension: about__file__size {
    type: number
    sql: ${TABLE}.about.file.size ;;
    group_label: "About File"
    group_item_label: "Size"
  }

  dimension: about__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.availability_zone ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.environment ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.name ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.parent ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.name ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.parent ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.nanos ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.seconds ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.labels ;;
    group_label: "About Group Attribute"
    group_item_label: "Labels"
  }

  dimension: about__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.nanos ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.seconds ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.permissions ;;
    group_label: "About Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.roles ;;
    group_label: "About Group Attribute"
    group_item_label: "Roles"
  }

  dimension: about__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.nanos ;;
    group_label: "About Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.seconds ;;
    group_label: "About Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.group.email_addresses ;;
    group_label: "About Group"
    group_item_label: "Email Addresses"
  }

  dimension: about__group__group_display_name {
    type: string
    sql: ${TABLE}.about.`group`.group_display_name ;;
    group_label: "About Group"
    group_item_label: "Group Display Name"
  }

  dimension: about__group__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.product_object_id ;;
    group_label: "About Group"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__windows_sid {
    type: string
    sql: ${TABLE}.about.`group`.windows_sid ;;
    group_label: "About Group"
    group_item_label: "Windows Sid"
  }

  dimension: about__hostname {
    type: string
    sql: ${TABLE}.about.hostname ;;
    group_label: "About"
    group_item_label: "Hostname"
  }

  dimension: about__investigation__comments {
    hidden: yes
    sql: ${TABLE}.about.investigation.comments ;;
    group_label: "About Investigation"
    group_item_label: "Comments"
  }

  dimension: about__investigation__reputation {
    type: number
    sql: ${TABLE}.about.investigation.reputation ;;
    group_label: "About Investigation"
    group_item_label: "Reputation"
  }

  dimension: about__investigation__severity_score {
    type: number
    sql: ${TABLE}.about.investigation.severity_score ;;
    group_label: "About Investigation"
    group_item_label: "Severity Score"
  }

  dimension: about__investigation__status {
    type: number
    sql: ${TABLE}.about.investigation.status ;;
    group_label: "About Investigation"
    group_item_label: "Status"
  }

  dimension: about__investigation__verdict {
    type: number
    sql: ${TABLE}.about.investigation.verdict ;;
    group_label: "About Investigation"
    group_item_label: "Verdict"
  }

  dimension: about__ip {
    hidden: yes
    sql: ${TABLE}.about.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: about__labels {
    hidden: yes
    sql: ${TABLE}.about.labels ;;
    group_label: "About"
    group_item_label: "Labels"
  }

  dimension: about__location__city {
    type: string
    sql: ${TABLE}.about.location.city ;;
    group_label: "About Location"
    group_item_label: "City"
  }

  dimension: about__location__country_or_region {
    type: string
    sql: ${TABLE}.about.location.country_or_region ;;
    group_label: "About Location"
    group_item_label: "Country or Region"
  }

  dimension: about__location__name {
    type: string
    sql: ${TABLE}.about.location.name ;;
    group_label: "About Location"
    group_item_label: "Name"
  }

  dimension: about__location__state {
    type: string
    sql: ${TABLE}.about.location.state ;;
    group_label: "About Location"
    group_item_label: "State"
  }

  dimension: about__mac {
    hidden: yes
    sql: ${TABLE}.about.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }

  dimension: about__namespace {
    type: string
    sql: ${TABLE}.about.namespace ;;
    group_label: "About"
    group_item_label: "Namespace"
  }

  dimension: about__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.nat_ip ;;
    group_label: "About"
    group_item_label: "Nat IP"
  }

  dimension: about__nat_port {
    type: number
    sql: ${TABLE}.about.nat_port ;;
    group_label: "About"
    group_item_label: "Nat Port"
  }

  dimension: about__object_reference__id {
    type: string
    sql: ${TABLE}.about.object_reference.id ;;
    group_label: "About Object Reference"
    group_item_label: "ID"
  }

  dimension: about__object_reference__namespace {
    type: number
    sql: ${TABLE}.about.object_reference.namespace ;;
    group_label: "About Object Reference"
    group_item_label: "Namespace"
  }

  dimension: about__platform {
    type: number
    sql: ${TABLE}.about.platform ;;
    group_label: "About"
    group_item_label: "Platform"
  }

  dimension: about__platform_patch_level {
    type: string
    sql: ${TABLE}.about.platform_patch_level ;;
    group_label: "About"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__platform_version {
    type: string
    sql: ${TABLE}.about.platform_version ;;
    group_label: "About"
    group_item_label: "Platform Version"
  }

  dimension: about__port {
    type: number
    sql: ${TABLE}.about.port ;;
    group_label: "About"
    group_item_label: "Port"
  }

  dimension: about__process__access_mask {
    type: number
    sql: ${TABLE}.about.process.access_mask ;;
    group_label: "About Process"
    group_item_label: "Access Mask"
  }

  dimension: about__process__command_line {
    type: string
    sql: ${TABLE}.about.process.command_line ;;
    group_label: "About Process"
    group_item_label: "Command Line"
  }

  dimension: about__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.about.process.command_line_history ;;
    group_label: "About Process"
    group_item_label: "Command Line History"
  }

  dimension: about__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.process.file.file_metadata.pe.import_hash ;;
    group_label: "About Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__process__file__full_path {
    type: string
    sql: ${TABLE}.about.process.file.full_path ;;
    group_label: "About Process File"
    group_item_label: "Full Path"
  }

  dimension: about__process__file__md5 {
    type: string
    sql: ${TABLE}.about.process.file.md5 ;;
    group_label: "About Process File"
    group_item_label: "Md5"
  }

  dimension: about__process__file__mime_type {
    type: string
    sql: ${TABLE}.about.process.file.mime_type ;;
    group_label: "About Process File"
    group_item_label: "Mime Type"
  }

  dimension: about__process__file__sha1 {
    type: string
    sql: ${TABLE}.about.process.file.sha1 ;;
    group_label: "About Process File"
    group_item_label: "Sha1"
  }

  dimension: about__process__file__sha256 {
    type: string
    sql: ${TABLE}.about.process.file.sha256 ;;
    group_label: "About Process File"
    group_item_label: "Sha256"
  }

  dimension: about__process__file__size {
    type: number
    sql: ${TABLE}.about.process.file.size ;;
    group_label: "About Process File"
    group_item_label: "Size"
  }

  dimension: about__process__parent_pid {
    type: string
    sql: ${TABLE}.about.process.parent_pid ;;
    group_label: "About Process"
    group_item_label: "Parent Pid"
  }

  dimension: about__process__pid {
    type: string
    sql: ${TABLE}.about.process.pid ;;
    group_label: "About Process"
    group_item_label: "Pid"
  }

  dimension: about__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_parent_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: about__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: about__process_ancestors {
    hidden: yes
    sql: ${TABLE}.about.process_ancestors ;;
    group_label: "About"
    group_item_label: "Process Ancestors"
  }

  dimension: about__registry__registry_key {
    type: string
    sql: ${TABLE}.about.registry.registry_key ;;
    group_label: "About Registry"
    group_item_label: "Registry Key"
  }

  dimension: about__registry__registry_value_data {
    type: string
    sql: ${TABLE}.about.registry.registry_value_data ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: about__registry__registry_value_name {
    type: string
    sql: ${TABLE}.about.registry.registry_value_name ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: about__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.resource.attribute.cloud.availability_zone ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.resource.attribute.cloud.environment ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.nanos ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.seconds ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.labels ;;
    group_label: "About Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: about__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.nanos ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.seconds ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.permissions ;;
    group_label: "About Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.roles ;;
    group_label: "About Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: about__resource__id {
    type: string
    sql: ${TABLE}.about.resource.id ;;
    group_label: "About Resource"
    group_item_label: "ID"
  }

  dimension: about__resource__name {
    type: string
    sql: ${TABLE}.about.resource.name ;;
    group_label: "About Resource"
    group_item_label: "Name"
  }

  dimension: about__resource__parent {
    type: string
    sql: ${TABLE}.about.resource.parent ;;
    group_label: "About Resource"
    group_item_label: "Parent"
  }

  dimension: about__resource__product_object_id {
    type: string
    sql: ${TABLE}.about.resource.product_object_id ;;
    group_label: "About Resource"
    group_item_label: "Product Object ID"
  }

  dimension: about__resource__resource_subtype {
    type: string
    sql: ${TABLE}.about.resource.resource_subtype ;;
    group_label: "About Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: about__resource__resource_type {
    type: number
    sql: ${TABLE}.about.resource.resource_type ;;
    group_label: "About Resource"
    group_item_label: "Resource Type"
  }

  dimension: about__resource__type {
    type: string
    sql: ${TABLE}.about.resource.type ;;
    group_label: "About Resource"
    group_item_label: "Type"
  }

  dimension: about__url {
    type: string
    sql: ${TABLE}.about.url ;;
    group_label: "About"
    group_item_label: "URL"
  }

  dimension: about__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.availability_zone ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.environment ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.name ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.parent ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.product_object_id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_subtype ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.name ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.parent ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.nanos ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.seconds ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.labels ;;
    group_label: "About User Attribute"
    group_item_label: "Labels"
  }

  dimension: about__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.nanos ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.seconds ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.permissions ;;
    group_label: "About User Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.roles ;;
    group_label: "About User Attribute"
    group_item_label: "Roles"
  }

  dimension: about__user__company_name {
    type: string
    sql: ${TABLE}.about.user.company_name ;;
    group_label: "About User"
    group_item_label: "Company Name"
  }

  dimension: about__user__department {
    hidden: yes
    sql: ${TABLE}.about.user.department ;;
    group_label: "About User"
    group_item_label: "Department"
  }

  dimension: about__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.user.email_addresses ;;
    group_label: "About User"
    group_item_label: "Email Addresses"
  }

  dimension: about__user__employee_id {
    type: string
    sql: ${TABLE}.about.user.employee_id ;;
    group_label: "About User"
    group_item_label: "Employee ID"
  }

  dimension: about__user__first_name {
    type: string
    sql: ${TABLE}.about.user.first_name ;;
    group_label: "About User"
    group_item_label: "First Name"
  }

  dimension: about__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.user.group_identifiers ;;
    group_label: "About User"
    group_item_label: "Group Identifiers"
  }

  dimension: about__user__groupid {
    type: string
    sql: ${TABLE}.about.user.groupid ;;
    group_label: "About User"
    group_item_label: "Groupid"
  }

  dimension: about__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.user.hire_date.nanos ;;
    group_label: "About User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.user.hire_date.seconds ;;
    group_label: "About User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__last_name {
    type: string
    sql: ${TABLE}.about.user.last_name ;;
    group_label: "About User"
    group_item_label: "Last Name"
  }

  dimension: about__user__middle_name {
    type: string
    sql: ${TABLE}.about.user.middle_name ;;
    group_label: "About User"
    group_item_label: "Middle Name"
  }

  dimension: about__user__office_address__city {
    type: string
    sql: ${TABLE}.about.user.office_address.city ;;
    group_label: "About User Office Address"
    group_item_label: "City"
  }

  dimension: about__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.office_address.country_or_region ;;
    group_label: "About User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__office_address__name {
    type: string
    sql: ${TABLE}.about.user.office_address.name ;;
    group_label: "About User Office Address"
    group_item_label: "Name"
  }

  dimension: about__user__office_address__state {
    type: string
    sql: ${TABLE}.about.user.office_address.state ;;
    group_label: "About User Office Address"
    group_item_label: "State"
  }

  dimension: about__user__personal_address__city {
    type: string
    sql: ${TABLE}.about.user.personal_address.city ;;
    group_label: "About User Personal Address"
    group_item_label: "City"
  }

  dimension: about__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.personal_address.country_or_region ;;
    group_label: "About User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__personal_address__name {
    type: string
    sql: ${TABLE}.about.user.personal_address.name ;;
    group_label: "About User Personal Address"
    group_item_label: "Name"
  }

  dimension: about__user__personal_address__state {
    type: string
    sql: ${TABLE}.about.user.personal_address.state ;;
    group_label: "About User Personal Address"
    group_item_label: "State"
  }

  dimension: about__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.user.phone_numbers ;;
    group_label: "About User"
    group_item_label: "Phone Numbers"
  }

  dimension: about__user__product_object_id {
    type: string
    sql: ${TABLE}.about.user.product_object_id ;;
    group_label: "About User"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__role_description {
    type: string
    sql: ${TABLE}.about.user.role_description ;;
    group_label: "About User"
    group_item_label: "Role Description"
  }

  dimension: about__user__role_name {
    type: string
    sql: ${TABLE}.about.user.role_name ;;
    group_label: "About User"
    group_item_label: "Role Name"
  }

  dimension: about__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.user.termination_date.nanos ;;
    group_label: "About User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.user.termination_date.seconds ;;
    group_label: "About User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__time_off {
    hidden: yes
    sql: ${TABLE}.about.user.time_off ;;
    group_label: "About User"
    group_item_label: "Time Off"
  }

  dimension: about__user__title {
    type: string
    sql: ${TABLE}.about.user.title ;;
    group_label: "About User"
    group_item_label: "Title"
  }

  dimension: about__user__user_authentication_status {
    type: number
    sql: ${TABLE}.about.user.user_authentication_status ;;
    group_label: "About User"
    group_item_label: "User Authentication Status"
  }

  dimension: about__user__user_display_name {
    type: string
    sql: ${TABLE}.about.user.user_display_name ;;
    group_label: "About User"
    group_item_label: "User Display Name"
  }

  dimension: about__user__user_role {
    type: number
    sql: ${TABLE}.about.user.user_role ;;
    group_label: "About User"
    group_item_label: "User Role"
  }

  dimension: about__user__userid {
    type: string
    sql: ${TABLE}.about.user.userid ;;
    group_label: "About User"
    group_item_label: "Userid"
  }

  dimension: about__user__windows_sid {
    type: string
    sql: ${TABLE}.about.user.windows_sid ;;
    group_label: "About User"
    group_item_label: "Windows Sid"
  }

  dimension: about__user_management_chain {
    hidden: yes
    sql: ${TABLE}.about.user_management_chain ;;
    group_label: "About"
    group_item_label: "User Management Chain"
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
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: category_details {
    hidden: yes
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

  dimension: detection_fields {
    hidden: yes
    sql: ${TABLE}.detection_fields ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: priority_details {
    type: string
    sql: ${TABLE}.priority_details ;;
  }

  dimension: rule_author {
    type: string
    sql: ${TABLE}.rule_author ;;
  }

  dimension: rule_id {
    type: string
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_labels {
    hidden: yes
    sql: ${TABLE}.rule_labels ;;
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

  dimension: threat_feed_name {
    type: string
    sql: ${TABLE}.threat_feed_name ;;
  }

  dimension: threat_id {
    type: string
    sql: ${TABLE}.threat_id ;;
  }

  dimension: threat_id_namespace {
    type: number
    value_format_name: id
    sql: ${TABLE}.threat_id_namespace ;;
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

view: udm_events__target__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
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

view: udm_events__src__user__email_addresses {
  dimension: udm_events__src__user__email_addresses {
    type: string
    sql: udm_events__src__user__email_addresses ;;
  }
}

view: udm_events__about__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__about__user__phone_numbers {
  dimension: udm_events__about__user__phone_numbers {
    type: string
    sql: udm_events__about__user__phone_numbers ;;
  }
}

view: udm_events__security_result__about__ip {
  dimension: udm_events__security_result__about__ip {
    type: string
    sql: udm_events__security_result__about__ip ;;
  }
}

view: udm_events__security_result__category {
  dimension: udm_events__security_result__category {
    type: number
    sql: udm_events__security_result__category ;;
  }
}

view: udm_events__observer__user__department {
  dimension: udm_events__observer__user__department {
    type: string
    sql: udm_events__observer__user__department ;;
  }
}

view: udm_events__src__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__about__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__intermediary__asset__nat_ip {
  dimension: udm_events__intermediary__asset__nat_ip {
    type: string
    sql: udm_events__intermediary__asset__nat_ip ;;
  }
}

view: udm_events__security_result__about__mac {
  dimension: udm_events__security_result__about__mac {
    type: string
    sql: udm_events__security_result__about__mac ;;
  }
}

view: udm_events__target__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__target__user__phone_numbers {
  dimension: udm_events__target__user__phone_numbers {
    type: string
    sql: udm_events__target__user__phone_numbers ;;
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

view: udm_events__principal__user__department {
  dimension: udm_events__principal__user__department {
    type: string
    sql: udm_events__principal__user__department ;;
  }
}

view: udm_events__observer__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__auth__mechanism {
  dimension: udm_events__extensions__auth__mechanism {
    type: number
    sql: udm_events__extensions__auth__mechanism ;;
  }
}

view: udm_events__src__investigation__comments {
  dimension: udm_events__src__investigation__comments {
    type: string
    sql: udm_events__src__investigation__comments ;;
  }
}

view: udm_events__src__user__group_identifiers {
  dimension: udm_events__src__user__group_identifiers {
    type: string
    sql: udm_events__src__user__group_identifiers ;;
  }
}

view: udm_events__about__user__email_addresses {
  dimension: udm_events__about__user__email_addresses {
    type: string
    sql: udm_events__about__user__email_addresses ;;
  }
}

view: udm_events__target__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
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

view: udm_events__principal__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__group__email_addresses {
  dimension: udm_events__src__group__email_addresses {
    type: string
    sql: udm_events__src__group__email_addresses ;;
  }
}

view: udm_events__about__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__target__user__email_addresses {
  dimension: udm_events__target__user__email_addresses {
    type: string
    sql: udm_events__target__user__email_addresses ;;
  }
}

view: udm_events__observer__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__observer__user__phone_numbers {
  dimension: udm_events__observer__user__phone_numbers {
    type: string
    sql: udm_events__observer__user__phone_numbers ;;
  }
}

view: udm_events__about__investigation__comments {
  dimension: udm_events__about__investigation__comments {
    type: string
    sql: udm_events__about__investigation__comments ;;
  }
}

view: udm_events__about__user__group_identifiers {
  dimension: udm_events__about__user__group_identifiers {
    type: string
    sql: udm_events__about__user__group_identifiers ;;
  }
}

view: udm_events__intermediary__user__department {
  dimension: udm_events__intermediary__user__department {
    type: string
    sql: udm_events__intermediary__user__department ;;
  }
}

view: udm_events__security_result__about__nat_ip {
  dimension: udm_events__security_result__about__nat_ip {
    type: string
    sql: udm_events__security_result__about__nat_ip ;;
  }
}

view: udm_events__target__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__principal__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__principal__user__phone_numbers {
  dimension: udm_events__principal__user__phone_numbers {
    type: string
    sql: udm_events__principal__user__phone_numbers ;;
  }
}

view: udm_events__observer__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__metadata__ingestion_labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__src__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__group__email_addresses {
  dimension: udm_events__about__group__email_addresses {
    type: string
    sql: udm_events__about__group__email_addresses ;;
  }
}

view: udm_events__intermediary__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__investigation__comments {
  dimension: udm_events__target__investigation__comments {
    type: string
    sql: udm_events__target__investigation__comments ;;
  }
}

view: udm_events__target__user__group_identifiers {
  dimension: udm_events__target__user__group_identifiers {
    type: string
    sql: udm_events__target__user__group_identifiers ;;
  }
}

view: udm_events__principal__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__observer__user__email_addresses {
  dimension: udm_events__observer__user__email_addresses {
    type: string
    sql: udm_events__observer__user__email_addresses ;;
  }
}

view: udm_events__src__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__src__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__asset__ip {
  dimension: udm_events__security_result__about__asset__ip {
    type: string
    sql: udm_events__security_result__about__asset__ip ;;
  }
}

view: udm_events__target__group__email_addresses {
  dimension: udm_events__target__group__email_addresses {
    type: string
    sql: udm_events__target__group__email_addresses ;;
  }
}

view: udm_events__principal__user__email_addresses {
  dimension: udm_events__principal__user__email_addresses {
    type: string
    sql: udm_events__principal__user__email_addresses ;;
  }
}

view: udm_events__observer__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__src__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__about__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__about__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__intermediary__user__phone_numbers {
  dimension: udm_events__intermediary__user__phone_numbers {
    type: string
    sql: udm_events__intermediary__user__phone_numbers ;;
  }
}

view: udm_events__security_result__about__asset__mac {
  dimension: udm_events__security_result__about__asset__mac {
    type: string
    sql: udm_events__security_result__about__asset__mac ;;
  }
}

view: udm_events__security_result__rule_labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__observer__investigation__comments {
  dimension: udm_events__observer__investigation__comments {
    type: string
    sql: udm_events__observer__investigation__comments ;;
  }
}

view: udm_events__observer__user__group_identifiers {
  dimension: udm_events__observer__user__group_identifiers {
    type: string
    sql: udm_events__observer__user__group_identifiers ;;
  }
}

view: udm_events__src__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__process__command_line_history {
  dimension: udm_events__src__process__command_line_history {
    type: string
    sql: udm_events__src__process__command_line_history ;;
  }
}

view: udm_events__about__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__about__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
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

view: udm_events__security_result__category_details {
  dimension: udm_events__security_result__category_details {
    type: string
    sql: udm_events__security_result__category_details ;;
  }
}

view: udm_events__target__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__target__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__investigation__comments {
  dimension: udm_events__principal__investigation__comments {
    type: string
    sql: udm_events__principal__investigation__comments ;;
  }
}

view: udm_events__principal__user__group_identifiers {
  dimension: udm_events__principal__user__group_identifiers {
    type: string
    sql: udm_events__principal__user__group_identifiers ;;
  }
}

view: udm_events__observer__group__email_addresses {
  dimension: udm_events__observer__group__email_addresses {
    type: string
    sql: udm_events__observer__group__email_addresses ;;
  }
}

view: udm_events__src__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__intermediary__user__email_addresses {
  dimension: udm_events__intermediary__user__email_addresses {
    type: string
    sql: udm_events__intermediary__user__email_addresses ;;
  }
}

view: udm_events__target__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__target__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__group__email_addresses {
  dimension: udm_events__principal__group__email_addresses {
    type: string
    sql: udm_events__principal__group__email_addresses ;;
  }
}

view: udm_events__src__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__process__command_line_history {
  dimension: udm_events__about__process__command_line_history {
    type: string
    sql: udm_events__about__process__command_line_history ;;
  }
}

view: udm_events__intermediary__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__security_result__about__asset__nat_ip {
  dimension: udm_events__security_result__about__asset__nat_ip {
    type: string
    sql: udm_events__security_result__about__asset__nat_ip ;;
  }
}

view: udm_events__target__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__observer__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__observer__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__investigation__comments {
  dimension: udm_events__intermediary__investigation__comments {
    type: string
    sql: udm_events__intermediary__investigation__comments ;;
  }
}

view: udm_events__intermediary__user__group_identifiers {
  dimension: udm_events__intermediary__user__group_identifiers {
    type: string
    sql: udm_events__intermediary__user__group_identifiers ;;
  }
}

view: udm_events__target__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__process__command_line_history {
  dimension: udm_events__target__process__command_line_history {
    type: string
    sql: udm_events__target__process__command_line_history ;;
  }
}

view: udm_events__principal__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__principal__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__observer__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__user_management_chain__department {
  dimension: udm_events__src__user_management_chain__department {
    type: string
    sql: udm_events__src__user_management_chain__department ;;
  }
}

view: udm_events__src__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__group__email_addresses {
  dimension: udm_events__intermediary__group__email_addresses {
    type: string
    sql: udm_events__intermediary__group__email_addresses ;;
  }
}

view: udm_events__security_result__detection_fields {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__network__tls__client__supported_ciphers {
  dimension: udm_events__network__tls__client__supported_ciphers {
    type: string
    sql: udm_events__network__tls__client__supported_ciphers ;;
  }
}

view: udm_events__principal__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__principal__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__about__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user__department {
  dimension: udm_events__security_result__about__user__department {
    type: string
    sql: udm_events__security_result__about__user__department ;;
  }
}

view: udm_events__target__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__observer__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__process__command_line_history {
  dimension: udm_events__observer__process__command_line_history {
    type: string
    sql: udm_events__observer__process__command_line_history ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities {
  dimension: about__administrative_domain {
    type: string
    sql: ${TABLE}.about.administrative_domain ;;
    group_label: "About"
    group_item_label: "Administrative Domain"
  }

  dimension: about__application {
    type: string
    sql: ${TABLE}.about.application ;;
    group_label: "About"
    group_item_label: "Application"
  }

  dimension: about__asset__asset_id {
    type: string
    sql: ${TABLE}.about.asset.asset_id ;;
    group_label: "About Asset"
    group_item_label: "Asset ID"
  }

  dimension: about__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.availability_zone ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.environment ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.name ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.parent ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.product_object_id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.name ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.parent ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.nanos ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.seconds ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.labels ;;
    group_label: "About Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: about__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.nanos ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.seconds ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.permissions ;;
    group_label: "About Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.roles ;;
    group_label: "About Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: about__asset__category {
    type: string
    sql: ${TABLE}.about.asset.category ;;
    group_label: "About Asset"
    group_item_label: "Category"
  }

  dimension: about__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.creation_time.nanos ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.creation_time.seconds ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__deployment_status {
    type: number
    sql: ${TABLE}.about.asset.deployment_status ;;
    group_label: "About Asset"
    group_item_label: "Deployment Status"
  }

  dimension: about__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.nanos ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.seconds ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__hardware {
    hidden: yes
    sql: ${TABLE}.about.asset.hardware ;;
    group_label: "About Asset"
    group_item_label: "Hardware"
  }

  dimension: about__asset__hostname {
    type: string
    sql: ${TABLE}.about.asset.hostname ;;
    group_label: "About Asset"
    group_item_label: "Hostname"
  }

  dimension: about__asset__ip {
    hidden: yes
    sql: ${TABLE}.about.asset.ip ;;
    group_label: "About Asset"
    group_item_label: "IP"
  }

  dimension: about__asset__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.labels ;;
    group_label: "About Asset"
    group_item_label: "Labels"
  }

  dimension: about__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.nanos ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.seconds ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.nanos ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.seconds ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__location__city {
    type: string
    sql: ${TABLE}.about.asset.location.city ;;
    group_label: "About Asset Location"
    group_item_label: "City"
  }

  dimension: about__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.about.asset.location.country_or_region ;;
    group_label: "About Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: about__asset__location__name {
    type: string
    sql: ${TABLE}.about.asset.location.name ;;
    group_label: "About Asset Location"
    group_item_label: "Name"
  }

  dimension: about__asset__location__state {
    type: string
    sql: ${TABLE}.about.asset.location.state ;;
    group_label: "About Asset Location"
    group_item_label: "State"
  }

  dimension: about__asset__mac {
    hidden: yes
    sql: ${TABLE}.about.asset.mac ;;
    group_label: "About Asset"
    group_item_label: "Mac"
  }

  dimension: about__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.asset.nat_ip ;;
    group_label: "About Asset"
    group_item_label: "Nat IP"
  }

  dimension: about__asset__network_domain {
    type: string
    sql: ${TABLE}.about.asset.network_domain ;;
    group_label: "About Asset"
    group_item_label: "Network Domain"
  }

  dimension: about__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.about.asset.platform_software.platform ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: about__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_patch_level ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_version ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: about__asset__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.product_object_id ;;
    group_label: "About Asset"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__software {
    hidden: yes
    sql: ${TABLE}.about.asset.software ;;
    group_label: "About Asset"
    group_item_label: "Software"
  }

  dimension: about__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.nanos ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.seconds ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__type {
    type: number
    sql: ${TABLE}.about.asset.type ;;
    group_label: "About Asset"
    group_item_label: "Type"
  }

  dimension: about__asset_id {
    type: string
    sql: ${TABLE}.about.asset_id ;;
    group_label: "About"
    group_item_label: "Asset ID"
  }

  dimension: about__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.cloud.availability_zone ;;
    group_label: "About Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__cloud__environment {
    type: number
    sql: ${TABLE}.about.cloud.environment ;;
    group_label: "About Cloud"
    group_item_label: "Environment"
  }

  dimension: about__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.nanos ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.seconds ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.labels ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.permissions ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.roles ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__project__id {
    type: string
    sql: ${TABLE}.about.cloud.project.id ;;
    group_label: "About Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__cloud__project__name {
    type: string
    sql: ${TABLE}.about.cloud.project.name ;;
    group_label: "About Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.cloud.project.parent ;;
    group_label: "About Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.project.product_object_id ;;
    group_label: "About Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.project.resource_subtype ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.project.resource_type ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__project__type {
    type: string
    sql: ${TABLE}.about.cloud.project.type ;;
    group_label: "About Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.labels ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.permissions ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.roles ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.cloud.vpc.name ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.cloud.vpc.parent ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.product_object_id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.vpc.resource_subtype ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.vpc.resource_type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.cloud.vpc.type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__email {
    type: string
    sql: ${TABLE}.about.email ;;
    group_label: "About"
    group_item_label: "Email"
  }

  dimension: about__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.file.file_metadata.pe.import_hash ;;
    group_label: "About File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__file__full_path {
    type: string
    sql: ${TABLE}.about.file.full_path ;;
    group_label: "About File"
    group_item_label: "Full Path"
  }

  dimension: about__file__md5 {
    type: string
    sql: ${TABLE}.about.file.md5 ;;
    group_label: "About File"
    group_item_label: "Md5"
  }

  dimension: about__file__mime_type {
    type: string
    sql: ${TABLE}.about.file.mime_type ;;
    group_label: "About File"
    group_item_label: "Mime Type"
  }

  dimension: about__file__sha1 {
    type: string
    sql: ${TABLE}.about.file.sha1 ;;
    group_label: "About File"
    group_item_label: "Sha1"
  }

  dimension: about__file__sha256 {
    type: string
    sql: ${TABLE}.about.file.sha256 ;;
    group_label: "About File"
    group_item_label: "Sha256"
  }

  dimension: about__file__size {
    type: number
    sql: ${TABLE}.about.file.size ;;
    group_label: "About File"
    group_item_label: "Size"
  }

  dimension: about__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.availability_zone ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.environment ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.name ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.parent ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.name ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.parent ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.nanos ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.seconds ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.labels ;;
    group_label: "About Group Attribute"
    group_item_label: "Labels"
  }

  dimension: about__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.nanos ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.seconds ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.permissions ;;
    group_label: "About Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.roles ;;
    group_label: "About Group Attribute"
    group_item_label: "Roles"
  }

  dimension: about__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.nanos ;;
    group_label: "About Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.seconds ;;
    group_label: "About Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.group.email_addresses ;;
    group_label: "About Group"
    group_item_label: "Email Addresses"
  }

  dimension: about__group__group_display_name {
    type: string
    sql: ${TABLE}.about.`group`.group_display_name ;;
    group_label: "About Group"
    group_item_label: "Group Display Name"
  }

  dimension: about__group__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.product_object_id ;;
    group_label: "About Group"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__windows_sid {
    type: string
    sql: ${TABLE}.about.`group`.windows_sid ;;
    group_label: "About Group"
    group_item_label: "Windows Sid"
  }

  dimension: about__hostname {
    type: string
    sql: ${TABLE}.about.hostname ;;
    group_label: "About"
    group_item_label: "Hostname"
  }

  dimension: about__investigation__comments {
    hidden: yes
    sql: ${TABLE}.about.investigation.comments ;;
    group_label: "About Investigation"
    group_item_label: "Comments"
  }

  dimension: about__investigation__reputation {
    type: number
    sql: ${TABLE}.about.investigation.reputation ;;
    group_label: "About Investigation"
    group_item_label: "Reputation"
  }

  dimension: about__investigation__severity_score {
    type: number
    sql: ${TABLE}.about.investigation.severity_score ;;
    group_label: "About Investigation"
    group_item_label: "Severity Score"
  }

  dimension: about__investigation__status {
    type: number
    sql: ${TABLE}.about.investigation.status ;;
    group_label: "About Investigation"
    group_item_label: "Status"
  }

  dimension: about__investigation__verdict {
    type: number
    sql: ${TABLE}.about.investigation.verdict ;;
    group_label: "About Investigation"
    group_item_label: "Verdict"
  }

  dimension: about__ip {
    hidden: yes
    sql: ${TABLE}.about.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: about__labels {
    hidden: yes
    sql: ${TABLE}.about.labels ;;
    group_label: "About"
    group_item_label: "Labels"
  }

  dimension: about__location__city {
    type: string
    sql: ${TABLE}.about.location.city ;;
    group_label: "About Location"
    group_item_label: "City"
  }

  dimension: about__location__country_or_region {
    type: string
    sql: ${TABLE}.about.location.country_or_region ;;
    group_label: "About Location"
    group_item_label: "Country or Region"
  }

  dimension: about__location__name {
    type: string
    sql: ${TABLE}.about.location.name ;;
    group_label: "About Location"
    group_item_label: "Name"
  }

  dimension: about__location__state {
    type: string
    sql: ${TABLE}.about.location.state ;;
    group_label: "About Location"
    group_item_label: "State"
  }

  dimension: about__mac {
    hidden: yes
    sql: ${TABLE}.about.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }

  dimension: about__namespace {
    type: string
    sql: ${TABLE}.about.namespace ;;
    group_label: "About"
    group_item_label: "Namespace"
  }

  dimension: about__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.nat_ip ;;
    group_label: "About"
    group_item_label: "Nat IP"
  }

  dimension: about__nat_port {
    type: number
    sql: ${TABLE}.about.nat_port ;;
    group_label: "About"
    group_item_label: "Nat Port"
  }

  dimension: about__object_reference__id {
    type: string
    sql: ${TABLE}.about.object_reference.id ;;
    group_label: "About Object Reference"
    group_item_label: "ID"
  }

  dimension: about__object_reference__namespace {
    type: number
    sql: ${TABLE}.about.object_reference.namespace ;;
    group_label: "About Object Reference"
    group_item_label: "Namespace"
  }

  dimension: about__platform {
    type: number
    sql: ${TABLE}.about.platform ;;
    group_label: "About"
    group_item_label: "Platform"
  }

  dimension: about__platform_patch_level {
    type: string
    sql: ${TABLE}.about.platform_patch_level ;;
    group_label: "About"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__platform_version {
    type: string
    sql: ${TABLE}.about.platform_version ;;
    group_label: "About"
    group_item_label: "Platform Version"
  }

  dimension: about__port {
    type: number
    sql: ${TABLE}.about.port ;;
    group_label: "About"
    group_item_label: "Port"
  }

  dimension: about__process__access_mask {
    type: number
    sql: ${TABLE}.about.process.access_mask ;;
    group_label: "About Process"
    group_item_label: "Access Mask"
  }

  dimension: about__process__command_line {
    type: string
    sql: ${TABLE}.about.process.command_line ;;
    group_label: "About Process"
    group_item_label: "Command Line"
  }

  dimension: about__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.about.process.command_line_history ;;
    group_label: "About Process"
    group_item_label: "Command Line History"
  }

  dimension: about__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.process.file.file_metadata.pe.import_hash ;;
    group_label: "About Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__process__file__full_path {
    type: string
    sql: ${TABLE}.about.process.file.full_path ;;
    group_label: "About Process File"
    group_item_label: "Full Path"
  }

  dimension: about__process__file__md5 {
    type: string
    sql: ${TABLE}.about.process.file.md5 ;;
    group_label: "About Process File"
    group_item_label: "Md5"
  }

  dimension: about__process__file__mime_type {
    type: string
    sql: ${TABLE}.about.process.file.mime_type ;;
    group_label: "About Process File"
    group_item_label: "Mime Type"
  }

  dimension: about__process__file__sha1 {
    type: string
    sql: ${TABLE}.about.process.file.sha1 ;;
    group_label: "About Process File"
    group_item_label: "Sha1"
  }

  dimension: about__process__file__sha256 {
    type: string
    sql: ${TABLE}.about.process.file.sha256 ;;
    group_label: "About Process File"
    group_item_label: "Sha256"
  }

  dimension: about__process__file__size {
    type: number
    sql: ${TABLE}.about.process.file.size ;;
    group_label: "About Process File"
    group_item_label: "Size"
  }

  dimension: about__process__parent_pid {
    type: string
    sql: ${TABLE}.about.process.parent_pid ;;
    group_label: "About Process"
    group_item_label: "Parent Pid"
  }

  dimension: about__process__pid {
    type: string
    sql: ${TABLE}.about.process.pid ;;
    group_label: "About Process"
    group_item_label: "Pid"
  }

  dimension: about__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_parent_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: about__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: about__process_ancestors {
    hidden: yes
    sql: ${TABLE}.about.process_ancestors ;;
    group_label: "About"
    group_item_label: "Process Ancestors"
  }

  dimension: about__registry__registry_key {
    type: string
    sql: ${TABLE}.about.registry.registry_key ;;
    group_label: "About Registry"
    group_item_label: "Registry Key"
  }

  dimension: about__registry__registry_value_data {
    type: string
    sql: ${TABLE}.about.registry.registry_value_data ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: about__registry__registry_value_name {
    type: string
    sql: ${TABLE}.about.registry.registry_value_name ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: about__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.resource.attribute.cloud.availability_zone ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.resource.attribute.cloud.environment ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.nanos ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.seconds ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.labels ;;
    group_label: "About Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: about__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.nanos ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.seconds ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.permissions ;;
    group_label: "About Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.roles ;;
    group_label: "About Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: about__resource__id {
    type: string
    sql: ${TABLE}.about.resource.id ;;
    group_label: "About Resource"
    group_item_label: "ID"
  }

  dimension: about__resource__name {
    type: string
    sql: ${TABLE}.about.resource.name ;;
    group_label: "About Resource"
    group_item_label: "Name"
  }

  dimension: about__resource__parent {
    type: string
    sql: ${TABLE}.about.resource.parent ;;
    group_label: "About Resource"
    group_item_label: "Parent"
  }

  dimension: about__resource__product_object_id {
    type: string
    sql: ${TABLE}.about.resource.product_object_id ;;
    group_label: "About Resource"
    group_item_label: "Product Object ID"
  }

  dimension: about__resource__resource_subtype {
    type: string
    sql: ${TABLE}.about.resource.resource_subtype ;;
    group_label: "About Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: about__resource__resource_type {
    type: number
    sql: ${TABLE}.about.resource.resource_type ;;
    group_label: "About Resource"
    group_item_label: "Resource Type"
  }

  dimension: about__resource__type {
    type: string
    sql: ${TABLE}.about.resource.type ;;
    group_label: "About Resource"
    group_item_label: "Type"
  }

  dimension: about__url {
    type: string
    sql: ${TABLE}.about.url ;;
    group_label: "About"
    group_item_label: "URL"
  }

  dimension: about__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.availability_zone ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.environment ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.name ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.parent ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.product_object_id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_subtype ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.name ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.parent ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.nanos ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.seconds ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.labels ;;
    group_label: "About User Attribute"
    group_item_label: "Labels"
  }

  dimension: about__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.nanos ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.seconds ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.permissions ;;
    group_label: "About User Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.roles ;;
    group_label: "About User Attribute"
    group_item_label: "Roles"
  }

  dimension: about__user__company_name {
    type: string
    sql: ${TABLE}.about.user.company_name ;;
    group_label: "About User"
    group_item_label: "Company Name"
  }

  dimension: about__user__department {
    hidden: yes
    sql: ${TABLE}.about.user.department ;;
    group_label: "About User"
    group_item_label: "Department"
  }

  dimension: about__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.user.email_addresses ;;
    group_label: "About User"
    group_item_label: "Email Addresses"
  }

  dimension: about__user__employee_id {
    type: string
    sql: ${TABLE}.about.user.employee_id ;;
    group_label: "About User"
    group_item_label: "Employee ID"
  }

  dimension: about__user__first_name {
    type: string
    sql: ${TABLE}.about.user.first_name ;;
    group_label: "About User"
    group_item_label: "First Name"
  }

  dimension: about__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.user.group_identifiers ;;
    group_label: "About User"
    group_item_label: "Group Identifiers"
  }

  dimension: about__user__groupid {
    type: string
    sql: ${TABLE}.about.user.groupid ;;
    group_label: "About User"
    group_item_label: "Groupid"
  }

  dimension: about__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.user.hire_date.nanos ;;
    group_label: "About User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.user.hire_date.seconds ;;
    group_label: "About User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__last_name {
    type: string
    sql: ${TABLE}.about.user.last_name ;;
    group_label: "About User"
    group_item_label: "Last Name"
  }

  dimension: about__user__middle_name {
    type: string
    sql: ${TABLE}.about.user.middle_name ;;
    group_label: "About User"
    group_item_label: "Middle Name"
  }

  dimension: about__user__office_address__city {
    type: string
    sql: ${TABLE}.about.user.office_address.city ;;
    group_label: "About User Office Address"
    group_item_label: "City"
  }

  dimension: about__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.office_address.country_or_region ;;
    group_label: "About User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__office_address__name {
    type: string
    sql: ${TABLE}.about.user.office_address.name ;;
    group_label: "About User Office Address"
    group_item_label: "Name"
  }

  dimension: about__user__office_address__state {
    type: string
    sql: ${TABLE}.about.user.office_address.state ;;
    group_label: "About User Office Address"
    group_item_label: "State"
  }

  dimension: about__user__personal_address__city {
    type: string
    sql: ${TABLE}.about.user.personal_address.city ;;
    group_label: "About User Personal Address"
    group_item_label: "City"
  }

  dimension: about__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.personal_address.country_or_region ;;
    group_label: "About User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__personal_address__name {
    type: string
    sql: ${TABLE}.about.user.personal_address.name ;;
    group_label: "About User Personal Address"
    group_item_label: "Name"
  }

  dimension: about__user__personal_address__state {
    type: string
    sql: ${TABLE}.about.user.personal_address.state ;;
    group_label: "About User Personal Address"
    group_item_label: "State"
  }

  dimension: about__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.user.phone_numbers ;;
    group_label: "About User"
    group_item_label: "Phone Numbers"
  }

  dimension: about__user__product_object_id {
    type: string
    sql: ${TABLE}.about.user.product_object_id ;;
    group_label: "About User"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__role_description {
    type: string
    sql: ${TABLE}.about.user.role_description ;;
    group_label: "About User"
    group_item_label: "Role Description"
  }

  dimension: about__user__role_name {
    type: string
    sql: ${TABLE}.about.user.role_name ;;
    group_label: "About User"
    group_item_label: "Role Name"
  }

  dimension: about__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.user.termination_date.nanos ;;
    group_label: "About User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.user.termination_date.seconds ;;
    group_label: "About User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__time_off {
    hidden: yes
    sql: ${TABLE}.about.user.time_off ;;
    group_label: "About User"
    group_item_label: "Time Off"
  }

  dimension: about__user__title {
    type: string
    sql: ${TABLE}.about.user.title ;;
    group_label: "About User"
    group_item_label: "Title"
  }

  dimension: about__user__user_authentication_status {
    type: number
    sql: ${TABLE}.about.user.user_authentication_status ;;
    group_label: "About User"
    group_item_label: "User Authentication Status"
  }

  dimension: about__user__user_display_name {
    type: string
    sql: ${TABLE}.about.user.user_display_name ;;
    group_label: "About User"
    group_item_label: "User Display Name"
  }

  dimension: about__user__user_role {
    type: number
    sql: ${TABLE}.about.user.user_role ;;
    group_label: "About User"
    group_item_label: "User Role"
  }

  dimension: about__user__userid {
    type: string
    sql: ${TABLE}.about.user.userid ;;
    group_label: "About User"
    group_item_label: "Userid"
  }

  dimension: about__user__windows_sid {
    type: string
    sql: ${TABLE}.about.user.windows_sid ;;
    group_label: "About User"
    group_item_label: "Windows Sid"
  }

  dimension: about__user_management_chain {
    hidden: yes
    sql: ${TABLE}.about.user_management_chain ;;
    group_label: "About"
    group_item_label: "User Management Chain"
  }

  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__src__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__user_management_chain__department {
  dimension: udm_events__about__user_management_chain__department {
    type: string
    sql: udm_events__about__user_management_chain__department ;;
  }
}

view: udm_events__about__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__intermediary__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__process__command_line_history {
  dimension: udm_events__principal__process__command_line_history {
    type: string
    sql: udm_events__principal__process__command_line_history ;;
  }
}

view: udm_events__observer__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__user_management_chain__phone_numbers {
  dimension: udm_events__src__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__src__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__intermediary__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__intermediary__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__user_management_chain__department {
  dimension: udm_events__target__user_management_chain__department {
    type: string
    sql: udm_events__target__user_management_chain__department ;;
  }
}

view: udm_events__target__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__src__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__security_result__about__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__security_result__about__user__phone_numbers {
  dimension: udm_events__security_result__about__user__phone_numbers {
    type: string
    sql: udm_events__security_result__about__user__phone_numbers ;;
  }
}

view: udm_events__principal__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__user_management_chain__email_addresses {
  dimension: udm_events__src__user_management_chain__email_addresses {
    type: string
    sql: udm_events__src__user_management_chain__email_addresses ;;
  }
}

view: udm_events__about__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__user_management_chain__phone_numbers {
  dimension: udm_events__about__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__about__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__intermediary__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__process__command_line_history {
  dimension: udm_events__intermediary__process__command_line_history {
    type: string
    sql: udm_events__intermediary__process__command_line_history ;;
  }
}

view: udm_events__security_result__about__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__target__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__user_management_chain__department {
  dimension: udm_events__observer__user_management_chain__department {
    type: string
    sql: udm_events__observer__user_management_chain__department ;;
  }
}

view: udm_events__observer__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__ip {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__ip {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__ip ;;
  }
}

view: udm_events__src__process_ancestors__command_line_history {
  dimension: udm_events__src__process_ancestors__command_line_history {
    type: string
    sql: udm_events__src__process_ancestors__command_line_history ;;
  }
}

view: udm_events__about__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__user__email_addresses {
  dimension: udm_events__security_result__about__user__email_addresses {
    type: string
    sql: udm_events__security_result__about__user__email_addresses ;;
  }
}

view: udm_events__target__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__user_management_chain__phone_numbers {
  dimension: udm_events__target__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__target__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__principal__user_management_chain__department {
  dimension: udm_events__principal__user_management_chain__department {
    type: string
    sql: udm_events__principal__user_management_chain__department ;;
  }
}

view: udm_events__principal__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__mac {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__mac {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__mac ;;
  }
}

view: udm_events__src__user_management_chain__group_identifiers {
  dimension: udm_events__src__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__src__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__about__user_management_chain__email_addresses {
  dimension: udm_events__about__user_management_chain__email_addresses {
    type: string
    sql: udm_events__about__user_management_chain__email_addresses ;;
  }
}

view: udm_events__intermediary__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__target__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__process_ancestors__command_line_history {
  dimension: udm_events__about__process_ancestors__command_line_history {
    type: string
    sql: udm_events__about__process_ancestors__command_line_history ;;
  }
}

view: udm_events__intermediary__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__investigation__comments {
  dimension: udm_events__security_result__about__investigation__comments {
    type: string
    sql: udm_events__security_result__about__investigation__comments ;;
  }
}

view: udm_events__security_result__about__user__group_identifiers {
  dimension: udm_events__security_result__about__user__group_identifiers {
    type: string
    sql: udm_events__security_result__about__user__group_identifiers ;;
  }
}

view: udm_events__target__user_management_chain__email_addresses {
  dimension: udm_events__target__user_management_chain__email_addresses {
    type: string
    sql: udm_events__target__user_management_chain__email_addresses ;;
  }
}

view: udm_events__principal__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__user_management_chain__phone_numbers {
  dimension: udm_events__observer__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__observer__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__about__user_management_chain__group_identifiers {
  dimension: udm_events__about__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__about__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__intermediary__user_management_chain__department {
  dimension: udm_events__intermediary__user_management_chain__department {
    type: string
    sql: udm_events__intermediary__user_management_chain__department ;;
  }
}

view: udm_events__intermediary__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__group__email_addresses {
  dimension: udm_events__security_result__about__group__email_addresses {
    type: string
    sql: udm_events__security_result__about__group__email_addresses ;;
  }
}

view: udm_events__target__process_ancestors__command_line_history {
  dimension: udm_events__target__process_ancestors__command_line_history {
    type: string
    sql: udm_events__target__process_ancestors__command_line_history ;;
  }
}

view: udm_events__principal__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user_management_chain__phone_numbers {
  dimension: udm_events__principal__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__principal__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__observer__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__nat_ip {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__nat_ip {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__nat_ip ;;
  }
}

view: udm_events__src__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__src__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__src__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__about__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__user_management_chain__group_identifiers {
  dimension: udm_events__target__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__target__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__principal__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__user_management_chain__email_addresses {
  dimension: udm_events__observer__user_management_chain__email_addresses {
    type: string
    sql: udm_events__observer__user_management_chain__email_addresses ;;
  }
}

view: udm_events__intermediary__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__security_result__about__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user_management_chain__email_addresses {
  dimension: udm_events__principal__user_management_chain__email_addresses {
    type: string
    sql: udm_events__principal__user_management_chain__email_addresses ;;
  }
}

view: udm_events__observer__process_ancestors__command_line_history {
  dimension: udm_events__observer__process_ancestors__command_line_history {
    type: string
    sql: udm_events__observer__process_ancestors__command_line_history ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__asset__ip {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__asset__ip {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__asset__ip ;;
  }
}

view: udm_events__about__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__about__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user_management_chain__phone_numbers {
  dimension: udm_events__intermediary__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__intermediary__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__security_result__about__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
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

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: udm_events__security_result__about__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__process_ancestors__command_line_history {
  dimension: udm_events__principal__process_ancestors__command_line_history {
    type: string
    sql: udm_events__principal__process_ancestors__command_line_history ;;
  }
}

view: udm_events__observer__user_management_chain__group_identifiers {
  dimension: udm_events__observer__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__observer__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__asset__mac {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__asset__mac {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__asset__mac ;;
  }
}

view: udm_events__intermediary__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__target__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__target__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__target__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__user_management_chain__group_identifiers {
  dimension: udm_events__principal__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__principal__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__observer__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user_management_chain__email_addresses {
  dimension: udm_events__intermediary__user_management_chain__email_addresses {
    type: string
    sql: udm_events__intermediary__user_management_chain__email_addresses ;;
  }
}

view: udm_events__security_result__about__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__process__command_line_history {
  dimension: udm_events__security_result__about__process__command_line_history {
    type: string
    sql: udm_events__security_result__about__process__command_line_history ;;
  }
}

view: udm_events__principal__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__process_ancestors__command_line_history {
  dimension: udm_events__intermediary__process_ancestors__command_line_history {
    type: string
    sql: udm_events__intermediary__process_ancestors__command_line_history ;;
  }
}

view: udm_events__security_result__about__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__observer__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__observer__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__observer__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip ;;
  }
}

view: udm_events__src__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user_management_chain__group_identifiers {
  dimension: udm_events__intermediary__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__intermediary__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__security_result__about__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__principal__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__principal__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__intermediary__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__about__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user_management_chain__department {
  dimension: udm_events__security_result__about__user_management_chain__department {
    type: string
    sql: udm_events__security_result__about__user_management_chain__department ;;
  }
}

view: udm_events__security_result__about__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user__department {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user__department {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user__department ;;
  }
}

view: udm_events__intermediary__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__intermediary__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__intermediary__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__target__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user_management_chain__phone_numbers {
  dimension: udm_events__security_result__about__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__security_result__about__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__observer__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
  }
}

view: udm_events__security_result__about__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__principal__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: udm_events__security_result__about__user_management_chain__email_addresses {
  dimension: udm_events__security_result__about__user_management_chain__email_addresses {
    type: string
    sql: udm_events__security_result__about__user_management_chain__email_addresses ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
  }
}

view: udm_events__security_result__about__process_ancestors__command_line_history {
  dimension: udm_events__security_result__about__process_ancestors__command_line_history {
    type: string
    sql: udm_events__security_result__about__process_ancestors__command_line_history ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
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

view: udm_events__intermediary__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user_management_chain__group_identifiers {
  dimension: udm_events__security_result__about__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__security_result__about__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__investigation__comments {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__investigation__comments {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
  }
}

view: udm_events__security_result__about__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
  }
}

view: udm_events__security_result__about__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__security_result__about__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__security_result__about__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain {
  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
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

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__security_result__about__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
  dimension: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    type: string
    sql: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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
