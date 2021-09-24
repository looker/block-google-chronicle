include: "/views/udm_enum_value_to_name_mapping.view.lkml"

view: enum {
  dimension:  enum_value {
    type: number
    sql: ${TABLE}.enum_value ;;
    hidden: yes
  }

  dimension:  enum_name {
    type: string
    sql: ${TABLE}.enum_name ;;
    hidden: yes
  }
}

view: enum__backstory__asset__asset_type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Asset.AssetType" ;;
  }
}

view: enum__backstory__asset__deployment_status {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Asset.DeploymentStatus" ;;
  }
}

view: enum__backstory__authentication__authentication_status {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Authentication.AuthenticationStatus" ;;
  }
}

view: enum__backstory__authentication__auth_type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Authentication.AuthType" ;;
  }
}

view: enum__backstory__authentication__mechanism {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Authentication.Mechanism" ;;
  }
}

view: enum__backstory__cloud__cloud_environment {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Cloud.CloudEnvironment" ;;
  }
}

view: enum__backstory__dhcp__message_type {
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Dhcp.MessageType" ;;
  }
}

view: enum__backstory__dhcp__op_code {
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Dhcp.OpCode" ;;
  }
}

view: enum__backstory__id__namespace {
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Id.Namespace" ;;
  }
}

view: enum__backstory__metadata__event_type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Metadata.EventType" ;;
  }
}

view: enum__backstory__network__application_protocol {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Network.ApplicationProtocol" ;;
  }
}

view: enum__backstory__network__direction {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Network.Direction" ;;
  }
}


view: enum__backstory__network__ip_protocol {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Network.IpProtocol" ;;
  }
}

view: enum__backstory__noun__platform {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Noun.Platform" ;;
  }
}

view: enum__backstory__permission__permission_type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Permission.PermissionType" ;;
  }
}

view: enum__backstory__reputation {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Reputation" ;;
  }
}

view: enum__backstory__resource__resource_type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Resource.ResourceType" ;;
  }
}

view: enum__backstory__role__type {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Role.Type" ;;
  }
}

view: enum__backstory__security_result__action {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.Action" ;;
  }
}

view: enum__backstory__security_result__alert_state {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.AlertState" ;;
  }
}

view: enum__backstory__security_result__product_confidence {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.ProductConfidence" ;;
  }
}

view: enum__backstory__security_result__product_priority {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.ProductPriority" ;;
  }
}

view: enum__backstory__security_result__product_severity {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.ProductSeverity" ;;
  }
}

view: enum__backstory__security_result__security_category {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.SecurityCategory" ;;
  }
}

view: enum__backstory__security_result__threat_status {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.SecurityResult.ThreatStatus" ;;
  }
}

view: enum__backstory__status {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Status" ;;
  }
}

view: enum__backstory__user__role {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.User.Role" ;;
  }
}

view: enum__backstory__verdict {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Verdict" ;;
  }
}

view: enum__backstory__vulnerability__severity {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "backstory.Vulnerability.Severity" ;;
  }
}

view: enum__google__protobuf__null_value {
  extends: [enum]
  derived_table: {
    sql: SELECT * FROM `udm_enum_value_to_name_mapping` WHERE field_path = "google.protobuf.NullValue" ;;
  }
}
