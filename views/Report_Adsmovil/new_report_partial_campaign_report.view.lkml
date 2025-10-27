view: new_report_partial_campaign_report {
  sql_table_name: `Adsmovil_Reports.new_report_partial_campaign_report` ;;

  dimension: age_campaign {
    type: string
    sql: ${TABLE}.age_campaign ;;
  }
  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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
  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
  }
  dimension: gender_campaign {
    type: string
    sql: ${TABLE}.gender_campaign ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
    html: <img src='{{ value }}' width='50' height='50'>;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
    html: <img src='{{ value }}' width='250' height='50'>;;
  }
  dimension: nivsocio_campaign {
    type: string
    sql: ${TABLE}.nivsocio_campaign ;;
  }
  dimension: platform_device_make {
    type: string
    sql: ${TABLE}.platform_device_make ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  measure: video_q3s {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_q3s ;;
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
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: video_plays {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_plays ;;
  }
  measure: clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: qty_users {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.qty_users ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name]
  }
}
