# NASA-CMAPSS-Predictive-Maintenance-Analytics

## Project Overview

This project focuses on analysing the NASA C-MAPSS (Commercial Modular Aero-Propulsion System Simulation) dataset to understand aircraft engine degradation behaviour and reliability patterns.

The objective of this phase is to perform SQL-based exploratory analysis to uncover important insights related to:

- Engine operational lifespan
- Fleet reliability
- Lifecycle behaviour
- Sensor degradation trends
- Failure progression patterns

## Dataset

## Dataset: NASA C-MAPSS Turbofan Engine Degradation Simulation Dataset

The dataset contains simulated aircraft engine sensor measurements collected during multiple operating cycles until failure.

Each engine record includes:

Engine ID
Operational Cycle
Operating Conditions
Sensor Measurements

Training datasets used in this phase:

train_FD001.txt
train_FD002.txt
train_FD003.txt
train_FD004.txt

Note: This repository currently focuses only on the training dataset analysis. Test dataset analysis will be added in the next phase.


## Data Extraction and Preparation

The NASA C-MAPSS training dataset is provided as raw space-separated text files. Before performing SQL-based exploratory analysis, the training data was extracted and prepared using Python.

The data preparation workflow consisted of:

1. Downloading the NASA C-MAPSS training dataset.
2. Reading the raw training files (`train_FD001`, `train_FD002`, `train_FD003`, and `train_FD004`) using Python.
3. Assigning meaningful column names to the engine ID, operational cycle, operating settings, and 21 sensor measurements.
4. Adding a `dataset_id` column to identify the source dataset (FD001–FD004).
5. Combining all four training datasets into a single consolidated dataset.
6. Connecting to a MySQL database using SQLAlchemy.
7. Importing the processed training data into a MySQL table for SQL-based exploratory analysis.
8. Verifying successful data loading before performing analytical queries.

> **Note:** The Python data extraction utility is not included in this repository because it contains local database configuration and database credentials. This repository focuses on the SQL-based exploratory analysis performed on the prepared training dataset.




## SQL Analysis Performed


### 1. Fleet Overview Analysis

Objective:
Understand overall fleet characteristics and engine distribution.

Analysis includes:

- Total number of engines
- Total operating cycles
- Average engine lifespan
- Engine performance summary


### 2. Engine Lifespan Analysis

Objective:
Study how long engines operate before failure.

Insights:

- Minimum lifespan
- Maximum lifespan
- Average lifespan
- Lifespan distribution across engines


### 3. Reliability Analysis

Objective:
Evaluate fleet reliability and degradation behaviour.

Analysis includes:

- Survival patterns
- Failure frequency
- Reliability trends over operating cycles


### 4. Lifecycle Segmentation

Objective:
Divide engine lifecycle into different degradation stages.

Stages analysed:

- Early life
- Useful life
- Degradation phase
- Failure phase


### 5. Sensor Trend Analysis

Objective:
Identify sensors that capture degradation behaviour.

Analysis includes:

- Sensor value changes over cycles
- Degradation patterns
- Sensor importance evaluation


### 6. Failure Signature Analysis

Objective:
Understand the patterns observed before engine failure.

Analysis includes:

- Final operating cycles
- Sensor behaviour before failure
- Failure progression patterns


## Tools Used

- SQL
- PostgreSQL / MySQL
- NASA C-MAPSS Dataset


## Project Workflow

## Project Workflow

```text
NASA C-MAPSS Engine Data
          |
          ↓
1. Data Understanding
          |
          ↓
2. Data Analysis & Pattern Discovery
   (SQL + Python)
          |
          ↓
3. Feature Engineering & Feature Selection
          |
          ↓
4. Remaining Useful Life (RUL)
   Prediction Model
          |
          ↓
5. Predictive Maintenance
   Decision System
          |
          ↓
6. Dashboard / Deployment
```


## Future Work

Upcoming phases will include:

- Test dataset analysis
- Feature engineering
- Machine learning models
- Remaining Useful Life prediction
- Predictive maintenance dashboard


## Author

Ananya Roy
