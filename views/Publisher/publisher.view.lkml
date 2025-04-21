view: publisher {
  sql_table_name: `adsmovil-reports.looker_ml.publisher` ;;
  drill_fields: [publisher_id]

  dimension: publisher_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.publisher_id ;;
  }
  dimension: ad_manager_line_type {
    type: string
    sql: ${TABLE}.adManager_line_type ;;
  }
  dimension: ad_manager_programatic_channel {
    type: string
    sql: ${TABLE}.adManager_programatic_channel ;;
  }
  dimension: ad_unit {
    type: string
    sql: ${TABLE}.ad_unit ;;
  }
  dimension: ad_unit_external_id {
    type: number
    sql: ${TABLE}.ad_unit_external_id ;;
  }
  dimension: ad_unit_id {
    type: number
    sql: ${TABLE}.ad_unit_id ;;
  }
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }
  dimension_group: day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }
  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }
  dimension: negotiation_id {
    type: number
    sql: ${TABLE}.negotiation_id ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: order_name {
    type: string
    sql: ${TABLE}.order_name ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: publisher_external_id {
    type: number
    sql: ${TABLE}.publisher_external_id ;;
  }
  dimension: publisher_name {
    type: string
    sql: ${TABLE}.publisher_name ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: site_external_id {
    type: number
    sql: ${TABLE}.site_external_id ;;
  }
  dimension: site_id {
    type: number
    sql: ${TABLE}.site_id ;;
  }
  dimension: site_name {
    type: string
    sql: ${TABLE}.site_name ;;
  }
  measure: count {
    type: count
    drill_fields: [publisher_id, order_name, country_name, publisher_name, site_name]
  }
  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: video_third_quartile {
    type: sum
    sql: ${TABLE}.video_third_quartile ;;
  }
  measure: video_start {
    type: sum
    sql: ${TABLE}.video_start ;;
  }
  measure: video_midpoint {
    type: sum
    sql: ${TABLE}.video_midpoint ;;
  }
  measure: video_first_quartile {
    type: sum
    sql: ${TABLE}.video_first_quartile ;;
  }
  measure: video_complete {
    type: sum
    sql: ${TABLE}.video_complete ;;
  }
  measure: revenue {
    type: sum
    sql: ${TABLE}.revenue ;;
  }
  measure: negotiation_price {
    type: max
    sql: ${TABLE}.negotiation_price ;;
  }
  measure: request {
    type: max
    sql: ${TABLE}.request ;;
  }
}
