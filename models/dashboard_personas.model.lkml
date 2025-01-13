connection: "salesforce"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: campaign_usa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: campaign_usa_default_datagroup


explore: binnicle_self_service {}

explore: partial_campaign_report {}

explore: report_store_attribution_campaign {}
explore: report_store_attribution_users {}
explore: report_store_attribution_finished {}
explore: report_store_attribution_gender {}
