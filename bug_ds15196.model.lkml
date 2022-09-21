connection: "clarity_base"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: client_sales {
   join: client {
     relationship: many_to_one
     sql_on: ${client.id} = ${client_sales.id} ;;
   }
}
