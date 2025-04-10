select 
	distinct country
from
	gold.dim_customers;

-- scope of countries - Germany,United States,Australia,United Kingdom,Canada,France. what is n/a? 

select 
	distinct category
from
	gold.dim_products;

-- types of products we gonna work with - Accessories,Bikes,Clothing,Components


select 
	distinct product_line
from 
	gold.dim_products; 
-- Mountain,n/a,Other Sales,Road,Touring

-- 
select 
	distinct category,subcategory
from
	gold.dim_products;
-- long output

select 
	distinct subcategory
from
	gold.dim_products;
-- 37 different sub categories are available
