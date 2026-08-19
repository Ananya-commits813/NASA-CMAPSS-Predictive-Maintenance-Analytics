# NASA C-MAPSS Predictive Maintenance Analytics & AI SQL Agent

An end-to-end **predictive maintenance analytics project** built using the NASA C-MAPSS turbofan engine dataset.

This project explores the complete journey from **raw sensor data to SQL-based analytics, AI-powered natural-language querying, and machine learning for predictive maintenance**.

The project is being developed progressively across multiple stages:

**Raw Data → Python Data Processing → MySQL Database → SQL Analytics → NLP-to-SQL AI Agent → Machine Learning → Predictive Maintenance**

---

## 📌 Project Overview

Predictive maintenance aims to identify the health and remaining useful life of machines before failure occurs.

In this project, the NASA C-MAPSS turbofan engine dataset is used to analyze engine degradation using:

* Engine operating conditions
* Sensor measurements
* Engine lifecycle/cycle information
* Remaining Useful Life (RUL)

The project combines **Python, SQL, data analytics, LLMs, Streamlit, and machine learning** to build an end-to-end predictive maintenance system.

---

# 🚀 Project Journey

The project is divided into four major stages.

### Stage 1 — Data Understanding & Preparation

The NASA C-MAPSS dataset contains simulated turbofan engine run-to-failure data.

The initial stage focuses on:

* Understanding the dataset structure
* Loading raw `.txt` files
* Cleaning and organizing the data
* Separating training, testing, and RUL datasets
* Adding appropriate identifiers
* Preparing the datasets for database storage and analysis

Datasets used include:

* FD001
* FD002
* FD003
* FD004

---

### Stage 2 — SQL Data Analytics

The processed datasets were stored in a **MySQL database** for structured analysis.

The SQL analysis focuses on understanding:

* Engine lifespan
* Remaining Useful Life
* Sensor behavior
* Engine degradation
* Operating conditions
* Engine-to-engine differences
* Sensor degradation patterns

SQL techniques explored include:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate functions
* `JOIN`
* Subqueries
* Window functions
* `LAG()`
* `NTILE()`
* `PERCENT_RANK()`
* Ranking
* Lifecycle segmentation

### Example Analysis Questions

Some of the questions explored through SQL include:

* Which engines have the longest operating lifetimes?
* What is the average RUL across engines?
* Which sensors show degradation over the engine lifecycle?
* Which engines have the highest remaining useful life?
* How are engines distributed across lifecycle stages?
* How does sensor behavior change as engine cycles increase?
* Which operating conditions show the greatest variation?

---

# 🤖 Stage 3 — NLP-to-SQL AI Agent

The next stage extends the SQL analytics system into an **AI-powered natural-language interface**.

Instead of manually writing SQL queries, users can ask questions such as:

> "Show me the average RUL of all engines."

or:

> "Show the sensor trend for sensor S14 for engine 10."

The AI agent converts the natural-language question into SQL, validates the generated query, executes it against the MySQL database, and displays the result.

### Architecture

```text
User Question
      ↓
Natural Language
      ↓
LLM
      ↓
SQL Generation
      ↓
SQL Cleaning
      ↓
SQL Validation
      ↓
MySQL Database
      ↓
Query Execution
      ↓
Pandas DataFrame
      ↓
Visualization / Results
      ↓
AI Insight
```

---

## 🧠 AI Agent Components

### `llm.py`

Responsible for communicating with the LLM and generating SQL queries from natural-language questions.

### `prompts.py`

Contains prompts that guide the LLM to generate SQL according to the database schema.

### `schema.py`

Provides the database schema information required by the LLM for SQL generation.

### `database.py`

Handles the MySQL database connection.

### `sql_validator.py`

Validates and cleans generated SQL before execution.

The validator helps prevent unsafe or invalid SQL from being executed.

### `test_query.py`

Contains query-testing functionality used during development.

### `new_app.py`

Main Streamlit application.

It provides the user interface for:

* Asking natural-language questions
* Viewing generated SQL
* Executing queries
* Viewing query results
* Creating visualizations
* Generating AI-based insights

---

# 📊 Streamlit Dashboard

The Streamlit application provides several analytical sections.

### Home

Allows users to ask questions in natural language and receive database-driven answers.

### Fleet Overview

Provides high-level information about the engine fleet, including:

* Number of engines
* Average RUL
* Dataset statistics
* Fleet-level metrics

### Engine Analysis

Allows analysis of individual engine lifecycle data.

### Sensor Trends

Allows users to select an engine and sensor and visualize sensor behavior across cycles.

### AI Insights

Uses the generated SQL query and returned data to produce additional analytical observations.

### About Dataset

Provides information about the NASA C-MAPSS dataset and its purpose.

---

# 📈 SQL Analytics Findings

The SQL analysis provided several useful observations about engine degradation.

Some of the important findings include:

* Engine durability varies across datasets.
* A large number of engines operate for more than 200 cycles before failure.
* Several sensors show meaningful changes throughout the engine lifecycle.
* Sensors such as **S3, S4, S9, S14** provide useful degradation information.
* Some sensors remain relatively stable throughout the lifecycle.
* Operating-condition variables also show variation between engines.
* RUL provides an important target for predictive maintenance modeling.

These observations provide the foundation for the next stage of the project: **machine learning-based predictive maintenance**.

---

# 🤖 Stage 4 — Machine Learning Predictive Maintenance

The next stage of the project focuses on using machine learning to predict engine health and Remaining Useful Life.

The planned ML pipeline is:

```text
NASA C-MAPSS Dataset
        ↓
Data Cleaning
        ↓
Exploratory Data Analysis
        ↓
Feature Engineering
        ↓
Train / Validation Split
        ↓
ML Model Training
        ↓
RUL Prediction
        ↓
Model Evaluation
        ↓
Predictive Maintenance Insights
```

### Planned Machine Learning Tasks

The ML stage will explore:

* Engine degradation modeling
* RUL prediction
* Sensor-based feature engineering
* Lifecycle-based features
* Model comparison
* Prediction error analysis
* Feature importance
* Engine health estimation

### Potential Models

Models can include:

* Linear Regression
* Random Forest
* XGBoost
* LightGBM
* CatBoost
* Neural Networks

The final model selection will be based on validation performance rather than model complexity alone.

---

# 🔬 Feature Engineering

Potential features for the ML stage include:

### Sensor Features

* Current sensor value
* Rolling mean
* Rolling standard deviation
* Minimum value
* Maximum value
* Sensor slope
* Sensor change from previous cycle

### Lifecycle Features

* Current cycle
* Normalized cycle
* Percentage of lifecycle completed
* Remaining cycles
* Rolling degradation statistics

### Operating Conditions

* Operating-condition variables
* Interaction between operating conditions and sensors
* Operating-condition normalized sensor values

Feature engineering will be performed using Python and Pandas before model training.

---

# 🗄️ Database Architecture

The SQL analytics stage uses MySQL to store the processed engine telemetry and RUL information.

The database contains tables for engine telemetry and RUL information.

Conceptually:

```text
                 MySQL Database
                       │
        ┌──────────────┼──────────────┐
        ↓              ↓              ↓
   Train Data      Test Data        RUL Data
        │              │              │
        └──────────────┼──────────────┘
                       ↓
                 SQL Analytics
                       ↓
                NLP-to-SQL Agent
```

The database can be accessed remotely for application deployment.

---

# 🛠️ Technology Stack

## Programming

* Python
* SQL

## Data Analysis

* Pandas
* NumPy

## Database

* MySQL

## Visualization

* Streamlit
* Plotly

## AI / LLM

* Google Gemini API
* Large Language Model based SQL generation

## Machine Learning

Planned / ongoing:

* Scikit-learn
* XGBoost
* LightGBM
* CatBoost
* TensorFlow / Keras

## Development Tools

* Git
* GitHub
* Jupyter Notebook
* MySQL Workbench
* Aiven
* Streamlit

---

# 📁 Project Structure

```text
NASA-CMAPSS/
│
├── .streamlit/
│   └── secrets.toml
│
├── Train/
│   └── Training datasets
│
├── Test/
│   └── Testing datasets
│
├── Rul/
│   └── RUL datasets
│
├── Combined Test and Rul/
│   └── Combined test and RUL datasets
│
├── Nlp to Sql Ai Agent/
│   ├── .gitignore
│   ├── database.py
│   ├── llm.py
│   ├── new_app.py
│   ├── prompts.py
│   ├── schema.py
│   ├── sql_validator.py
│   └── test_query.py
│
├── README.md
│
└── requirements.txt
```

---

# ⚙️ Installation

Clone the repository:

```bash
git clone <your-github-repository-url>
cd <your-project-folder>
```

Create a virtual environment:

```bash
python -m venv venv
```

Activate the environment.

### Windows

```bash
venv\Scripts\activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

---

# 🔐 Environment Variables

The application requires database and LLM credentials.

Create a `.env` file locally or configure Streamlit secrets for deployment.

Example:

```text
DB_HOST=your_database_host
DB_PORT=your_database_port
DB_USER=your_database_user
DB_PASSWORD=your_database_password
DB_NAME=your_database_name

Api_key=your_llm_api_key
```

**Do not commit API keys, passwords, or database credentials to GitHub.**

---

# ▶️ Running the Application

Navigate to the AI agent directory:

```bash
cd "Nlp to Sql Ai Agent"
```

Run the Streamlit application:

```bash
streamlit run new_app.py
```

The application will open in the browser.

---

# 💡 Example Natural-Language Queries

The AI SQL agent can be used for questions such as:

```text
What is the average RUL of all engines?
```

```text
Which engines have the highest remaining useful life?
```

```text
Show the lifecycle data for engine 10.
```

```text
Show the trend of sensor S14 for engine 10.
```

```text
Which sensors show the strongest degradation?
```

```text
How many engines are present in the training dataset?
```

The system converts these questions into SQL and executes the generated query against the database.

---

# 🔒 SQL Validation

Because SQL is generated dynamically by an LLM, the application includes a SQL validation layer.

The validation process checks for:

* Valid SQL structure
* `SELECT`-based queries
* Unsafe SQL keywords
* Multiple SQL statements
* SQL comments
* Invalid generated syntax

This provides an additional safety layer between the LLM and the database.

---

# 📊 Future Roadmap

The project will continue evolving toward a complete predictive-maintenance system.

### Completed

* [x] NASA C-MAPSS dataset exploration
* [x] Data preparation
* [x] MySQL database creation
* [x] SQL-based engine analytics
* [x] RUL analysis
* [x] Sensor degradation analysis
* [x] Streamlit dashboard
* [x] NLP-to-SQL query generation
* [x] SQL validation
* [x] Query result visualization
* [x] AI-generated analytical insights

### In Progress

* [ ] Machine learning feature engineering
* [ ] RUL prediction models
* [ ] Model comparison
* [ ] Model evaluation
* [ ] Feature importance analysis
* [ ] ML prediction dashboard

### Future

* [ ] Automated engine health scoring
* [ ] Failure-risk prediction
* [ ] Remaining Useful Life prediction
* [ ] Predictive maintenance recommendations
* [ ] Integration of ML predictions with the NLP-to-SQL agent
* [ ] End-to-end predictive maintenance dashboard

---

# 🎯 Final Project Vision

The long-term goal is to build an integrated **AI-powered predictive maintenance analytics system**.

```text
                    NASA C-MAPSS
                         │
                         ↓
                 Data Engineering
                         │
                         ↓
                  MySQL Database
                         │
              ┌──────────┴──────────┐
              ↓                     ↓
        SQL Analytics          ML Pipeline
              │                     │
              ↓                     ↓
       NLP-to-SQL Agent       RUL Prediction
              │                     │
              └──────────┬──────────┘
                         ↓
                Predictive Maintenance
                         │
                         ↓
                  Streamlit Dashboard
```

The system combines **data analytics, database systems, generative AI, and machine learning** to transform raw engine telemetry into actionable predictive-maintenance insights.



# 👩‍💻 Author

**Ananya Roy**

* Data Analytics
* Machine Learning
* AI
* Predictive Maintenance
* Robotics
* Biomedical AI

---

## 📌 Project Status

🚧 **Actively developing**

This repository represents the progressive development of the project from **SQL-based analytics to an AI-powered NLP-to-SQL system and ultimately toward machine-learning-based predictive maintenance.**
