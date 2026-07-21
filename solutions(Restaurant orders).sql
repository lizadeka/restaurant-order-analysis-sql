-- Explore the items table
-- Your first objective is to better understand the items table by finding the number of rows in the table, the least and most expensive items, and the item prices within each category.


-- View the menu_items table and write a query to find the number of items on the menu
select count(*) as total_items
from menu_items;
-- 32

-- What are the least and most expensive items on the menu?
with cte as
(select menu_item_id,
item_name,
price,
dense_rank() over(order by price desc) as exp_item,
dense_rank() over(order by price asc) as cheap_item
from menu_items
)
select * from cte
where exp_item = 1 or cheap_item = 1;

-- 113	Edamame	5.00	14	1
-- 130	Shrimp Scampi	19.95	1	14

-- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
	
select category, count(*) as no_of_dishes,
max(price) as exp_dish,
min(price) as cheap_dish
from menu_items
group by category
having category = "Italian";

-- How many dishes are in each category? What is the average dish price within each category?
select category, count(*) as no_of_dishes,
round(Avg(price),2) as avg_price
from menu_items
group by category
order by avg_price desc
;

-- Explore the orders table
-- Your second objective is to better understand the orders table by finding the date range, the number of items within each order, and the orders with the highest number of items.
	
-- View the order_details table. What is the date range of the table?
select min(order_date) as first_order,
max(order_date) as last_order
from order_details;

-- How many orders were made within this date range? How many items were ordered within this date range?
select count(*) as no_of_orders, 
count(item_id) as items_ordered,
min(order_date) as first_order,
max(order_date) as last_order
from order_details;
	
-- Which orders had the most number of items?
select order_id,
count(item_id) as no_of_items
from order_details
group by order_id
order by no_of_items desc
;
	

-- How many orders had more than 12 items?
select count(*) as orders
from(
select order_id,
count(item_id) as no_of_items
from order_details
group by order_id
having no_of_items > 12
order by no_of_items desc
) as bulk;

-- Analyze customer behavior
-- Your final objective is to combine the items and orders tables, find the least and most ordered categories, and dive into the details of the highest spend orders.	
	

-- Combine the menu_items and order_details tables into a single table
select * 
from order_details od
join menu_items mi on mi.menu_item_id = od.item_id
;
	
-- What were the least and most ordered items? What categories were they in?
with cte as
(select menu_item_id,
item_name,
category,
price,
dense_rank() over(order by price desc) as exp_item,
dense_rank() over(order by price asc) as cheap_item
from menu_items
)
select * from cte
where exp_item = 1 or cheap_item = 1;
	

-- What were the top 5 orders that spent the most money?
select od.order_id,
sum(mi.price) as total_price
from order_details od
join menu_items mi on mi.menu_item_id = od.item_id
group by od.order_id
order by total_price desc
limit 5;
;

-- View the details of the highest spend order. Which specific items were purchased?
with cte as 
(
select od.order_id,
sum(mi.price) as total_price
from order_details od
left join menu_items mi on mi.menu_item_id = od.item_id
group by od.order_id
order by total_price desc
limit 1
)
select od.order_id,
mi.item_name,
mi.category,
mi.price
from order_details od
left join menu_items mi on mi.menu_item_id = od.item_id
where od.order_id = (select order_id from cte)
;

-- BONUS: View the details of the top 5 highest spend orders
select od.order_id,
mi.item_name,
sum(mi.price) as total_price
from order_details od
join menu_items mi on mi.menu_item_id = od.item_id
group by od.order_id, mi.item_name
order by total_price desc
limit 5;
;

-- How much was the most expensive order in the dataset?

select max(total_price) as exp_order
from(
select od.order_id,
sum(mi.price) as total_price
from order_details od
join menu_items mi on mi.menu_item_id = od.item_id
group by od.order_id
) as c;