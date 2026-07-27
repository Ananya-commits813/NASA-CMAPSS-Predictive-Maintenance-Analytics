use robot_db ;

select * from engine_test_telemetry ;


/* How many engines are present in the TEST dataset? */
select count(distinct engine_id) from engine_test_telemetry ;


/* How many operating cycles have the engines completed? */
select dataset_id, engine_id , max(cycle) from engine_test_telemetry
group by dataset_id,engine_id ;



/* What is the average current age of the engine fleet? */
with max_cycle as (select dataset_id , max(cycle) as max_cycle
from engine_train_telemetry
group by dataset_id )
select dataset_id , round(avg(max_cycle))
from max_cycle group by dataset_id ;


/* Which engines are the oldest currently? */
with max_cycle as (select dataset_id,engine_id ,
max(cycle) as max_cycle from engine_train_telemetry
group by dataset_id,engine_id), ranked_engines as (
select *,
rank() over(partition by dataset_id order by max_cycle desc)
as rnk
from max_cycle)
select *
from ranked_engines 
where rnk <= 10 ; 



/* How is the current fleet distributed by engine age? */
with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id) 
select 
case when max_cycle between 0 and 50 then '0-50'
when max_cycle between 51 and 100 then '51-100'
when max_cycle between 101 and 150 then '101-150'
when max_cycle between 151 and 200 then '151-200'
else '200 +'
end as grouped_cycle, count(*) as engine_count
from max_cycle
group by grouped_cycle ;

