view: report_mobility {
  sql_table_name: `adsmovil-reports.store_attribution.report_mobility` ;;

  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension: time_in_place {
    type: string
    sql: ${TABLE}.time_in_place ;;
  }
  measure: count {
    type: count
  }
  measure: qty_user {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.qty_user ;;
  }
}
