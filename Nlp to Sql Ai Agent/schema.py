
import mysql.connector
from dotenv import load_dotenv
import os
import streamlit as st 

load_dotenv()


def get_schema_from_database(selected_table):

    conn = mysql.connector.connect(
        host=st.secrets["DB_HOST"],
        port=int(st.secrets["DB_PORT"]),
        database=st.secrets["DB_NAME"],
        user=st.secrets["DB_USER"],
        password=st.secrets["DB_PASSWORD"]
    )

    cursor = conn.cursor()

    
    cursor.execute("""
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = %s
    AND table_name = %s
""", (st.secrets["DB_NAME"], selected_table))

    tables = cursor.fetchall()

    schema_description = ""

    if not tables:
       cursor.close()
       conn.close()
       return ""
    
    table_name = tables[0][0]

    schema_description += f"\nTable: {table_name}\n"
  
    cursor.execute("""
    SELECT column_name, data_type
    FROM information_schema.columns
    WHERE table_schema = %s
    AND table_name = %s
    """, (st.secrets["DB_NAME"], table_name))

    columns = cursor.fetchall()

    for column, data_type in columns:

        schema_description += (
             f"  Column: {column}, Type: {data_type}\n"
    )

    cursor.close()
    conn.close()

    return schema_description

if __name__ == "__main__":

    selected_table = input(
        "Enter table name: "
    )

    schema_description = get_schema_from_database(
        selected_table
    )

    print(schema_description)

