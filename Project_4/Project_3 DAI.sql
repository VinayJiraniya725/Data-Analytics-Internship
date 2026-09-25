create database Data_Analytics_Intership;
show databases;
use Data_Analytics_Intership;

show tables;
RENAME table `Project_1 data cleaning`  To PDC;

-- Display all records from the table.
SELECT * FROM PDC;

-- Display only OrderID, CustomerID and Product.
select OrderID,CustomerID,Product from pdc;

-- Display the first 10 orders.
select * from pdc order by orderid limit 10;

-- Find the total number of records/orders.
select count(distinct orderid)as total_order_num from pdc;

-- Find the number of unique customers.
select count(distinct customerid) as unique_customer from pdc;

-- Find the number of unique products.
select count(distinct product) as unique_pro_num from pdc;

-- Display all different payment methods.
select distinct paymentmethod from pdc;

-- Display all different order statuses.
select distinct orderstatus from pdc;

-- Display all different referral sources.
select distinct referralsource from pdc;

-- Find the minimum, maximum and average UnitPrice.
select min(unitprice) as min_unitprice,max(unitprice) as max_unitprice,
avg(unitprice) as avg_unitprice from pdc;

-- Find all orders where Quantity is greater than 3.
select * from pdc where quantity >3;

-- Find orders where TotalPrice is greater than 1000.
select * from pdc where totalprice > 1000;

-- Find all orders having Product = 'Phone'.
select * from pdc where product='phone';

-- Find all orders paid using Online payment.
select  *  from pdc where paymentmethod='online';

-- Find all Cancelled orders.
select * from pdc where orderstatus='cancelled';

-- Find all Delivered orders having TotalPrice greater than 2000.
select * from pdc where orderstatus='delivered' and totalprice >2000;

-- Find orders where Quantity is between 2 and 5.
select * from pdc where quantity between 2 and 5;

-- Find orders having Product as Phone or Laptop.
select *from pdc where product in ('phone','laptop');

-- Find orders where CouponCode is SAVE10.
select * from pdc where couponcode ='save10';

-- Find orders that came through Instagram or Facebook.
select * from pdc where referralsource in ('instagram','facebook');

-- Display orders from highest to lowest TotalPrice.
select * from pdc order by totalprice desc;

-- Display orders from lowest to highest TotalPrice.
select * from pdc order by totalprice asc;

-- Find the top 10 highest-value orders.
select * from pdc  order by totalprice desc limit 10;

-- Find the 5 orders with the highest Quantity.
select * from pdc order by  quantity  desc limit 5;

-- Display products alphabetically.
select * from pdc order by product asc;

-- Calculate total sales/revenue.
select  round(sum(totalprice),2) as total_sales from pdc;

-- Calculate average order value.
select round(avg(totalprice),2) as avg_price from pdc;

-- Find total quantity sold.
select sum(quantity) as total_quantity from pdc;

-- Find average quantity per order.
 select avg(quantity) as avg_quantity from pdc;

-- Find highest order value.
select max(totalprice) as highest_price from pdc;

-- Find lowest order value.
select min(totalprice) as lowest_price from pdc;

-- Find total number of orders.
select count( distinct orderid) as total_order from pdc;

-- Find total sales by Product.
select product,round(sum(totalprice),2) as total_sales from pdc group by product;

-- Find total quantity sold by Product.
select product,sum(quantity) as total_quantity from pdc group by product;

-- Find average TotalPrice by Product.
select product,round(avg(totalprice),2) as avg_sales from pdc group by product;

-- Find number of orders for each Product.
select product,count(orderid) as order_num from pdc group by product;

-- Find total sales by PaymentMethod.
select paymentmethod,round(sum(totalprice),2) as total_sales from pdc 
group by paymentmethod;

-- Find number of orders by PaymentMethod.
select  paymentmethod,count(*) as num_order from pdc group by paymentmethod;

-- Find total sales by OrderStatus.
select orderstatus ,round(sum(totalprice),2) as total_sales from pdc
 group by orderstatus;
 
  -- Find number of orders for each OrderStatus.
  select  orderstatus,count(*) as num_order from pdc group by orderstatus;
  
  -- Find total sales by Year.
  select year,round(sum(totalprice),2) as total_sales from pdc group by year;
  
 -- Find total sales by Month. 
select month(date)as month_num,monthname(date) as month_name,round(sum(totalprice),2) 
as total_sales from pdc group by month(date),monthname(date) order by month(date);

-- Find total orders by Year.
select year,count(orderid) as total_order from pdc group by year;

-- Find total quantity sold by Year.
select year,sum(quantity) as total_quantity from pdc group by year;

-- Find products whose total sales are greater than 50,000.
select product,round(sum(totalprice),2) as total_sales from pdc group by product
having total_sales >50000;

-- Find products having more than 50 orders.
select product,count(distinct orderid) as order_num from pdc group by product
having order_num > 50;

-- Find payment methods generating more than 100,000 sales.
select paymentmethod,round(sum(totalprice),2) as total_sales from pdc 
group by paymentmethod having total_sales >100000;

-- Find years having total sales greater than 300,000.
  select year,round(sum(totalprice),2) as total_sales from pdc group by year
  having total_sales > 300000;
  
  -- Which product has the highest total sales?
  select product,round(sum(totalprice),2) as total_sales from pdc group by product
  order by total_sales desc limit 1;
  
  -- Which product has the lowest total sales?
  select product,round(sum(totalprice),2) as total_sales from pdc group by product
  order by total_sales asc limit 1;
  
  -- Which product has the highest quantity sold?
select product,sum(quantity) as total_quantity from pdc group by product
order by total_quantity desc limit 1;

-- Find the top 3 products by total sales.
 select product,round(sum(totalprice),2) as total_sales from pdc group by product
  order by total_sales desc limit 3;
  
  -- Find the top 5 products by quantity sold.
  select product,sum(quantity) as total_quantity from pdc group by product
order by total_quantity desc limit 5;

-- Find the average price of each product.
 select product,round(avg(totalprice),2) as avg_sales from pdc group by product;

-- Find products where average UnitPrice is greater than 500.
 select product,round(avg(unitprice),2) as avg_unitprice from pdc group by product
having avg_unitprice >500;

-- Find total sales generated by each CustomerID.
select  customerid, round(sum(totalprice),2)  as total_sales from pdc group by 
customerid;

-- Find the top 10 customers by sales.
select  customerid, round(sum(totalprice),2)  as total_sales from pdc group by 
customerid order by total_sales desc limit 10;

-- Find customers who placed more than 5 orders.
select customerid,count(distinct orderid) as order_num from pdc group by customerid
having order_num > 5;

-- Find the customer with the highest total spending.
select  customerid, round(sum(totalprice),2)  as total_sales from pdc group by 
customerid order by total_sales desc limit 1;

-- Find average spending per customer.
select  customerid, round(avg(totalprice),2)  as avg_sales from pdc group by 
customerid order by avg_sales desc ;

-- Find customers whose total spending is greater than 10,000.
select  customerid, round(sum(totalprice),2)  as total_sales from pdc 
group by customerid having total_sales >  10000;

-- Find which year generated the highest sales.
select year,round(sum(totalprice),2) as highest_sales from pdc group by year
order by highest_sales desc limit 1;

-- Find total sales for each year and month.
select year(date),month(date),monthname(date),round(sum(totalprice),2) as total_sales 
from pdc group by year(date),month(date),monthname(date)
 order by year(date),month(date);
 
 -- Find the highest-sales month.
 select year, month,sum(totalprice) as highest_sales from pdc group by year,month
 order by highest_sales desc limit 1;
  
-- Find total quantity sold in each month.
select month(date)as month_num,monthname(date)as month_name,sum(quantity) as 
total_quantity from pdc
group by month(date),monthname(date)  order by month(date) ;

-- Find average order value by month.
select month(date)as month_num,monthname(date)as month_name,round(avg(totalprice),2)
as avg_order_value from pdc
group by month(date),monthname(date)  order by month(date) ;

/* Categorize orders based on TotalPrice:
Below 500 → Low
500–1500 → Medium
Above 1500 → High*/
select  orderid,totalprice,
case
when  totalprice <500 then 'Low'
when totalprice between 500 and 1500 then 'Medium'
else 'High'
end as order_category
from pdc;

/*Categorize customers based on number of orders.
1 order → One-Time
2–5 → Regular
More than  5 → Frequent*/
select  customerid,count(distinct orderid) as total_order,
case
when count(distinct orderid)=1 then 'One-Time'
when count(distinct orderid) between 2 and 5 then 'Regular'
else 'Frequent'
end as  categorize_customer 
from pdc group by customerid;

/*Categorize Quantity:
1–2 = Low
3–4 = Medium
5 >= High*/
select customerid,sum(quantity)  as order_quantity,
case
when sum(quantity) <=2 then 'Low'
when sum(quantity) between 3 and 4 then 'Medium'
else 'High'
end as categorize_quantity
from pdc group by customerid;

-- Find orders whose TotalPrice is greater than the overall average order value.
select * from pdc where totalprice >
(select  avg(totalprice) from pdc);

-- Find products whose average UnitPrice is greater than overall average UnitPrice.
select product,round(avg(unitprice),2) as avg_price from pdc group by product 
having avg_price >
(select avg(unitprice) from pdc); 

-- Find customers whose total spending is greater than average customer spending.
select customerid,round(sum(totalprice),2) as total_spending from pdc group by
customerid having total_spending >
(select avg(customer_total)
from(
select customerid,sum(totalprice) as customer_total from pdc group by customerid)
as customer_spending);

-- Find the product having the highest TotalPrice.
select * from pdc where totalprice =
(select max(totalprice) from pdc);

-- Rank products based on total sales.
select product ,round(sum(totalprice),2)as total_price,rank() 
over(order by round(sum(totalprice),2) desc) as rnk from pdc group by product;

-- Find top 3 products by sales.
select product,total_price,rnk  from
(select product ,round(sum(totalprice),2)as total_price,rank() 
over(order by round(sum(totalprice),2) desc) as rnk from pdc group by product) as t 
 where rnk <=3;

-- Rank customers based on total spending.
select customerid ,round(sum(totalprice),2) as total_spending, dense_rank() over(
order by round(sum(totalprice),2) desc) as rnk from pdc group by customerid;

-- Find the highest-selling product for each year.
select year,product,total_spending,rnk from
(select year,product,round(sum(totalprice),2) as total_spending, row_number() over(
partition by year order by round(sum(totalprice),2) desc) as rnk from pdc 
group by year,product)as t where rnk=1;

-- Find top 3 products for each year.
select year,product,total_spending,rnk from
(select year,product,round(sum(totalprice),2) as total_spending, row_number() over(
partition by year order by round(sum(totalprice),2) desc) as rnk from pdc 
group by year,product)as t where rnk <=3;

-- What is the total revenue generated?
select round(sum(totalprice),2) as total_revenue from pdc;

-- What is the average order value?
select round(avg(totalprice),2) as avg_order_value from pdc;

 --  Which product contributes the most revenue?
select product , round(sum(totalprice),2) as most_sales from pdc group by product order by 
most_sales desc limit 1 ;

-- Which product has the lowest sales?
select product , round(sum(totalprice),2) as most_sales from pdc group by product order by 
most_sales asc limit 1 ;

-- Which payment method is used most frequently?
select paymentmethod,count(*) as count_num from pdc group by paymentmethod order by 
count_num desc limit 1;

-- Which payment method generates the highest revenue?
select paymentmethod,round(sum(totalprice),2) as highest_revenue from pdc group by paymentmethod order by 
highest_revenue desc limit 1;

-- Which order status occurs most frequently?
select orderstatus,count(*) as  order_num from pdc group by orderstatus order by
order_num desc limit 1;

-- Which referral source generates the most orders?
select referralsource,count(*) as  order_num from pdc group by referralsource order by
order_num desc limit 1;

-- Which referral source generates the highest revenue?
select referralsource,round(sum(totalprice),2) as  highest_revenue from pdc group by referralsource order by
highest_revenue desc limit 1;

-- Does using a coupon relate to higher sales?
SELECT
    CASE
        WHEN couponcode IS NULL OR couponcode = '' THEN 'No Coupon'
        ELSE 'Coupon Used'
    END AS coupon_status,
    ROUND(SUM(totalprice), 2) AS total_sales,
    ROUND(AVG(totalprice), 2) AS avg_sales
FROM pdc
GROUP BY coupon_status;

-- Which coupon code is used most frequently?
select couponcode , count(*)as count_num from pdc group by couponcode order by
count_num desc limit 1 ;

-- Which year had the highest revenue?
select year ,round(sum(totalprice),2) as highest_revenue from pdc group by year
order by highest_revenue desc limit 1 ;

-- Which month had the highest revenue?
select year,month,round(sum(totalprice),2) as highest_revenue from pdc group by year,
 month order by  highest_revenue desc limit 1 ;

-- What percentage of total sales comes from each product?
select product,concat(round(sum(totalprice) *100/(select sum(totalprice) from pdc),2),'%')
as sales_percentage from pdc group by product;