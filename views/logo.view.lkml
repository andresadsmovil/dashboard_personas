view: logo {
  sql_table_name: `adsmovil-reports.looker_ml.logo` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
    html: "<img src='{{ logo }}' style='max-width: 100px; max-height: 50px;'/>" ;;
  }
  measure: count {
    type: count
  }
}
