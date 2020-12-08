- dashboard: asset_lookup
  title: Asset Lookup
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Sign In Over Time
    name: Sign In Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events.event_timestamp_date, udm_events.count, signin_type]
    pivots: [signin_type]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: '"USER_LOGIN"'
      udm_events__security_result.security_result_action_as_string: "-NULL"
    sorts: [udm_events.event_timestamp_date desc, signin_type desc]
    limit: 500
    dynamic_fields: [{measure: count_of_principaluseruserid, based_on: udm_events__principal__user.userid,
        type: count_distinct, label: Count of principal.user.userid, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {dimension: signin_type, label: Signin
          Type, expression: 'if(${udm_events__security_result.security_result_action_as_string}="ALLOW","Successful",if(${udm_events__security_result.security_result_action_as_string}="BLOCK","Failed","Unknown"))',
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
    listen:
      Asset: udm_events.asset
      Time: udm_events.event_timestamp_time
    row: 6
    col: 9
    width: 15
    height: 6
  - title: Sign In Activity
    name: Sign In Activity
    model: block_google_chronicle
    explore: udm_events
    type: looker_grid
    fields: [udm_events__security_result.security_result_action_as_string, signin_type, udm_events.count,
      count_of_principaluseruserid]
    filters:
      udm_events.metadata_product_event_type_as_string: '"USER_LOGIN"'
      udm_events__security_result.security_result_action_as_string: "-NULL"
    sorts: [udm_events__security_result.security_result_action_as_string]
    limit: 100
    dynamic_fields: [{measure: count_of_principaluseruserid, based_on: udm_events__principal__user.userid,
        type: count_distinct, label: Count of principal.user.userid, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {dimension: signin_type, label: Signin
          Type, expression: 'if(${udm_events__security_result.security_result_action_as_string}="ALLOW","Successful",if(${udm_events__security_result.security_result_action_as_string}="BLOCK","Failed","Unknown"))',
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
      udm_events__security_result.security_result_action_as_string: Signin Type
      udm_events.count: Signin Count
      count_of_principaluseruserid: User Count
    series_cell_visualizations:
      udm_events.count:
        is_active: false
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [udm_events__security_result.security_result_action_as_string]
    listen:
      Asset: udm_events.asset
      Time: udm_events.event_timestamp_time
    row: 6
    col: 0
    width: 9
    height: 6
  - title: Process Execution Over Time
    name: Process Execution Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events.event_timestamp_date, udm_events.count, udm_events__principal__process__file.full_path]
    pivots: [udm_events__principal__process__file.full_path]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: '"PROCESS_LAUNCH"'
    sorts: [udm_events.event_timestamp_date desc, udm_events__principal__process__file.full_path]
    limit: 500
    column_limit: 10
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: 1000 - udm_events.count, name: '1000'}, {axisId: udm_events.count,
            id: 1004 - udm_events.count, name: '1004'}, {axisId: udm_events.count,
            id: 1008 - udm_events.count, name: '1008'}, {axisId: udm_events.count,
            id: 104 - udm_events.count, name: '104'}, {axisId: udm_events.count, id: 1064
              - udm_events.count, name: '1064'}, {axisId: udm_events.count, id: 1072
              - udm_events.count, name: '1072'}, {axisId: udm_events.count, id: 1076
              - udm_events.count, name: '1076'}, {axisId: udm_events.count, id: 1084
              - udm_events.count, name: '1084'}, {axisId: udm_events.count, id: 1088
              - udm_events.count, name: '1088'}, {axisId: udm_events.count, id: 1096
              - udm_events.count, name: '1096'}, {axisId: udm_events.count, id: 1104
              - udm_events.count, name: '1104'}, {axisId: udm_events.count, id: 1128
              - udm_events.count, name: '1128'}, {axisId: udm_events.count, id: 1144
              - udm_events.count, name: '1144'}, {axisId: udm_events.count, id: 1148
              - udm_events.count, name: '1148'}, {axisId: udm_events.count, id: 1152
              - udm_events.count, name: '1152'}, {axisId: udm_events.count, id: 1156
              - udm_events.count, name: '1156'}, {axisId: udm_events.count, id: 1160
              - udm_events.count, name: '1160'}, {axisId: udm_events.count, id: 1176
              - udm_events.count, name: '1176'}, {axisId: udm_events.count, id: 1188
              - udm_events.count, name: '1188'}, {axisId: udm_events.count, id: 1208
              - udm_events.count, name: '1208'}, {axisId: udm_events.count, id: 1220
              - udm_events.count, name: '1220'}, {axisId: udm_events.count, id: 1240
              - udm_events.count, name: '1240'}, {axisId: udm_events.count, id: 1244
              - udm_events.count, name: '1244'}, {axisId: udm_events.count, id: 1272
              - udm_events.count, name: '1272'}, {axisId: udm_events.count, id: 1276
              - udm_events.count, name: '1276'}, {axisId: udm_events.count, id: 128
              - udm_events.count, name: '128'}, {axisId: udm_events.count, id: 1284
              - udm_events.count, name: '1284'}, {axisId: udm_events.count, id: 1292
              - udm_events.count, name: '1292'}, {axisId: udm_events.count, id: 1316
              - udm_events.count, name: '1316'}, {axisId: udm_events.count, id: 1324
              - udm_events.count, name: '1324'}, {axisId: udm_events.count, id: 1344
              - udm_events.count, name: '1344'}, {axisId: udm_events.count, id: 1348
              - udm_events.count, name: '1348'}, {axisId: udm_events.count, id: 1352
              - udm_events.count, name: '1352'}, {axisId: udm_events.count, id: 1356
              - udm_events.count, name: '1356'}, {axisId: udm_events.count, id: 1368
              - udm_events.count, name: '1368'}, {axisId: udm_events.count, id: 1396
              - udm_events.count, name: '1396'}, {axisId: udm_events.count, id: 1400
              - udm_events.count, name: '1400'}, {axisId: udm_events.count, id: 1416
              - udm_events.count, name: '1416'}, {axisId: udm_events.count, id: 1420
              - udm_events.count, name: '1420'}, {axisId: udm_events.count, id: 1440
              - udm_events.count, name: '1440'}, {axisId: udm_events.count, id: 1448
              - udm_events.count, name: '1448'}, {axisId: udm_events.count, id: 1488
              - udm_events.count, name: '1488'}, {axisId: udm_events.count, id: 1496
              - udm_events.count, name: '1496'}, {axisId: udm_events.count, id: 1512
              - udm_events.count, name: '1512'}, {axisId: udm_events.count, id: 1528
              - udm_events.count, name: '1528'}, {axisId: udm_events.count, id: 1532
              - udm_events.count, name: '1532'}, {axisId: udm_events.count, id: 1540
              - udm_events.count, name: '1540'}, {axisId: udm_events.count, id: 1564
              - udm_events.count, name: '1564'}, {axisId: udm_events.count, id: 1576
              - udm_events.count, name: '1576'}, {axisId: udm_events.count, id: 1584
              - udm_events.count, name: '1584'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '2'
    hide_legend: false
    series_types: {}
    defaults_version: 1
    listen:
      Asset: udm_events.asset
      Time: udm_events.event_timestamp_time
    row: 12
    col: 9
    width: 15
    height: 9
  - title: Top 10 Destination Countries by Traffic
    name: Top 10 Destination Countries by Traffic
    model: block_google_chronicle
    explore: destination_geo_ip
    type: looker_pie
    fields: [destination_geo_ip.country_label, destination_geo_ip.count]
    filters:
      destination_geo_ip.country_label: "-NULL"
    sorts: [destination_geo_ip.count desc]
    limit: 10
    query_timezone: America/Los_Angeles
    value_labels: none
    label_type: labPer
    inner_radius: 60
    series_labels:
      destination_geo_ip.count: Events Count
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: destination_geo_ip.count,
            id: destination_geo_ip.count, name: Events Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Country
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    x_axis_label_rotation: 0
    defaults_version: 1
    listen:
      Asset: destination_geo_ip.asset
      Time: destination_geo_ip.period_filter
    row: 27
    col: 0
    width: 9
    height: 9
  - title: Asset
    name: Asset
    model: block_google_chronicle
    explore: udm_events
    type: single_value
    fields: [udm_events.asset]
    filters: {}
    sorts: [udm_events.asset]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: 'null', value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Asset: udm_events.asset
      Time: udm_events.event_timestamp_time
    row: 0
    col: 0
    width: 9
    height: 6
  - title: Traffic to Destination Countries Over Time
    name: Traffic to Destination Countries Over Time
    model: block_google_chronicle
    explore: destination_geo_ip
    type: looker_line
    fields: [destination_geo_ip.country_label, destination_geo_ip.count,
      destination_geo_ip.event_timestamp_date]
    pivots: [destination_geo_ip.country_label]
    fill_fields: [destination_geo_ip.event_timestamp_date]
    filters:
      destination_geo_ip.country_label: "-NULL"
    sorts: [destination_geo_ip.count desc 0, destination_geo_ip.country_label]
    limit: 500
    column_limit: 20
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: destination_geo_ip.count,
            id: Argentina - destination_geo_ip.count, name: Argentina},
          {axisId: destination_geo_ip.count, id: Armenia - destination_geo_ip.count,
            name: Armenia}, {axisId: destination_geo_ip.count, id: Australia
              - destination_geo_ip.count, name: Australia}, {axisId: destination_geo_ip.count,
            id: Austria - destination_geo_ip.count, name: Austria}, {axisId: destination_geo_ip.count,
            id: Azerbaijan - destination_geo_ip.count, name: Azerbaijan},
          {axisId: destination_geo_ip.count, id: Bangladesh - destination_geo_ip.count,
            name: Bangladesh}, {axisId: destination_geo_ip.count, id: Bolivia
              - destination_geo_ip.count, name: Bolivia}, {axisId: destination_geo_ip.count,
            id: Brazil - destination_geo_ip.count, name: Brazil}, {axisId: destination_geo_ip.count,
            id: Bulgaria - destination_geo_ip.count, name: Bulgaria}, {
            axisId: destination_geo_ip.count, id: Canada - destination_geo_ip.count,
            name: Canada}, {axisId: destination_geo_ip.count, id: Chile
              - destination_geo_ip.count, name: Chile}, {axisId: destination_geo_ip.count,
            id: China - destination_geo_ip.count, name: China}, {axisId: destination_geo_ip.count,
            id: Colombia - destination_geo_ip.count, name: Colombia}, {
            axisId: destination_geo_ip.count, id: Costa Rica - destination_geo_ip.count,
            name: Costa Rica}, {axisId: destination_geo_ip.count, id: Czech
              Republic - destination_geo_ip.count, name: Czech Republic},
          {axisId: destination_geo_ip.count, id: Denmark - destination_geo_ip.count,
            name: Denmark}, {axisId: destination_geo_ip.count, id: Ecuador
              - destination_geo_ip.count, name: Ecuador}, {axisId: destination_geo_ip.count,
            id: Egypt - destination_geo_ip.count, name: Egypt}, {axisId: destination_geo_ip.count,
            id: Europe - destination_geo_ip.count, name: Europe}, {axisId: destination_geo_ip.count,
            id: Finland - destination_geo_ip.count, name: Finland}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      destination_geo_ip.count: Events Count
    x_axis_label_rotation: 0
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Asset: destination_geo_ip.asset
      Time: destination_geo_ip.period_filter
    row: 27
    col: 9
    width: 15
    height: 9
  - title: Top 10 Processes
    name: Top 10 Processes
    model: block_google_chronicle
    explore: udm_events
    type: looker_pie
    fields: [udm_events.count, udm_events__principal__process__file.full_path]
    filters:
      udm_events.metadata_product_event_type_as_string: '"PROCESS_LAUNCH"'
    sorts: [udm_events.count desc]
    limit: 10
    column_limit: 10
    query_timezone: America/Los_Angeles
    value_labels: none
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: 1000 - udm_events.count, name: '1000'}, {axisId: udm_events.count,
            id: 1004 - udm_events.count, name: '1004'}, {axisId: udm_events.count,
            id: 1008 - udm_events.count, name: '1008'}, {axisId: udm_events.count,
            id: 104 - udm_events.count, name: '104'}, {axisId: udm_events.count, id: 1064
              - udm_events.count, name: '1064'}, {axisId: udm_events.count, id: 1072
              - udm_events.count, name: '1072'}, {axisId: udm_events.count, id: 1076
              - udm_events.count, name: '1076'}, {axisId: udm_events.count, id: 1084
              - udm_events.count, name: '1084'}, {axisId: udm_events.count, id: 1088
              - udm_events.count, name: '1088'}, {axisId: udm_events.count, id: 1096
              - udm_events.count, name: '1096'}, {axisId: udm_events.count, id: 1104
              - udm_events.count, name: '1104'}, {axisId: udm_events.count, id: 1128
              - udm_events.count, name: '1128'}, {axisId: udm_events.count, id: 1144
              - udm_events.count, name: '1144'}, {axisId: udm_events.count, id: 1148
              - udm_events.count, name: '1148'}, {axisId: udm_events.count, id: 1152
              - udm_events.count, name: '1152'}, {axisId: udm_events.count, id: 1156
              - udm_events.count, name: '1156'}, {axisId: udm_events.count, id: 1160
              - udm_events.count, name: '1160'}, {axisId: udm_events.count, id: 1176
              - udm_events.count, name: '1176'}, {axisId: udm_events.count, id: 1188
              - udm_events.count, name: '1188'}, {axisId: udm_events.count, id: 1208
              - udm_events.count, name: '1208'}, {axisId: udm_events.count, id: 1220
              - udm_events.count, name: '1220'}, {axisId: udm_events.count, id: 1240
              - udm_events.count, name: '1240'}, {axisId: udm_events.count, id: 1244
              - udm_events.count, name: '1244'}, {axisId: udm_events.count, id: 1272
              - udm_events.count, name: '1272'}, {axisId: udm_events.count, id: 1276
              - udm_events.count, name: '1276'}, {axisId: udm_events.count, id: 128
              - udm_events.count, name: '128'}, {axisId: udm_events.count, id: 1284
              - udm_events.count, name: '1284'}, {axisId: udm_events.count, id: 1292
              - udm_events.count, name: '1292'}, {axisId: udm_events.count, id: 1316
              - udm_events.count, name: '1316'}, {axisId: udm_events.count, id: 1324
              - udm_events.count, name: '1324'}, {axisId: udm_events.count, id: 1344
              - udm_events.count, name: '1344'}, {axisId: udm_events.count, id: 1348
              - udm_events.count, name: '1348'}, {axisId: udm_events.count, id: 1352
              - udm_events.count, name: '1352'}, {axisId: udm_events.count, id: 1356
              - udm_events.count, name: '1356'}, {axisId: udm_events.count, id: 1368
              - udm_events.count, name: '1368'}, {axisId: udm_events.count, id: 1396
              - udm_events.count, name: '1396'}, {axisId: udm_events.count, id: 1400
              - udm_events.count, name: '1400'}, {axisId: udm_events.count, id: 1416
              - udm_events.count, name: '1416'}, {axisId: udm_events.count, id: 1420
              - udm_events.count, name: '1420'}, {axisId: udm_events.count, id: 1440
              - udm_events.count, name: '1440'}, {axisId: udm_events.count, id: 1448
              - udm_events.count, name: '1448'}, {axisId: udm_events.count, id: 1488
              - udm_events.count, name: '1488'}, {axisId: udm_events.count, id: 1496
              - udm_events.count, name: '1496'}, {axisId: udm_events.count, id: 1512
              - udm_events.count, name: '1512'}, {axisId: udm_events.count, id: 1528
              - udm_events.count, name: '1528'}, {axisId: udm_events.count, id: 1532
              - udm_events.count, name: '1532'}, {axisId: udm_events.count, id: 1540
              - udm_events.count, name: '1540'}, {axisId: udm_events.count, id: 1564
              - udm_events.count, name: '1564'}, {axisId: udm_events.count, id: 1576
              - udm_events.count, name: '1576'}, {axisId: udm_events.count, id: 1584
              - udm_events.count, name: '1584'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '2'
    hide_legend: false
    series_types: {}
    defaults_version: 1
    listen:
      Asset: udm_events.asset
      Time: udm_events.event_timestamp_time
    row: 12
    col: 0
    width: 9
    height: 9
  - title: Events and Alerts Over Time
    name: Events and Alerts Over Time
    model: block_google_chronicle
    explore: asset_rule_detections_with_udm_events
    type: looker_line
    fields: [asset_rule_detections_with_udm_events.event_timestamp_date, sum_of_udm_events_count,
      sum_of_rule_detections_count]
    fill_fields: [asset_rule_detections_with_udm_events.event_timestamp_date]
    sorts: [asset_rule_detections_with_udm_events.event_timestamp_date desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_rule_detections_count, based_on: asset_rule_detections_with_udm_events.rule_detections_count,
        expression: '', label: Sum of Rule Matches Data Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_udm_events_count, based_on: asset_rule_detections_with_udm_events.udm_events_count,
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
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: sum_of_udm_events_count,
            id: sum_of_udm_events_count, name: Sum of Udm Events Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: sum_of_rule_detections_count,
            id: sum_of_rule_detections_count, name: Sum of Rule Matches Data Count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types:
      sum_of_udm_events_count: column
    series_colors:
      sum_of_udm_events_count: "#75E2E2"
      sum_of_rule_detections_count: "#B32F37"
    series_labels:
      sum_of_udm_events_count: Events Count
      sum_of_rule_detections_count: Alerts
    defaults_version: 1
    listen:
      Asset: asset_rule_detections_with_udm_events.asset
      Time: asset_rule_detections_with_udm_events.period_filter
    row: 0
    col: 9
    width: 15
    height: 6
  - title: Top 10 IOC Matches by Category
    name: Top 10 IOC Matches by Category
    model: block_google_chronicle
    explore: ioc_matches
    type: looker_pie
    fields: [ioc_matches.category, ioc_matches__asset.count]
    filters:
      ioc_matches.category: "-NULL"
    sorts: [ioc_matches__asset.count desc]
    limit: 10
    query_timezone: America/Los_Angeles
    value_labels: none
    label_type: labPer
    inner_radius: 60
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Asset: ioc_matches.asset_hostname
      Time: ioc_matches__ioc_ingest_time.event_timestamp_time
    row: 21
    col: 0
    width: 9
    height: 6
  - title: IOC Matches by Category Over Time
    name: IOC Matches by Category Over Time
    model: block_google_chronicle
    explore: ioc_matches
    type: looker_line
    fields: [ioc_matches.category, ioc_matches__asset.count, ioc_matches__ioc_ingest_time.event_timestamp_time]
    pivots: [ioc_matches.category]
    filters:
      ioc_matches.category: "-NULL"
    sorts: [ioc_matches__asset.count desc 0, ioc_matches.category]
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
    y_axes: [{label: Record Count, orientation: left, series: [{axisId: ioc_matches__asset.count,
            id: Blocked - ioc_matches__asset.count, name: Blocked}, {axisId: ioc_matches__asset.count,
            id: BlockedObject - ioc_matches__asset.count, name: BlockedObject}, {
            axisId: ioc_matches__asset.count, id: Drop site for logs or stolen credentials
              - ioc_matches__asset.count, name: Drop site for logs or stolen credentials},
          {axisId: ioc_matches__asset.count, id: Malware Command and Control Server
              - ioc_matches__asset.count, name: Malware Command and Control Server},
          {axisId: ioc_matches__asset.count, id: Observed serving executables - ioc_matches__asset.count,
            name: Observed serving executables}, {axisId: ioc_matches__asset.count,
            id: Phishing - ioc_matches__asset.count, name: Phishing}, {axisId: ioc_matches__asset.count,
            id: Target of a DDoS - ioc_matches__asset.count, name: Target of a DDoS},
          {axisId: ioc_matches__asset.count, id: Unwanted - ioc_matches__asset.count,
            name: Unwanted}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    value_labels: none
    label_type: labPer
    inner_radius: 60
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
      Asset: ioc_matches.asset_hostname
      Time: ioc_matches__ioc_ingest_time.event_timestamp_time
    row: 21
    col: 9
    width: 15
    height: 6
  filters:
  - name: Asset
    title: Asset
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: block_google_chronicle
    explore: udm_events
    listens_to_filters: []
    field: udm_events.asset
  - name: Time
    title: Time
    type: field_filter
    default_value: 1 week
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
