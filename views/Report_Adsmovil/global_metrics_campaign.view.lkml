view: global_metrics_campaign {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.Global_metrics_campaign` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  measure: count {
    type: count
  }
  measure: global_impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
    value_format: "#,##0"
  }
  measure: global_clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
    value_format: "#,##0"
  }
  measure: global_video_completes {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_completes ;;
    value_format: "#,##0"
  }
  measure: global_video_plays {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.video_plays ;;
    value_format: "#,##0"
  }
  measure: global_spend_usd {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.spend_usd ;;
    value_format: "#,##0"
  }
  measure: global_spend {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.spend ;;
    value_format: "#,##0"
  }
}
