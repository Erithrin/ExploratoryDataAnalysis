--date exploration -- checking boundaries of dates -- timespan analysis

select 
	min(birthdate) as oldest_customer,
	datediff(year, min(birthdate), getdate()) as oldest_age,
	max(birthdate) as youngest_customer,
	datediff(year, max(birthdate), getdate()) as youngest_age,
from 
	gold.dim_customers;


 

--finding how many years of sales data is available?
select 
	min(order_date) as oldest_record,
	max(order_date) as newest_record
from 
	gold.fact_sales

-- we have records from 2010 – 2014
