- dashboard: user_sign_in_overview
  title: User Sign In Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Sign Ins By Status
    name: Sign Ins By Status
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_pie
    fields: [udm_events_aggregates.action, udm_events_aggregates.count]
    sorts: [udm_events_aggregates.count desc]
    limit: 500
    value_labels: legend
    label_type: val
    inner_radius: 60
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_labels:
      ALLOW: Successful
      BLOCK: Failed
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Sign Ins by Status Over Time
    name: Sign Ins by Status Over Time
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_line
    fields: [udm_events_aggregates.action, udm_events_aggregates.count, udm_events_aggregates.event_hour_date]
    pivots: [udm_events_aggregates.action]
    fill_fields: [udm_events_aggregates.event_hour_date]
    sorts: [udm_events_aggregates.action 0, udm_events_aggregates.event_hour_date
        desc]
    limit: 500
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
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: ALLOW - udm_events_aggregates.count,
            id: ALLOW - udm_events_aggregates.count, name: Successful}, {axisId: BLOCK
              - udm_events_aggregates.count, id: BLOCK - udm_events_aggregates.count,
            name: Failed}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    hidden_series: []
    series_types: {}
    series_labels:
      ALLOW - udm_events_aggregates.count: Successful
      BLOCK - udm_events_aggregates.count: Failed
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 3
    col: 8
    width: 16
    height: 6
  - title: Top 10 Applications By Sign Ins
    name: Top 10 Applications By Sign Ins
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_pie
    fields: [udm_events_aggregates.target_application, udm_events_aggregates.count]
    filters:
      udm_events_aggregates.target_application: "-NULL"
    sorts: [udm_events_aggregates.count desc 0, udm_events_aggregates.target_application]
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 0cc9e709-0004-4166-adc2-c979c6a55ca0
      options:
        steps: 5
        reverse: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Top 10 Sign Ins By IP
    name: Top 10 Sign Ins By IP
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_pie
    fields: [udm_events_aggregates.count, udm_events_aggregates.principal_ip]
    filters:
      udm_events_aggregates.principal_ip: "-NULL"
    sorts: [udm_events_aggregates.count desc 0, udm_events_aggregates.principal_ip]
    limit: 10
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: val
    inner_radius: 60
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_labels:
      ALLOW: Successful
      BLOCK: Failed
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 21
    col: 0
    width: 8
    height: 7
  - name: Number of Failed Sign Ins
    type: text
    title_text: Number of Failed Sign Ins
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 12
    width: 5
    height: 3
  - name: Number of Successful Sign Ins
    type: text
    title_text: Number of Successful Sign Ins
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Number Of Successful Logins
    name: Number Of Successful Logins
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: single_value
    fields: [udm_events_aggregates.count]
    filters:
      udm_events_aggregates.action: '1'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    value_labels: legend
    label_type: val
    inner_radius: 60
    series_labels:
      ALLOW: Successful
      BLOCK: Failed
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    hidden_fields: []
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Number Of Failed Sign Ins
    name: Number Of Failed Sign Ins
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: single_value
    fields: [udm_events_aggregates.count]
    filters:
      udm_events_aggregates.action: '2'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    value_labels: legend
    label_type: val
    inner_radius: 60
    series_labels:
      ALLOW: Successful
      BLOCK: Failed
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 0
    col: 17
    width: 7
    height: 3
  - title: Sign Ins By Application
    name: Sign Ins By Application
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_grid
    fields: [udm_events_aggregates.target_application, udm_events_aggregates.count,
      udm_events_aggregates.action]
    pivots: [udm_events_aggregates.action]
    filters:
      udm_events_aggregates.target_application: "-EMPTY"
    sorts: [udm_events_aggregates.count desc 0, udm_events_aggregates.target_application,
      udm_events_aggregates.action]
    limit: 100
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
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      udm_events_aggregates.count: Events Count
      udm_events_aggregates.target_application: Application Name
      udm_events_aggregates.action: Result
    series_cell_visualizations:
      udm_events_aggregates.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    value_labels: legend
    label_type: labPer
    inner_radius: 60
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
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 9
    col: 8
    width: 16
    height: 6
  - title: Sign In Location Map
    name: Sign In Location Map
    model: block_google_chronicle_v2
    explore: user_login_source_geo_ip
    type: looker_map
    fields: [user_login_source_geo_ip.principal_ip, user_login_source_geo_ip.location,
      user_login_source_geo_ip.count]
    sorts: [user_login_source_geo_ip.count desc]
    limit: 5000
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 17.978733095556183
    map_longitude: 6.50390625
    map_zoom: 2
    map_marker_radius_max: 20
    defaults_version: 1
    listen:
      Time: user_login_source_geo_ip.time_filter
    row: 21
    col: 8
    width: 7
    height: 7
  - title: Top 10 Users by Sign In Status
    name: Top 10 Users by Sign In Status
    model: block_google_chronicle_v2
    explore: udm_events_aggregates
    type: looker_grid
    fields: [udm_events_aggregates.userid_for_drill, udm_events_aggregates.action,
      udm_events_aggregates.count, udm_events_aggregates.principal_ip]
    pivots: [udm_events_aggregates.action]
    filters:
      udm_events_aggregates.userid_for_drill: "-NULL"
    sorts: [udm_events_aggregates.action 0, udm_events_aggregates.count desc 1]
    limit: 30
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    series_labels:
      udm_events_aggregates.userid_for_drill: User Id
      udm_events_aggregates.principal_ip: Source IP
      udm_events_aggregates.count: Events Count
      udm_events_aggregates.action: Status
    series_cell_visualizations:
      udm_events_aggregates.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e, options: {steps: 5, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [udm_events_aggregates.count]},
      {type: equal to, value: !!null '', background_color: "#3EB0D5", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825},
        bold: false, italic: false, strikethrough: false, fields: []}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Time: udm_events_aggregates.event_hour_time
    row: 21
    col: 15
    width: 9
    height: 7
  - title: Sign Ins by Country
    name: Sign Ins by Country
    model: block_google_chronicle_v2
    explore: user_login_source_geo_ip
    type: looker_bar
    fields: [user_login_source_geo_ip.count, user_login_source_geo_ip.country_label]
    filters:
      user_login_source_geo_ip.country_label: "-NULL"
    sorts: [user_login_source_geo_ip.count desc 0, user_login_source_geo_ip.country_label]
    limit: 5000
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Events Count, orientation: bottom, series: [{axisId: user_login_source_geo_ip.count,
            id: user_login_source_geo_ip.count, name: User Login Source Geo IP}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Country
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 17.978733095556183
    map_longitude: 6.50390625
    map_zoom: 2
    map_marker_radius_max: 20
    defaults_version: 1
    listen:
      Time: user_login_source_geo_ip.time_filter
    row: 15
    col: 8
    width: 16
    height: 6
  - title: Top 10 Countries by Sign Ins
    name: Top 10 Countries by Sign Ins
    model: block_google_chronicle_v2
    explore: user_login_source_geo_ip
    type: looker_pie
    fields: [user_login_source_geo_ip.count, user_login_source_geo_ip.country_label]
    filters:
      user_login_source_geo_ip.country_label: "-NULL"
    sorts: [user_login_source_geo_ip.count desc 0, user_login_source_geo_ip.country_label]
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: ca5bc734-c8e2-489d-a00e-48c321885a14
      options:
        steps: 5
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 17.978733095556183
    map_longitude: 6.50390625
    map_zoom: 2
    map_marker_radius_max: 20
    defaults_version: 1
    series_types: {}
    listen:
      Time: user_login_source_geo_ip.time_filter
    row: 15
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
    explore: udm_events_aggregates
    listens_to_filters: []
    field: udm_events_aggregates.event_hour_time