view: report_campaign {
  sql_table_name: `adsmovil-reports.store_attribution.report_campaign` ;;

  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_id_grouped {
    type: string
    sql: ${TABLE}.campaign_id_grouped ;;
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
  measure: clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
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
  measure: ctr {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.ctr ;;
  }
  measure: spend_usd {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.spend_usd ;;
  }
  measure: delivery_porcentage {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.delivery_porcentage ;;
  }
  measure: total_sales {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.total_sales ;;
  }
}
