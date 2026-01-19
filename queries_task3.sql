use data;
 create table superstore(order_id varchar(50), order_date DATE, ship_date DATE, ship_mode varchar(50),customer_id varchar(50), customer_name varchar(100),segment varchar(50),
 country varchar(50), city varchar(50), state varchar(50),postal_code varchar(20), region varchar(50),
 product_id varchar(50), category varchar(50),sub_category varchar(50), product_name TEXT, sales decimal(10,2),quantity int, discount decimal(4,2),profit decimal(10,2));
 desc superstore;
 select * from superstore;
 select count(*) from superstore;
 select * from superstore where sub_category='Chairs';
 select * from superstore where region='South';
 select * from superstore where  profit>80.00 limit 10;
 select  order_id, sales from superstore  order by sales DESC limit 20;
 select region,sum(sales) as sum_of_sales ,avg(sales) as average_of_sales from superstore group by region;
 select region,count(*) from superstore group by region;
 select region, sum(sales) as total_sales from superstore group by region having sum(sales) > 20000;
 select month(order_date) as month, sum(sales) as monthly_sales from superstore group by month(order_date) order by month;
 select distinct customer_name from superstore where customer_name like 'J%';
 

 
 
 
