view: adsmovil_detailed_campaigns {
  sql_table_name: `adsmovil-reports.looker_ml.adsmovil_detailed_campaigns` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
    html: <img src='{{ value }}' width='250' height='50'>;;
  }
  dimension: Advertaiser {
    type: string
    sql: ${TABLE}.Advertaiser ;;
  }
  dimension: Country {
    type: string
    sql: ${TABLE}.Country ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension: sale_model {
    type: string
    sql: ${TABLE}.sale_model ;;
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
  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: model_type {
    type: string
    sql: ${TABLE}.model_type ;;
  }
  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
  }
  dimension: platform_device_make {
    type: string
    sql: ${TABLE}.platform_device_make ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: site_name {
    type: string
    sql: ${TABLE}.site_name ;;
  }
  dimension: Source {
    type: string
    sql: ${TABLE}.Source ;;
  }
  dimension: app_bundle {
    type: string
    sql: ${TABLE}.app_bundle ;;
  }
  dimension: content_tittle {
    type: string
    sql: ${TABLE}.content_tittle ;;
  }
  dimension: content_series {
    type: string
    sql: ${TABLE}.content_series ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    label: "impressions"
    sql: ${TABLE}.impressions ;;

  }
  measure: clicks {
    group_label: "Measures"
    type: sum
    label: "Clicks"
    sql: ${TABLE}.clicks ;;

  }
  measure: video_completes {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_completes ;;

  }
  measure: video_plays {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_plays ;;
  }
  measure: total_sale {
    group_label: "Measures"
    type: max
    label: "total_sale"
    sql: ${TABLE}.total_sale ;;

  }
  measure: audio_completes {
    type: sum
    sql: ${TABLE}.audio_completes ;;

  }
  measure: audio_plays {
    type: sum
    sql: ${TABLE}.audio_plays ;;

  }
}
