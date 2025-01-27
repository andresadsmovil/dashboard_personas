view: report_store_attribution_mobility {
  sql_table_name: `looker_ml.report_store_attribution_mobility` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: cant {
    type: number
    sql: ${TABLE}.cant ;;
  }
  dimension: codigo_estado {
    type: string
    sql: ${TABLE}.codigo_estado ;;
  }
  dimension: codigo_municipio {
    type: string
    sql: ${TABLE}.codigo_municipio ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  measure: count {
    type: count
  }
}
