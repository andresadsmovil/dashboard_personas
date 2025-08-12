project_name: "dashboard_personas"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }



  localization_settings: {
    default_locale: "es_ES"
    #localization_level: "strict"
    }

# Esta sección le dice a Looker que use tu archivo como una visualización
# y le da un nombre para que aparezca en el menú.
visualization: {
  id: "pictograma_genero_viz"
  label: "Pictograma Género"
  file: "pictograma_genero_viz.js"
}
