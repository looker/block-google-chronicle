- dashboard: ioc_matches
  title: IOC Matches
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: IOC Matches Over Time by Category
    name: IOC Matches Over Time by Category
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_line
    fields: [ioc_matches.count, ioc_matches.event_timestamp_time,
      ioc_matches.category]
    pivots: [ioc_matches.category]
    sorts: [ioc_matches.count desc 0, ioc_matches.category]
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
    y_axes: [{label: Record Count, orientation: left, series: [{axisId: ioc_matches.count,
            id: Abused or free TLD Related - ioc_matches.count, name: Abused
              or free TLD Related}, {axisId: ioc_matches.count, id: Bitcoin Mining
              and related - ioc_matches.count, name: Bitcoin Mining and related},
          {axisId: ioc_matches.count, id: DDoS Source - ioc_matches.count,
            name: DDoS Source}, {axisId: ioc_matches.count, id: Domain or IP
              Related to a Dynamic DNS Entry or Request - ioc_matches.count,
            name: Domain or IP Related to a Dynamic DNS Entry or Request}, {axisId: ioc_matches.count,
            id: Driveby Source - ioc_matches.count, name: Driveby Source}, {
            axisId: ioc_matches.count, id: Drop site for logs or stolen credentials
              - ioc_matches.count, name: Drop site for logs or stolen credentials},
          {axisId: ioc_matches.count, id: GoToMyPC and similar remote access
              services - ioc_matches.count, name: GoToMyPC and similar remote
              access services}, {axisId: ioc_matches.count, id: Host Performing
              Scanning - ioc_matches.count, name: Host Performing Scanning},
          {axisId: ioc_matches.count, id: IP Check Services - ioc_matches.count,
            name: IP Check Services}, {axisId: ioc_matches.count, id: Known compromised
              or Hostile - ioc_matches.count, name: Known compromised or Hostile},
          {axisId: ioc_matches.count, id: Known Good Public Utility - ioc_matches.count,
            name: Known Good Public Utility}, {axisId: ioc_matches.count, id: Known
              Infected Bot - ioc_matches.count, name: Known Infected Bot}, {
            axisId: ioc_matches.count, id: Known Spam Source - ioc_matches.count,
            name: Known Spam Source}, {axisId: ioc_matches.count, id: Malware
              Command and Control Server - ioc_matches.count, name: Malware Command
              and Control Server}, {axisId: ioc_matches.count, id: Observed serving
              executables - ioc_matches.count, name: Observed serving executables},
          {axisId: ioc_matches.count, id: P2P Node - ioc_matches.count,
            name: P2P Node}, {axisId: ioc_matches.count, id: POLICY Chat Server
              - ioc_matches.count, name: POLICY Chat Server}, {axisId: ioc_matches.count,
            id: POLICY Tor Node - ioc_matches.count, name: POLICY Tor Node},
          {axisId: ioc_matches.count, id: Proxy Host - ioc_matches.count,
            name: Proxy Host}, {axisId: ioc_matches.count, id: Questionable Gaming
              Site - ioc_matches.count, name: Questionable Gaming Site}, {axisId: ioc_matches.count,
            id: Self Signed SSL or other suspicious encryption - ioc_matches.count,
            name: Self Signed SSL or other suspicious encryption}, {axisId: ioc_matches.count,
            id: Spyware Reporting Server - ioc_matches.count, name: Spyware Reporting
              Server}, {axisId: ioc_matches.count, id: SSH or other brute forcer
              - ioc_matches.count, name: SSH or other brute forcer}, {axisId: ioc_matches.count,
            id: Target of a DDoS - ioc_matches.count, name: Target of a DDoS},
          {axisId: ioc_matches.count, id: Undesirable but not illegal - ioc_matches.count,
            name: Undesirable but not illegal}, {axisId: ioc_matches.count, id: Verizon-CDN-Malicious-Activity
              - ioc_matches.count, name: Verizon-CDN-Malicious-Activity}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Top 10 IOC Matches by Category, Type and Count
    name: Top 10 IOC Matches by Category, Type and Count
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_grid
    fields: [ioc_matches.count, ioc_matches.category, ioc_matches.ioc_type]
    sorts: [ioc_matches.count desc, ioc_matches.category]
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
      ioc_matches.count: Record Count
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
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 14
    col: 0
    width: 8
    height: 6
  - title: Top 10 IOC Values
    name: Top 10 IOC Values
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_grid
    fields: [ioc_matches.count, ioc_matches.ioc_value]
    sorts: [ioc_matches.count desc]
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
      ioc_matches.count: Record Count
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
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 14
    col: 8
    width: 8
    height: 6
  - title: Top 10 Rarely Seen Values
    name: Top 10 Rarely Seen Values
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_grid
    fields: [ioc_matches.count, ioc_matches.ioc_value]
    sorts: [ioc_matches.count]
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
      ioc_matches.count: Record Count
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
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 14
    col: 16
    width: 8
    height: 6
  - title: Top 10 Domains IOC Indicators
    name: Top 10 Domains IOC Indicators
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_bar
    fields: [ioc_matches.count, ioc_matches.ioc_value_domain]
    filters:
      ioc_matches.ioc_value_domain: "-NULL"
    sorts: [ioc_matches.count desc]
    limit: 30
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      ioc_matches.count: Count
    defaults_version: 1
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 8
    col: 0
    width: 8
    height: 6
  - title: Top 10 IP IOC Indicators
    name: Top 10 IP IOC Indicators
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_bar
    fields: [ioc_matches.ioc_value_ip, ioc_matches.count]
    filters:
      ioc_matches.ioc_type: '"IOC_TYPE_IP"'
    sorts: [ioc_matches.count desc]
    limit: 30
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      ioc_matches.count: Count
    defaults_version: 1
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 8
    col: 8
    width: 8
    height: 6
  - title: Top 10 Assets by IOC Matches
    name: Top 10 Assets by IOC Matches
    model: block_google_chronicle_v2
    explore: ioc_matches
    type: looker_bar
    fields: [ioc_matches.asset_hostname, ioc_matches.count]
    sorts: [ioc_matches.count desc]
    limit: 30
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_labels:
      ioc_matches.count: Count
    defaults_version: 1
    listen:
      Time: ioc_matches.event_timestamp_time
    row: 8
    col: 16
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
    explore: ioc_matches
    listens_to_filters: []
    field: ioc_matches.event_timestamp_time
