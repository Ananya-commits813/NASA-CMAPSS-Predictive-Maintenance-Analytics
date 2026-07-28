# NASA-CMAPSS-Predictive-Maintenance-Analytics

A comprehensive SQL analytics project using the NASA C-MAPSS Turbofan Engine Degradation Simulation dataset to analyze aircraft engine degradation, fleet performance, Remaining Useful Life (RUL), and engine health intelligence for predictive maintenance.


---

# 📖 Project Overview

Predictive maintenance enables organizations to detect equipment degradation before failure, reducing unplanned downtime and improving operational reliability.

This project demonstrates how SQL can be used to transform raw engine telemetry into actionable maintenance insights. Using the NASA C-MAPSS dataset, the analysis covers fleet exploration, engine lifecycle analysis, sensor degradation, Remaining Useful Life (RUL), and engine health assessment across four operating scenarios.

---


# 🎯 Project Objectives

The project aims to:

- Analyze engine lifecycle and degradation behavior
- Evaluate fleet reliability and operational performance
- Identify critical degradation sensors
- Analyze Remaining Useful Life (RUL)
- Assess engine health across multiple datasets
- Prioritize maintenance using engine health intelligence
- Generate business-ready insights using SQL

---



# 📂 Dataset

**Dataset:** NASA C-MAPSS Turbofan Engine Degradation Simulation Dataset

The dataset contains simulated aircraft engine sensor measurements collected over multiple operating cycles until engine failure.

### Features

- Engine ID
- Operational Cycle
- 3 Operating Settings
- 21 Sensor Measurements

### Datasets Used

- FD001
- FD002
- FD003
- FD004

---


# ⚙️ Data Preparation

The raw NASA C-MAPSS text files were preprocessed using Python before importing them into MySQL.

The preparation workflow included:

1. Reading the raw datasets.
2. Assigning meaningful column names.
3. Adding a `dataset_id` column.
4. Combining all datasets.
5. Importing the processed data into MySQL.
6. Validating successful data loading.

> **Note:** Python preprocessing scripts are not included because they contain local database configuration details. This repository focuses on the SQL analytics performed on the prepared dataset.

---


# 🔄 Project Workflow

```text
NASA C-MAPSS Raw Data
        │
        ▼
Python Data Preparation
        │
        ▼
MySQL Database
        │
        ▼
Fleet Exploration
        │
        ▼
Train Dataset Analysis
        │
        ▼
Test Dataset Analysis
        │
        ▼
Remaining Useful Life (RUL) Analysis
        │
        ▼
Engine Health Intelligence
        │
        ▼
Business Insights
```

---

# 📁 Repository Structure

```text
NASA-CMAPSS-Predictive-Maintenance-SQL-Analytics

│
├── Train
│   ├── Fleet_Overview_Analysis.sql
│   ├── Engine_Lifespan_Analysis.sql
│   ├── Engine_Reliability_Analysis.sql
│   ├── Lifecycle_Segmentation_Analysis.sql
│   ├── Sensor_Trend_Analysis.sql
│   └── Failure_Signature_Analysis.sql
│
├── Test
│   ├── Current_Engine_Health_Analysis.sql
│   ├── Sensor_Trend_Analysis.sql
│   └── Failure_Signature_Analysis.sql
│
├── RUL
│   └── RUL_Data_Fleet_Analysis.sql
│
├── Combined_Test_and_RUL
│   └── Combined_Test_and_RUL_Data_Analysis.sql
│
└── README.md
```

---

# 📊 SQL Analysis Performed

## Fleet Exploration

- Fleet overview
- Engine distribution
- Operating cycle statistics

## Train Dataset Analysis

- Engine lifespan analysis
- Fleet reliability analysis
- Lifecycle segmentation
- Sensor trend analysis
- Failure signature analysis

## Test Dataset Analysis

- Current engine health
- Sensor degradation analysis
- Failure signature analysis

## Remaining Useful Life (RUL) Analysis

- RUL distribution
- Dataset comparison
- Risk categorization
- Fleet statistics
- Engine prioritization

## Test + RUL Engine Health Intelligence

- Engine health assessment
- Fleet health scoring
- Maintenance prioritization
- Engine ranking
- Correlation analysis

---

# 💡 Key Findings

- Most engines operated for more than **200 cycles** before failure.
- Engine durability varied across all four NASA C-MAPSS datasets.
- **Sensor S9** consistently emerged as the strongest degradation indicator.
- **Sensors S3, S4, S7, S12, and S14** were the most informative degradation sensors.
- Remaining Useful Life (RUL) enabled identification of critical, high-risk, and healthy engines.
- Integrating Test telemetry with RUL enabled comprehensive engine health assessment and maintenance prioritization.

---

# 🛠 SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- CASE WHEN
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- NTILE()
- PERCENT_RANK()
- Aggregate Functions

---

# 💻 Technologies Used

- SQL (MySQL)
- Python
- Pandas
- SQLAlchemy
- Git
- GitHub

---

# 📈 Business Value

This project demonstrates how SQL analytics supports:

- Predictive Maintenance
- Fleet Health Monitoring
- Engine Risk Assessment
- Maintenance Prioritization
- Early Failure Detection
- Resource Optimization
- Reliability Engineering
- Data-Driven Decision Making

---

# 🚀 Future Roadmap

This SQL analytics project serves as the foundation for future work, including:

- AI-powered Natural Language-to-SQL Assistant
- LLM-based analytics and automated business insights
- Interactive Streamlit dashboard
- Predictive maintenance recommendation system

---

# 👩‍💻 Author

**Ananya Roy**

Data Analytics | SQL | AI & Machine Learning

If you found this project useful, consider ⭐ starring the repository.
