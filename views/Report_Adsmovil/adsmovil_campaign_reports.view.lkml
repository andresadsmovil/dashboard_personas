view: adsmovil_campaign_reports {
  sql_table_name: `adsmovil-reports.looker_ml.adsmovil_campaign_reports` ;;

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.Advertiser_name ;;
  }
  dimension: audiencia_femenina {
    type: number
    sql: ${TABLE}.Audiencia_femenina ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: client_service {
    type: string
    sql: ${TABLE}.Client_Service ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: edad {
    type: string
    sql: ${TABLE}.edad ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.End_Date ;;
  }
  dimension: estado_linea {
    type: string
    sql: ${TABLE}.Estado_Linea ;;
  }
  dimension_group: fecha_entrega_de_reporte__c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_entrega_de_reporte__c ;;
  }
  dimension: fecha_solicitud_de_reporte__c {
    type: string
    sql: ${TABLE}.fecha_solicitud_de_reporte__c ;;
  }
  dimension: flag {
    type: yesno
    sql: ${TABLE}.flag ;;
  }
  dimension: geo_report {
    type: yesno
    sql: ${TABLE}.Geo_Report ;;
  }
  dimension: has_audence {
    type: yesno
    sql: ${TABLE}.has_audence ;;
  }
  dimension: maker {
    type: string
    sql: ${TABLE}.maker ;;
  }
  dimension: numero_de_orden {
    type: string
    sql: ${TABLE}.numero_de_orden ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: orden_etapa {
    type: string
    sql: ${TABLE}.Orden_Etapa ;;
  }
  dimension: plataforma {
    type: string
    sql: ${TABLE}.Plataforma ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }
  dimension: product_report {
    type: string
    sql: ${TABLE}.Product_Report ;;
  }
  dimension: sales_model {
    type: string
    sql: ${TABLE}.sales_model ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }
  dimension: type_report {
    type: string
    sql: ${TABLE}.Type_Report ;;
  }
  measure: count {
    type: count
    drill_fields: [advertiser_name, campaign_name, product_name]
  }

  measure: audiencia {
    type: sum
    sql: ${TABLE}.audiencia_masulina ;;
    value_format: "$#,##0"

  }
}
