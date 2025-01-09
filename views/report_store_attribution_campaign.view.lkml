view: report_store_attribution_campaign {
  sql_table_name: `looker_ml.report_store_attribution_campaign` ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
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
    sql:  ${TABLE}.clicks ;;
  }
  measure: ctr {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.CTR ;;
  }
  measure: frecuency {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.frecuency ;;
  }
  measure: delivery_porcentage {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.delivery_porcentage ;;
  }
  measure: reach {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.reach ;;
  }
  measure: total_sales {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.total_sales ;;
  }
}
