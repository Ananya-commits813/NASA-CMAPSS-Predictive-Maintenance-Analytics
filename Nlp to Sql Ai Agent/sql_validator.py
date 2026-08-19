def clean_sql_query(sql_query):

    sql_query = str(sql_query).strip()

    sql_query = sql_query.replace("```sql", "")
    sql_query = sql_query.replace("```SQL", "")
    sql_query = sql_query.replace("```", "")

    return sql_query.strip()


def validate_sql_query(sql_query,selected_table):

    sql_query = clean_sql_query(sql_query)

    sql_for_check = sql_query.lower()

    if sql_for_check.startswith("select"):
        return True

    return False