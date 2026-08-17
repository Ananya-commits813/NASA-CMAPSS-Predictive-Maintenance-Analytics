from llm import *
from database import *
from schema import *
from test_query import *
from sql_validator import clean_sql_query, validate_sql_query

import streamlit as st
import pandas as pd


st.title("---- NASA CMAPPS Predictive Maintenance System ----")


question = st.text_input(
    "Ask a question from C-MAPPS dataset"
)


if st.button("Get Answer"):

    if question:

       

        sql_query = generate_sql_from_question(question)


        if sql_query is None:

            st.error("Could not generate SQL.")


        else:



            sql_query = clean_sql_query(sql_query)


            st.subheader("Generated SQL")

            st.code(
                sql_query,
                language="mysql"
            )

            is_valid = validate_sql_query(sql_query)


            if not is_valid:

                st.error(
                    "Invalid query not allowed !!!"
                )


            else:


                database_connection = connection_to_database()

                cursor = database_connection.cursor()


                try:



                    print(
                        "SQL BEING EXECUTED:",
                        repr(sql_query)
                    )

                    cursor.execute(sql_query)



                    if cursor.with_rows:

                        result = cursor.fetchall()

                        columns = cursor.column_names


                       

                        df = pd.DataFrame(
                            result,
                            columns=columns
                        )
                        st.write(df)
                        st.write(df.dtypes)

                        visualization = st.selectbox(
                        "Choose visualization",
                        ["Table", "Bar Chart", "Line Chart", "Scatter Plot"]
                        )

                        st.subheader("Query Result")

                        st.dataframe(
                            df,
                            use_container_width=True,
                            hide_index=True
                        )


                    else:

                        st.warning(
                            "The SQL query did not return any rows."
                        )


                except Exception as e:

                    st.error(
                        f"Database error: {e}"
                    )


                finally:



                    cursor.close()

                    database_connection.close()


    else:

        st.warning(
            "Question is not entered ... query cannot be executed"
        )