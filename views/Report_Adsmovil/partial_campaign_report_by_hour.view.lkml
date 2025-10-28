view: partial_campaign_report_by_hour {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.partial_campaign_report_by_hour` ;;

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: agency_name {
    type: string
    sql: ${TABLE}.agency_name ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign_Name ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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
  dimension_group: date_by_hour {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_by_hour ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_Date ;;
  }
  dimension: flag {
    type: string
    sql: ${TABLE}.flag ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
    html: <img src='{{ value }}' width='50' height='50'>;
  }
  dimension: line_country {
    type: string
    sql: ${TABLE}.line_country ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }
  dimension: sale_model {
    type: string
    sql: ${TABLE}.sale_model ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, agency_name, advertiser_name]
  }
  measure: audio_plays {
    type: sum
    sql: ${TABLE}.audio_plays ;;
  }
  measure: audio_q1s {
    type: sum
    sql: ${TABLE}.audio_q1s ;;
  }
  measure: audio_midpoints {
    type: sum
    sql: ${TABLE}.audio_midpoints ;;
  }
  measure: audio_q3s {
    type: sum
    sql: ${TABLE}.audio_q3s ;;
  }
  measure: audio_completes {
    type: sum
    sql: ${TABLE}.audio_completes ;;
  }
  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: video_plays {
    type: sum
    sql: ${TABLE}.video_plays ;;
  }
  measure: video_q1s {
    type: sum
    sql: ${TABLE}.video_q1s ;;
  }
  measure: video_midpoints {
    type: sum
    sql: ${TABLE}.video_midpoints ;;
  }
  measure: video_q3s {
    type: sum
    sql: ${TABLE}.video_q3s ;;
  }
  measure: flag_metrics {
    type: sum
    sql: ${TABLE}.flag_metrics ;;
  }
  measure: video_completes {
    type: sum
    sql: ${TABLE}.video_completes ;;
  }
  measure: object {
    type: max
    sql: ${TABLE}.object ;;
  }

}
