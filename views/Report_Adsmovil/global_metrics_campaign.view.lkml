view: global_metrics_campaign {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.Global_metrics_campaign` ;;

  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
    html: <H4 style= <div style="font-size: 15px; text-align: center;"; style="color:#C14098">{{value}}</H4>;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
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
  measure: audio_completes {
    type: sum
    sql: ${TABLE}.audio_completes ;;
    value_format: "#,##0"
  }
  measure: audio_plays {
    type: sum
    sql: ${TABLE}.audio_plays ;;
    value_format: "#,##0"
  }
  measure: quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
    value_format: "#,##0"
  }
}
