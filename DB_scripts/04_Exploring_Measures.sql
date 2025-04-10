--total sales amount
select 
	sum(sales_amount) 
from 
	gold.fact_sales

--29356250

--total quantities sold
select 
	sum(quantity) 
from 
	gold.fact_sales
--60423

--average price of product
select 
	avg(price) 
from
	gold.fact_sales

--$486

--total no of products available 
select 
	count(distinct product_id)
from 
	gold.dim_products
--295 products

--total customers in the system 
select 
	count(distinct customer_id)
from 
	gold.dim_customers
--18484

--customers who placed an order 
select 
	count(distinct customer_id)
from 
	gold.dim_customers
where 
	customer_id in (select
	distinct customer_id
	from 
		gold.fact_sales)

--18484


-- Generating a report to to show key metrics 

select 'total sales' as 'measure_name',
	sum(sales_amount) as 'measure_value'	
from 
	gold.fact_sales

union all 

select 'total quantity' as 'measure_name',
	sum(quantity) as 'measure_value'	
from 
	gold.fact_sales

union all

select 'average price' as 'measure_name',
	avg(price) as 'measure_value'	
from 
	gold.fact_sales
	 
union all

select 'total products' as 'measure_name',
	count(distinct product_id) as 'measure_value'	
from 
	gold.dim_products


union all

select 'total customers' as 'measure_name',
	count(distinct customer_id) as 'measure_value'	
from 
	gold.dim_customers
