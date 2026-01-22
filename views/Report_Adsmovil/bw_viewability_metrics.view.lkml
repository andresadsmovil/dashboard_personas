view: bw_viewability_metrics {
  sql_table_name: `adsmovil-data-providers.beeswax.bw_viewability_metrics` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.Account_ID ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.Advertiser_ID ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.Campaign_ID ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.Creative_ID ;;
  }
  dimension_group: day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Day_hour ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.Line_Item_ID ;;
  }
  dimension: measurable_impression__ {
    type: number
    sql: ${TABLE}.Measurable_Impression__ ;;
  }
  dimension: viewability__ {
    type: number
    sql: ${TABLE}.Viewability__ ;;
  }
  measure: viewable_impressions {
    type: sum
    sql: ${TABLE}.viewable_impressions ;;
    value_format: "#,##0"
  }
  measure: Measurable_Impressions {
    type: sum
    sql: ${TABLE}.Measurable_Impressions ;;
    value_format: "#,##0"
  }
  measure: count {
    type: count
  }
}
