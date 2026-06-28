use robot_db ;

 
/* 21.	What sensor behavior characterizes the final stage before failure in last 10 cycles? */
/* average value across the datasets  */
With failure_window as
(select dataset_id,
engine_id,cycle,
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
s13,s14,s15,s16,s17,s18,s19,s20,s21,
row_number() over(partition by dataset_id, engine_id
order by cycle desc) as rn
from engine_train_telemetry
)select 
dataset_id,engine_id,round(avg(s1),2) as avg_s1,
round(avg(s2),2) as avg_s2,
round(avg(s3),2) as avg_s3,
round(avg(s4),2) as avg_s4,
round(avg(s5),2) as avg_s5,
round(avg(s6),2) as avg_s6,
round(avg(s7),2) as avg_s7,
round(avg(s8),2) as avg_s8,
round(avg(s9),2) as avg_s9,
round(avg(s10),2) as avg_s10,
round(avg(s11),2) as avg_s11,
round(avg(s12),2) as avg_s12,
round(avg(s13),2) as avg_s13,
round(avg(s14),2) as avg_s14,
round(avg(s15),2) as avg_s15,
round(avg(s16),2) as avg_s16,
round(avg(s17),2) as avg_s17,
round(avg(s18),2) as avg_s18,
round(avg(s19),2) as avg_s19,
round(avg(s20),2) as avg_s20,
round(avg(s21),2) as avg_s21
from failure_window
where rn <= 10
group by dataset_id,engine_id
order by dataset_id;


/* moving average change */
With failure_window as
(select dataset_id,
engine_id,cycle,
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
s13,s14,s15,s16,s17,s18,s19,s20,s21,
row_number() over(partition by dataset_id, engine_id
order by cycle desc) as rn
from engine_train_telemetry
)select 
dataset_id,engine_id,round(avg(s1) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s1_moving_average,
round(avg(s2) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s2_moving_average,
round(avg(s3) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s3_moving_average,
round(avg(s4) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s4_moving_average,
round(avg(s5) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s5_moving_average,
round(avg(s6) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s6_moving_average,
round(avg(s7) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s7_moving_average,
round(avg(s8) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s8_moving_average,
round(avg(s9) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s9_moving_average,
round(avg(s10) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s10_moving_average,
round(avg(s11) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s11_moving_average,
round(avg(s12) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s12_moving_average,
round(avg(s13) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s13_moving_average,
round(avg(s14) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s14_moving_average,
round(avg(s15) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s15_moving_average,
round(avg(s16) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s16_moving_average,
round(avg(s17) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s17_moving_average,
round(avg(s18) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s18_moving_average,
round(avg(s19) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s19_moving_average,
round(avg(s20) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s20_moving_average,
round(avg(s21) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s21_moving_average
from failure_window
where rn <= 10
order by dataset_id,engine_id,cycle desc;

/*Percentage Change*/
With failure_window as
(select dataset_id,
engine_id,cycle,
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
s13,s14,s15,s16,s17,s18,s19,s20,s21,
row_number() over(partition by dataset_id, engine_id
order by cycle desc) as rn
from engine_train_telemetry
),lagged_value as (select 
dataset_id,engine_id,cycle,
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
s13,s14,s15,s16,s17,s18,s19,s20,s21,
lag(s1) over(partition by dataset_id,engine_id order by cycle)
as lag_s1,lag(s2) over(partition by dataset_id,engine_id order by cycle)
as lag_s2,lag(s3) over(partition by dataset_id,engine_id order by cycle)
as lag_s3,lag(s4) over(partition by dataset_id,engine_id order by cycle)
as lag_s4,lag(s5) over(partition by dataset_id,engine_id order by cycle)
as lag_s5,lag(s6) over(partition by dataset_id,engine_id order by cycle)
as lag_s6,lag(s7) over(partition by dataset_id,engine_id order by cycle)
as lag_s7,lag(s8) over(partition by dataset_id,engine_id order by cycle)
as lag_s8,lag(s9) over(partition by dataset_id,engine_id order by cycle)
as lag_s9,lag(s10) over(partition by dataset_id,engine_id order by cycle)
as lag_s10,lag(s11) over(partition by dataset_id,engine_id order by cycle)
as lag_s11,lag(s12) over(partition by dataset_id,engine_id order by cycle)
as lag_s12,lag(s13) over(partition by dataset_id,engine_id order by cycle)
as lag_s13,lag(s14) over(partition by dataset_id,engine_id order by cycle)
as lag_s14,lag(s15) over(partition by dataset_id,engine_id order by cycle)
as lag_s15,lag(s16) over(partition by dataset_id,engine_id order by cycle)
as lag_s16,lag(s17) over(partition by dataset_id,engine_id order by cycle)
as lag_s17,lag(s18) over(partition by dataset_id,engine_id order by cycle)
as lag_s18,lag(s19) over(partition by dataset_id,engine_id order by cycle)
as lag_s19,lag(s20) over(partition by dataset_id,engine_id order by cycle)
as lag_s20,lag(s21) over(partition by dataset_id,engine_id order by cycle)
as lag_s21
from failure_window
where rn <= 10
)
select dataset_id,engine_id,
cycle,
round(((s1-lag_s1) / lag_s1) * 100,2) as s1_percentage_change,
round(((s2-lag_s2) / lag_s2) * 100,2) as s2_percentage_change,
round(((s3-lag_s3) / lag_s3) * 100,2) as s3_percentage_change,
round(((s4-lag_s4) / lag_s4) * 100,2) as s4_percentage_change,
round(((s5-lag_s5) / lag_s5) * 100,2) as s5_percentage_change,
round(((s6-lag_s6) / lag_s6) * 100,2) as s6_percentage_change,
round(((s7-lag_s7) / lag_s7) * 100,2) as s7_percentage_change,
round(((s8-lag_s8) / lag_s8) * 100,2) as s8_percentage_change,
round(((s9-lag_s9) / lag_s9) * 100,2) as s9_percentage_change,
round(((s10-lag_s10) / lag_s10) * 100,2) as s10_percentage_change,
round(((s11-lag_s11) / lag_s11) * 100,2) as s11_percentage_change,
round(((s12-lag_s12) / lag_s12) * 100,2) as s12_percentage_change,
round(((s13-lag_s13) / lag_s13) * 100,2) as s13_percentage_change,
round(((s14-lag_s14) / lag_s14) * 100,2) as s14_percentage_change,
round(((s15-lag_s15) / lag_s15) * 100,2) as s15_percentage_change,
round(((s16-lag_s16) / lag_s16) * 100,2) as s16_percentage_change,
round(((s17-lag_s17) / lag_s17) * 100,2) as s17_percentage_change,
round(((s18-lag_s18) / lag_s18) * 100,2) as s18_percentage_change,
round(((s19-lag_s19) / lag_s19) * 100,2) as s19_percentage_change,
round(((s20-lag_s20) / lag_s20) * 100,2) as s20_percentage_change,
round(((s21-lag_s21) / lag_s21) * 100,2) as s21_percentage_change
from lagged_value
order by dataset_id,engine_id,cycle ;

/* moving_standard_deviation_change*/
With failure_window as
(select dataset_id,
engine_id,cycle,
s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,
s13,s14,s15,s16,s17,s18,s19,s20,s21,
row_number() over(partition by dataset_id, engine_id
order by cycle desc) as rn
from engine_train_telemetry
)select 
dataset_id,engine_id,round(avg(s1) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s1_moving_standard_deviation,
round(stddev(s2) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s2_moving_standard_deviation,
round(stddev(s3) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s3_moving_standard_deviation,
round(stddev(s4) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s4_moving_standard_deviation,
round(stddev(s5) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s5_moving_standard_deviation,
round(stddev(s6) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s6_moving_standard_deviation,
round(stddev(s7) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s7_moving_standard_deviation,
round(stddev(s8) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s8_moving_standard_deviation,
round(stddev(s9) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s9_moving_standard_deviation,
round(stddev(s10) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s10_moving_standard_deviation,
round(stddev(s11) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s11_moving_standard_deviation,
round(stddev(s12) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s12_moving_standard_deviation,
round(stddev(s13) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s13_moving_standard_deviation,
round(stddev(s14) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s14_moving_standard_deviation,
round(stddev(s15) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s15_moving_standard_deviation,
round(stddev(s16) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s16_moving_standard_deviation,
round(stddev(s17) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s17_moving_standard_deviation,
round(stddev(s18) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s18_moving_standard_deviation,
round(stddev(s19) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s19_moving_standard_deviation,
round(stddev(s20) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s20_moving_standard_deviation,
round(stddev(s21) over (partition by 
engine_id order by cycle desc
rows between 9 preceding and current row
),2) as s21_moving_standard_deviation
from failure_window
where rn <= 10
order by dataset_id,engine_id,cycle desc;


/* 28.	Can sensors be ranked by their usefulness for failure detection with respective to datasets?  */
With failure_cycle as
(
Select dataset_id,engine_id,
max(cycle) as failure_cycle
from engine_train_telemetry
group by  dataset_id, engine_id
),
/* Last 10 cycles before failure */
failure_window as
(select t.* from engine_train_telemetry t
join failure_cycle f on t.dataset_id = f.dataset_id
and t.engine_id = f.engine_id
where t.cycle >= f.failure_cycle - 9
),
/* Convert 21 sensors into rows */
sensor_data as
(Select dataset_id,engine_id,cycle,sensor_name,
case sensor_name
    when 's1' then s1
    when 's2' then s2
    when  's3' then s3
    when 's4' then s4
    when 's5' then s5
    when 's6' then s6
    when 's7' then s7
    when 's8' then s8
    when  's9' then s9
    when 's10' then s10
    when 's11' then  s11
    when 's12' then s12
    when 's13' then s13
    when 's14' then s14
    when 's15' then s15
    when 's16' then s16
    when 's17' then s17
    when 's18' then s18
    when 's19' then s19
    when 's20' then s20
    when 's21' then s21
	end as sensor_value
from failure_window
cross join
(Select 's1' sensor_name
union select 's2'
union select's3'
union select 's4'
union select's5'
union select's6'
union select 's7'
union select 's8'
union select 's9'
union select 's10'
union select 's11'
union select 's12'
union select 's13'
union select 's14'
union select 's15'
union select 's16'
union select 's17'
union select 's18'
union select 's19'
union select 's20'
union select's21'
) sensors
),
/* Correlation score */
correlation_score as
(select dataset_id,sensor_name,
abs((count(*)*sum(cycle*sensor_value) - sum(cycle)*sum(sensor_value))
/sqrt((count(*)*sum(cycle*cycle)
- sum(cycle)*sum(cycle))*
(count(*)*sum(sensor_value*sensor_value) - sum(sensor_value)*sum(sensor_value))))
as corr_score
from sensor_data
group by dataset_id,sensor_name),
/* Calculate sensor change */
sensor_changes as
(
Select dataset_id,engine_id,cycle,sensor_name,sensor_value - lag(sensor_value) over
(partition by dataset_id,engine_id,sensor_name order by cycle)as diff from sensor_data
),monotonicity_score as
(Select dataset_id,sensor_name,abs(sum(case when diff > 0 then 1 else 0 end)- sum(
case when diff < 0 then 1 else 0 end
)) / count(diff) as mono_score 
from sensor_changes
group by dataset_id,sensor_name
)
/* Final ranking */
Select
c.dataset_id,
c.sensor_name,
round(c.corr_score,3) AS correlation_score,
round(m.mono_score,3) AS monotonicity_score,
round((0.5*c.corr_score + 0.5*m.mono_score),3
)as final_sensor_score,
rank() over (partition by c.dataset_id
order by (0.5*c.corr_score + 0.5*m.mono_score) desc)
as sensor_rank
from correlation_score c
join monotonicity_score m
on c.dataset_id = m.dataset_id
and c.sensor_name = m.sensor_name
order by c.dataset_id,sensor_rank;
/* Now sensor rnakings across all datsets */
With failure_cycle as
(
Select dataset_id,engine_id,
max(cycle) as failure_cycle
from engine_train_telemetry
group by dataset_id,engine_id
),
/* Last 10 cycles before failure */
failure_window as
(select t.* from engine_train_telemetry t
join failure_cycle f on t.dataset_id = f.dataset_id
and t.engine_id = f.engine_id
where t.cycle >= f.failure_cycle - 9
),
/* Convert 21 sensors into rows */
sensor_data as
(Select dataset_id,engine_id,cycle,sensor_name,
case sensor_name
    when 's1' then s1
    when 's2' then s2
    when  's3' then s3
    when 's4' then s4
    when 's5' then s5
    when 's6' then s6
    when 's7' then s7
    when 's8' then s8
    when  's9' then s9
    when 's10' then s10
    when 's11' then  s11
    when 's12' then s12
    when 's13' then s13
    when 's14' then s14
    when 's15' then s15
    when 's16' then s16
    when 's17' then s17
    when 's18' then s18
    when 's19' then s19
    when 's20' then s20
    when 's21' then s21
	end as sensor_value
from failure_window
cross join
(Select 's1' sensor_name
union select 's2'
union select's3'
union select 's4'
union select's5'
union select's6'
union select 's7'
union select 's8'
union select 's9'
union select 's10'
union select 's11'
union select 's12'
union select 's13'
union select 's14'
union select 's15'
union select 's16'
union select 's17'
union select 's18'
union select 's19'
union select 's20'
union select's21'
) sensors
),
/* Correlation score */
correlation_score as
(select sensor_name,
abs((count(*)*sum(cycle*sensor_value) - sum(cycle)*sum(sensor_value))
/sqrt((count(*)*sum(cycle*cycle)
- sum(cycle)*sum(cycle))*
(count(*)*sum(sensor_value*sensor_value) - sum(sensor_value)*sum(sensor_value))))
as corr_score
from sensor_data
group by sensor_name),
/* Calculate sensor change */
sensor_changes as
(
Select sensor_name,sensor_value - lag(sensor_value) over
(partition by engine_id,sensor_name order by cycle)as diff from sensor_data
),monotonicity_score as
(Select sensor_name,abs(sum(case when diff > 0 then 1 else 0 end)- sum(
case when diff < 0 then 1 else 0 end
)) / count(diff) as mono_score 
from sensor_changes
group by sensor_name
)
/* Final ranking */
Select
c.sensor_name,
round(c.corr_score,3) AS correlation_score,
round(m.mono_score,3) AS monotonicity_score,
round((0.5*c.corr_score + 0.5*m.mono_score),3
)as final_sensor_score,
rank() over (
order by (0.5*c.corr_score + 0.5*m.mono_score) desc)
as sensor_rank
from correlation_score c
join monotonicity_score m
on c.sensor_name = m.sensor_name
order by sensor_rank;
