use robot_db ;

select * from engine_train_telemetry ;

/* 1. How many engines are there in each dataset?  */
select count(distinct engine_id) as total_engines from engine_train_telemetry ;

/* 2. How many total records exist in the training data? */
select count(*) as total_records  from engine_train_telemetry ;

/* 3. What is the cycle range across all engines? */
select max(cycle)-min(cycle) as cycle_range from engine_train_telemetry ;

/* 4. How many unique engine–dataset combinations exist? */
select  count(distinct engine_id,dataset_id) from engine_train_telemetry ;












