view: denrichment_clients {
  sql_table_name: `adsmovil-reports.Adsmovil_Reports.denrichment_clients` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: city_home {
    type: string
    sql: ${TABLE}.city_home ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: email_cliente {
    type: string
    sql: ${TABLE}.email_cliente ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: nivsocio {
    type: string
    sql: ${TABLE}.nivsocio ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: unique_id {
    type: string
    sql: ${TABLE}.unique_id ;;
  }
  measure: count {
    type: count
    drill_fields: [app_name, campaign_name]
  }
  measure: sum_impressions {
    group_label: "Measures"
    type: sum
    label: "impressions"
    sql: ${TABLE}.impressions ;;
    value_format: "#,##0"

  }
  measure: sum_clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
    value_format: "#,##0"
  }

}
