import mysql.connector
from database import *
from schema import *
import google.genai as genai
import os
from dotenv import load_dotenv
from google.api_core import exceptions
from prompts import SQL_GENERATION_PROMPT
import streamlit as st


load_dotenv()



def generate_sql_from_question(natural_language_query,selected_table):
    try :
       schema_description = get_schema_from_database(selected_table)
       api_key = st.secrets["Api_key"]
       client = Groq(api_key=api_key)

       prompt = SQL_GENERATION_PROMPT.format(
       selected_table=selected_table,
       schema_description=schema_description,
       natural_language_query=natural_language_query
       )
       # Generate SQL using Groq
       response = client.chat.completions.create(
       model="openai/gpt-oss-20b",
       messages=[
            {
                "role": "user",
                "content": prompt
            }
        ],
        temperature=0
        )
        # Extract generated SQL
        sql_query = response.choices[0].message.content.strip()

        return sql_query

    
    except exceptions.ResourceExhausted:
        st.error("❌ Gemini API rate limit exceeded.")
        return None

    except exceptions.InvalidArgument as e:
       st.error(f"❌ Invalid Gemini request: {e}")
       return None

    except exceptions.DeadlineExceeded:
       st.error("❌ Gemini request timed out.")
       return None

    except exceptions.Unauthenticated:
      st.error("❌ Gemini API key is invalid or missing.")
      return None

    except Exception as e:
      st.error(f"❌ Gemini/LLM error: {e}")
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

    natural_language_query = input(
        "Enter your question: "
    )

    selected_table = input(
        "Enter table name: "
    )

    sql_query = generate_sql_from_question(
        natural_language_query,
        selected_table
    )

    print(
        f"Generated sql query for the question given is : {sql_query}"
    )
    































