# Write your MySQL query statement below

select distinct(p.product_id), product_name 
	from product p, sales s 
	where p.product_id = s.product_id and 
	s.product_id not in 
(select product_id from sales where sale_date not between '2019-01-01' and '2019-03-31');
