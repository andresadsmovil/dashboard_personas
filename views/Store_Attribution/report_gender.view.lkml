view: report_gender {
  sql_table_name: `adsmovil-reports.store_attribution.report_gender` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_id_grouped {
    type: string
    sql: ${TABLE}.campaign_id_grouped ;;
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
  measure: qty_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }
}
