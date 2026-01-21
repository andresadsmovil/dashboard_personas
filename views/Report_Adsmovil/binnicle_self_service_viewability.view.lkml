view: binnicle_self_service_viewability {
  sql_table_name: `adsmovil-reports.looker_ml.binnicle_self_service_viewability` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension_group: day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }

  measure: count {
    type: count
    drill_fields: [line_item_name, campaign_name]
  }
  measure: Viewable_Impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.Viewable_Impressions ;;
  }
  measure: measurable_impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.measurable_impressions ;;
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
}
