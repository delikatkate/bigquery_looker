view: alert_ingestion {
  sql_table_name: `kdataset.alert_ingestion`
    ;;

  dimension: alert_group_identifier {
    type: string
    sql: ${TABLE}.AlertGroupIdentifier ;;
  }

  dimension: case_id {
    type: number
    sql: ${TABLE}.CaseId ;;
  }

  dimension: connector_instance_identifier {
    type: string
    sql: ${TABLE}.ConnectorInstanceIdentifier ;;
  }

  dimension_group: creation_time_ms {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreationTimeMs ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
