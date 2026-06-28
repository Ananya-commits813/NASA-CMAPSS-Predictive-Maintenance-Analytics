use robot_db ;

select * from engine_train_telemetry ;

/* 5. How long does each engine operate before failure ?  */
select engine_id,max(cycle) from engine_train_telemetry
group by engine_id ;

/* 6. What is the minimum, maximum, and average lifespan of engine ? */
with maxcycle as (select engine_id,max(cycle) as max_cycle
from engine_train_telemetry
group by engine_id)
select min(max_cycle) as min_cycle,max(max_cycle) as max_cycle,
round(avg(max_cycle))  as avg_cycle
from maxcycle ;



/* 7. Which dataset has the longest and shortest-lived engines? */
with maxcycle as (select dataset_id,max(cycle) as max_cycle
from engine_train_telemetry
group by dataset_id),ranked As(
select * ,
rank() over (order by max_cycle desc) as rnk_max,
rank() over (order by max_cycle  asc) as rnk_min
from maxcycle )
select * from ranked
where rnk_max = 1 
or rnk_min = 1 ;


/* 8. How is lifespan distributed across the fleet?  */
with max_cycle as (select engine_id,max(cycle) as max_cycle
from engine_train_telemetry
group by engine_id) 
select 
case when max_cycle between 0 and 50 then '0-50'
when max_cycle between 51 and 100 then '51-100'
when max_cycle between 101 and 150 then '101-150'
when max_cycle between 151 and 200 then '151-200'
else '200 +'
end as grouped_cycle, count(*) as engine_count
from max_cycle
group by grouped_cycle ;

