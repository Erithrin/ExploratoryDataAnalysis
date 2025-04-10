# ExploratoryDataAnalysis
Understanding the data and showing what insights can be drawn out through SQL


In this project, I am trying to understand what kind of information is presented to me and what kinds of insights can be drawn by understanding the data in and out. For this, I have written down detailed step by step process that i followed in order to understand information and how I derive insights out of it


**Setup** : I have downloaded SQL server to host my database and Microsoft SQL Server Management Studio (SSMS) as the client to interact with my database. The SQL scripts written for the setup are in 00_Init_Database.sql file.

I have created 3 tables and I have used the dataset present under datasets/ folder to bulk import data directly into the tables.

**Step 1 : Database Exploration :**
Explore tables and columns using the information schema. Understanding at a high level what information is handed to us. 
I split the details I have into **dimensions and measures** looking at the type of data and also if it makes sense to aggregate the data I have. 

The SQL scripts written for this step are in 01_Database_Exploration.sql file.

**Step 2 : Dimensions Exploration :**
I explore the structure of different dimensions I collected from previous step. I have used distinct[dimension] to understand **unique records** and also check different levels of granularities.

The SQL scripts written for this step are in 02_Exploring_Dimensions.sql file.

**Step 3 : Date - Range** 
Exploring this step helps **determine the boundaries of key data points**. Gives the timespan of data that can be worked with. 

The SQL scripts written for this step are in 03_Date_Exploration.sql file.


**Step 4: Measures Exploration :**
Understanding the **key metrics** of business.
I try to find the highest level of aggregration to the lowest level of details for quick insights. It helps in spotting overall trends or anomalies. 
In this step, I have also generated a report using SQL that shows key business metrics.


The SQL scripts written for this step are in 04_Exploring_Measures.sql file.


**Step 5 : Magnitude Analysis :**
In this step, I try to understand the **distribution of data across various metrics** like total sales by country or total quantity by category.
I have quantified data and grouped results by specific dimensions.

The SQL scripts written for this step are in 05_Magnitude_Analysis.sql file.


**Step 6 : Ranking Analysis :**
In this step, I rank items on the basis of performance. I have identified **top or bottom performers** in different categories.
For this step, windows functions like rank(), dense_rank(), row_number() etc is used.

The SQL scripts written for this step are in 06_Ranking_Analysis.sql file.





