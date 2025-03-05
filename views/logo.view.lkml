view: logo {
  sql_table_name: `adsmovil-reports.looker_ml.logo` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  measure: count {
    type: count
  }
}
