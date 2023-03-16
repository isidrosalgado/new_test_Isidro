connection: "thelook"

# include all the views
include: "/views/**/*.view"

datagroup: test_isidro_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_isidro_default_datagroup



explore: imgsrc1onerroralert2 {}

explore: account {}



explore: connection_reg_r3 {}

explore: dept {}

explore: employees {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}



explore: fatal_error_user_derived_base {}

explore: flights {}

explore: human {}

explore: orders {}

explore: incremental_pdts_test {}

explore: ints {}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}


explore: order_status_vijaya {}

explore: pegdates {}

explore: person {}

explore: persons {}

explore: persons2 {}

explore: products {}

explore: salary {
  join: dept {
    type: left_outer
    sql_on: ${salary.dept_id} = ${dept.dept_id} ;;
    relationship: many_to_one
  }
}

explore: saralooker {
  join: users {
    type: left_outer
    sql_on: ${saralooker.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: sindhu {
  join: users {
    type: left_outer
    sql_on: ${sindhu.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}


explore: test {}

explore: order_items {}

explore: users {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
