import mysql.connector
from database import *
from schema import *
import google.genai as genai
import os
from dotenv import load_dotenv
from prompts import SQL_GENERATION_PROMPT
import streamlit as st


load_dotenv()



def generate_sql_from_question(natural_language_query):
    try :
       schema_description = get_schema_from_database()
       api_key = st.secrets["Api_key"]
       client = genai.Client(api_key=api_key)
       prompt = SQL_GENERATION_PROMPT.format(
       schema_description=schema_description,
       natural_language_query=natural_language_query
       )
       response = client.models.generate_content(
       model="gemini-2.5-flash",
       contents=prompt
       )
       sql_query = response.text.strip() 
       return sql_query
    
    except exceptions.ResourceExhausted:
        print("Rate limit exceeded.")
        return None

    except exceptions.InvalidArgument:
        print("Invalid request sent to Gemini.")
        return None

    except exceptions.DeadlineExceeded:
        print("Request timed out.")
        return None

    except exceptions.Unauthenticated:
        print("Invalid or missing API key.")
        return None

    except Exception as e:
        print(f"Model unavailable or unexpected error: {e}")
        return None

def generate_ai_insight(prompt):

    try:

        api_key = st.secrets["Api_key"]

        client = genai.Client(
            api_key=api_key
        )

        response = client.models.generate_content(
            model="gemini-2.5-flash",
            contents=prompt
        )

        return response.text.strip()

    except exceptions.ResourceExhausted:

        return "AI service rate limit exceeded. Please try again later."

    except exceptions.InvalidArgument:

        return "Invalid request sent to Gemini."

    except exceptions.DeadlineExceeded:

        return "Gemini request timed out."

    except exceptions.Unauthenticated:

        return "Invalid or missing Gemini API key."

    except Exception as e:

        return f"AI insight generation failed: {e}"

if __name__ == "__main__":
    natural_language_query = input("Enter your question: ")
    sql_query = generate_sql_from_question(natural_language_query)  
    print(f"Generated sql query for the question given is : {sql_query}") 

    































