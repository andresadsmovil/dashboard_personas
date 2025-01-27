view: report_store_attribution_gender {
  sql_table_name: `looker_ml.report_store_attribution_gender` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: codigo_estado {
    type: string
    sql: ${TABLE}.codigo_estado ;;
  }
  dimension: codigo_municipio {
    type: string
    sql: ${TABLE}.codigo_municipio ;;
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
}
