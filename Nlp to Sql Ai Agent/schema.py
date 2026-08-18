
import mysql.connector
from dotenv import load_dotenv
import os

load_dotenv()


def get_schema_from_database():

    conn = mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )

    cursor = conn.cursor()

    
    cursor.execute("""
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = %s
    """, (os.getenv("DB_NAME"),))

    tables = cursor.fetchall()

    schema_description = ""

   
    for table in tables:

        table_name = table[0]

        schema_description += f"\nTable: {table_name}\n"

        # Step 3: Get columns of the current table
        cursor.execute("""
            SELECT column_name, data_type
            FROM information_schema.columns
            WHERE table_schema = %s
            AND table_name = %s
        """, (os.getenv("DB_NAME"), table_name))

        columns = cursor.fetchall()

        # Step 4: Loop through every column
        for column, data_type in columns:

            schema_description += (
                f"  Column: {column}, Type: {data_type}\n"
            )

    cursor.close()
    conn.close()

    return schema_description


schema_description = get_schema_from_database()

print(schema_description)

