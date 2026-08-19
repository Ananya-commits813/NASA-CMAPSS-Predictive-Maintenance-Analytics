
import os
from dotenv import load_dotenv
import mysql.connector
import streamlit as st 

load_dotenv()


def connection_to_database():
    try:
        conn = mysql.connector.connect(
            host=st.secrets["DB_HOST"],
            port=int(st.secrets["DB_PORT"]),
            database=st.secrets["DB_NAME"],
            user=st.secrets["DB_USER"],
            password=st.secrets["DB_PASSWORD"]
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




