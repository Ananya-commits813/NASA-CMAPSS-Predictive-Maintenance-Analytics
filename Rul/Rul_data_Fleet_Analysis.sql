use robot_db;

select * from engine_rul;

select count(distinct rul) as distinct_rul from engine_rul ;

select count(*) from engine_rul ;

select round(avg(RUL),2) as avg_rul,round(stddev(RUL),2) as stddev,
round(max(RUL),2) as max_value,round(min(RUL),2) as min_value
from engine_rul ;
 
select dataset_id,round(avg(RUL),2) as avg_rul,max(RUL) as max_rul ,
min(RUL) as min_rul,round(stddev(RUL),2) as stddev_rul
from engine_rul 
group by dataset_id ; 

select dataset_id,round(stddev(RUL),2) as stddev,
round(max(RUL),2) as max_value,round(min(RUL),2) as min_value
from engine_rul  group by dataset_id ;
 
 
select dataset_id,round(avg(RUL),2) as avg_rul 
from engine_rul 
group by dataset_id ;
 
 
select dataset_id,count(RUL) as total_rul from engine_rul
group by dataset_id ;

select 
case when RUL <= 50 then 'Critical Engines'
when RUL <= 100 then 'High Risk Engines'
when RUL <= 150 then 'Moderate Engines'
else 'Safe Engines'
end as grouped_cycle, count(*) as rul_count
from engine_rul
group by grouped_cycle ;


select dataset_id,RUL from engine_RUL
group by dataset_id
order by RUL asc 
limit 10 ;

SELECT
    dataset_id,
    MAX(RUL) AS Max_RUL
FROM engine_rul
GROUP BY dataset_id
ORDER BY Max_RUL DESC;

SELECT
    dataset_id,
    MIN(RUL) AS Min_RUL
FROM engine_rul
GROUP BY dataset_id
ORDER BY Min_RUL DESC;


select dataset_id,RUL from engine_RUL
order by RUL desc 
limit 10 ;

With RankedData as (
select
rul,PERCENT_RANK() OVER (ORDER BY rul) AS pct_rank
FROM engine_rul
)
select 
min(case when pct_rank >= 0.25 then rul end) as q1,
min(case when pct_rank >= 0.50 then rul end) as q2_median,
min(case when pct_rank >= 0.75 then rul end) as q3
FROM RankedData ;

SELECT
    FLOOR(RUL/10)*10 AS RUL_Range,
    COUNT(*) AS Frequency
FROM engine_rul
GROUP BY FLOOR(RUL/10)*10
ORDER BY RUL_Range;


