view: adsmovil_campaigns_performance_porcentage {
  sql_table_name: `looker_ml.adsmovil_campaigns_performance_porcentage` ;;

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }
  dimension: campaign_budget {
    type: number
    sql: ${TABLE}.campaign_budget ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: margin {
    type: number
    sql: ${TABLE}.margin ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: sales_model {
    type: string
    sql: ${TABLE}.sales_model ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
  measure: porcentage {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.porcentage ;;
  }
}
