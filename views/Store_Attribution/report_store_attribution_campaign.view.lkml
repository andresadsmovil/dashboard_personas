view: report_store_attribution_campaign {
  sql_table_name: `looker_ml.report_store_attribution_campaign` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension: delivery_porcentage {
    type: number
    sql: ${TABLE}.delivery_porcentage ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
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
    drill_fields: [campaign_name]
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: total_sales {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.total_sales ;;
  }
  measure: reach {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.reach ;;
  }
  measure: frecuency {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.frecuency ;;
  }
  measure: minute_duration_Avg {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.minute_duration_Avg ;;
  }
}
