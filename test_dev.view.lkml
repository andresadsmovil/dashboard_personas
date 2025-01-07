view: test_dev {
  sql_table_name: `adsmovil-reports.looker_ml.partial_campaign_report` ;;

  parameter: language_selector {
    type: unquoted
    allowed_value: {
      label: "Español"
      value: "es"
    }
    allowed_value: {
      label: "English"
      value: "en"
    }
    allowed_value: {
      label: "Português"
      value: "pt"
    }
    default_value: "es"
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
    label: "{% if language_selector._parameter_value == 'es' %} Agencia {% elsif language_selector._parameter_value == 'en' %} Agency {% elsif language_selector._parameter_value == 'pt' %} Agência {% else %} Agencia {% endif %}"
  }

  dimension: anunciante {
    type: string
    sql: ${TABLE}.anunciante ;;
    label: "{% if language_selector._parameter_value == 'es' %} Anunciante {% elsif language_selector._parameter_value == 'en' %} Advertiser {% elsif language_selector._parameter_value == 'pt' %} Anunciante {% else %} Anunciante {% endif %}"
  }

  dimension: campaign_delivered {
    type: number
    sql: ${TABLE}.campaign_delivered ;;
    label: "{% if language_selector._parameter_value == 'es' %} Campañas Entregadas {% elsif language_selector._parameter_value == 'en' %} Campaign Delivered {% elsif language_selector._parameter_value == 'pt' %} Campanhas Entregues {% else %} Campañas Entregadas {% endif %}"
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
    label: "{% if language_selector._parameter_value == 'es' %} ID de Campaña {% elsif language_selector._parameter_value == 'en' %} Campaign ID {% elsif language_selector._parameter_value == 'pt' %} ID da Campanha {% else %} ID de Campaña {% endif %}"
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
    html: <H4 style= <div style="font-size: 15px; text-align: center;"; style="color:#C14098">{{value}}</H4>;;
    label: "{% if language_selector._parameter_value == 'es' %} Nombre de Campaña {% elsif language_selector._parameter_value == 'en' %} Campaign Name {% elsif language_selector._parameter_value == 'pt' %} Nome da Campanha {% else %} Nombre de Campaña {% endif %}"
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    label: "{% if language_selector._parameter_value == 'es' %} Ciudad {% elsif language_selector._parameter_value == 'en' %} City {% elsif language_selector._parameter_value == 'pt' %} Cidade {% else %} Ciudad {% endif %}"
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
    label: "{% if language_selector._parameter_value == 'es' %} Clics {% elsif language_selector._parameter_value == 'en' %} Clicks {% elsif language_selector._parameter_value == 'pt' %} Cliques {% else %} Clics {% endif %}"
  }

  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
    label: "{% if language_selector._parameter_value == 'es' %} ID Creativo {% elsif language_selector._parameter_value == 'en' %} Creative ID {% elsif language_selector._parameter_value == 'pt' %} ID Criativo {% else %} ID Creativo {% endif %}"
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
    label: "{% if language_selector._parameter_value == 'es' %} Nombre del Creativo {% elsif language_selector._parameter_value == 'en' %} Creative Name {% elsif language_selector._parameter_value == 'pt' %} Nome do Criativo {% else %} Nombre del Creativo {% endif %}"
  }

  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
    label: "{% if language_selector._parameter_value == 'es' %} Tamaño del Creativo {% elsif language_selector._parameter_value == 'en' %} Creative Size {% elsif language_selector._parameter_value == 'pt' %} Tamanho do Criativo {% else %} Tamaño del Creativo {% endif %}"
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
    label: "{% if language_selector._parameter_value == 'es' %} Fecha {% elsif language_selector._parameter_value == 'en' %} Date {% elsif language_selector._parameter_value == 'pt' %} Data {% else %} Fecha {% endif %}"
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
    label: "{% if language_selector._parameter_value == 'es' %} Día de la Semana {% elsif language_selector._parameter_value == 'en' %} Day of the Week {% elsif language_selector._parameter_value == 'pt' %} Dia da Semana {% else %} Día de la Semana {% endif %}"
  }

  dimension_group: end_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
    label: "{% if language_selector._parameter_value == 'es' %} Fecha Final {% elsif language_selector._parameter_value == 'en' %} End Date {% elsif language_selector._parameter_value == 'pt' %} Data Final {% else %} Fecha Final {% endif %}"
  }

  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
    label: "{% if language_selector._parameter_value == 'es' %} Tipo de Entorno {% elsif language_selector._parameter_value == 'en' %} Environment Type {% elsif language_selector._parameter_value == 'pt' %} Tipo de Ambiente {% else %} Tipo de Entorno {% endif %}"
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
    label: "{% if language_selector._parameter_value == 'es' %} Impresiones {% elsif language_selector._parameter_value == 'en' %} Impressions {% elsif language_selector._parameter_value == 'pt' %} Impressões {% else %} Impresiones {% endif %}"
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
    label: "{% if language_selector._parameter_value == 'es' %} Conteo {% elsif language_selector._parameter_value == 'en' %} Count {% elsif language_selector._parameter_value == 'pt' %} Contagem {% else %} Conteo {% endif %}"
  }

  measure: sum_impressions {
    group_label: "Measures"
    type: sum
    sql: ${impressions} ;;
    label: "{% if language_selector._parameter_value == 'es' %} Suma de Impresiones {% elsif language_selector._parameter_value == 'en' %} Sum of Impressions {% elsif language_selector._parameter_value == 'pt' %} Soma de Impressões {% else %} Suma de Impresiones {% endif %}"
  }

  measure: sum_clicks {
    group_label: "Measures"
    type: sum
    sql: ${clicks} ;;
    label: "{% if language_selector._parameter_value == 'es' %} Suma de Clics {% elsif language_selector._parameter_value == 'en' %} Sum of Clicks {% elsif language_selector._parameter_value == 'pt' %} Soma de Cliques {% else %} Suma de Clics {% endif %}"
  }

  dimension: CID {
    type: string
    sql: ${TABLE}.line ;;
    label: "{% if language_selector._parameter_value == 'es' %} CID {% elsif language_selector._parameter_value == 'en' %} CID {% elsif language_selector._parameter_value == 'pt' %} CID {% else %} CID {% endif %}"
  }

  dimension: model_type {
    type: string
    sql: ${TABLE}.model_type ;;
    label: "{% if language_selector._parameter_value == 'es' %} Tipo de Modelo {% elsif language_selector._parameter_value == 'en' %} Model Type {% elsif language_selector._parameter_value == 'pt' %} Tipo de Modelo {% else %} Tipo de Modelo {% endif %}"
  }

  dimension: object {
    type: number
    sql: ${TABLE}.object ;;
    label: "{% if language_selector._parameter_value == 'es' %} Objeto {% elsif language_selector._parameter_value == 'en' %} Object {% elsif language_selector._parameter_value == 'pt' %} Objeto {% else %} Objeto {% endif %}"
  }

  dimension: orden {
    type: string
    sql: ${TABLE}.orden ;;
    label: "{% if language_selector._parameter_value == 'es' %} Orden {% elsif language_selector._parameter_value == 'en' %} Order {% elsif language_selector._parameter_value == 'pt' %} Ordem {% else %} Orden {% endif %}"
  }

  dimension: platform_device_make {
    type: string
    sql: ${TABLE}.platform_device_make ;;
    label: "{% if language_selector._parameter_value == 'es' %} Marca del Dispositivo {% elsif language_selector._parameter_value == 'en' %} Device Make {% elsif language_selector._parameter_value == 'pt' %} Marca do Dispositivo {% else %} Marca del Dispositivo {% endif %}"
  }

  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
    label: "{% if language_selector._parameter_value == 'es' %} Tipo de Dispositivo {% elsif language_selector._parameter_value == 'en' %} Device Type {% elsif language_selector._parameter_value == 'pt' %} Tipo de Dispositivo {% else %} Tipo de Dispositivo {% endif %}"
  }

  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
    label: "{% if language_selector._parameter_value == 'es' %} Sistema Operativo {% elsif language_selector._parameter_value == 'en' %} Operating System {% elsif language_selector._parameter_value == 'pt' %} Sistema Operacional {% else %} Sistema Operativo {% endif %}"
  }

  dimension_group: start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
    label: "{% if language_selector._parameter_value == 'es' %} Fecha de Inicio {% elsif language_selector._parameter_value == 'en' %} Start Date {% elsif language_selector._parameter_value == 'pt' %} Data de Início {% else %} Fecha de Inicio {% endif %}"
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    label: "{% if language_selector._parameter_value == 'es' %} Estado {% elsif language_selector._parameter_value == 'en' %} State {% elsif language_selector._parameter_value == 'pt' %} Estado {% else %} Estado {% endif %}"
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
    label: "{% if language_selector._parameter_value == 'es' %} ID de Usuario {% elsif language_selector._parameter_value == 'en' %} User ID {% elsif language_selector._parameter_value == 'pt' %} ID do Usuário {% else %} ID de Usuario {% endif %}"
  }

  measure: count_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${user_id} ;;
    label: "{% if language_selector._parameter_value == 'es' %} Usuarios Únicos {% elsif language_selector._parameter_value == 'en' %} Unique Users {% elsif language_selector._parameter_value == 'pt' %} Usuários Únicos {% else %} Usuarios Únicos {% endif %}"
  }

  measure: max_object {
    group_label: "Measures"
    type: max
    sql: ${object} ;;
    label: "{% if language_selector._parameter_value == 'es' %} Máximo de Objeto {% elsif language_selector._parameter_value == 'en' %} Max Object {% elsif language_selector._parameter_value == 'pt' %} Objeto Máximo {% else %} Máximo de Objeto {% endif %}"
  }

  measure: sum_campaign_delivered {
    group_label: "Measures"
    type: sum
    sql: ${campaign_delivered} ;;
    label: "{% if language_selector._parameter_value == 'es' %} Suma de Campañas Entregadas {% elsif language_selector._parameter_value == 'en' %} Sum of Campaigns Delivered {% elsif language_selector._parameter_value == 'pt' %} Soma de Campanhas Entregues {% else %} Suma de Campañas Entregadas {% endif %}"
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
    label: "{% if language_selector._parameter_value == 'es' %} Hora {% elsif language_selector._parameter_value == 'en' %} Hour {% elsif language_selector._parameter_value == 'pt' %} Hora {% else %} Hora {% endif %}"
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
    html: <img src='{{ value }}' width='50' height='50'>;;
    label: "{% if language_selector._parameter_value == 'es' %} URL de Imagen {% elsif language_selector._parameter_value == 'en' %} Image URL {% elsif language_selector._parameter_value == 'pt' %} URL da Imagem {% else %} URL de Imagen {% endif %}"
  }

}
