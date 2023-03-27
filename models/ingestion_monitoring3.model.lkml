connection: "kate_big_query"

# include all the views
include: "/views/**/*.view"

datagroup: ingestion_monitoring3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ingestion_monitoring3_default_datagroup

explore: alert_ingestion {}

explore: ktable {}

explore: connector_ingestion {
  join: connector_ingestion__creation_time {
    view_label: "Connector Ingestion: Creationtime"
    sql: LEFT JOIN UNNEST(${connector_ingestion.creation_time}) as connector_ingestion__creation_time ;;
    relationship: one_to_many
  }
}

explore: ksimple {}
