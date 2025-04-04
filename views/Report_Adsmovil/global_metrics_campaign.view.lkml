view: global_metrics_campaign {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.Global_metrics_campaign` ;;

  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  measure: impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
    value_format: "#,##0"
  }
  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
    value_format: "#,##0"
  }
  measure: video_completes {
    type: sum
    sql: ${TABLE}.video_completes ;;
    value_format: "#,##0"
  }
  measure: video_plays {
    type: sum
    sql: ${TABLE}.video_plays ;;
    value_format: "#,##0"
  }
  measure: spend_usd {
    type: sum
    sql: ${TABLE}.spend_usd ;;
    value_format: "#,##0"
  }
  measure: spend {
    type: sum
    sql: ${TABLE}.spend ;;
    value_format: "#,##0"
  }
  measure: campaign_delivered {
    type: sum
    sql: ${TABLE}.campaign_delivered ;;
    value_format: "#,##0"
  }
}
