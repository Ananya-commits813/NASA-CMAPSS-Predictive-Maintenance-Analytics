from database import connection_to_database
from schema import *
import mysql.connector
import google.genai as genai


def test_query_connection(sql_query):
    connection = connection_to_database()

    cursor = connection.cursor()

    cursor.execute(sql_query)

    rows = cursor.fetchall()

    for row in rows:
        print(row)

    cursor.close()
    connection.close()


if __name__ == "__main__":
    sql_query = "select * from engine_train_telemetry limit 5"
    test_query_connection(sql_query)






    

