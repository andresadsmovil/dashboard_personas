view: report_audio_basis {
  sql_table_name: `adsmovil-reports.looker_ml.report_audio_basis` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: auction_id {
    type: string
    sql: ${TABLE}.auction_id ;;
  }
  dimension_group: bit {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.bit_time ;;
  }
  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: CID {
    type: string
    sql: ${TABLE}.CID;;
  }
  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
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
  dimension: hour {
    type: number
    sql: EXTRACT(HOUR FROM PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S', ${bit_time})) ;;
    description: "Hour extracted from bit_time"
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: date_utc {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_utc ;;
  }



  dimension: day_of_week {
    type: string
    sql:  ${TABLE}.day_of_week  ;;
    order_by_field: day_of_week
    description: "Día de la semana ordenado correctamente"
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }
  dimension: deal_name {
    type: string
    sql: ${TABLE}.deal_name ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.End_Date ;;
  }
  dimension: media_spend {
    type: number
    sql: ${TABLE}.media_spend ;;
  }
   dimension: platform_browser {
    type: string
    sql: ${TABLE}.platform_browser ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.total_spend ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }
  dimension: video_skip {
    type: number
    sql: ${TABLE}.video_skip ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, brand_name, app_name, deal_name]
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: video_start {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_start ;;
  }
  measure: video_complete {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_complete ;;
  }
  measure: user_id {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }
  measure: reach {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.auction_id ;;
  }
  measure: cumulative_imp {
    type: number
    sql: SUM(${impressions}) OVER (ORDER BY ${date_date}) ;;
    description: "imp acumuladas"
  }
  measure: cumulative_weekly_impressions {
    type: number
    sql: SUM(${impressions}) OVER (PARTITION BY EXTRACT(ISOWEEK FROM ${date_date}), EXTRACT(ISOWEEK FROM ${date_date}) ORDER BY ${date_date}) ;;
    description: "Impresiones acumuladas por semana"
  }
  measure: first_quartile {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.first_quartile ;;
  }
  measure: midpoint {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.midpoint ;;
  }
  measure: third_quartile {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.third_quartile ;;
  }
}
