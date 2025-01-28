# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: report_campaign_insights {
#   hidden: yes
#     join: report_campaign_insights__age {
#       view_label: "Report Campaign Insights: Age"
#       sql: LEFT JOIN UNNEST(${report_campaign_insights.age}) as report_campaign_insights__age ;;
#       relationship: one_to_many
#     }
#     join: report_campaign_insights__gender {
#       view_label: "Report Campaign Insights: Gender"
#       sql: LEFT JOIN UNNEST(${report_campaign_insights.gender}) as report_campaign_insights__gender ;;
#       relationship: one_to_many
#     }
# }

view: report_campaign_insights {
  sql_table_name: `looker_ml.report_campaign_insights` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: age {
    hidden: yes
    sql: ${TABLE}.age ;;
  }
  dimension: app_bundle {
    type: string
    sql: ${TABLE}.app_bundle ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }
  dimension: city_residence {
    type: string
    sql: ${TABLE}.city_residence ;;
  }
  dimension: city_seen {
    type: string
    sql: ${TABLE}.city_seen ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: gender {
    hidden: yes
    sql: ${TABLE}.gender ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }
  dimension: nivsocio {
    type: string
    sql: ${TABLE}.nivsocio ;;
  }
  dimension: platform_browser {
    type: string
    sql: ${TABLE}.platform_browser ;;
  }
  dimension: platform_device_language {
    type: string
    sql: ${TABLE}.platform_device_language ;;
  }
  dimension: platform_device_make {
    type: string
    sql: ${TABLE}.platform_device_make ;;
  }
  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }
  measure: count {
    type: count
    drill_fields: [line_item_name, campaign_name, account_name, app_name, advertiser_name]
  }
}

# view: report_campaign_insights__age {

#   dimension: report_campaign_insights__age {
#     type: string
#     sql: report_campaign_insights__age ;;
#   }
# }

# view: report_campaign_insights__gender {

#   dimension: report_campaign_insights__gender {
#     type: string
#     sql: report_campaign_insights__gender ;;
#   }
# }
