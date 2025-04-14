view: report_socio {
  sql_table_name: `adsmovil-reports.store_attribution.report_socio` ;;

  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: city_residence {
    type: string
    sql: ${TABLE}.city_residence ;;
  }
  dimension: nivsocio {
    type: string
    sql: ${TABLE}.nivsocio ;;
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
