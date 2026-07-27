use robot_db;

select * from engine_test_telemetry ;

/* What are the current sensor statistics across the fleet? */
select 's1' as sensor,dataset_id,round(avg(s1)) as avg_value,
round(min(s1)) as min_value,round(max(s1)) as max_value,round(stddev(s1))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's2',dataset_id,round(avg(s2)) as avg_value,
round(min(s2)) as min_value,round(max(s2)) as max_value,round(stddev(s2))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's3',dataset_id,round(avg(s3)) as avg_value,
round(min(s3)) as min_value,round(max(s3)) as max_value,round(stddev(s3))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's4',dataset_id,round(avg(s4)) as avg_value,
round(min(s4)) as min_value,round(max(s4)) as max_value,round(stddev(s4))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's5',dataset_id,round(avg(s5)) as avg_value,
round(min(s5)) as min_value,round(max(s5)) as max_value,round(stddev(s5))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's6',dataset_id,round(avg(s6)) as avg_value,
round(min(s6)) as min_value,round(max(s6)) as max_value,round(stddev(s6))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all

select 's7',dataset_id,round(avg(s7)) as avg_value,
round(min(s7)) as min_value,round(max(s7)) as max_value,round(stddev(s7))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all

select 's8',dataset_id,round(avg(s8)) as avg_value,
round(min(s8)) as min_value,round(max(s8)) as max_value,round(stddev(s8))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all 

select 's9',dataset_id,round(avg(s9)) as avg_value,
round(min(s9)) as min_value,round(max(s9)) as max_value,round(stddev(s9))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id  

union all

select 's10',dataset_id,round(avg(s10)) as avg_value,
round(min(s10)) as min_value,round(max(s10)) as max_value,round(stddev(s10))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id;


select 's11' as sensor,dataset_id,round(avg(s11)) as avg_value,
round(min(s11)) as min_value,round(max(s11)) as max_value,round(stddev(s11))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's12',dataset_id,round(avg(s12)) as avg_value,
round(min(s12)) as min_value,round(max(s12)) as max_value,round(stddev(s12))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's13',dataset_id,round(avg(s13)) as avg_value,
round(min(s13)) as min_value,round(max(s13)) as max_value,round(stddev(s13))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's14',dataset_id,round(avg(s14)) as avg_value,
round(min(s14)) as min_value,round(max(s14)) as max_value,round(stddev(s14))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's15',dataset_id,round(avg(s15)) as avg_value,
round(min(s15)) as min_value,round(max(s15)) as max_value,round(stddev(s15))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id 

union all

select 's16',dataset_id,round(avg(s16)) as avg_value,
round(min(s16)) as min_value,round(max(s16)) as max_value,round(stddev(s16))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all

select 's17',dataset_id,round(avg(s17)) as avg_value,
round(min(s17)) as min_value,round(max(s17)) as max_value,round(stddev(s17))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all

select 's18',dataset_id,round(avg(s18)) as avg_value,
round(min(s18)) as min_value,round(max(s18)) as max_value,round(stddev(s18))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all 

select 's19',dataset_id,round(avg(s19)) as avg_value,
round(min(s19)) as min_value,round(max(s19)) as max_value,round(stddev(s19))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id  

union all

select 's20',dataset_id,round(avg(s20)) as avg_value,
round(min(s20)) as min_value,round(max(s20)) as max_value,round(stddev(s20))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id

union all

select 's21',dataset_id,round(avg(s21)) as avg_value,
round(min(s21)) as min_value,round(max(s21)) as max_value,round(stddev(s21))
as standard_deviation_value
from engine_test_telemetry
group by dataset_id ;


/* Which sensors show the highest variation across engines ? */
Select 's1' as sensor, round(stddev(s1),2) AS stddev
from engine_test_telemetry

union all
select 's2', round(stddev(s2),2)
from engine_test_telemetry

union all
select 's3', round(stddev(s3),2)
from engine_test_telemetry

union all
select 's4', round(stddev(s4),2)
from engine_test_telemetry

union all
select 's5', round(stddev(s5),2)
from engine_test_telemetry

union all
select 's6', round(stddev(s6),2)
from engine_test_telemetry

union all
select 's7', round(stddev(s7),2)
from engine_test_telemetry

union all
select 's8', round(stddev(s8),2)
from engine_test_telemetry

union all
select 's9', round(stddev(s9),2)
from engine_test_telemetry

union all
select 's10', round(stddev(s10),2)
from engine_test_telemetry

union all
select 's11', round(stddev(s11),2)
from engine_test_telemetry

union all
select  's12', round(stddev(s12),2)
from engine_test_telemetry

union all
select 's13', round(stddev(s13),2)
from engine_test_telemetry

union all
select 's14', round(stddev(s14),2)
from engine_test_telemetry

union all
select 's15', round(stddev(s15),2)
from engine_test_telemetry

union all
select 's16', round(stddev(s16),2)
from engine_test_telemetry

union all
select 's17', round(stddev(s17),2)
from engine_test_telemetry

union all
select 's18', round(stddev(s18),2)
from engine_test_telemetry

union all
select 's19', round(stddev(s19),2)
from engine_test_telemetry

union all
select 's20', round(stddev(s20),2)
from engine_test_telemetry

union all
select 's21', round(stddev(s21),2)
from engine_test_telemetry

order by stddev desc;

/* Which engines have abnormal sensor readings? */
with fleet_average as (select round(avg(s1),2) as fleet_avg_s1
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s1),2) as avg_s1
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s1,f.fleet_avg_s1
,abs(e.avg_s1 - f.fleet_avg_s1) as diff_s1,
dense_rank() over(order by abs(e.avg_s1 - f.fleet_avg_s1) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s2),2) as fleet_avg_s2
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s2),2) as avg_s2
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s2,f.fleet_avg_s2
,abs(e.avg_s2 - f.fleet_avg_s2) as diff_s2,
dense_rank() over(order by abs(e.avg_s2 - f.fleet_avg_s2) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s3),2) as fleet_avg_s3
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s3),2) as avg_s3
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s3,f.fleet_avg_s3
,abs(e.avg_s3 - f.fleet_avg_s3) as diff_s3,
dense_rank() over(order by abs(e.avg_s3 - f.fleet_avg_s3) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s4),2) as fleet_avg_s4
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s4),2) as avg_s4
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s4,f.fleet_avg_s4
,abs(e.avg_s4 - f.fleet_avg_s4) as diff_s4,
dense_rank() over(order by abs(e.avg_s4 - f.fleet_avg_s4) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s5),2) as fleet_avg_s5
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s5),2) as avg_s5
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s5,f.fleet_avg_s5
,abs(e.avg_s5 - f.fleet_avg_s5) as diff_s5,
dense_rank() over(order by abs(e.avg_s5 - f.fleet_avg_s5) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s6),2) as fleet_avg_s6
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s6),2) as avg_s6
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s6,f.fleet_avg_s6
,abs(e.avg_s6 - f.fleet_avg_s6) as diff_s6,
dense_rank() over(order by abs(e.avg_s6 - f.fleet_avg_s6) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s7),2) as fleet_avg_s7
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s7),2) as avg_s7
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s7,f.fleet_avg_s7
,abs(e.avg_s7 - f.fleet_avg_s7) as diff_s7,
dense_rank() over(order by abs(e.avg_s7 - f.fleet_avg_s7) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s8),2) as fleet_avg_s8
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s8),2) as avg_s8
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s8,f.fleet_avg_s8
,abs(e.avg_s8 - f.fleet_avg_s8) as diff_s8,
dense_rank() over(order by abs(e.avg_s8 - f.fleet_avg_s8) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s1),2) as fleet_avg_s9
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s9),2) as avg_s9
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s9,f.fleet_avg_s9
,abs(e.avg_s9 - f.fleet_avg_s9) as diff_s9,
dense_rank() over(order by abs(e.avg_s9 - f.fleet_avg_s9) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s10),2) as fleet_avg_s10
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s10),2) as avg_s10
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s10,f.fleet_avg_s10
,abs(e.avg_s10 - f.fleet_avg_s10) as diff_s10,
dense_rank() over(order by abs(e.avg_s10 - f.fleet_avg_s10) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s11),2) as fleet_avg_s11
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s11),2) as avg_s11
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s11,f.fleet_avg_s11
,abs(e.avg_s11 - f.fleet_avg_s11) as diff_s11,
dense_rank() over(order by abs(e.avg_s11 - f.fleet_avg_s11) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s12),2) as fleet_avg_s12
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s12),2) as avg_s12
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s12,f.fleet_avg_s12
,abs(e.avg_s12 - f.fleet_avg_s12) as diff_s12,
dense_rank() over(order by abs(e.avg_s12 - f.fleet_avg_s12) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s13),2) as fleet_avg_s13
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s13),2) as avg_s13
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s13,f.fleet_avg_s13
,abs(e.avg_s13 - f.fleet_avg_s13) as diff_s13,
dense_rank() over(order by abs(e.avg_s13 - f.fleet_avg_s13) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s14),2) as fleet_avg_s14
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s14),2) as avg_s14
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s14,f.fleet_avg_s14
,abs(e.avg_s14 - f.fleet_avg_s14) as diff_s14,
dense_rank() over(order by abs(e.avg_s14 - f.fleet_avg_s14) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s15),2) as fleet_avg_s15
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s15),2) as avg_s15
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s15,f.fleet_avg_s15
,abs(e.avg_s15 - f.fleet_avg_s15) as diff_s15,
dense_rank() over(order by abs(e.avg_s15 - f.fleet_avg_s15) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s16),2) as fleet_avg_s16
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s16),2) as avg_s16
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s16,f.fleet_avg_s16
,abs(e.avg_s16 - f.fleet_avg_s16) as diff_s16,
dense_rank() over(order by abs(e.avg_s16 - f.fleet_avg_s16) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s17),2) as fleet_avg_s17
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s17),2) as avg_s17
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s17,f.fleet_avg_s17
,abs(e.avg_s17 - f.fleet_avg_s17) as diff_s17,
dense_rank() over(order by abs(e.avg_s17 - f.fleet_avg_s17) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s18),2) as fleet_avg_s18
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s18),2) as avg_s18
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s18,f.fleet_avg_s18
,abs(e.avg_s18 - f.fleet_avg_s18) as diff_s18,
dense_rank() over(order by abs(e.avg_s18 - f.fleet_avg_s18) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s19),2) as fleet_avg_s19
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s19),2) as avg_s19
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s19,f.fleet_avg_s19
,abs(e.avg_s19 - f.fleet_avg_s19) as diff_s19,
dense_rank() over(order by abs(e.avg_s19 - f.fleet_avg_s19) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s20),2) as fleet_avg_s20
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s20),2) as avg_s20
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s20,f.fleet_avg_s20
,abs(e.avg_s20 - f.fleet_avg_s20) as diff_s20,
dense_rank() over(order by abs(e.avg_s20 - f.fleet_avg_s20) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s21),2) as fleet_avg_s21
from engine_test_telemetry
where dataset_id = "FD001"), engine_average as 
(select  engine_id,round(avg(s21),2) as avg_s21
from engine_test_telemetry
where dataset_id = "FD001"
group by engine_id)
select e.engine_id,
e.avg_s21,f.fleet_avg_s21
,abs(e.avg_s21 - f.fleet_avg_s21) as diff_s21,
dense_rank() over(order by abs(e.avg_s21 - f.fleet_avg_s21) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;



with fleet_average as (select round(avg(s1),2) as fleet_avg_s1
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s1),2) as avg_s1
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s1,f.fleet_avg_s1
,abs(e.avg_s1 - f.fleet_avg_s1) as diff_s1,
dense_rank() over(order by abs(e.avg_s1 - f.fleet_avg_s1) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s2),2) as fleet_avg_s2
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s2),2) as avg_s2
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s2,f.fleet_avg_s2
,abs(e.avg_s2 - f.fleet_avg_s2) as diff_s2,
dense_rank() over(order by abs(e.avg_s2 - f.fleet_avg_s2) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s3),2) as fleet_avg_s3
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s3),2) as avg_s3
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s3,f.fleet_avg_s3
,abs(e.avg_s3 - f.fleet_avg_s3) as diff_s3,
dense_rank() over(order by abs(e.avg_s3 - f.fleet_avg_s3) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s4),2) as fleet_avg_s4
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s4),2) as avg_s4
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s4,f.fleet_avg_s4
,abs(e.avg_s4 - f.fleet_avg_s4) as diff_s4,
dense_rank() over(order by abs(e.avg_s4 - f.fleet_avg_s4) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s5),2) as fleet_avg_s5
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s5),2) as avg_s5
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s5,f.fleet_avg_s5
,abs(e.avg_s5 - f.fleet_avg_s5) as diff_s5,
dense_rank() over(order by abs(e.avg_s5 - f.fleet_avg_s5) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s6),2) as fleet_avg_s6
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s6),2) as avg_s6
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s6,f.fleet_avg_s6
,abs(e.avg_s6 - f.fleet_avg_s6) as diff_s6,
dense_rank() over(order by abs(e.avg_s6 - f.fleet_avg_s6) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s7),2) as fleet_avg_s7
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s7),2) as avg_s7
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s7,f.fleet_avg_s7
,abs(e.avg_s7 - f.fleet_avg_s7) as diff_s7,
dense_rank() over(order by abs(e.avg_s7 - f.fleet_avg_s7) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s8),2) as fleet_avg_s8
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s8),2) as avg_s8
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s8,f.fleet_avg_s8
,abs(e.avg_s8 - f.fleet_avg_s8) as diff_s8,
dense_rank() over(order by abs(e.avg_s8 - f.fleet_avg_s8) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s1),2) as fleet_avg_s9
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s9),2) as avg_s9
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s9,f.fleet_avg_s9
,abs(e.avg_s9 - f.fleet_avg_s9) as diff_s9,
dense_rank() over(order by abs(e.avg_s9 - f.fleet_avg_s9) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s10),2) as fleet_avg_s10
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s10),2) as avg_s10
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s10,f.fleet_avg_s10
,abs(e.avg_s10 - f.fleet_avg_s10) as diff_s10,
dense_rank() over(order by abs(e.avg_s10 - f.fleet_avg_s10) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s11),2) as fleet_avg_s11
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s11),2) as avg_s11
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s11,f.fleet_avg_s11
,abs(e.avg_s11 - f.fleet_avg_s11) as diff_s11,
dense_rank() over(order by abs(e.avg_s11 - f.fleet_avg_s11) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s12),2) as fleet_avg_s12
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s12),2) as avg_s12
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s12,f.fleet_avg_s12
,abs(e.avg_s12 - f.fleet_avg_s12) as diff_s12,
dense_rank() over(order by abs(e.avg_s12 - f.fleet_avg_s12) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s13),2) as fleet_avg_s13
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s13),2) as avg_s13
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s13,f.fleet_avg_s13
,abs(e.avg_s13 - f.fleet_avg_s13) as diff_s13,
dense_rank() over(order by abs(e.avg_s13 - f.fleet_avg_s13) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s14),2) as fleet_avg_s14
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s14),2) as avg_s14
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s14,f.fleet_avg_s14
,abs(e.avg_s14 - f.fleet_avg_s14) as diff_s14,
dense_rank() over(order by abs(e.avg_s14 - f.fleet_avg_s14) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s15),2) as fleet_avg_s15
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s15),2) as avg_s15
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s15,f.fleet_avg_s15
,abs(e.avg_s15 - f.fleet_avg_s15) as diff_s15,
dense_rank() over(order by abs(e.avg_s15 - f.fleet_avg_s15) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s16),2) as fleet_avg_s16
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s16),2) as avg_s16
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s16,f.fleet_avg_s16
,abs(e.avg_s16 - f.fleet_avg_s16) as diff_s16,
dense_rank() over(order by abs(e.avg_s16 - f.fleet_avg_s16) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s17),2) as fleet_avg_s17
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s17),2) as avg_s17
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s17,f.fleet_avg_s17
,abs(e.avg_s17 - f.fleet_avg_s17) as diff_s17,
dense_rank() over(order by abs(e.avg_s17 - f.fleet_avg_s17) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s18),2) as fleet_avg_s18
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s18),2) as avg_s18
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s18,f.fleet_avg_s18
,abs(e.avg_s18 - f.fleet_avg_s18) as diff_s18,
dense_rank() over(order by abs(e.avg_s18 - f.fleet_avg_s18) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s19),2) as fleet_avg_s19
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s19),2) as avg_s19
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s19,f.fleet_avg_s19
,abs(e.avg_s19 - f.fleet_avg_s19) as diff_s19,
dense_rank() over(order by abs(e.avg_s19 - f.fleet_avg_s19) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s20),2) as fleet_avg_s20
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s20),2) as avg_s20
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s20,f.fleet_avg_s20
,abs(e.avg_s20 - f.fleet_avg_s20) as diff_s20,
dense_rank() over(order by abs(e.avg_s20 - f.fleet_avg_s20) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s21),2) as fleet_avg_s21
from engine_test_telemetry
where dataset_id = "FD002"), engine_average as 
(select  engine_id,round(avg(s21),2) as avg_s21
from engine_test_telemetry
where dataset_id = "FD002"
group by engine_id)
select e.engine_id,
e.avg_s21,f.fleet_avg_s21
,abs(e.avg_s21 - f.fleet_avg_s21) as diff_s21,
dense_rank() over(order by abs(e.avg_s21 - f.fleet_avg_s21) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;


with fleet_average as (select round(avg(s1),2) as fleet_avg_s1
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s1),2) as avg_s1
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s1,f.fleet_avg_s1
,abs(e.avg_s1 - f.fleet_avg_s1) as diff_s1,
dense_rank() over(order by abs(e.avg_s1 - f.fleet_avg_s1) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s2),2) as fleet_avg_s2
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s2),2) as avg_s2
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s2,f.fleet_avg_s2
,abs(e.avg_s2 - f.fleet_avg_s2) as diff_s2,
dense_rank() over(order by abs(e.avg_s2 - f.fleet_avg_s2) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s3),2) as fleet_avg_s3
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s3),2) as avg_s3
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s3,f.fleet_avg_s3
,abs(e.avg_s3 - f.fleet_avg_s3) as diff_s3,
dense_rank() over(order by abs(e.avg_s3 - f.fleet_avg_s3) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s4),2) as fleet_avg_s4
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s4),2) as avg_s4
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s4,f.fleet_avg_s4
,abs(e.avg_s4 - f.fleet_avg_s4) as diff_s4,
dense_rank() over(order by abs(e.avg_s4 - f.fleet_avg_s4) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s5),2) as fleet_avg_s5
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s5),2) as avg_s5
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s5,f.fleet_avg_s5
,abs(e.avg_s5 - f.fleet_avg_s5) as diff_s5,
dense_rank() over(order by abs(e.avg_s5 - f.fleet_avg_s5) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s6),2) as fleet_avg_s6
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s6),2) as avg_s6
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s6,f.fleet_avg_s6
,abs(e.avg_s6 - f.fleet_avg_s6) as diff_s6,
dense_rank() over(order by abs(e.avg_s6 - f.fleet_avg_s6) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s7),2) as fleet_avg_s7
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s7),2) as avg_s7
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s7,f.fleet_avg_s7
,abs(e.avg_s7 - f.fleet_avg_s7) as diff_s7,
dense_rank() over(order by abs(e.avg_s7 - f.fleet_avg_s7) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s8),2) as fleet_avg_s8
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s8),2) as avg_s8
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s8,f.fleet_avg_s8
,abs(e.avg_s8 - f.fleet_avg_s8) as diff_s8,
dense_rank() over(order by abs(e.avg_s8 - f.fleet_avg_s8) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s1),2) as fleet_avg_s9
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s9),2) as avg_s9
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s9,f.fleet_avg_s9
,abs(e.avg_s9 - f.fleet_avg_s9) as diff_s9,
dense_rank() over(order by abs(e.avg_s9 - f.fleet_avg_s9) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s10),2) as fleet_avg_s10
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s10),2) as avg_s10
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s10,f.fleet_avg_s10
,abs(e.avg_s10 - f.fleet_avg_s10) as diff_s10,
dense_rank() over(order by abs(e.avg_s10 - f.fleet_avg_s10) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s11),2) as fleet_avg_s11
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s11),2) as avg_s11
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s11,f.fleet_avg_s11
,abs(e.avg_s11 - f.fleet_avg_s11) as diff_s11,
dense_rank() over(order by abs(e.avg_s11 - f.fleet_avg_s11) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s12),2) as fleet_avg_s12
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s12),2) as avg_s12
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s12,f.fleet_avg_s12
,abs(e.avg_s12 - f.fleet_avg_s12) as diff_s12,
dense_rank() over(order by abs(e.avg_s12 - f.fleet_avg_s12) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s13),2) as fleet_avg_s13
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s13),2) as avg_s13
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s13,f.fleet_avg_s13
,abs(e.avg_s13 - f.fleet_avg_s13) as diff_s13,
dense_rank() over(order by abs(e.avg_s13 - f.fleet_avg_s13) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s14),2) as fleet_avg_s14
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s14),2) as avg_s14
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s14,f.fleet_avg_s14
,abs(e.avg_s14 - f.fleet_avg_s14) as diff_s14,
dense_rank() over(order by abs(e.avg_s14 - f.fleet_avg_s14) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s15),2) as fleet_avg_s15
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s15),2) as avg_s15
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s15,f.fleet_avg_s15
,abs(e.avg_s15 - f.fleet_avg_s15) as diff_s15,
dense_rank() over(order by abs(e.avg_s15 - f.fleet_avg_s15) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s16),2) as fleet_avg_s16
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s16),2) as avg_s16
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s16,f.fleet_avg_s16
,abs(e.avg_s16 - f.fleet_avg_s16) as diff_s16,
dense_rank() over(order by abs(e.avg_s16 - f.fleet_avg_s16) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s17),2) as fleet_avg_s17
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s17),2) as avg_s17
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s17,f.fleet_avg_s17
,abs(e.avg_s17 - f.fleet_avg_s17) as diff_s17,
dense_rank() over(order by abs(e.avg_s17 - f.fleet_avg_s17) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s18),2) as fleet_avg_s18
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s18),2) as avg_s18
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s18,f.fleet_avg_s18
,abs(e.avg_s18 - f.fleet_avg_s18) as diff_s18,
dense_rank() over(order by abs(e.avg_s18 - f.fleet_avg_s18) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s19),2) as fleet_avg_s19
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s19),2) as avg_s19
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s19,f.fleet_avg_s19
,abs(e.avg_s19 - f.fleet_avg_s19) as diff_s19,
dense_rank() over(order by abs(e.avg_s19 - f.fleet_avg_s19) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s20),2) as fleet_avg_s20
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s20),2) as avg_s20
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s20,f.fleet_avg_s20
,abs(e.avg_s20 - f.fleet_avg_s20) as diff_s20,
dense_rank() over(order by abs(e.avg_s20 - f.fleet_avg_s20) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s21),2) as fleet_avg_s21
from engine_test_telemetry
where dataset_id = "FD003"), engine_average as 
(select  engine_id,round(avg(s21),2) as avg_s21
from engine_test_telemetry
where dataset_id = "FD003"
group by engine_id)
select e.engine_id,
e.avg_s21,f.fleet_avg_s21
,abs(e.avg_s21 - f.fleet_avg_s21) as diff_s21,
dense_rank() over(order by abs(e.avg_s21 - f.fleet_avg_s21) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s1),2) as fleet_avg_s1
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s1),2) as avg_s1
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s1,f.fleet_avg_s1
,abs(e.avg_s1 - f.fleet_avg_s1) as diff_s1,
dense_rank() over(order by abs(e.avg_s1 - f.fleet_avg_s1) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s2),2) as fleet_avg_s2
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s2),2) as avg_s2
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s2,f.fleet_avg_s2
,abs(e.avg_s2 - f.fleet_avg_s2) as diff_s2,
dense_rank() over(order by abs(e.avg_s2 - f.fleet_avg_s2) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s3),2) as fleet_avg_s3
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s3),2) as avg_s3
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s3,f.fleet_avg_s3
,abs(e.avg_s3 - f.fleet_avg_s3) as diff_s3,
dense_rank() over(order by abs(e.avg_s3 - f.fleet_avg_s3) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s4),2) as fleet_avg_s4
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s4),2) as avg_s4
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s4,f.fleet_avg_s4
,abs(e.avg_s4 - f.fleet_avg_s4) as diff_s4,
dense_rank() over(order by abs(e.avg_s4 - f.fleet_avg_s4) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s5),2) as fleet_avg_s5
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s5),2) as avg_s5
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s5,f.fleet_avg_s5
,abs(e.avg_s5 - f.fleet_avg_s5) as diff_s5,
dense_rank() over(order by abs(e.avg_s5 - f.fleet_avg_s5) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s6),2) as fleet_avg_s6
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s6),2) as avg_s6
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s6,f.fleet_avg_s6
,abs(e.avg_s6 - f.fleet_avg_s6) as diff_s6,
dense_rank() over(order by abs(e.avg_s6 - f.fleet_avg_s6) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s7),2) as fleet_avg_s7
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s7),2) as avg_s7
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s7,f.fleet_avg_s7
,abs(e.avg_s7 - f.fleet_avg_s7) as diff_s7,
dense_rank() over(order by abs(e.avg_s7 - f.fleet_avg_s7) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s8),2) as fleet_avg_s8
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s8),2) as avg_s8
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s8,f.fleet_avg_s8
,abs(e.avg_s8 - f.fleet_avg_s8) as diff_s8,
dense_rank() over(order by abs(e.avg_s8 - f.fleet_avg_s8) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s1),2) as fleet_avg_s9
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s9),2) as avg_s9
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s9,f.fleet_avg_s9
,abs(e.avg_s9 - f.fleet_avg_s9) as diff_s9,
dense_rank() over(order by abs(e.avg_s9 - f.fleet_avg_s9) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s10),2) as fleet_avg_s10
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s10),2) as avg_s10
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s10,f.fleet_avg_s10
,abs(e.avg_s10 - f.fleet_avg_s10) as diff_s10,
dense_rank() over(order by abs(e.avg_s10 - f.fleet_avg_s10) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s11),2) as fleet_avg_s11
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s11),2) as avg_s11
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s11,f.fleet_avg_s11
,abs(e.avg_s11 - f.fleet_avg_s11) as diff_s11,
dense_rank() over(order by abs(e.avg_s11 - f.fleet_avg_s11) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s12),2) as fleet_avg_s12
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s12),2) as avg_s12
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s12,f.fleet_avg_s12
,abs(e.avg_s12 - f.fleet_avg_s12) as diff_s12,
dense_rank() over(order by abs(e.avg_s12 - f.fleet_avg_s12) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s13),2) as fleet_avg_s13
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s13),2) as avg_s13
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s13,f.fleet_avg_s13
,abs(e.avg_s13 - f.fleet_avg_s13) as diff_s13,
dense_rank() over(order by abs(e.avg_s13 - f.fleet_avg_s13) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s14),2) as fleet_avg_s14
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s14),2) as avg_s14
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s14,f.fleet_avg_s14
,abs(e.avg_s14 - f.fleet_avg_s14) as diff_s14,
dense_rank() over(order by abs(e.avg_s14 - f.fleet_avg_s14) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s15),2) as fleet_avg_s15
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s15),2) as avg_s15
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s15,f.fleet_avg_s15
,abs(e.avg_s15 - f.fleet_avg_s15) as diff_s15,
dense_rank() over(order by abs(e.avg_s15 - f.fleet_avg_s15) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s16),2) as fleet_avg_s16
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s16),2) as avg_s16
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s16,f.fleet_avg_s16
,abs(e.avg_s16 - f.fleet_avg_s16) as diff_s16,
dense_rank() over(order by abs(e.avg_s16 - f.fleet_avg_s16) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s17),2) as fleet_avg_s17
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s17),2) as avg_s17
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s17,f.fleet_avg_s17
,abs(e.avg_s17 - f.fleet_avg_s17) as diff_s17,
dense_rank() over(order by abs(e.avg_s17 - f.fleet_avg_s17) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s18),2) as fleet_avg_s18
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s18),2) as avg_s18
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s18,f.fleet_avg_s18
,abs(e.avg_s18 - f.fleet_avg_s18) as diff_s18,
dense_rank() over(order by abs(e.avg_s18 - f.fleet_avg_s18) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s19),2) as fleet_avg_s19
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s19),2) as avg_s19
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s19,f.fleet_avg_s19
,abs(e.avg_s19 - f.fleet_avg_s19) as diff_s19,
dense_rank() over(order by abs(e.avg_s19 - f.fleet_avg_s19) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s20),2) as fleet_avg_s20
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s20),2) as avg_s20
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s20,f.fleet_avg_s20
,abs(e.avg_s20 - f.fleet_avg_s20) as diff_s20,
dense_rank() over(order by abs(e.avg_s20 - f.fleet_avg_s20) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;

with fleet_average as (select round(avg(s21),2) as fleet_avg_s21
from engine_test_telemetry
where dataset_id = "FD004"), engine_average as 
(select  engine_id,round(avg(s21),2) as avg_s21
from engine_test_telemetry
where dataset_id = "FD004"
group by engine_id)
select e.engine_id,
e.avg_s21,f.fleet_avg_s21
,abs(e.avg_s21 - f.fleet_avg_s21) as diff_s21,
dense_rank() over(order by abs(e.avg_s21 - f.fleet_avg_s21) desc)
as  deviation_rank
from engine_average e
cross join fleet_average f;


/* How do sensor values change with increasing engine age? */
with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s1' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s1 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s1 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s1 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s2' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s2 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s2 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s2 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;


with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s3' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s3 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s3 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s3 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;


with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s4' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s4 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s4 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s4 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;



with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s5' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s5 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s5 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s5 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s6' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s6 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s6 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s6 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s7' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s7 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s7 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s7 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s8' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s8 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s8 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s8 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s9' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s9 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s9 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s9 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s10' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s10 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s10 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s10 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s11' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s11 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s11 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s11 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s12' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s12 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s12 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s12 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s13' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s13 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s13 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s13 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s14' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s14 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s14 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s14 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s15' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s15 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s15 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s15 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s16' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s16 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s16 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s16 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s17' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s17 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s17 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s17 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s18' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s18 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s18 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s18 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s19' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s19 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s19 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s19 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s20' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s20 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s20 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s20 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;

with max_cycle as (select dataset_id,engine_id,max(cycle) as max_cycle
from engine_test_telemetry
group by dataset_id,engine_id), Enginebuckets as (
select dataset_id,engine_id ,
case when max_cycle  <= 150 then 'Short Lived Engines'
when max_cycle <= 200 then 'Medium Lived Engines'
else 'Long Lived Engines'
end as engine_quality_bucket
from max_cycle)
select t.dataset_id,'s21' as sensor_name,
round(avg(case when b.engine_quality_bucket = 'Short Lived Engines' then t.s21 end),2) as short_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Medium Lived Engines' then t.s21 end),2) as med_lived_avg,
round(avg(case when b.engine_quality_bucket = 'Long Lived Engines' then t.s21 end),2) as long_lived_avg
from engine_test_telemetry t
join EngineBuckets b 
on t.dataset_id = b.dataset_id
and t.engine_id = b.engine_id
group by t.dataset_id ;





/*Which sensors show possible degradation patterns in test engines?*/
with sensor_diff as(
select engine_id,dataset_id,cycle,
s9 - lag(s9) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
s13 - lag(s13) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
from engine_test_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s14_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s4 - lag(s4) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
s3 - lag(s3) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
s1 - lag(s1) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
)
select
dataset_id,
avg(diff) as avg_diff,
case when avg(diff) > 0 then 'Increasing Trend'
     when avg(diff) < 0 then 'Decreasing Trend'
     else 'Relatively Stable'
end as s11_trend
from sensor_diff
group by dataset_id ;

with sensor_diff as(
select engine_id,dataset_id,cycle,
s12 - lag(s12) over (partition by
dataset_id,engine_id order by cycle) as diff
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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
from engine_test_telemetry
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



/*Average Change*/
select dataset_id,engine_id,avg(s1)
as avg_s1,avg(s2) as avg_s2,avg(s3) as avg_s3,
avg(s4) as avg_s4,avg(s5) as avg_s5,avg(s6) as avg_s6,
avg(s7) as avg_s7,avg(s8) as avg_s8,avg(s9) as avg_s9,
avg(s10) as avg_s10,avg(s11) as avg_s11,avg(s12) as avg_s12,
avg(s13) as avg_s13,avg(s14) as avg_s14,avg(s15) as avg_s15,
avg(s16) as avg_s16 , avg(s17) as avg_s17,avg(s18) as avg_s18,
avg(s19) as avg_s19,avg(s20) as avg_s20,avg(s21) as avg_s21
from engine_test_telemetry group by dataset_id,engine_id ;


/* Percentage Change */
with lagged_value as (select dataset_id,engine_id,cycle,s1,
lag(s1) over(partition by dataset_id,engine_id order by cycle) as lag_s1
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s1,round(((s1-lag_s1) / lag_s1) * 100,2) as s1_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s2,
lag(s2) over(partition by dataset_id,engine_id order by cycle) as lag_s2
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s2,round(((s2-lag_s2) / lag_s2) * 100,2) as s2_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s3,
lag(s3) over(partition by dataset_id,engine_id order by cycle) as lag_s3
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s3,round(((s3-lag_s3) / lag_s3) * 100,2) as s3_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s4,
lag(s4) over(partition by dataset_id,engine_id order by cycle) as lag_s4
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s4,round(((s4-lag_s4) / lag_s4) * 100,2) as s4_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s5,
lag(s5) over(partition by dataset_id,engine_id order by cycle) as lag_s5
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s5,round(((s5-lag_s5) / lag_s5) * 100,2) as s5_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s6,
lag(s6) over(partition by dataset_id,engine_id order by cycle) as lag_s6
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s6,round(((s6-lag_s6) / lag_s6) * 100,2) as s6_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s7,
lag(s7) over(partition by dataset_id,engine_id order by cycle) as lag_s7
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s7,round(((s7-lag_s7) / lag_s7) * 100,2) as s7_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s8,
lag(s8) over(partition by dataset_id,engine_id order by cycle) as lag_s8
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s8,round(((s8-lag_s8) / lag_s8) * 100,2) as s8_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s9,
lag(s9) over(partition by dataset_id,engine_id order by cycle) as lag_s9
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s9,round(((s9-lag_s9) / lag_s9) * 100,2) as s9_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s10,
lag(s10) over(partition by dataset_id,engine_id order by cycle) as lag_s10
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s10,round(((s10-lag_s10) / lag_s10) * 100,2) as s10_percentage_change
from lagged_value
order by dataset_id,engine_id ;


with lagged_value as (select dataset_id,engine_id,cycle,s11,
lag(s11) over(partition by dataset_id,engine_id order by cycle) as lag_s11
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s11,round(((s11-lag_s11) / lag_s11) * 100,2) as s11_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s12,
lag(s12) over(partition by dataset_id,engine_id order by cycle) as lag_s12
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s12,round(((s12-lag_s12) / lag_s12) * 100,2) as s12_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s13,
lag(s13) over(partition by dataset_id,engine_id order by cycle) as lag_s13
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s13,round(((s13-lag_s13) / lag_s13) * 100,2) as s13_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s14,
lag(s14) over(partition by dataset_id,engine_id order by cycle) as lag_s14
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s14,round(((s14-lag_s14) / lag_s14) * 100,2) as s14_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s15,
lag(s15) over(partition by dataset_id,engine_id order by cycle) as lag_s15
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s15,round(((s15-lag_s15) / lag_s15) * 100,2) as s15_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s16,
lag(s16) over(partition by dataset_id,engine_id order by cycle) as lag_s16
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s16,round(((s16-lag_s16) / lag_s16) * 100,2) as s16_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s17,
lag(s17) over(partition by dataset_id,engine_id order by cycle) as lag_s17
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s17,round(((s17-lag_s17) / lag_s17) * 100,2) as s17_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s18,
lag(s18) over(partition by dataset_id,engine_id order by cycle) as lag_s18
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s18,round(((s18-lag_s18) / lag_s18) * 100,2) as s18_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s19,
lag(s19) over(partition by dataset_id,engine_id order by cycle) as lag_s19
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s19,round(((s19-lag_s19) / lag_s19) * 100,2) as s19_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s20,
lag(s20) over(partition by dataset_id,engine_id order by cycle) as lag_s20
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s20,round(((s20-lag_s20) / lag_s20) * 100,2) as s20_percentage_change
from lagged_value
order by dataset_id,engine_id ;

with lagged_value as (select dataset_id,engine_id,cycle,s21,
lag(s21) over(partition by dataset_id,engine_id order by cycle) as lag_s21
from engine_test_telemetry)
select dataset_id,engine_id,
cycle,s21,round(((s21-lag_s21) / lag_s21) * 100,2) as s21_percentage_change
from lagged_value
order by dataset_id,engine_id ;


select engine_id,dataset_id,cycle,s1,round(s1-lag(s1,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s2,round(s2-lag(s2,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s3,round(s3-lag(s3,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s4,round(s4-lag(s4,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s5,round(s5-lag(s5,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s6,round(s6-lag(s6,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s7,round(s7-lag(s7,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s8,round(s8-lag(s8,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s9,round(s9-lag(s9,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s10,round(s10-lag(s10,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s11,round(s11-lag(s11,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s12,round(s12-lag(s12,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s13,round(s13-lag(s13,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s14,round(s14-lag(s14,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s15,round(s15-lag(s15,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s16,round(s16-lag(s16,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s17,round(s17-lag(s17,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s18,round(s18-lag(s18,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s19,round(s19-lag(s19,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s20,round(s20-lag(s20,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

select engine_id,dataset_id,cycle,s21,round(s21-lag(s21,1) over (partition by
engine_id,dataset_id order by cycle),2 ) as change_in_sensor
from engine_test_telemetry ;

/* Sensor Ranking for TEST Dataset */

/* Step 1: Find the latest recorded cycle for each engine */
WITH latest_cycle AS
(
    SELECT
        dataset_id,
        engine_id,
        MAX(cycle) AS latest_cycle
    FROM engine_test_telemetry
    GROUP BY dataset_id, engine_id
),

/* Step 2: Select the latest 10 operating cycles */
latest_window AS
(
    SELECT t.*
    FROM engine_test_telemetry t
    JOIN latest_cycle l
        ON t.dataset_id = l.dataset_id
       AND t.engine_id = l.engine_id
    WHERE t.cycle >= l.latest_cycle - 9
),

/* Step 3: Convert 21 sensors into rows */
sensor_data AS
(
    SELECT
        dataset_id,
        engine_id,
        cycle,
        sensor_name,

        CASE sensor_name
            WHEN 's1' THEN s1
            WHEN 's2' THEN s2
            WHEN 's3' THEN s3
            WHEN 's4' THEN s4
            WHEN 's5' THEN s5
            WHEN 's6' THEN s6
            WHEN 's7' THEN s7
            WHEN 's8' THEN s8
            WHEN 's9' THEN s9
            WHEN 's10' THEN s10
            WHEN 's11' THEN s11
            WHEN 's12' THEN s12
            WHEN 's13' THEN s13
            WHEN 's14' THEN s14
            WHEN 's15' THEN s15
            WHEN 's16' THEN s16
            WHEN 's17' THEN s17
            WHEN 's18' THEN s18
            WHEN 's19' THEN s19
            WHEN 's20' THEN s20
            WHEN 's21' THEN s21
        END AS sensor_value

    FROM latest_window

    CROSS JOIN
    (
        SELECT 's1' AS sensor_name
        UNION SELECT 's2'
        UNION SELECT 's3'
        UNION SELECT 's4'
        UNION SELECT 's5'
        UNION SELECT 's6'
        UNION SELECT 's7'
        UNION SELECT 's8'
        UNION SELECT 's9'
        UNION SELECT 's10'
        UNION SELECT 's11'
        UNION SELECT 's12'
        UNION SELECT 's13'
        UNION SELECT 's14'
        UNION SELECT 's15'
        UNION SELECT 's16'
        UNION SELECT 's17'
        UNION SELECT 's18'
        UNION SELECT 's19'
        UNION SELECT 's20'
        UNION SELECT 's21'
    ) sensors
),

/* Step 4: Correlation Score */

correlation_score AS
(
    SELECT
        dataset_id,
        sensor_name,

        ABS(
        (
            COUNT(*) * SUM(cycle * sensor_value)
            - SUM(cycle) * SUM(sensor_value)
        )
        /
        SQRT(
            (
                COUNT(*) * SUM(cycle * cycle)
                - SUM(cycle) * SUM(cycle)
            )
            *
            (
                COUNT(*) * SUM(sensor_value * sensor_value)
                - SUM(sensor_value) * SUM(sensor_value)
            )
        )
        ) AS corr_score

    FROM sensor_data

    GROUP BY
        dataset_id,
        sensor_name
),

/* Step 5: Sensor Change */

sensor_changes AS
(
    SELECT
        dataset_id,
        engine_id,
        cycle,
        sensor_name,

        sensor_value -
        LAG(sensor_value) OVER
        (
            PARTITION BY dataset_id,
                         engine_id,
                         sensor_name
            ORDER BY cycle
        ) AS diff

    FROM sensor_data
),

/* Step 6: Monotonicity */

monotonicity_score AS
(
    SELECT

        dataset_id,
        sensor_name,

        ABS(

        SUM(
            CASE
                WHEN diff > 0 THEN 1
                ELSE 0
            END
        )

        -

        SUM(
            CASE
                WHEN diff < 0 THEN 1
                ELSE 0
            END
        )

        ) / COUNT(diff)

        AS mono_score

    FROM sensor_changes

    GROUP BY
        dataset_id,
        sensor_name
)

/* Final Ranking */

SELECT

    c.dataset_id,

    c.sensor_name,

    ROUND(c.corr_score,3) AS correlation_score,

    ROUND(m.mono_score,3) AS monotonicity_score,

    ROUND(
        0.5*c.corr_score +
        0.5*m.mono_score,
        3
    ) AS final_sensor_score,

    RANK() OVER
    (
        PARTITION BY c.dataset_id
        ORDER BY
        (
            0.5*c.corr_score +
            0.5*m.mono_score
        ) DESC
    ) AS sensor_rank

FROM correlation_score c

JOIN monotonicity_score m

ON c.dataset_id = m.dataset_id
AND c.sensor_name = m.sensor_name

ORDER BY
dataset_id,
sensor_rank;





/* Current Fleet Sensor Profile (Last 10 Recorded Cycles) */

WITH current_window AS
(
    SELECT
        dataset_id,
        engine_id,
        cycle,
        s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,
        s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,

        ROW_NUMBER() OVER
        (
            PARTITION BY dataset_id, engine_id
            ORDER BY cycle DESC
        ) AS rn

    FROM engine_test_telemetry
)

SELECT

dataset_id,
engine_id,

ROUND(AVG(s1),2) AS avg_s1,
ROUND(AVG(s2),2) AS avg_s2,
ROUND(AVG(s3),2) AS avg_s3,
ROUND(AVG(s4),2) AS avg_s4,
ROUND(AVG(s5),2) AS avg_s5,
ROUND(AVG(s6),2) AS avg_s6,
ROUND(AVG(s7),2) AS avg_s7,
ROUND(AVG(s8),2) AS avg_s8,
ROUND(AVG(s9),2) AS avg_s9,
ROUND(AVG(s10),2) AS avg_s10,
ROUND(AVG(s11),2) AS avg_s11,
ROUND(AVG(s12),2) AS avg_s12,
ROUND(AVG(s13),2) AS avg_s13,
ROUND(AVG(s14),2) AS avg_s14,
ROUND(AVG(s15),2) AS avg_s15,
ROUND(AVG(s16),2) AS avg_s16,
ROUND(AVG(s17),2) AS avg_s17,
ROUND(AVG(s18),2) AS avg_s18,
ROUND(AVG(s19),2) AS avg_s19,
ROUND(AVG(s20),2) AS avg_s20,
ROUND(AVG(s21),2) AS avg_s21

FROM current_window

WHERE rn <= 10

GROUP BY
dataset_id,
engine_id

ORDER BY
dataset_id,
engine_id;

/* 28.	Can sensors be ranked by their usefulness for failure detection with respective to datasets?  */
With failure_cycle as
(
Select dataset_id,engine_id,
max(cycle) as failure_cycle
from engine_test_telemetry
group by  dataset_id, engine_id
),
/* Last 10 cycles before failure */
failure_window as
(select t.* from engine_test_telemetry t
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
from engine_test_telemetry
group by dataset_id,engine_id
),
/* Last 10 cycles before failure */
failure_window as
(select t.* from engine_test_telemetry t
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















