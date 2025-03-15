view: report_category {
  sql_table_name: `adsmovil-reports.store_attribution.report_category` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
  measure: qty_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }
}
