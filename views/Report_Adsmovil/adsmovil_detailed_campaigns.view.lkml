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

  dimension: cpc {
    type: string
    sql: ${TABLE}.CPC ;;
  }
  dimension: cpm {
    type: string
    sql: ${TABLE}.CPM ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension: ctr {
    type: string
    sql: ${TABLE}.CTR ;;
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
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: vcr {
    type: string
    sql: ${TABLE}.VCR ;;
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
    sql: ${TABLE}.impressions ;;


  }
  measure: video_completes {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_completes ;;
  }

}
