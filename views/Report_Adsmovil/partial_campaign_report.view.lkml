view: partial_campaign_report {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.partial_campaign_report` ;;

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
    label: "agency"
  }
    dimension: anunciante {
    type: string
    sql: ${TABLE}.anunciante ;;
  }
  dimension: campaign_delivered {
    type: number
    sql: ${TABLE}.campaign_delivered ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: campaign_id {
    type: number
    primary_key: yes
    sql:${TABLE}.campaign_id  ;;
  }
  dimension: line_item_id {
    type: string
    sql:${TABLE}.line_item_id;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
    html: <H4 style= <div style="font-size: 15px; text-align: center;"; style="color:#C14098">{{value}}</H4>;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    label: "city"
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }
  dimension_group: end_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
    html: <img src='{{ value }}' width='50' height='50'>;;
  }
  dimension: CID {
    type: string
    sql: ${TABLE}.line ;;
  }
  dimension: model_type {
    type: string
    sql: ${TABLE}.model_type ;;
  }
  dimension: object {
    type: number
    sql: ${TABLE}.object ;;
  }
  dimension: orden {
    type: string
    sql: ${TABLE}.orden ;;
  }
  dimension: platform_device_make {
    type: string
    sql: ${TABLE}.platform_device_make ;;
  }
  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
  }
  dimension: site_name {
    type: string
    sql: ${TABLE}.site_name ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }
  dimension: content_series {
    type: string
    sql: ${TABLE}.content_series ;;
  }
  dimension: content_tittle {
    type: string
    sql: ${TABLE}.content_tittle ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
    html: <img src='{{ value }}' width='250' height='50'>;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
  measure: sum_impressions {
    group_label: "Measures"
    type: sum
    label: "impressions"
    sql: ${TABLE}.impressions ;;
    value_format: "#,##0"

  }
  measure: sum_clicks {
    group_label: "Measures"
    type: sum
    sql: ${clicks} ;;
    value_format: "#,##0"
  }
  measure: max_object {
    group_label: "Measures"
    type: max
    sql: ${object} ;;
  }
  measure: spend {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.spend ;;
    value_format: "$#,##0"
  }

  measure: sum_campaign_delivered {
    group_label: "Measures"
    type: sum
    sql: ${campaign_delivered} ;;
    value_format: "#,##0"
  }
  measure: video_completes {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_completes ;;
  }
  measure: video_q1s {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_q1s ;;
  }
  measure: video_midpoints {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_midpoints ;;
  }
  measure: video_q3s {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_q3s ;;
  }
  measure: count_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${user_id} ;;
  }
  measure: audio_plays {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.audio_plays ;;
  }
  measure: audio_q1s {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.audio_q1s ;;
  }
  measure: audio_midpoints {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.audio_midpoints ;;
  }
  measure: audio_q3s {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.audio_q3s ;;
  }
  measure: audio_completes {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.audio_completes ;;
  }

}
