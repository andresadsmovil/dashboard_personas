view: report_gender {
  sql_table_name: `adsmovil-reports.store_attribution.report_gender` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
