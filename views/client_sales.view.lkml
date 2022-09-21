view: client_sales {
  derived_table: {
    sql:
       SELECT 1 id, 1 client_id, 'Dog' department, 10 amount
       UNION ALL
       SELECT 2 id, 1 client_id, 'Dog' department, 20 amount
       UNION ALL
       SELECT 3 id, 2 client_id, 'Cat' department, 10 amount
       UNION ALL
       SELECT 4 id, 2 client_id, 'Dog' department, 35 amount
       UNION ALL
       SELECT 5 id,  2 client_id, 'Dog' department, 10 amount
       UNION ALL
       SELECT 6 id, 3 client_id, 'Dog' department, 35 amount
       UNION ALL
       SELECT 7 id, 3 client_id, 'Cat' department, 40 amount
       UNION ALL
       SELECT 8 id, 3 client_id, 'Cat' department, 35 amount
       ;;

    indexes: ["id", "client_id"]
  }

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    label: "Client ID"
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: Amount {
    label: "Amount"
    type:  number
    sql: ${TABLE}.amount ;;
  }

  measure: count {
    label: "# of Payments"
    type: count
  }

}
