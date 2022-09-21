view: client {
   derived_table: {
     sql:
       SELECT 1 id, 'Bob' name
       UNION ALL
       SELECT 2 id, 'Aline' name
       UNION ALL
       SELECT 3 id, 'Jhon' name
       ;;

    indexes: ["id"]
   }

  dimension: id {
    label: "Client ID"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    label: "Client Name"
    type:  string
    sql: ${TABLE}.name ;;
  }

}
