view: salary {
  sql_table_name: demo_db.Salary ;;

  dimension: dept_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DeptID ;;
  }



  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
    html: {% if value < 25 %}
      <p style="color: black; background-color: #FF8168; font-size:100%; text-align:center">{{ "poor man" }}</p>
    {% elsif value > 65  %}
      <p style="color: black; background-color: #e84853; font-size:100%; text-align:center">{{ "good enough" }}</p>
    {% else %}
      <p style="color: black; background-color: #E8710A; font-size:100%; text-align:center">{{ "this man rocks" }}</p>
    {% endif %} ;;
  }

  measure: count {
    type: count
    drill_fields: [dept.dept_id, dept.dept_name]
  }
}
