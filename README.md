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

Dataset:
NASA C-MAPSS Turbofan Engine Degradation Simulation Dataset

The dataset contains simulated aircraft engine sensor measurements collected during multiple operating cycles until failure.

Each engine record includes:

- Engine ID
- Operational Cycle
- Operating Conditions
- Sensor Measurements


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
