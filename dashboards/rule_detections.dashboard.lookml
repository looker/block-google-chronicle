- dashboard: rule_detections
  title: Rule Detections
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Rule Detections Over Time
    name: Rule Detections Over Time
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_line
    fields: [rule_detections.count, rule_detections.event_timestamp_week]
    fill_fields: [rule_detections.event_timestamp_week]
    sorts: [ule_detections.event_timestamp_week desc]
    limit: 500
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
    y_axes: [{label: Rule Detections, orientation: left, series: [{axisId: rule_detections.count,
            id: rule_detections.count, name: Rule Detections}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Time: rule_detections.event_timestamp_time
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Rule Detections by Severity Over Time
    name: Rule Detections by Severity Over Time
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_area
    fields: [rule_detections.event_timestamp_date,
      rule_detections.count, rule_detections.severity]
    pivots: [rule_detections.severity]
    filters:
      rule_detections.severity: "-NULL,-EMPTY"
    sorts: [rule_detections.event_timestamp_date desc,
      rule_detections.severity 0]
    limit: 500
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: Rule Detections, orientation: left, series: [{axisId: rule_detections.count,
            id: High - rule_detections.count, name: High}, {axisId: rule_detections.count,
            id: Info - rule_detections.count, name: Info}, {axisId: rule_detections.count,
            id: Medium - rule_detections.count, name: Medium}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Time: rule_detections.event_timestamp_time
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Rule Detections by Severity
    name: Rule Detections by Severity
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_pie
    fields: [rule_detections.count, rule_detections.severity]
    filters:
      rule_detections.severity: "-NULL,-EMPTY"
    sorts: [rule_detections.severity 0]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
        reverse: false
    series_colors: {}
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time: rule_detections.event_timestamp_time
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Top 10 Rule Names by Detections
    name: Top 10 Rule Names by Detections
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_grid
    fields: [rule_detections.count, rule_detections.rule_name]
    sorts: [rule_detections.count desc]
    limit: 30
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    y_axes: [{label: Rule Detection  Count, orientation: bottom, series: [{axisId: rule_detections.count,
            id: rule_detections.count, name: Rule Matches Data}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    listen:
      Time: rule_detections.event_timestamp_time
    row: 6
    col: 0
    width: 11
    height: 6
  - title: Rule Detections by Name Over Time
    name: Rule Detections by Name Over Time
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_column
    fields: [rule_detections.count, rule_detections.rule_name, rule_detections.event_timestamp_date]
    pivots: [rule_detections.rule_name]
    fill_fields: [rule_detections.event_timestamp_date]
    sorts: [rule_detections.count desc 0, rule_detections.rule_name desc, rule_detections.event_timestamp_date
        desc]
    limit: 500
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
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: Rule Detections, orientation: left, series: [{axisId: WojasonDailyDetectionQuotaDevTest
              - ru_95fe0f44-122c-459f-a51a-0c95cffd3f3b - rule_detections.count, id: WojasonDailyDetectionQuotaDevTest
              - ru_95fe0f44-122c-459f-a51a-0c95cffd3f3b - rule_detections.count, name: WojasonDailyDetectionQuotaDevTest},
          {axisId: testConsistentTimeRangeLiveWorksEnabled_SingleEvent - ru_caedfdcb-3312-4b7b-8567-848e1f1f9fba
              - rule_detections.count, id: testConsistentTimeRangeLiveWorksEnabled_SingleEvent
              - ru_caedfdcb-3312-4b7b-8567-848e1f1f9fba - rule_detections.count, name: testConsistentTimeRangeLiveWorksEnabled_SingleEvent},
          {axisId: testConsistentTimeRangeLiveWorksEnabled_MultiEvent - ru_ad2a5f8d-743e-4aef-a9a7-4cbd3f670f10
              - rule_detections.count, id: testConsistentTimeRangeLiveWorksEnabled_MultiEvent
              - ru_ad2a5f8d-743e-4aef-a9a7-4cbd3f670f10 - rule_detections.count, name: testConsistentTimeRangeLiveWorksEnabled_MultiEvent},
          {axisId: RegexTargetHostname - ru_7d9ce84b-4319-45a9-bf40-08b6c32e0d4c -
              rule_detections.count, id: RegexTargetHostname - ru_7d9ce84b-4319-45a9-bf40-08b6c32e0d4c
              - rule_detections.count, name: RegexTargetHostname}, {axisId: RegexTargetHostname
              - ru_7e0099b9-96b1-486d-8876-f78748fd6a1a - rule_detections.count, id: RegexTargetHostname
              - ru_7e0099b9-96b1-486d-8876-f78748fd6a1a - rule_detections.count, name: RegexTargetHostname},
          {axisId: RegexTargetHostname - ru_7f622f4c-b87d-4724-a7a0-0a265d0e71f9 -
              rule_detections.count, id: RegexTargetHostname - ru_7f622f4c-b87d-4724-a7a0-0a265d0e71f9
              - rule_detections.count, name: RegexTargetHostname}, {axisId: RegexTargetHostname
              - ru_93cdd742-aefc-4567-84b3-c0d18368d5ec - rule_detections.count, id: RegexTargetHostname
              - ru_93cdd742-aefc-4567-84b3-c0d18368d5ec - rule_detections.count, name: RegexTargetHostname},
          {axisId: RegexTargetHostname - ru_9edaec90-6c20-49b7-9659-c2eb5acb3ac1 -
              rule_detections.count, id: RegexTargetHostname - ru_9edaec90-6c20-49b7-9659-c2eb5acb3ac1
              - rule_detections.count, name: RegexTargetHostname}, {axisId: RegexTargetHostname
              - ru_ab812ad0-922a-44c8-b8c6-505ed51628ce - rule_detections.count, id: RegexTargetHostname
              - ru_ab812ad0-922a-44c8-b8c6-505ed51628ce - rule_detections.count, name: RegexTargetHostname},
          {axisId: LotsOfDNS - ru_ab337c04-7ebc-4bdc-b6df-3186e63b897d - rule_detections.count,
            id: LotsOfDNS - ru_ab337c04-7ebc-4bdc-b6df-3186e63b897d - rule_detections.count,
            name: LotsOfDNS}, {axisId: google_not_google_com - ru_8e9e2d75-0a15-4d09-8d26-704039940d75
              - rule_detections.count, id: google_not_google_com - ru_8e9e2d75-0a15-4d09-8d26-704039940d75
              - rule_detections.count, name: google_not_google_com}, {axisId: abu_nx_domain
              - ru_972100f0-36f8-4d57-b88b-b980e2f48b41 - rule_detections.count, id: abu_nx_domain
              - ru_972100f0-36f8-4d57-b88b-b980e2f48b41 - rule_detections.count, name: abu_nx_domain},
          {axisId: abu_dns_not_google_not_ms - ru_2fc72958-b76e-4b84-9693-b51440a206ac
              - rule_detections.count, id: abu_dns_not_google_not_ms - ru_2fc72958-b76e-4b84-9693-b51440a206ac
              - rule_detections.count, name: abu_dns_not_google_not_ms}, {axisId: abu_asset_aliasing
              - ru_e28942e2-2191-449e-831e-881975fa0e00 - rule_detections.count, id: abu_asset_aliasing
              - ru_e28942e2-2191-449e-831e-881975fa0e00 - rule_detections.count, name: abu_asset_aliasing}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    listen:
      Time: rule_detections.event_timestamp_time
    row: 6
    col: 11
    width: 13
    height: 6
  - title: Top 10  IPs by Rule Detections
    name: Top 10  IPs by Rule Detections
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_grid
    fields: [rule_detections__detection__assets.asset_ip_address, rule_detections.count]
    sorts: [rule_detections.count desc]
    limit: 30
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
      rule_detections.count: Rule Detections
    series_cell_visualizations:
      rule_detections.count:
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
    y_axes: [{label: Rule Detection  Count, orientation: bottom, series: [{axisId: rule_detections.count,
            id: rule_detections.count, name: Rule Matches Data}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    series_types: {}
    defaults_version: 1
    listen:
      Time: rule_detections.event_timestamp_time
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Top 10 Asset Names by Rule Detections
    name: Top 10 Asset Names by Rule Detections
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_grid
    fields: [rule_detections__detection__assets.hostname, rule_detections.count]
    sorts: [rule_detections.count desc]
    limit: 30
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
      rule_detections__detection__assets.hostname: Hostname
      rule_detections.count: Rule Detections
    series_cell_visualizations:
      rule_detections.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    truncate_column_names: false
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
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time: rule_detections.event_timestamp_time
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Top 10 Users by Rule Detections
    name: Top 10 Users by Rule Detections
    model: block_google_chronicle_v2
    explore: rule_detections
    type: looker_grid
    fields: [rule_detections__detection__users.user_name, rule_detections.count]
    sorts: [rule_detections.count desc]
    limit: 30
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
      rule_detections__detection__users.user_name: User Name
      rule_detections.count: Rule Detections
    series_cell_visualizations:
      rule_detections.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    listen:
      Time: rule_detections.event_timestamp_time
    row: 12
    col: 0
    width: 8
    height: 6
  filters:
  - name: Time
    title: Time
    type: field_filter
    default_value: 7 days
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: block_google_chronicle_v2
    explore: rule_detections
    listens_to_filters: []
    field: rule_detections.event_timestamp_time