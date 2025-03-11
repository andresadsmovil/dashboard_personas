view: report_pois {
  sql_table_name: `adsmovil-reports.store_attribution.report_pois` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
  }
}
