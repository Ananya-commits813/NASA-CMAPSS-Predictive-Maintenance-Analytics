use robot_db ;  

select * from engine_train_telemetry ;


/* 17. How do sensor values change over time  within every engine in eahc datset?  */
select engine_id,dataset_id,cycle,s1,round(s1-lag(s1,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s2,round(s2-lag(s2,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s3,round(s3-lag(s3,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s4,round(s4-lag(s4,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s5,round(s5-lag(s5,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s6,round(s6-lag(s6,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s7,round(s7-lag(s7,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s8,round(s8-lag(s8,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s9,round(s9-lag(s9,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s10,round(s10-lag(s10,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s11,round(s11-lag(s11,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s12,round(s12-lag(s12,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s13,round(s13-lag(s13,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s14,round(s13-lag(s14,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s15,round(s15-lag(s15,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s16,round(s16-lag(s16,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s17,round(s17-lag(s17,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s18,round(s18-lag(s18,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s19,round(s19-lag(s19,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s20,round(s20-lag(s20,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;

select engine_id,dataset_id,cycle,s21,round(s21-lag(s21,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_train_telemetry ;


/* 18.	Which sensors show increasing and decreasing degradation 
and relatively stable trends? */
with sensor_diff as(
select engine_id,dataset_id,cycle,
s1 - lag(s1) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s1_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s2 - lag(s2) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s2_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s3 - lag(s3) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s3_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s4 - lag(s4) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s4_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s5 - lag(s5) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s5_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s6 - lag(s6) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s6_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s7 - lag(s7) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s7_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s8 - lag(s8) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s8_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s9 - lag(s9) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s9_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s10 - lag(s10) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s10_trend
from sensor_diff
group by dataset_id ;


with sensor_diff as(
select engine_id,dataset_id,cycle,
s11 - lag(s11) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s12 - lag(s12) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s12_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s13 - lag(s13) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s13_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s14 - lag(s14) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
round(avg(diff),3) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s14_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s15 - lag(s15) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s15_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s16 - lag(s16) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s17 - lag(s17) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s17_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s18 - lag(s18) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
round(avg(diff),3) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s18_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s19 - lag(s19) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s19_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s20 - lag(s20) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s20_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s21 - lag(s21) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_train_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s21_trend
from sensor_diff
group by dataset_id ;

