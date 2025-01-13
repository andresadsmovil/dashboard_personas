view: report_store_attribution_gender {
  sql_table_name: `looker_ml.report_store_attribution_gender` ;;

  dimension: cant {
    type: number
    sql: ${TABLE}.cant ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
