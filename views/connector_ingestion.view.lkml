view: connector_ingestion {
  sql_table_name: `kdataset.connector_ingestion`
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

  dimension: creation_time {
    hidden: yes
    sql: ${TABLE}.CreationTime ;;
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
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: connector_ingestion__creation_time {
  dimension_group: connector_ingestion__creation {
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
    sql: connector_ingestion__creation_time ;;
  }
}
