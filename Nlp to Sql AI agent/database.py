
import os
from dotenv import load_dotenv
import mysql.connector


load_dotenv()


def connection_to_database():
    try:
        conn = mysql.connector.connect(
            host=os.getenv("DB_HOST"),
            port=os.getenv("DB_PORT"),
            database=os.getenv("DB_NAME"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD")
        )

        if conn.is_connected():
            print("Connected to the database")
            return conn
        else:
            print("Failed to connect to the database")
            return None

    except mysql.connector.Error as err:
        print(f"Error connecting to database: {err}")
        return None




