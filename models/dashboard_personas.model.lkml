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


explore: report_audio_basis {
  join: global_metrics_campaign {
    type: inner
    sql_on: ${report_audio_basis.campaign_id} = ${global_metrics_campaign.campaign_id} ;;
    relationship: many_to_one
  }
}

explore: global_metrics_campaign {}


explore: partial_campaign_report {
  join: global_metrics_campaign {
    type: inner
    sql_on: ${partial_campaign_report.campaign_id} = ${global_metrics_campaign.campaign_id} ;;
    relationship: many_to_one
  }
}

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
