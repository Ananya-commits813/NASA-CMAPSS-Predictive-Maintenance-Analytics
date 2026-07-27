use robot_db ;

select * from  engine_train_telemetry ;

/* 13.	Can engines be grouped based on lifespan?  */
with maxcycle as (select engine_id,max(cycle)
as max_cycle from engine_train_telemetry
group by  engine_id)
select engine_id,max_cycle,
case when max_cycle <= 200 then 'Low lifecycle(0-200)'
     when max_cycle <= 300 then 'Medium Lifecycle(201-300)'
     when max_cycle <= 400 then 'High Lifecycle(301-400)'
     else 'Very High Lifecycle(>400)'
end as lifecycle_group
from maxcycle ;

/* 14.	What percentage of engines fall into each lifecycle group?  */
with maxcycle as (select engine_id,max(cycle)
as max_cycle from engine_train_telemetry
group by  engine_id),grouped as (
select engine_id,max_cycle,
case when max_cycle <= 200 then 'Low lifecycle(0-200)'
     when max_cycle <= 300 then 'Medium Lifecycle(201-300)'
     when max_cycle <= 400 then 'High Lifecycle(301-400)'
     else 'Very High Lifecycle(>400)'
end as lifecycle_group
from maxcycle)
select lifecycle_group,count(*) as total_engine_per_group
 ,round(count(*) * 100/sum(count(*)) over(),2)
as percent_of_engines
from grouped
group by lifecycle_group ;


/* Which lifecycle group dominates the fleet?*/
with maxcycle as (select engine_id,max(cycle)
as max_cycle from engine_train_telemetry
group by  engine_id),grouped as (
select engine_id,max_cycle,
case when max_cycle <= 200 then 'Low lifecycle(0-200)'
     when max_cycle <= 300 then 'Medium Lifecycle(201-300)'
     when max_cycle <= 400 then 'High Lifecycle(301-400)'
     else 'Very High Lifecycle(>400)'
end as lifecycle_group
from maxcycle), percent_count as(
select lifecycle_group,count(*) as total_engine_per_group
 ,round(count(*) * 100/sum(count(*)) over(),2)
as percent_of_engines
from grouped
group by lifecycle_group)
select * from 
percent_count where total_engine_per_group = 
(select max(total_engine_per_group) from percent_count);





/* Are lifecycle groups evenly distributed or imbalanced */
with maxcycle as (select engine_id,max(cycle)
as max_cycle from engine_train_telemetry
group by  engine_id),grouped as (
select engine_id,max_cycle,
case when max_cycle <= 200 then 'Low lifecycle(0-200)'
     when max_cycle <= 300 then 'Medium Lifecycle(201-300)'
     when max_cycle <= 400 then 'High Lifecycle(301-400)'
     else 'Very High Lifecycle(>400)'
end as lifecycle_group
from maxcycle), percent_count as (
select lifecycle_group,count(*) as total_engine_per_group
 ,round(count(*) * 100/sum(count(*)) over(),2)
as percent_of_engines
from grouped
group by lifecycle_group),summary as(select 
max(percent_of_engines) as max_percent ,
min(percent_of_engines) as min_percent
from percent_count)
select 
case when max_percent > 40 or (max_percent - min_percent) > 20
	 then 'Imbalanced groups'
     else 'Evenly distributed groups'
end as group_distribution
from summary ;
