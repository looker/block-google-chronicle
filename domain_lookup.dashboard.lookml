- dashboard: domain_lookup
  title: Domain Lookup
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Total DNS Messages
    name: Total DNS Messages
    model: block_google_chronicle
    explore: udm_events
    type: single_value
    fields: [udm_events.count, udm_events.period]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response: 'Yes'
    sorts: [udm_events.period desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: delta, label: Delta, expression: 'round(${udm_events.count}
          - offset(${udm_events.count}, 1),2)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000," K"
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: zkgan.svl.corp.google.com - udm_events.count, name: zkgan.svl.corp.google.com},
          {axisId: udm_events.count, id: yzyuzhang.svl.corp.google.com - udm_events.count,
            name: yzyuzhang.svl.corp.google.com}, {axisId: udm_events.count, id: yufeiwang.svl.corp.google.com
              - udm_events.count, name: yufeiwang.svl.corp.google.com}, {axisId: udm_events.count,
            id: yrk12.prod.google.com - udm_events.count, name: yrk12.prod.google.com},
          {axisId: udm_events.count, id: yri21.prod.google.com - udm_events.count,
            name: yri21.prod.google.com}, {axisId: udm_events.count, id: yqqlzfkkbk.mtv.corp.google.com
              - udm_events.count, name: yqqlzfkkbk.mtv.corp.google.com}, {axisId: udm_events.count,
            id: yqqlzfkkbk - udm_events.count, name: yqqlzfkkbk}, {axisId: udm_events.count,
            id: ykc142.prod.google.com - udm_events.count, name: ykc142.prod.google.com},
          {axisId: udm_events.count, id: yastatic.net - udm_events.count, name: yastatic.net},
          {axisId: udm_events.count, id: www.gstatic.com - udm_events.count, name: www.gstatic.com},
          {axisId: udm_events.count, id: www.googleapis.com - udm_events.count, name: www.googleapis.com},
          {axisId: udm_events.count, id: www.google.com.mtv.corp.google.com - udm_events.count,
            name: www.google.com.mtv.corp.google.com}, {axisId: udm_events.count,
            id: www.google.com - udm_events.count, name: www.google.com}, {axisId: udm_events.count,
            id: www.google-analytics.com - udm_events.count, name: www.google-analytics.com},
          {axisId: udm_events.count, id: www.evil.com - udm_events.count, name: www.evil.com},
          {axisId: udm_events.count, id: wwogdbjmt.prodz.google.com - udm_events.count,
            name: wwogdbjmt.prodz.google.com}, {axisId: udm_events.count, id: wwogdbjmt.prod.google.com
              - udm_events.count, name: wwogdbjmt.prod.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt.mtv.corp.google.com - udm_events.count, name: wwogdbjmt.mtv.corp.google.com},
          {axisId: udm_events.count, id: wwogdbjmt.google.com - udm_events.count,
            name: wwogdbjmt.google.com}, {axisId: udm_events.count, id: wwogdbjmt.corp.google.com
              - udm_events.count, name: wwogdbjmt.corp.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt - udm_events.count, name: wwogdbjmt}, {axisId: udm_events.count,
            id: wojason.svl.corp.google.com - udm_events.count, name: wojason.svl.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.svl.corp.google.com - udm_events.count,
            name: waetsfikhutafa.svl.corp.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.prodz.google.com - udm_events.count, name: waetsfikhutafa.prodz.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.prod.google.com - udm_events.count,
            name: waetsfikhutafa.prod.google.com}, {axisId: udm_events.count, id: waetsfikhutafa.google.com
              - udm_events.count, name: waetsfikhutafa.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.corp.google.com - udm_events.count, name: waetsfikhutafa.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa - udm_events.count, name: waetsfikhutafa},
          {axisId: udm_events.count, id: wabu.c.googlers.com - udm_events.count, name: wabu.c.googlers.com},
          {axisId: udm_events.count, id: vow186.prod.google.com - udm_events.count,
            name: vow186.prod.google.com}, {axisId: udm_events.count, id: vortex.data.microsoft.com
              - udm_events.count, name: vortex.data.microsoft.com}, {axisId: udm_events.count,
            id: voll2.prod.google.com - udm_events.count, name: voll2.prod.google.com},
          {axisId: udm_events.count, id: vkglinux.c.googlers.com - udm_events.count,
            name: vkglinux.c.googlers.com}, {axisId: udm_events.count, id: uplinkconfig.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uplinkconfig.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uplinkconfig.corp.google.com - udm_events.count,
            name: uplinkconfig.corp.google.com}, {axisId: udm_events.count, id: update.googleapis.com
              - udm_events.count, name: update.googleapis.com}, {axisId: udm_events.count,
            id: up.googleplex.com - udm_events.count, name: up.googleplex.com}, {
            axisId: udm_events.count, id: up.corp.google.com - udm_events.count, name: up.corp.google.com},
          {axisId: udm_events.count, id: uotddujvreq.svl.corp.google.com - udm_events.count,
            name: uotddujvreq.svl.corp.google.com}, {axisId: udm_events.count, id: uotddujvreq.prodz.google.com
              - udm_events.count, name: uotddujvreq.prodz.google.com}, {axisId: udm_events.count,
            id: uotddujvreq.prod.google.com - udm_events.count, name: uotddujvreq.prod.google.com},
          {axisId: udm_events.count, id: uotddujvreq.google.com - udm_events.count,
            name: uotddujvreq.google.com}, {axisId: udm_events.count, id: uotddujvreq.corp.google.com
              - udm_events.count, name: uotddujvreq.corp.google.com}, {axisId: udm_events.count,
            id: uotddujvreq - udm_events.count, name: uotddujvreq}, {axisId: udm_events.count,
            id: unruffled.corp.google.com - udm_events.count, name: unruffled.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prodz.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prodz.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prod.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prod.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uberproxy.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.google.com - udm_events.count,
            name: uberproxy.corp.google.com.google.com}, {axisId: udm_events.count,
            id: uberproxy.corp.google.com.corp.google.com - udm_events.count, name: uberproxy.corp.google.com.corp.google.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Delta compared to previous time period
    listen:
      Time: udm_events.period_filter
      Domain: udm_events.full_domain
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Error Count
    name: Error Count
    model: block_google_chronicle
    explore: udm_events
    type: single_value
    fields: [udm_events.count, udm_events.period]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response_code: not 0,NOT NULL
    sorts: [udm_events.period desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: delta, label: Delta, expression: 'round(${udm_events.count}
          - offset(${udm_events.count}, 1),2)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000," K"
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: zkgan.svl.corp.google.com - udm_events.count, name: zkgan.svl.corp.google.com},
          {axisId: udm_events.count, id: yzyuzhang.svl.corp.google.com - udm_events.count,
            name: yzyuzhang.svl.corp.google.com}, {axisId: udm_events.count, id: yufeiwang.svl.corp.google.com
              - udm_events.count, name: yufeiwang.svl.corp.google.com}, {axisId: udm_events.count,
            id: yrk12.prod.google.com - udm_events.count, name: yrk12.prod.google.com},
          {axisId: udm_events.count, id: yri21.prod.google.com - udm_events.count,
            name: yri21.prod.google.com}, {axisId: udm_events.count, id: yqqlzfkkbk.mtv.corp.google.com
              - udm_events.count, name: yqqlzfkkbk.mtv.corp.google.com}, {axisId: udm_events.count,
            id: yqqlzfkkbk - udm_events.count, name: yqqlzfkkbk}, {axisId: udm_events.count,
            id: ykc142.prod.google.com - udm_events.count, name: ykc142.prod.google.com},
          {axisId: udm_events.count, id: yastatic.net - udm_events.count, name: yastatic.net},
          {axisId: udm_events.count, id: www.gstatic.com - udm_events.count, name: www.gstatic.com},
          {axisId: udm_events.count, id: www.googleapis.com - udm_events.count, name: www.googleapis.com},
          {axisId: udm_events.count, id: www.google.com.mtv.corp.google.com - udm_events.count,
            name: www.google.com.mtv.corp.google.com}, {axisId: udm_events.count,
            id: www.google.com - udm_events.count, name: www.google.com}, {axisId: udm_events.count,
            id: www.google-analytics.com - udm_events.count, name: www.google-analytics.com},
          {axisId: udm_events.count, id: www.evil.com - udm_events.count, name: www.evil.com},
          {axisId: udm_events.count, id: wwogdbjmt.prodz.google.com - udm_events.count,
            name: wwogdbjmt.prodz.google.com}, {axisId: udm_events.count, id: wwogdbjmt.prod.google.com
              - udm_events.count, name: wwogdbjmt.prod.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt.mtv.corp.google.com - udm_events.count, name: wwogdbjmt.mtv.corp.google.com},
          {axisId: udm_events.count, id: wwogdbjmt.google.com - udm_events.count,
            name: wwogdbjmt.google.com}, {axisId: udm_events.count, id: wwogdbjmt.corp.google.com
              - udm_events.count, name: wwogdbjmt.corp.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt - udm_events.count, name: wwogdbjmt}, {axisId: udm_events.count,
            id: wojason.svl.corp.google.com - udm_events.count, name: wojason.svl.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.svl.corp.google.com - udm_events.count,
            name: waetsfikhutafa.svl.corp.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.prodz.google.com - udm_events.count, name: waetsfikhutafa.prodz.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.prod.google.com - udm_events.count,
            name: waetsfikhutafa.prod.google.com}, {axisId: udm_events.count, id: waetsfikhutafa.google.com
              - udm_events.count, name: waetsfikhutafa.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.corp.google.com - udm_events.count, name: waetsfikhutafa.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa - udm_events.count, name: waetsfikhutafa},
          {axisId: udm_events.count, id: wabu.c.googlers.com - udm_events.count, name: wabu.c.googlers.com},
          {axisId: udm_events.count, id: vow186.prod.google.com - udm_events.count,
            name: vow186.prod.google.com}, {axisId: udm_events.count, id: vortex.data.microsoft.com
              - udm_events.count, name: vortex.data.microsoft.com}, {axisId: udm_events.count,
            id: voll2.prod.google.com - udm_events.count, name: voll2.prod.google.com},
          {axisId: udm_events.count, id: vkglinux.c.googlers.com - udm_events.count,
            name: vkglinux.c.googlers.com}, {axisId: udm_events.count, id: uplinkconfig.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uplinkconfig.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uplinkconfig.corp.google.com - udm_events.count,
            name: uplinkconfig.corp.google.com}, {axisId: udm_events.count, id: update.googleapis.com
              - udm_events.count, name: update.googleapis.com}, {axisId: udm_events.count,
            id: up.googleplex.com - udm_events.count, name: up.googleplex.com}, {
            axisId: udm_events.count, id: up.corp.google.com - udm_events.count, name: up.corp.google.com},
          {axisId: udm_events.count, id: uotddujvreq.svl.corp.google.com - udm_events.count,
            name: uotddujvreq.svl.corp.google.com}, {axisId: udm_events.count, id: uotddujvreq.prodz.google.com
              - udm_events.count, name: uotddujvreq.prodz.google.com}, {axisId: udm_events.count,
            id: uotddujvreq.prod.google.com - udm_events.count, name: uotddujvreq.prod.google.com},
          {axisId: udm_events.count, id: uotddujvreq.google.com - udm_events.count,
            name: uotddujvreq.google.com}, {axisId: udm_events.count, id: uotddujvreq.corp.google.com
              - udm_events.count, name: uotddujvreq.corp.google.com}, {axisId: udm_events.count,
            id: uotddujvreq - udm_events.count, name: uotddujvreq}, {axisId: udm_events.count,
            id: unruffled.corp.google.com - udm_events.count, name: unruffled.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prodz.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prodz.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prod.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prod.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uberproxy.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.google.com - udm_events.count,
            name: uberproxy.corp.google.com.google.com}, {axisId: udm_events.count,
            id: uberproxy.corp.google.com.corp.google.com - udm_events.count, name: uberproxy.corp.google.com.corp.google.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Delta compared to previous time period
    listen:
      Time: udm_events.period_filter
      Domain: udm_events.full_domain
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Unique Queries
    name: Unique Queries
    model: block_google_chronicle
    explore: udm_events
    type: single_value
    fields: [count_of_domain, udm_events.period]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
    sorts: [udm_events.period desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{table_calculation: delta, label: Delta, expression: 'round(${count_of_domain}
          - offset(${count_of_domain}, 1),2)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: count_of_networkdnsquestionsname,
        based_on: udm_events__network__dns__questions.name, type: count_distinct, label: Count
          of network.dns.questions.name, expression: !!null '', _kind_hint: measure,
        _type_hint: number}, {measure: count_of_domain, based_on: udm_events.domain,
        type: count_distinct, label: Count of Domain, expression: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000," K"
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: zkgan.svl.corp.google.com - udm_events.count, name: zkgan.svl.corp.google.com},
          {axisId: udm_events.count, id: yzyuzhang.svl.corp.google.com - udm_events.count,
            name: yzyuzhang.svl.corp.google.com}, {axisId: udm_events.count, id: yufeiwang.svl.corp.google.com
              - udm_events.count, name: yufeiwang.svl.corp.google.com}, {axisId: udm_events.count,
            id: yrk12.prod.google.com - udm_events.count, name: yrk12.prod.google.com},
          {axisId: udm_events.count, id: yri21.prod.google.com - udm_events.count,
            name: yri21.prod.google.com}, {axisId: udm_events.count, id: yqqlzfkkbk.mtv.corp.google.com
              - udm_events.count, name: yqqlzfkkbk.mtv.corp.google.com}, {axisId: udm_events.count,
            id: yqqlzfkkbk - udm_events.count, name: yqqlzfkkbk}, {axisId: udm_events.count,
            id: ykc142.prod.google.com - udm_events.count, name: ykc142.prod.google.com},
          {axisId: udm_events.count, id: yastatic.net - udm_events.count, name: yastatic.net},
          {axisId: udm_events.count, id: www.gstatic.com - udm_events.count, name: www.gstatic.com},
          {axisId: udm_events.count, id: www.googleapis.com - udm_events.count, name: www.googleapis.com},
          {axisId: udm_events.count, id: www.google.com.mtv.corp.google.com - udm_events.count,
            name: www.google.com.mtv.corp.google.com}, {axisId: udm_events.count,
            id: www.google.com - udm_events.count, name: www.google.com}, {axisId: udm_events.count,
            id: www.google-analytics.com - udm_events.count, name: www.google-analytics.com},
          {axisId: udm_events.count, id: www.evil.com - udm_events.count, name: www.evil.com},
          {axisId: udm_events.count, id: wwogdbjmt.prodz.google.com - udm_events.count,
            name: wwogdbjmt.prodz.google.com}, {axisId: udm_events.count, id: wwogdbjmt.prod.google.com
              - udm_events.count, name: wwogdbjmt.prod.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt.mtv.corp.google.com - udm_events.count, name: wwogdbjmt.mtv.corp.google.com},
          {axisId: udm_events.count, id: wwogdbjmt.google.com - udm_events.count,
            name: wwogdbjmt.google.com}, {axisId: udm_events.count, id: wwogdbjmt.corp.google.com
              - udm_events.count, name: wwogdbjmt.corp.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt - udm_events.count, name: wwogdbjmt}, {axisId: udm_events.count,
            id: wojason.svl.corp.google.com - udm_events.count, name: wojason.svl.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.svl.corp.google.com - udm_events.count,
            name: waetsfikhutafa.svl.corp.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.prodz.google.com - udm_events.count, name: waetsfikhutafa.prodz.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.prod.google.com - udm_events.count,
            name: waetsfikhutafa.prod.google.com}, {axisId: udm_events.count, id: waetsfikhutafa.google.com
              - udm_events.count, name: waetsfikhutafa.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.corp.google.com - udm_events.count, name: waetsfikhutafa.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa - udm_events.count, name: waetsfikhutafa},
          {axisId: udm_events.count, id: wabu.c.googlers.com - udm_events.count, name: wabu.c.googlers.com},
          {axisId: udm_events.count, id: vow186.prod.google.com - udm_events.count,
            name: vow186.prod.google.com}, {axisId: udm_events.count, id: vortex.data.microsoft.com
              - udm_events.count, name: vortex.data.microsoft.com}, {axisId: udm_events.count,
            id: voll2.prod.google.com - udm_events.count, name: voll2.prod.google.com},
          {axisId: udm_events.count, id: vkglinux.c.googlers.com - udm_events.count,
            name: vkglinux.c.googlers.com}, {axisId: udm_events.count, id: uplinkconfig.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uplinkconfig.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uplinkconfig.corp.google.com - udm_events.count,
            name: uplinkconfig.corp.google.com}, {axisId: udm_events.count, id: update.googleapis.com
              - udm_events.count, name: update.googleapis.com}, {axisId: udm_events.count,
            id: up.googleplex.com - udm_events.count, name: up.googleplex.com}, {
            axisId: udm_events.count, id: up.corp.google.com - udm_events.count, name: up.corp.google.com},
          {axisId: udm_events.count, id: uotddujvreq.svl.corp.google.com - udm_events.count,
            name: uotddujvreq.svl.corp.google.com}, {axisId: udm_events.count, id: uotddujvreq.prodz.google.com
              - udm_events.count, name: uotddujvreq.prodz.google.com}, {axisId: udm_events.count,
            id: uotddujvreq.prod.google.com - udm_events.count, name: uotddujvreq.prod.google.com},
          {axisId: udm_events.count, id: uotddujvreq.google.com - udm_events.count,
            name: uotddujvreq.google.com}, {axisId: udm_events.count, id: uotddujvreq.corp.google.com
              - udm_events.count, name: uotddujvreq.corp.google.com}, {axisId: udm_events.count,
            id: uotddujvreq - udm_events.count, name: uotddujvreq}, {axisId: udm_events.count,
            id: unruffled.corp.google.com - udm_events.count, name: unruffled.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prodz.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prodz.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prod.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prod.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uberproxy.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.google.com - udm_events.count,
            name: uberproxy.corp.google.com.google.com}, {axisId: udm_events.count,
            id: uberproxy.corp.google.com.corp.google.com - udm_events.count, name: uberproxy.corp.google.com.corp.google.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Delta compared to previous time period
    listen:
      Time: udm_events.period_filter
      Domain: udm_events.full_domain
    row: 3
    col: 18
    width: 6
    height: 3
  - title: Unique Sources
    name: Unique Sources
    model: block_google_chronicle
    explore: udm_events
    type: single_value
    fields: [count_of_principalip0, udm_events.period]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
    sorts: [udm_events.period desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{measure: count_of_principalip0, based_on: udm_events__principal.ip,
        type: count_distinct, label: 'Count of principal.ip[0]', expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: delta, label: Delta,
        expression: 'round(${count_of_principalip0} - offset(${count_of_principalip0},
          1),2)', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000," K"
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: zkgan.svl.corp.google.com - udm_events.count, name: zkgan.svl.corp.google.com},
          {axisId: udm_events.count, id: yzyuzhang.svl.corp.google.com - udm_events.count,
            name: yzyuzhang.svl.corp.google.com}, {axisId: udm_events.count, id: yufeiwang.svl.corp.google.com
              - udm_events.count, name: yufeiwang.svl.corp.google.com}, {axisId: udm_events.count,
            id: yrk12.prod.google.com - udm_events.count, name: yrk12.prod.google.com},
          {axisId: udm_events.count, id: yri21.prod.google.com - udm_events.count,
            name: yri21.prod.google.com}, {axisId: udm_events.count, id: yqqlzfkkbk.mtv.corp.google.com
              - udm_events.count, name: yqqlzfkkbk.mtv.corp.google.com}, {axisId: udm_events.count,
            id: yqqlzfkkbk - udm_events.count, name: yqqlzfkkbk}, {axisId: udm_events.count,
            id: ykc142.prod.google.com - udm_events.count, name: ykc142.prod.google.com},
          {axisId: udm_events.count, id: yastatic.net - udm_events.count, name: yastatic.net},
          {axisId: udm_events.count, id: www.gstatic.com - udm_events.count, name: www.gstatic.com},
          {axisId: udm_events.count, id: www.googleapis.com - udm_events.count, name: www.googleapis.com},
          {axisId: udm_events.count, id: www.google.com.mtv.corp.google.com - udm_events.count,
            name: www.google.com.mtv.corp.google.com}, {axisId: udm_events.count,
            id: www.google.com - udm_events.count, name: www.google.com}, {axisId: udm_events.count,
            id: www.google-analytics.com - udm_events.count, name: www.google-analytics.com},
          {axisId: udm_events.count, id: www.evil.com - udm_events.count, name: www.evil.com},
          {axisId: udm_events.count, id: wwogdbjmt.prodz.google.com - udm_events.count,
            name: wwogdbjmt.prodz.google.com}, {axisId: udm_events.count, id: wwogdbjmt.prod.google.com
              - udm_events.count, name: wwogdbjmt.prod.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt.mtv.corp.google.com - udm_events.count, name: wwogdbjmt.mtv.corp.google.com},
          {axisId: udm_events.count, id: wwogdbjmt.google.com - udm_events.count,
            name: wwogdbjmt.google.com}, {axisId: udm_events.count, id: wwogdbjmt.corp.google.com
              - udm_events.count, name: wwogdbjmt.corp.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt - udm_events.count, name: wwogdbjmt}, {axisId: udm_events.count,
            id: wojason.svl.corp.google.com - udm_events.count, name: wojason.svl.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.svl.corp.google.com - udm_events.count,
            name: waetsfikhutafa.svl.corp.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.prodz.google.com - udm_events.count, name: waetsfikhutafa.prodz.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.prod.google.com - udm_events.count,
            name: waetsfikhutafa.prod.google.com}, {axisId: udm_events.count, id: waetsfikhutafa.google.com
              - udm_events.count, name: waetsfikhutafa.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.corp.google.com - udm_events.count, name: waetsfikhutafa.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa - udm_events.count, name: waetsfikhutafa},
          {axisId: udm_events.count, id: wabu.c.googlers.com - udm_events.count, name: wabu.c.googlers.com},
          {axisId: udm_events.count, id: vow186.prod.google.com - udm_events.count,
            name: vow186.prod.google.com}, {axisId: udm_events.count, id: vortex.data.microsoft.com
              - udm_events.count, name: vortex.data.microsoft.com}, {axisId: udm_events.count,
            id: voll2.prod.google.com - udm_events.count, name: voll2.prod.google.com},
          {axisId: udm_events.count, id: vkglinux.c.googlers.com - udm_events.count,
            name: vkglinux.c.googlers.com}, {axisId: udm_events.count, id: uplinkconfig.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uplinkconfig.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uplinkconfig.corp.google.com - udm_events.count,
            name: uplinkconfig.corp.google.com}, {axisId: udm_events.count, id: update.googleapis.com
              - udm_events.count, name: update.googleapis.com}, {axisId: udm_events.count,
            id: up.googleplex.com - udm_events.count, name: up.googleplex.com}, {
            axisId: udm_events.count, id: up.corp.google.com - udm_events.count, name: up.corp.google.com},
          {axisId: udm_events.count, id: uotddujvreq.svl.corp.google.com - udm_events.count,
            name: uotddujvreq.svl.corp.google.com}, {axisId: udm_events.count, id: uotddujvreq.prodz.google.com
              - udm_events.count, name: uotddujvreq.prodz.google.com}, {axisId: udm_events.count,
            id: uotddujvreq.prod.google.com - udm_events.count, name: uotddujvreq.prod.google.com},
          {axisId: udm_events.count, id: uotddujvreq.google.com - udm_events.count,
            name: uotddujvreq.google.com}, {axisId: udm_events.count, id: uotddujvreq.corp.google.com
              - udm_events.count, name: uotddujvreq.corp.google.com}, {axisId: udm_events.count,
            id: uotddujvreq - udm_events.count, name: uotddujvreq}, {axisId: udm_events.count,
            id: unruffled.corp.google.com - udm_events.count, name: unruffled.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prodz.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prodz.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prod.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prod.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uberproxy.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.google.com - udm_events.count,
            name: uberproxy.corp.google.com.google.com}, {axisId: udm_events.count,
            id: uberproxy.corp.google.com.corp.google.com - udm_events.count, name: uberproxy.corp.google.com.corp.google.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Delta compared to previous time period
    listen:
      Time: udm_events.period_filter
      Domain: udm_events.full_domain
    row: 3
    col: 6
    width: 6
    height: 3
  - name: Number of DNS Events
    type: text
    title_text: Number of DNS Events
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 6
    height: 3
  - name: Number of DNS Errors
    type: text
    title_text: Number of DNS Errors
    row: 0
    col: 12
    width: 6
    height: 3
  - name: Unique DNS Queries
    type: text
    title_text: Unique DNS Queries
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 12
    width: 6
    height: 3
  - name: Unique Sources of DNS Events
    type: text
    title_text: Unique Sources of DNS Events
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Top 10 DNS Query Sources
    name: Top 10 DNS Query Sources
    model: block_google_chronicle
    explore: udm_events
    type: looker_pie
    fields: [udm_events__principal.ip, udm_events.count]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response: 'Yes'
    sorts: [udm_events.count desc]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    start_angle: 90
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
      Time: udm_events.event_timestamp_time
      Domain: udm_events.full_domain
    row: 6
    col: 0
    width: 8
    height: 6
  - title: DNS Queries Over Time
    name: DNS Queries Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events__principal.ip, udm_events.count, udm_events.event_timestamp_date]
    pivots: [udm_events__principal.ip]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response: 'Yes'
    sorts: [udm_events.count desc 0, udm_events.event_timestamp_date, udm_events__principal.ip]
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
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: 100.96.23.161 - udm_events.count, name: 100.96.23.161}, {axisId: udm_events.count,
            id: 100.97.16.27 - udm_events.count, name: 100.97.16.27}, {axisId: udm_events.count,
            id: 100.97.16.30 - udm_events.count, name: 100.97.16.30}, {axisId: udm_events.count,
            id: 100.97.16.40 - udm_events.count, name: 100.97.16.40}, {axisId: udm_events.count,
            id: 100.97.16.43 - udm_events.count, name: 100.97.16.43}, {axisId: udm_events.count,
            id: 100.97.16.46 - udm_events.count, name: 100.97.16.46}, {axisId: udm_events.count,
            id: 100.97.16.48 - udm_events.count, name: 100.97.16.48}, {axisId: udm_events.count,
            id: 100.97.16.62 - udm_events.count, name: 100.97.16.62}, {axisId: udm_events.count,
            id: 100.97.16.69 - udm_events.count, name: 100.97.16.69}, {axisId: udm_events.count,
            id: 100.97.16.72 - udm_events.count, name: 100.97.16.72}, {axisId: udm_events.count,
            id: 100.97.16.77 - udm_events.count, name: 100.97.16.77}, {axisId: udm_events.count,
            id: 100.97.16.80 - udm_events.count, name: 100.97.16.80}, {axisId: udm_events.count,
            id: 100.99.22.32 - udm_events.count, name: 100.99.22.32}, {axisId: udm_events.count,
            id: 100.99.8.123 - udm_events.count, name: 100.99.8.123}, {axisId: udm_events.count,
            id: 127.0.0.1 - udm_events.count, name: 127.0.0.1}, {axisId: udm_events.count,
            id: 172.28.102.23 - udm_events.count, name: 172.28.102.23}, {axisId: udm_events.count,
            id: 172.28.102.43 - udm_events.count, name: 172.28.102.43}, {axisId: udm_events.count,
            id: 172.28.102.61 - udm_events.count, name: 172.28.102.61}, {axisId: udm_events.count,
            id: 172.31.141.89 - udm_events.count, name: 172.31.141.89}, {axisId: udm_events.count,
            id: 192.168.12.221 - udm_events.count, name: 192.168.12.221}, {axisId: udm_events.count,
            id: 192.168.18.179 - udm_events.count, name: 192.168.18.179}, {axisId: udm_events.count,
            id: 192.168.19.110 - udm_events.count, name: 192.168.19.110}, {axisId: udm_events.count,
            id: 192.168.27.103 - udm_events.count, name: 192.168.27.103}, {axisId: udm_events.count,
            id: 192.168.37.67 - udm_events.count, name: 192.168.37.67}, {axisId: udm_events.count,
            id: 192.168.89.118 - udm_events.count, name: 192.168.89.118}, {axisId: udm_events.count,
            id: '2620:0:1000:5711:de4a:3eff:fe95:59f9 - udm_events.count', name: '2620:0:1000:5711:de4a:3eff:fe95:59f9'},
          {axisId: udm_events.count, id: '2620:0:1002:12:4a0f:cfff:fe3c:8bb0 - udm_events.count',
            name: '2620:0:1002:12:4a0f:cfff:fe3c:8bb0'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:1a60:24ff:fe8b:c8de - udm_events.count', name: '2620:0:100e:711:1a60:24ff:fe8b:c8de'},
          {axisId: udm_events.count, id: '2620:0:100e:711:1ea0:b8ff:fe73:8725 - udm_events.count',
            name: '2620:0:100e:711:1ea0:b8ff:fe73:8725'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:1ea0:b8ff:fe75:cef4 - udm_events.count', name: '2620:0:100e:711:1ea0:b8ff:fe75:cef4'},
          {axisId: udm_events.count, id: '2620:0:100e:711:1ea0:b8ff:fe75:d0ab - udm_events.count',
            name: '2620:0:100e:711:1ea0:b8ff:fe75:d0ab'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:1ea0:b8ff:fe76:78e - udm_events.count', name: '2620:0:100e:711:1ea0:b8ff:fe76:78e'},
          {axisId: udm_events.count, id: '2620:0:100e:711:7220:84ff:fe0f:12ad - udm_events.count',
            name: '2620:0:100e:711:7220:84ff:fe0f:12ad'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:7220:84ff:fe0f:14f5 - udm_events.count', name: '2620:0:100e:711:7220:84ff:fe0f:14f5'},
          {axisId: udm_events.count, id: '2620:0:100e:711:a28c:fdff:fec3:d6b - udm_events.count',
            name: '2620:0:100e:711:a28c:fdff:fec3:d6b'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:f693:9fff:feea:1ff0 - udm_events.count', name: '2620:0:100e:711:f693:9fff:feea:1ff0'},
          {axisId: udm_events.count, id: '2620:0:100e:711:f693:9fff:feed:ef43 - udm_events.count',
            name: '2620:0:100e:711:f693:9fff:feed:ef43'}, {axisId: udm_events.count,
            id: '2620:0:100e:711:f693:9fff:fef7:a9c0 - udm_events.count', name: '2620:0:100e:711:f693:9fff:fef7:a9c0'},
          {axisId: udm_events.count, id: '2620:15c:242:200:a28c:fdff:fee0:bed3 - udm_events.count',
            name: '2620:15c:242:200:a28c:fdff:fee0:bed3'}, {axisId: udm_events.count,
            id: '2620:15c:242:700:a28c:fdff:fee0:bed3 - udm_events.count', name: '2620:15c:242:700:a28c:fdff:fee0:bed3'},
          {axisId: udm_events.count, id: '2620:15c:53:200:725a:fff:fe49:1dc6 - udm_events.count',
            name: '2620:15c:53:200:725a:fff:fe49:1dc6'}, {axisId: udm_events.count,
            id: '2620:15c:53:200:a28c:fdff:fedb:cdef - udm_events.count', name: '2620:15c:53:200:a28c:fdff:fedb:cdef'},
          {axisId: udm_events.count, id: '2620:15c:53:200:cad3:ffff:feb5:e9cb - udm_events.count',
            name: '2620:15c:53:200:cad3:ffff:feb5:e9cb'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    hide_legend: false
    series_types: {}
    swap_axes: false
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
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time: udm_events.event_timestamp_time
      Domain: udm_events.full_domain
    row: 6
    col: 8
    width: 16
    height: 6
  - title: Top 10 DNS Response Codes
    name: Top 10 DNS Response Codes
    model: block_google_chronicle
    explore: udm_events
    type: looker_pie
    fields: [udm_events__network__dns.response_code, udm_events.count, response_code_names]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response: 'Yes'
      udm_events__network__dns.response_code: NOT NULL
    sorts: [udm_events.count desc, udm_events__network__dns.response_code desc]
    limit: 10
    column_limit: 50
    dynamic_fields: [{dimension: response_code_names, label: Response Code Names,
        expression: 'if(${udm_events__network__dns.response_code} = 0, "No error", if(${udm_events__network__dns.response_code}
          = 1, "Format error", if(${udm_events__network__dns.response_code} = 2, "Server
          failure", if(${udm_events__network__dns.response_code} = 3, "Name Error",
          if(${udm_events__network__dns.response_code} = 4, "Not Implemented", if(${udm_events__network__dns.response_code}
          = 5, "Refused", "None"))))))', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors: {}
    series_labels:
      2 - udm_events.count: 2 -  Server Failure
      3 - udm_events.count: 3 - Name Error
      5 - udm_events.count: 5 - Refused
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
    y_axes: [{label: Event Count, orientation: bottom, series: [{axisId: 2 - udm_events.count,
            id: 2 - udm_events.count, name: '2'}, {axisId: 3 - udm_events.count, id: 3
              - udm_events.count, name: '3'}, {axisId: 5 - udm_events.count, id: 5
              - udm_events.count, name: '5'}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Source IP
    hide_legend: false
    series_types: {}
    reference_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
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
    hidden_fields: [udm_events__network__dns.response_code]
    font_size: 12
    listen:
      Time: udm_events.event_timestamp_time
      Domain: udm_events.full_domain
    row: 12
    col: 0
    width: 8
    height: 6
  - title: DNS Response Codes Over Time
    name: DNS Response Codes Over Time
    model: block_google_chronicle
    explore: udm_events
    type: looker_line
    fields: [udm_events.count, udm_events.event_timestamp_date, response]
    pivots: [response]
    fill_fields: [udm_events.event_timestamp_date]
    filters:
      udm_events.metadata_product_event_type_as_string: '"NETWORK_DNS"'
      udm_events__network__dns.response: 'Yes'
      udm_events__network__dns.response_code: NOT NULL
    sorts: [udm_events.count desc 0, udm_events.event_timestamp_date desc, response]
    limit: 500
    column_limit: 50
    dynamic_fields: [{dimension: response, label: Response, expression: 'if(${udm_events__network__dns.response_code}
          = 0, "No error ", if(${udm_events__network__dns.response_code} = 1, "Format
          error", if(${udm_events__network__dns.response_code} = 2, "Server failure",
          if(${udm_events__network__dns.response_code} = 3, "Name Error", if(${udm_events__network__dns.response_code}
          = 4, "Not Implemented", if(${udm_events__network__dns.response_code} = 5,
          "Refused", "None"))))))', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Events Count, orientation: left, series: [{axisId: udm_events.count,
            id: zkgan.svl.corp.google.com - udm_events.count, name: zkgan.svl.corp.google.com},
          {axisId: udm_events.count, id: yzyuzhang.svl.corp.google.com - udm_events.count,
            name: yzyuzhang.svl.corp.google.com}, {axisId: udm_events.count, id: yufeiwang.svl.corp.google.com
              - udm_events.count, name: yufeiwang.svl.corp.google.com}, {axisId: udm_events.count,
            id: yrk12.prod.google.com - udm_events.count, name: yrk12.prod.google.com},
          {axisId: udm_events.count, id: yri21.prod.google.com - udm_events.count,
            name: yri21.prod.google.com}, {axisId: udm_events.count, id: yqqlzfkkbk.mtv.corp.google.com
              - udm_events.count, name: yqqlzfkkbk.mtv.corp.google.com}, {axisId: udm_events.count,
            id: yqqlzfkkbk - udm_events.count, name: yqqlzfkkbk}, {axisId: udm_events.count,
            id: ykc142.prod.google.com - udm_events.count, name: ykc142.prod.google.com},
          {axisId: udm_events.count, id: yastatic.net - udm_events.count, name: yastatic.net},
          {axisId: udm_events.count, id: www.gstatic.com - udm_events.count, name: www.gstatic.com},
          {axisId: udm_events.count, id: www.googleapis.com - udm_events.count, name: www.googleapis.com},
          {axisId: udm_events.count, id: www.google.com.mtv.corp.google.com - udm_events.count,
            name: www.google.com.mtv.corp.google.com}, {axisId: udm_events.count,
            id: www.google.com - udm_events.count, name: www.google.com}, {axisId: udm_events.count,
            id: www.google-analytics.com - udm_events.count, name: www.google-analytics.com},
          {axisId: udm_events.count, id: www.evil.com - udm_events.count, name: www.evil.com},
          {axisId: udm_events.count, id: wwogdbjmt.prodz.google.com - udm_events.count,
            name: wwogdbjmt.prodz.google.com}, {axisId: udm_events.count, id: wwogdbjmt.prod.google.com
              - udm_events.count, name: wwogdbjmt.prod.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt.mtv.corp.google.com - udm_events.count, name: wwogdbjmt.mtv.corp.google.com},
          {axisId: udm_events.count, id: wwogdbjmt.google.com - udm_events.count,
            name: wwogdbjmt.google.com}, {axisId: udm_events.count, id: wwogdbjmt.corp.google.com
              - udm_events.count, name: wwogdbjmt.corp.google.com}, {axisId: udm_events.count,
            id: wwogdbjmt - udm_events.count, name: wwogdbjmt}, {axisId: udm_events.count,
            id: wojason.svl.corp.google.com - udm_events.count, name: wojason.svl.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.svl.corp.google.com - udm_events.count,
            name: waetsfikhutafa.svl.corp.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.prodz.google.com - udm_events.count, name: waetsfikhutafa.prodz.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa.prod.google.com - udm_events.count,
            name: waetsfikhutafa.prod.google.com}, {axisId: udm_events.count, id: waetsfikhutafa.google.com
              - udm_events.count, name: waetsfikhutafa.google.com}, {axisId: udm_events.count,
            id: waetsfikhutafa.corp.google.com - udm_events.count, name: waetsfikhutafa.corp.google.com},
          {axisId: udm_events.count, id: waetsfikhutafa - udm_events.count, name: waetsfikhutafa},
          {axisId: udm_events.count, id: wabu.c.googlers.com - udm_events.count, name: wabu.c.googlers.com},
          {axisId: udm_events.count, id: vow186.prod.google.com - udm_events.count,
            name: vow186.prod.google.com}, {axisId: udm_events.count, id: vortex.data.microsoft.com
              - udm_events.count, name: vortex.data.microsoft.com}, {axisId: udm_events.count,
            id: voll2.prod.google.com - udm_events.count, name: voll2.prod.google.com},
          {axisId: udm_events.count, id: vkglinux.c.googlers.com - udm_events.count,
            name: vkglinux.c.googlers.com}, {axisId: udm_events.count, id: uplinkconfig.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uplinkconfig.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uplinkconfig.corp.google.com - udm_events.count,
            name: uplinkconfig.corp.google.com}, {axisId: udm_events.count, id: update.googleapis.com
              - udm_events.count, name: update.googleapis.com}, {axisId: udm_events.count,
            id: up.googleplex.com - udm_events.count, name: up.googleplex.com}, {
            axisId: udm_events.count, id: up.corp.google.com - udm_events.count, name: up.corp.google.com},
          {axisId: udm_events.count, id: uotddujvreq.svl.corp.google.com - udm_events.count,
            name: uotddujvreq.svl.corp.google.com}, {axisId: udm_events.count, id: uotddujvreq.prodz.google.com
              - udm_events.count, name: uotddujvreq.prodz.google.com}, {axisId: udm_events.count,
            id: uotddujvreq.prod.google.com - udm_events.count, name: uotddujvreq.prod.google.com},
          {axisId: udm_events.count, id: uotddujvreq.google.com - udm_events.count,
            name: uotddujvreq.google.com}, {axisId: udm_events.count, id: uotddujvreq.corp.google.com
              - udm_events.count, name: uotddujvreq.corp.google.com}, {axisId: udm_events.count,
            id: uotddujvreq - udm_events.count, name: uotddujvreq}, {axisId: udm_events.count,
            id: unruffled.corp.google.com - udm_events.count, name: unruffled.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prodz.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prodz.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.prod.google.com
              - udm_events.count, name: uberproxy.corp.google.com.prod.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.mtv.corp.google.com
              - udm_events.count, name: uberproxy.corp.google.com.mtv.corp.google.com},
          {axisId: udm_events.count, id: uberproxy.corp.google.com.google.com - udm_events.count,
            name: uberproxy.corp.google.com.google.com}, {axisId: udm_events.count,
            id: uberproxy.corp.google.com.corp.google.com - udm_events.count, name: uberproxy.corp.google.com.corp.google.com}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Time
    series_types: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time: udm_events.event_timestamp_time
      Domain: udm_events.full_domain
    row: 12
    col: 8
    width: 16
    height: 6
  - title: Recent UDM Events
    name: Recent UDM Events
    model: block_google_chronicle
    explore: udm_events
    type: looker_grid
    fields: [udm_events__metadata.product_name, udm_events.metadata_product_event_type_as_string,
      udm_events__principal.hostname, udm_events__principal.ip, udm_events__target.hostname,
      udm_events__target.ip, udm_events__target.port, udm_events__network__dns__questions.name,
      udm_events__network__dns__answers.name, udm_events.domain]
    sorts: [udm_events__metadata.product_name]
    limit: 100
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
      udm_events__metadata.product_name: Product
      udm_events.metadata_product_event_type_as_string: Event Type
      udm_events__principal_hostname: Principal Hostname
      udm_events__principal.ip: Source IP
      udm_events__target.ip[SAFE_OFFSET(0)]: Destination IP
      udm_events__target.port: Target Port
      udm_events__network__dns__questions.name: DNS Question Name
      udm_events__network__dns__answers.name: DNS Answer Name
      udm_events.domain: Domain
      udm_events__target.hostname: Target Hostname
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    defaults_version: 1
    listen:
      Time: udm_events.event_timestamp_time
      Domain: udm_events.full_domain
    row: 18
    col: 0
    width: 24
    height: 6
  filters:
  - name: Domain
    title: Domain
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
    field: udm_events.full_domain
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
    field: udm_events.period_filter
