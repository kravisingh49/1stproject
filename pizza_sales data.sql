use restaurant;
select* from pizza_sales;
##How many pizzas were ordered on January 1, 2015?

SELECT order_date, SUM(quantity) AS total_pizzas_ordered
FROM pizza_sales
WHERE order_date = '01-01-2015';

##What is the total revenue generated on January 1, 2015?

select order_date,sum(total_price)as total_revenue from pizza_sales
where order_date= '01-01-2015';

##How many pizzas of each size (S, M, L) were ordered on January 1, 2015?

select pizza_regularize, order_date,count(quantity) as pizza_type from pizza_Sales
where order_date= '01-01-2015'
group by pizza_regularize;

##What is the most popular pizza category on January 1, 2015?

SELECT pizza_category, COUNT(quantity) AS category_count
FROM pizza_sales
WHERE order_date = '01-01-2015'
GROUP BY pizza_category, quantity
ORDER BY category_count DESC;

##Which pizza has the highest unit price?

select pizza_name, max(total_price) as highest_price from pizza_sales
group by pizza_name
order by highest_price desc limit 1;

##How many orders included the "The Italian Supreme Pizza"?

select pizza_name, count(quantity) as total_pizza from pizza_sales
where pizza_name= 'The Italian Supreme Pizza';

##What is the total quantity of "The Classic Deluxe Pizza" ordered on January 1, 2015?

select pizza_name, count(quantity) as total_quantity from pizza_sales
where pizza_name= 'The Classic Deluxe Pizza';

##What is the average unit price for all pizza orders on January 1, 2015?

select avg(unit_price) as avg_price, pizza_name, order_date from pizza_sales
where order_date='01-01-2015'
group by pizza_name
order by avg_price;

##Which pizza(s) had "Chicken" as an ingredient?
select pizza_name, pizza_ingredients from pizza_sales
where pizza_ingredients like '%chicken%';

##How many different pizza names were ordered on January 1, 2015?
select distinct(pizza_name), order_Date from pizza_Sales
where order_date= '01-01-2015'



















