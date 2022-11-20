# Write your MySQL query statement below

select u.name,sum(amount) as balance
from users u join transactions t
on u.account = t.account
group by name
having balance > 10000;
