view: report_campaign {
  sql_table_name: `adsmovil-reports.store_attribution.report_campaign` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
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
  dimension: frecuency {
    type: number
    sql: ${TABLE}.frecuency ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
