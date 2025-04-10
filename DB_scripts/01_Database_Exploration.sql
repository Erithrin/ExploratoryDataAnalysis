--exploring the different tables present in the database

select 
* 
from 
information_schema.tables;
 
-- explore the columns and their datatypes in these tables 
-- trying to understand what kind of questions can be asked with this data and to what granular level
 
select *
from 
information_schema.columns;
 
select *
from 
information_schema.columns
where 
table_name = 'dim_customers';
 
--Dimensions
--customer_id
--country
--marital_status
--gender
 
-- Measures
--birthdate -- can extract age
--create_date -- how many years the customer has been loyal 
 
select *
from 
information_schema.columns
where 
table_name = 'dim_products';
 
--Dimensions
--product_id
--category
--subcategory
--product_line
 
-- Measures
--cost
--start_date age of the product line
 
 
 
select *
from 
information_schema.columns
where 
table_name = 'fact_sales';
 
 
--Dimensions
--order_number
 
-- Measures
--sales_amount
--quantity
--price
--order_date – shipping date – how much time it took to fulfill?
