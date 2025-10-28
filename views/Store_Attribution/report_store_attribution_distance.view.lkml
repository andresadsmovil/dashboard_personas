# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: report_store_attribution_distance {
  hidden: yes
    join: report_store_attribution_distance__distance {
      view_label: "Report Store Attribution Distance: Distance"
      sql: LEFT JOIN UNNEST(${report_store_attribution_distance.distance}) as report_store_attribution_distance__distance ;;
      relationship: one_to_many
    }
}
view: report_store_attribution_distance {
  sql_table_name: `adsmovil-reports.store_attribution.report_store_attribution_distance` ;;

  dimension: attribution {
    type: number
    sql: ${TABLE}.attribution ;;
  }
  dimension: campaign {
    type: number
    sql: ${TABLE}.campaign ;;
  }
  dimension: distance {
    hidden: yes
    sql: ${TABLE}.distance ;;
  }
  dimension: distance_to_check {
    type: number
    sql: ${TABLE}.distance_to_check ;;
  }
  dimension: flag_x_1 {
    type: yesno
    sql: ${TABLE}.flag_x_1 ;;
  }
  dimension: flag_x_2 {
    type: yesno
    sql: ${TABLE}.flag_x_2 ;;
  }
  dimension: flag_x_3 {
    type: yesno
    sql: ${TABLE}.flag_x_3 ;;
  }
  dimension: total_qty_user {
    type: number
    sql: ${TABLE}.total_qty_user ;;
  }
  dimension: total_qty_user_x_3 {
    type: number
    sql: ${TABLE}.total_qty_user_x_3 ;;
  }
  dimension: total_qty_user_x_dos {
    type: number
    sql: ${TABLE}.total_qty_user_x_dos ;;
  }
  dimension: total_sale {
    type: number
    sql: ${TABLE}.total_sale ;;
  }
  measure: count {
    type: count
  }
}

view: report_store_attribution_distance__distance {

  dimension: report_store_attribution_distance__distance {
    type: number
    sql: report_store_attribution_distance__distance ;;
  }
}
