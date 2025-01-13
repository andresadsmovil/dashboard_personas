view: report_store_attribution_gender {
  sql_table_name: `looker_ml.report_store_attribution_gender` ;;

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
  measure: count_user {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.cant ;;
  }
}
