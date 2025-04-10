-- top 10 customers. can add additional customer details if needed. 
select top 10
	cust.customer_key,
	sum(sales.sales_amount) as total_sales
from 
	gold.fact_sales sales
left join
	gold.dim_customers cust
on 
	sales.customer_key = cust.customer_key 
group by 
	cust.customer_key
order by 
	total_sales desc;
	
-- top 10 products which generated highest revenue

select top 10
	prod.product_name,
	sum(sales.sales_amount) as total_sales
	
from
	gold.fact_sales sales 
left join 
	gold.dim_products prod 
on 
	sales.product_key = prod.product_key
group by 
	prod.product_name
order by total_sales desc;


-- top 10 products which generated highest revenue using windows function rank
select 
	* 
from 
(select 
	prod.product_name,
	sum(sales.sales_amount) as total_sales,
	rank() over (order by sum(sales.sales_amount) desc) as rank_num
from
	gold.fact_sales sales 
left join 
	gold.dim_products prod 
on 
	sales.product_key = prod.product_key
group by 
	prod.product_name ) A 
where rank_num <=10;

-- bottom 5 products sold in terms of sales

select top 5
	prod.product_name,
	sum(sales.sales_amount) as total_sales
	
from
	gold.fact_sales sales 
left join 
	gold.dim_products prod 
on 
	sales.product_key = prod.product_key
group by 
	prod.product_name
order by total_sales ;


-- bottom 5 products sold using windows function rank()
select 
	* 
from 
(select 
	prod.product_name,
	sum(sales.sales_amount) as total_sales,
	rank() over (order by sum(sales.sales_amount) ) as rank_num
from
	gold.fact_sales sales 
left join 
	gold.dim_products prod 
on 
	sales.product_key = prod.product_key
group by 
	prod.product_name ) A 
where rank_num <=5;




-- bottom 3 customers with fewest orders placed
select * from gold.fact_sales;

select top 3
	cust.customer_key,
	cust.first_name,
	cust.last_name,
	count(distinct sales.order_number) as order_count
from 
	gold.fact_sales sales 
left join	
	gold.dim_customers cust 
on 
	sales.customer_key = cust.customer_key
group by 
	cust.customer_key,
	cust.first_name,
	cust.last_name
order by order_count


-- top 10 customers who have generated highest revenue

select top 10
	cust.customer_key,
	cust.first_name,
	cust.last_name,
	sum(sales.sales_amount) as total_revenue
from 
	gold.fact_sales sales 
left join	
	gold.dim_customers cust 
on 
	sales.customer_key = cust.customer_key
group by 
	cust.customer_key,
	cust.first_name,
	cust.last_name
order by total_revenue desc;