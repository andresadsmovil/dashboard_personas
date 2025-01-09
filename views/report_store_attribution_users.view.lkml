view: report_store_attribution_users {
  sql_table_name: `adsmovil-reports.looker_ml.report_store_attribution_users` ;;

  dimension: cant {
    type: number
    sql: ${TABLE}.cant ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension: geolo {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lon} ;;
    # sql: ${TABLE}.device_lat ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.cant ;;
  }
  measure: count {
    type: count
  }
}
