- dashboard: user_lookup
  title: User Lookup
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Top 10 Event Types
    name: Top 10 Event Types
    model: block_google_chronicle
    explore: udm_events
    type: looker_grid
    fields: [udm_events.metadata_product_event_type_as_string, udm_events.count]
    sorts: [udm_events.count desc]
    limit: 30
    column_limit: 50
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round((${udm_events.count}/sum(${udm_events.count}))*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      udm_events.count: Events Count
      udm_events.metadata_product_event_type_as_string: Event Type
    series_cell_visualizations:
      percentage:
        is_active: true
        palette:
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_value_format:
      percentage: ''
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Event Type
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [udm_events.count]
    listen:
      User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    row: 0
    col: 15
    width: 9
    height: 7
  - name: Sign In Authentication Mechanism
    title: Sign In Authentication Mechanism
    merged_queries:
    - model: block_google_chronicle
      explore: udm_events
      type: looker_pie
      fields: [udm_events__extensions__auth.mechanism, udm_events.count]
      filters:
        udm_events__extensions__auth.mechanism: NOT NULL
        udm_events__principal__user.userid: ''
      sorts: [udm_events.count desc]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      value_labels: legend
      label_type: labPer
      series_types: {}
      defaults_version: 1
    - model: block_google_chronicle
      explore: udm_enum_value_to_name_mapping
      type: table
      fields: [udm_enum_value_to_name_mapping.enum_name, udm_enum_value_to_name_mapping.enum_value]
      filters:
        udm_enum_value_to_name_mapping.field_path: backstory.Authentication.Mechanism
      sorts: [udm_enum_value_to_name_mapping.enum_name]
      limit: 500
      dynamic_fields: [{table_calculation: auth_value, label: Auth Value, expression: '${udm_enum_value_to_name_mapping.enum_value}',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: auth_value
        source_field_name: udm_events__extensions__auth.mechanism
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    hidden_fields: [udm_enum_value_to_name_mapping.enum_value, udm_events__extensions__auth.mechanism]
    type: looker_pie
    series_types: {}
    listen:
    - User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    -
    row: 7
    col: 17
    width: 7
    height: 7
  - title: Sign Ins Over Time
    name: Sign Ins Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events.event_timestamp_date, udm_events.count, signin_type]
    pivots: [signin_type]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: '"USER_LOGIN"'
      udm_events__security_result.security_result_action_as_string: "-NULL"
    sorts: [udm_events.event_timestamp_date desc, signin_type]
    limit: 500
    column_limit: 50
    dynamic_fields: [{dimension: signin_type, label: Signin Type, expression: 'if(${udm_events__security_result.security_result_action_as_string}="ALLOW","Successful",if(${udm_events__security_result.security_result_action_as_string}="BLOCK","Failed","Unknown"))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events count, orientation: left, series: [{axisId: udm_events.count,
            id: ALLOW - udm_events.count, name: ALLOW}, {axisId: udm_events.count,
            id: BLOCK - udm_events.count, name: BLOCK}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_labels:
      udm_events__security_result.security_result_action_as_string: Signin Type
      udm_events.count: Sigin Count
      count_of_principaluseruserid: User Count
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      udm_events.count:
        is_active: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    listen:
      User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    row: 7
    col: 0
    width: 10
    height: 7
  - title: Sign In Activity
    name: Sign In Activity
    model: block_google_chronicle
    explore: udm_events
    type: looker_grid
    fields: [udm_events.asset, udm_events__security_result.security_result_action_as_string,
      udm_events.count, signin_type]
    filters:
      udm_events.metadata_product_event_type_as_string: '"USER_LOGIN"'
      udm_events__security_result.security_result_action_as_string: "-NULL"
    sorts: [udm_events.count desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{dimension: signin_type, label: Signin Type, expression: 'if(${udm_events__security_result.security_result_action_as_string}="ALLOW","Successful",if(${udm_events__security_result.security_result_action_as_string}="BLOCK","Failed","Unknown"))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      count_of_asset: Asset Count
      udm_events__security_result.security_result_action_as_string: Signin Type
      udm_events.count: Signin Count
      udm_events.asset: Asset
    series_cell_visualizations:
      udm_events.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: udm_events.count, name: UDM Events}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Signin Type
    series_types: {}
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: [udm_events__security_result.security_result_action_as_string]
    listen:
      User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    row: 7
    col: 10
    width: 7
    height: 7
  - title: File Activity
    name: File Activity
    model: block_google_chronicle
    explore: udm_events
    type: looker_column
    fields: [udm_events.count, udm_events.metadata_product_event_type_as_string, udm_events__security_result.security_result_action_as_string]
    pivots: [udm_events__security_result.security_result_action_as_string]
    filters:
      udm_events.metadata_product_event_type_as_string: FILE^_%
    sorts: [udm_events.count desc 0, udm_events.metadata_product_event_type_as_string,
      udm_events__security_result.security_result_action_as_string]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: udm_events.count, name: Udm Events}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Event Type
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '12'
    series_types: {}
    series_labels:
      udm_events__security_result.security_result_action_as_string___null - udm_events.count: None
    value_labels: legend
    label_type: labPer
    charts_across: 1
    show_null_points: true
    interpolation: linear
    inner_radius: 60
    custom_color_enabled: true
    show_single_value_title: true
    value_format: 0.000, "K"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    row: 14
    col: 13
    width: 11
    height: 7
  - title: File Activity Over Time
    name: File Activity Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events.count, udm_events.metadata_product_event_type_as_string, udm_events.event_timestamp_date]
    pivots: [udm_events.metadata_product_event_type_as_string]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: FILE^_%,-"FILE_OPEN"
    sorts: [udm_events.metadata_product_event_type_as_string 0, udm_events.event_timestamp_date
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: FILE_MODIFICATION - udm_events.count, name: FILE_MODIFICATION}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Time
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    value_format: 0.000, "K"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      User ID: udm_events__principal__user.userid
      Time: udm_events.event_timestamp_time
    row: 14
    col: 0
    width: 13
    height: 7
  - title: Events and Alerts Over Time
    name: Events and Alerts Over Time
    model: block_google_chronicle
    explore: user_rule_detections_with_udm_events
    type: looker_line
    fields: [user_rule_detections_with_udm_events.event_timestamp_date, sum_of_rule_detections_count,
      sum_of_udm_events_count]
    fill_fields: [user_rule_detections_with_udm_events.event_timestamp_date]
    sorts: [user_rule_detections_with_udm_events.event_timestamp_date desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_rule_detections_count, based_on: user_rule_detections_with_udm_events.rule_detections_count,
        expression: '', label: Sum of Rule Detections Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_udm_events_count, based_on: user_rule_detections_with_udm_events.udm_events_count,
        expression: '', label: Sum of Udm Events Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_rule_detections_count,
            id: sum_of_rule_detections_count, name: Sum of Rule Detections Count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: sum_of_udm_events_count, id: sum_of_udm_events_count, name: Sum
              of Udm Events Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      rule_matches_data.count: "#B32F37"
      udm_events.count: "#75E2E2"
    series_labels:
      sum_of_rule_detections_count: Alerts
      sum_of_udm_events_count: Events Count
    series_point_styles: {}
    defaults_version: 1
    listen:
      User ID: user_rule_detections_with_udm_events.user_name
      Time: user_rule_detections_with_udm_events.period_filter
    row: 0
    col: 0
    width: 15
    height: 7
  filters:
  - name: User ID
    title: User ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: block_google_chronicle
    explore: udm_events
    listens_to_filters: []
    field: udm_events__principal__user.userid
  - name: Time
    title: Time
    type: field_filter
    default_value: 1 weeks
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: block_google_chronicle
    explore: udm_events
    listens_to_filters: []
    field: udm_events.event_timestamp_time
