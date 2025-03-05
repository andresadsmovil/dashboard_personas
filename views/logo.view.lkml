view: logo {
  sql_table_name: `adsmovil-reports.looker_ml.logo` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
    html: <img src='{{ value }}' width='250' height='50'>;;

  }

  measure: count {
    type: count
  }


}
