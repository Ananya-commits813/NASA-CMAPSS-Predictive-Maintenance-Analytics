# IMPORTS

import streamlit as st
import pandas as pd
import time
import plotly.express as px

from llm import *
from prompts import AI_INSIGHT_PROMPT
from database import *
from schema import *
from test_query import *
from sql_validator import clean_sql_query, validate_sql_query




# PAGE CONFIGURATION

st.set_page_config(
    page_title="NASA C-MAPPS AI SQL Agent",
    page_icon="🚀",
    layout="wide",
    initial_sidebar_state="expanded"
)


# SESSION STATE

if "df" not in st.session_state:
    st.session_state.df = None

if "sql_query" not in st.session_state:
    st.session_state.sql_query = None

if "execution_time" not in st.session_state:
    st.session_state.execution_time = None

if "question" not in st.session_state:
    st.session_state.question = None

if "ai_insight" not in st.session_state:
    st.session_state.ai_insight = None


# CUSTOM CSS

st.markdown(
    """
    <style>

    /* 
       MAIN BACKGROUND
    */

    .stApp {
        background: #0f172a;
    }


    /* 
       MAIN TITLE
    */

    .main-title {

        font-size: 42px;
        font-weight: 800;
        color: white;

        margin-top: 20px;
        margin-bottom: 5px;
    }


    .main-title span {

        color: #8b5cf6;
    }


    .subtitle {

        color: #94a3b8;
        font-size: 18px;
        margin-bottom: 30px;
    }


    /* 
       BUTTONS
    */

    .stButton > button {

        width: 100%;
        border-radius: 10px;
        font-weight: 600;
    }


    /* 
       METRIC CARDS
     */

    [data-testid="stMetric"] {

        background: #1e293b;

        border: 1px solid #334155;

        border-radius: 12px;

        padding: 15px;
    }


    /* 
       SIDEBAR
     */

    section[data-testid="stSidebar"] {

        background: #020617;
    }


    /* 
       DATAFRAME
   */

    [data-testid="stDataFrame"] {

        border-radius: 10px;
    }

    
    h1, h2, h3, h4 {
      color: #f8fafc !important;
    }

    /* Keep normal text readable */

    p {
    color: #e2e8f0;
    }

    /* Keep metric text bright */

    [data-testid="stMetricLabel"] {
       color: #94a3b8 !important;
    }

    [data-testid="stMetricValue"] {
       color: #f8fafc !important;
    }
    </style>
    """,

    unsafe_allow_html=True

)


# FUNCTION 1
# BAR CHART


def create_bar_chart(df):

    st.subheader("📊 Bar Chart")

    columns = df.columns.tolist()

    numeric_columns = df.select_dtypes(
        include="number"
    ).columns.tolist()


    # Need at least two columns

    if len(columns) < 2:

        st.warning(
            "Bar chart requires at least two columns."
        )

        return


    # X AND Y SELECTION

    col1, col2 = st.columns(2)


    with col1:

        x_column = st.selectbox(
            "Select X-axis",
            columns,
            key="bar_x"
        )


    with col2:

        if len(numeric_columns) == 0:

            st.warning(
                "No numeric columns available for Y-axis."
            )

            return


        y_column = st.selectbox(
            "Select Y-axis",
            numeric_columns,
            key="bar_y"
        )


    # CREATE CHART

    fig = px.bar(
        df,
        x=x_column,
        y=y_column,
        title=f"{y_column} by {x_column}"
    )


    fig.update_layout(
        height=500
    )


    st.plotly_chart(
        fig,
        use_container_width=True
    )


# FUNCTION 2
# LINE CHART

def create_line_chart(df):

    st.subheader("📈 Line Chart")

    columns = df.columns.tolist()

    numeric_columns = df.select_dtypes(
        include="number"
    ).columns.tolist()


    if len(columns) < 2:

        st.warning(
            "Line chart requires at least two columns."
        )

        return


    # X AND Y SELECTION

    col1, col2 = st.columns(2)


    with col1:

        x_column = st.selectbox(
            "Select X-axis",
            columns,
            key="line_x"
        )


    with col2:

        if len(numeric_columns) == 0:

            st.warning(
                "No numeric columns available."
            )

            return


        y_column = st.selectbox(
            "Select Y-axis",
            numeric_columns,
            key="line_y"
        )


    # CREATE CHART

    fig = px.line(
        df,
        x=x_column,
        y=y_column,
        markers=True,
        title=f"{y_column} Trend"
    )


    fig.update_layout(
        height=500
    )


    st.plotly_chart(
        fig,
        use_container_width=True
    )


# FUNCTION 3
# SCATTER PLOT

def create_scatter_plot(df):

    st.subheader("🔵 Scatter Plot")


    numeric_columns = df.select_dtypes(
        include="number"
    ).columns.tolist()


    if len(numeric_columns) < 2:

        st.warning(
            "Scatter plot requires at least two numeric columns."
        )

        return


    # X AND Y SELECTION

    col1, col2 = st.columns(2)


    with col1:

        x_column = st.selectbox(
            "Select X-axis",
            numeric_columns,
            key="scatter_x"
        )


    with col2:

        y_column = st.selectbox(
            "Select Y-axis",
            numeric_columns,
            key="scatter_y"
        )


    # CREATE CHART

    fig = px.scatter(
        df,
        x=x_column,
        y=y_column,
        title=f"{x_column} vs {y_column}"
    )


    fig.update_layout(
        height=500
    )


    st.plotly_chart(
        fig,
        use_container_width=True
    )


# FUNCTION 4
# PIE CHART

def create_pie_chart(df):

    st.subheader("🥧 Pie Chart")


    columns = df.columns.tolist()

    numeric_columns = df.select_dtypes(
        include="number"
    ).columns.tolist()


    if len(columns) < 2:

        st.warning(
            "Pie chart requires at least two columns."
        )

        return


    # CATEGORY AND VALUE

    col1, col2 = st.columns(2)


    with col1:

        category_column = st.selectbox(
            "Select Category",
            columns,
            key="pie_category"
        )


    with col2:

        if len(numeric_columns) == 0:

            st.warning(
                "No numeric column available."
            )

            return


        value_column = st.selectbox(
            "Select Value",
            numeric_columns,
            key="pie_value"
        )


    # CREATE PIE

    fig = px.pie(
        df,
        names=category_column,
        values=value_column,
        title=f"{value_column} Distribution"
    )


    fig.update_layout(
        height=500
    )


    st.plotly_chart(
        fig,
        use_container_width=True
    )


# FUNCTION 5
# DISPLAY QUERY RESULTS

def display_query_results(
    df,
    sql_query,
    execution_time
):


    # =====================================================
    # METRIC CARDS
    # =====================================================

    st.markdown("### 📊 Query Information")


    col1, col2, col3, col4 = st.columns(4)


    with col1:

        st.metric(
            "SQL Validation",
            "Passed"
        )


    with col2:

        st.metric(
            "Database",
            "Connected"
        )


    with col3:

        st.metric(
            "Rows Returned",
            len(df)
        )


    with col4:

        st.metric(
            "Execution Time",
            f"{execution_time:.2f}s"
        )


    
    # GENERATED SQL

    st.markdown("### 🧬 Generated SQL")


    st.code(
        sql_query,
        language="sql"
    )


    # QUERY RESULTS

    st.markdown("### 📋 Query Results")


    st.dataframe(
        df,
        use_container_width=True,
        hide_index=True
    )


    # DOWNLOAD

    csv_data = df.to_csv(
        index=False
    )


    st.download_button(
        "⬇ Download CSV",
        data=csv_data,
        file_name="query_results.csv",
        mime="text/csv"
    )


    # VISUALIZATION SELECTOR

    st.markdown("### 📈 Visualization")


    visualization = st.selectbox(

        "Choose visualization",

        [
        
            "Bar Chart",
            "Line Chart",
            "Scatter Plot",
            "Pie Chart"
        ],

        key="visualization_type"
    )


    # TABLE




    # BAR

    if visualization == "Bar Chart":

        create_bar_chart(df)


    # LINE

    elif visualization == "Line Chart":

        create_line_chart(df)


    # SCATTER

    elif visualization == "Scatter Plot":

        create_scatter_plot(df)


    # PIE

    elif visualization == "Pie Chart":

        create_pie_chart(df)


# FUNCTION 6
# HOME PAGE

def show_home_page(selected_table):


    # HEADER

    st.markdown(
        """
        <div class="main-title">
            🚀 NASA C-MAPPS
            <span>Predictive Maintenance System</span>
        </div>

        <div class="subtitle">
            AI-Powered Natural Language to SQL Analytics
        </div>
        """,
        unsafe_allow_html=True
    )


    # QUESTION

    st.markdown(
        "### 💬 Ask a question from C-MAPPS dataset"
    )


    question = st.text_input(
        "Question",
        placeholder=(
            "Example: What are the top 10 engines "
            "with the lowest RUL?"
        ),
        label_visibility="collapsed"
    )


    # GET ANSWER BUTTON

    get_answer = st.button(
        "✨ Get Answer",
        type="primary"
    )


    # EXECUTION

    if get_answer:


        # CHECK QUESTION

        if not question:

            st.warning(
                "Please enter a question."
            )

            return


        # START TIMER

        start_time = time.time()


        # GENERATE SQL

        with st.spinner(
            "🤖 Generating SQL..."
        ):

            sql_query = (
                generate_sql_from_question(
                    question,
                    selected_table
                )
            )
            

        # CHECK SQL

        if sql_query is None:

            st.error(
                "❌ Could not generate SQL."
            )

            return


        # CLEAN SQL

        sql_query = clean_sql_query(
            sql_query
        )


        # VALIDATE SQL

        is_valid = validate_sql_query(
            sql_query,
            selected_table
        )


        if not is_valid:

            st.error(
                "❌ Invalid query not allowed."
            )

            return


        # DATABASE CONNECTION

        database_connection = None
        cursor = None


        try:


            with st.spinner(
                "🗄 Executing SQL..."
            ):


                database_connection = (
                    connection_to_database()
                )


                cursor = (
                    database_connection.cursor()
                )


                # EXECUTE SQL

                cursor.execute(
                    sql_query
                )


                # EXECUTION TIME

                execution_time = (
                    time.time() - start_time
                )


                # CHECK RESULT

                if cursor.with_rows:


                    result = cursor.fetchall()


                    columns = (
                        cursor.column_names
                    )


                    # CREATE DATAFRAME

                    df = pd.DataFrame(
                        result,
                        columns=columns
                    )


                    # SAVE TO SESSION STATE

                    st.session_state.df = df

                    st.session_state.sql_query = (
                        sql_query
                    )

                    st.session_state.execution_time = execution_time
                    st.session_state.question = question


                else:

                    st.warning(
                        "The SQL query did not return any rows."
                    )


        except Exception as e:

            st.error(
                f"❌ Database error: {e}"
            )


        finally:


            if cursor is not None:

                cursor.close()


            if database_connection is not None:

                database_connection.close()


    # DISPLAY PREVIOUS QUERY RESULT

    if st.session_state.df is not None:

        display_query_results(

            st.session_state.df,

            st.session_state.sql_query,

            st.session_state.execution_time,

            
        )


# FUNCTION 7
# FLEET OVERVIEW
def show_fleet_overview():

    st.title("📊 Fleet Overview")

    st.write(
        "Overall health and operational status "
        "of the C-MAPPS engine fleet."
    )

    connection = connection_to_database()

    cursor = connection.cursor()

    cursor.execute("""
        SELECT COUNT(DISTINCT engine_id)
        FROM engine_train_telemetry
    """)

    total_engines = cursor.fetchone()[0]

    cursor.execute("""
        SELECT AVG(RUL)
        FROM engine_rul
    """)

    average_rul = cursor.fetchone()[0]

    cursor.close()
    connection.close()

    col1, col2 = st.columns(2)

    with col1:
        st.metric(
            "Total Engines",
            total_engines
        )

    with col2:
        st.metric(
            "Average RUL",
            round(average_rul, 2)
        )


# FUNCTION 8
# ENGINE ANALYSIS

def show_engine_analysis():

    st.title("⚙️ Engine Analysis")

    engine_id = st.number_input(
        "Select Engine ID",
        min_value=1,
        step=1
    )

    connection = connection_to_database()

    query = """
        SELECT *
        FROM engine_train_telemetry
        WHERE engine_id = %s
        ORDER BY cycle
    """

    df = pd.read_sql(
        query,
        connection,
        params=(engine_id,)
    )

    connection.close()

    if df.empty:

        st.warning(
            "No data found for this engine."
        )

        return

    st.write(
        f"### Engine {engine_id} Telemetry"
    )

    st.dataframe(
        df,
        use_container_width=True
    )


# FUNCTION 9
# SENSOR TRENDS

def show_sensor_trends():

    st.title("📈 Sensor Trends")

    sensor = st.selectbox(
        "Select Sensor",
        [f"s{i}" for i in range(1, 22)]
    )

    engine_id = st.number_input(
        "Select Engine ID",
        min_value=1,
        step=1
    )

    connection = connection_to_database()

    query = f"""
        SELECT cycle, {sensor}
        FROM engine_train_telemetry
        WHERE engine_id = %s
        ORDER BY cycle
    """

    df = pd.read_sql(
        query,
        connection,
        params=(engine_id,)
    )

    connection.close()

    if df.empty:

        st.warning(
            "No telemetry data found."
        )

        return

    st.subheader(
        f"{sensor} Trend — Engine {engine_id}"
    )

    fig = px.line(
        df,
        x="cycle",
        y=sensor,
        markers=True
    )

    st.plotly_chart(
        fig,
        use_container_width=True
    )


# FUNCTION 10
# AI INSIGHTS


def show_ai_insights():

    st.title("🧠 AI Insights")

    st.write(
        "AI-powered interpretation and maintenance "
        "recommendations based on your latest query."
    )

    # =====================================================
    # CHECK WHETHER A QUERY HAS BEEN RUN
    # =====================================================

    if st.session_state.df is None:

        st.info(
            "💡 Go to the Home page and ask a question first."
        )

        return

    # GET DATA FROM HOME PAGE

    df = st.session_state.df

    question = st.session_state.question

    sql_query = st.session_state.sql_query

    # SHOW USER QUESTION

    st.markdown("### 💬 Question Asked")

    st.info(question)

    # SHOW QUERY RESULT

    st.markdown("### 📊 Query Result")

    st.dataframe(
        df,
        use_container_width=True,
        hide_index=True
    )

    # SHOW GENERATED SQL

    with st.expander("🔍 View Generated SQL"):

        st.code(
            sql_query,
            language="sql"
        )

    # GENERATE AI RECOMMENDATION

    if st.button(
        "🧠 Generate AI Recommendation",
        type="primary"
    ):

        with st.spinner(
            "🤖 AI is analyzing the query results..."
        ):

            try:

                # -----------------------------------------
                # CONVERT DATAFRAME TO TEXT
                # -----------------------------------------

                result_text = df.to_string(
                    index=False
                )

                # -----------------------------------------
                # CREATE AI PROMPT
                # -----------------------------------------

                prompt = AI_INSIGHT_PROMPT.format(
    question=question,
    sql_query=sql_query,
    result_text=result_text
)

                # CALL LLM

                response = generate_ai_insight(
                    prompt
                )

                # SAVE AI RESPONSE

                st.session_state.ai_insight = response

            except Exception as e:

                st.error(
                    f"❌ Could not generate AI insight: {e}"
                )

    # DISPLAY AI RESPONSE

    if st.session_state.ai_insight is not None:

        st.markdown(
            "### 🤖 AI Recommendation"
        )

        st.write(
            st.session_state.ai_insight
        )

# FUNCTION 11
# ABOUT DATASET

def show_about_dataset():


    st.title(
        "ℹ️ About NASA C-MAPPS"
    )


    st.markdown(
        """
        ### NASA C-MAPPS

        NASA C-MAPPS is a turbofan engine
        predictive maintenance dataset.

        ### Datasets

        - FD001
        - FD002
        - FD003
        - FD004

        ### Data

        The telemetry contains:

        - Engine ID
        - Cycle
        - Operating settings
        - Sensor measurements
        - Remaining Useful Life

        The objective is to analyze engine
        degradation and predict remaining
        useful life.
        """
    )


# SIDEBAR

with st.sidebar:


    st.markdown(
        """
        <h1 style="color:white;">
            🚀 NASA C-MAPPS
        </h1>

        <p style="color:#94a3b8;">
            AI Predictive Maintenance
        </p>
        """,
        unsafe_allow_html=True
    )


    st.markdown("---")


    st.markdown(
        "### 🧭 NAVIGATION"
    )


    page = st.radio(
    "Go to",

    [
        "🏠 Home",
        "📊 Fleet Overview",
        "⚙️ Engine Analysis",
        "📈 Sensor Trends",
        "🧠 AI Insights",
        "ℹ️ About Dataset"
    ],

    key="navigation",

    label_visibility="collapsed"
)


    st.markdown("---")




    # TABLE SELECTION

    st.markdown(
        "### 🗄 SELECT TABLE"
    )

    selected_table = st.selectbox(
        "Choose table",
        [
            "engine_train_telemetry",
            "engine_test_telemetry",
            "engine_rul",
            "engine_test_rul"
        ],
        label_visibility="collapsed"
    )


    st.markdown("---")


    st.markdown(
        "### 🗄 DATASET"
    )


    st.info(
        """
        NASA C-MAPPS

        • FD001
        • FD002
        • FD003
        • FD004

        Turbofan Engine
        Run-to-Failure Data
        """
    )


# PAGE ROUTING

if page == "🏠 Home":

    show_home_page(selected_table)


elif page == "📊 Fleet Overview":

    show_fleet_overview()


elif page == "⚙️ Engine Analysis":

    show_engine_analysis()


elif page == "📈 Sensor Trends":

    show_sensor_trends()


elif page == "🧠 AI Insights":

    show_ai_insights()


elif page == "ℹ️ About Dataset":

    show_about_dataset()


# FOOTER

st.markdown("---")

st.markdown(
    """
    <div style="
        text-align:center;
        color:#64748b;
        padding:20px;
    ">

        🚀 NASA C-MAPPS Predictive Maintenance System

        <br>

        AI • SQL • Predictive Maintenance

    </div>
    """,
    unsafe_allow_html=True
)
