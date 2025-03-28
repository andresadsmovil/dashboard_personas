connection: "salesforce"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: campaign_usa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: campaign_usa_default_datagroup


explore: binnicle_self_service {}
explore: adsmovil_campaigns_performance_porcentage {}


explore: report_audio_basis {}
explore: partial_campaign_report {}
explore: report_campaign_insights {}




## Store Attribution

explore: report_campaign {}
explore: report_gender {}
explore: report_pois {}
explore: report_mobility {}
explore: report_mobility_attribution {}
explore: report_mobility_clicks {}
explore: report_socio {}
explore: report_category {}
