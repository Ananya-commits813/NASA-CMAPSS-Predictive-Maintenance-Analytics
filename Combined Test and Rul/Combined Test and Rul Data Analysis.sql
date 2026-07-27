use robot_db ;

select * from  engine_test_rul ;

SELECT DISTINCT dataset_id
FROM engine_test_telemetry;

SELECT DISTINCT dataset_id
FROM new_modified_engine_rul ;

create table engine_test_rul as 
select
t.*,r.RUL
from (select t.*
from engine_test_telemetry t
join ( select
dataset_id,engine_id,
max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id, engine_id
) m on t.dataset_id = m.dataset_id
and t.engine_id = m.engine_id
and t.cycle = m.max_cycle
) t join new_modified_engine_rul r
on t.dataset_id = r.dataset_id
and t.engine_id = r.engine_id;


select * from engine_test_rul ;

/* Sensor Intelligence */
/* How do sensor readings change as remaining life decreases? */
select
case when RUL <= 50 then 'Critical Engines'
when RUL <= 100 then 'High Risk Engines'
when RUL <= 150 then 'Moderate Engines'
else 'Safe Engines'
end as rul_group ,round(avg(s1),2) as avg_s1,
round(avg(s2),2) as avg_s2, round(avg(s3),2) as avg_s3,
round(avg(s4),2) as avg_s4,round(avg(s5),2) as avg_s5,
round(avg(s6),2) as avg_s6,round(avg(s7),2) as avg_s7,
round(avg(s8),2) as avg_s8, round(avg(s9),2) as avg_s9,
round(avg(s10),2) as avg_s10,round(avg(s11),2) as avg_s11,
round(avg(s12),2) as avg_s12,round(avg(s13),2) as avg_s13,
round(avg(s14),2) as avg_s14,round(avg(s15),2) as avg_s15,
round(avg(s16),2) as avg_s16,round(avg(s17),2) as avg_s17,
round(avg(s18),2) as avg_s18,round(avg(s19),2) as avg_s19,
round(avg(s20),2) as avg_s20,round(avg(s21),2) as avg_s21
from engine_test_rul
group by rul_group ;


/*6. Critical vs Safe Engine Sensor Comparison
Which sensors show the largest difference? */
with sensor_data as (
select
case when RUL <= 50 then 'Critical' else 'Safe' end as engine_status,
'S1' as sensor,
s1 as sensor_value
from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S2',s2 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S3',s3 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S4',s4 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S5',s5 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S6',s6 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S7',s7 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S8',s8 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S9',s9 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S10',s10 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S11',s11 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S12',s12 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S13',s13 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S14',s14 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S15',s15 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S16',s16 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S17',s17 from engine_test_rul
UNION ALL
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S18',s18 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S19',s19 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' end,'S20',s20 from engine_test_rul
union all
select case when RUL <= 50 then 'Critical' else 'Safe' END,'S21',s21 from engine_test_rul

),
sensor_avg as (
select
sensor,
engine_status,
avg(sensor_value) as avg_sensor_value
from sensor_data
group by sensor, engine_status
)
select
c.sensor,
round(c.avg_sensor_value,2) AS critical_avg,
round(s.avg_sensor_value,2) AS safe_avg,
round(abs(c.avg_sensor_value - s.avg_sensor_value),2) AS difference,
round(
abs(c.avg_sensor_value - s.avg_sensor_value) * 100 / abs(s.avg_sensor_value),
2) as percentage_difference
from sensor_avg c
inner join sensor_avg s
on c.sensor = s.sensor
where c.engine_status = 'Critical'
and s.engine_status = 'Safe'
order by difference desc;

/* Which sensors deviate the most in critical engines? */
with critical_engines as (select * from 
engine_test_rul
where RUL <= 50) select 
'S1' as sensor, round(stddev(s1),2) as std_deviation from critical_engines union all select 'S2',
round(stddev(s2),2) from critical_engines union all select 'S3',
round(stddev(s3),2) from critical_engines union all 
select 'S4',round(stddev(s4),2) from critical_engines union all select 'S5',
round(stddev(s5),2) from critical_engines union all select 'S6',round(stddev(s6),2)
from critical_engines union all select 'S7',round(stddev(s7),2)
from critical_engines union all select 'S8',round(stddev(s8),2)
from critical_engines union all select 'S9',round(stddev(s9),2) from critical_engines 
union all select 'S10',round(stddev(s10),2) from critical_engines union all
select 'S11',round(stddev(s11),2) from critical_engines union all select
'S12',round(stddev(s12),2) from critical_engines union all 
select 'S13',round(stddev(s13),2) from critical_engines union all
select  'S14',round(stddev(s14),2) from critical_engines union all 
select 'S15',round(stddev(s15),2) from critical_engines 
union all  select 'S16',round(stddev(s16),2) from critical_engines union all 
select 'S17',round(stddev(s17),2) from critical_engines
union all select 'S18',round(stddev(s18),2) from critical_engines union all 
select 'S19',round(stddev(s19),2) from critical_engines
union all select 'S20',round(stddev(s20),2)  from critical_engines
union all select 'S21',round(stddev(s21),2)
from critical_engines 
order by std_deviation desc;

/* Which operating conditions are associated with lower remaining life? */
select
case when RUL <= 50 then 'Critical Engines'
when RUL <= 100 then 'High Risk Engines'
when RUL <= 150 then 'Moderate Engines'
else 'Safe Engines'
end as rul_group ,round(avg(op1),2) as avg_op1,
round(avg(op2),2) as avg_op2,
round(avg(op3),2) as avg_op3
from engine_test_rul
group by rul_group ;

/* Are certain operating conditions overrepresented among critical engines? */
select 
case when RUL <= 50 then 'Critical'
else 'Safe'
end as engine_status,
round(avg(op1),2) as avg_op1,
round(avg(op2),2) as avg_op2,
round(avg(op3),2) as avg_op3
from engine_test_rul
group by engine_status ;

select
case when RUL <= 50 then 'Critical'
else 'Safe'
end as engine_status,
round(stddev(op1),2) as std_op1,
round(stddev(op2),2) as std_op2,
round(stddev(op3),2) as std_op3
from engine_test_rul 
group by engine_status;


