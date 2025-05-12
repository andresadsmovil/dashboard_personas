view: adsmovil_geo_reports_coord {
  sql_table_name: `adsmovil-reports.looker_ml.adsmovil_geo_reports_coord` ;;

  dimension: Campaign_ID {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: poi_id {
    type: number
    sql: ${TABLE}.poi_id ;;
  }
  dimension: poi_lat {
    type: number
    sql: ${TABLE}.poi_lat ;;
  }
  dimension: poi_lon {
    type: number
    sql: ${TABLE}.poi_lon ;;
  }
  dimension: ubicacion {
    type: location
    sql_latitude: ${TABLE}.poi_lat ;;
    sql_longitude: ${TABLE}.poi_lon ;;

  }
  dimension: poi_name {
    type: string
    sql: ${TABLE}.poi_name ;;
  }
  dimension: poi_radius {
    type: number
    sql: ${TABLE}.poi_radius ;;
  }

  measure: count {
    type: count
    drill_fields: [poi_name]
  }
  measure: avg_imp {
    type: average
    sql: ${TABLE}.avg_imp_distance_mts ;;
  }

  measure: Clicks {
    type: sum
    sql: ${TABLE}.clk ;;
  }
  measure: CTR {
    type: average
    sql: ${TABLE}.ctr ;;
  }
  measure: Freq {
    type: sum
    sql: ${TABLE}.freq ;;
  }
  measure: Impressions {
    type: sum
    sql: ${TABLE}.imp ;;
  }
  measure: Uniques {
    type: sum
    sql: ${TABLE}.uniques ;;
  }
}
