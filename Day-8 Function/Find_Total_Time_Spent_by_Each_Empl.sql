# Write your MySQL query statement below

select event_day as day,Emp_id,sum(out_time)-sum(in_time) as total_time
from employees
group by event_day,emp_id;
