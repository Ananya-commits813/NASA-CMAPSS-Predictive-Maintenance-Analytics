use robot_db ;

select * from engine_train_telemetry ;


/* 9.	Which engines have the highest lifespan? */
with maxcycle as (select dataset_id,engine_id,max(cycle) as max_cycle from 
engine_train_telemetry group by dataset_id,engine_id),
ranked as (
select * , dense_rank() over(
partition by dataset_id
order by max_cycle desc) as lifespan_rank from maxcycle )
select * from ranked where lifespan_rank <= 10;

/* 10.	Which engines fail the earliest?  */
with maxcycle as (select dataset_id,engine_id,max(cycle) as max_cycle from 
engine_train_telemetry group by dataset_id,engine_id),ranked as (
select * , dense_rank() over(
partition by dataset_id
order by max_cycle asc) as lifespan_rank from maxcycle)
select * from ranked where lifespan_rank <= 10 ;


/* 11.	How can engines be ranked based on durability? */
with maxcycle as (select dataset_id,engine_id,max(cycle) as max_cycle from 
engine_train_telemetry group by dataset_id,engine_id)
select * , dense_rank() over(
partition by dataset_id
order by max_cycle desc) as lifespan_rank from maxcycle ;


/* 12.	How does durability vary across engines?  */
with maxcycle as (
select dataset_id,engine_id,max(cycle)as max_cycle from
engine_train_telemetry
group by dataset_id,engine_id),
avg as (select dataset_id,engine_id,max_cycle,avg(max_cycle) over(
partition by dataset_id) as avg_cycle
from maxcycle),
classified as(
select dataset_id,engine_id,max_cycle,
round(avg_cycle,2) as avg_cycle,
case when max_cycle > avg_cycle then 'Above Average'
     when max_cycle < avg_cycle then 'Below Average'
     else 'Equal to Average'
end as average_distribution
from avg)
select dataset_id,average_distribution,
count(*) as engine_count
from classified 
group by dataset_id,average_distribution
order by dataset_id ;


with maxcycle as (
select dataset_id,engine_id,max(cycle)as max_cycle from
engine_train_telemetry
group by dataset_id,engine_id)
select dataset_id,round(stddev(max_cycle)) as std_dev
from maxcycle
group by dataset_id ;