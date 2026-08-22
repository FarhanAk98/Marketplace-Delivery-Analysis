
--BUSINESS QUESTIONS:

--How has the revenue changed over time
drop view if exists total_order_payments;
create view total_order_payments as
select o.order_purchase_timestamp, p.order_id, avg(p.payment_value) as total_amount
from order_payments p left join orders o
on p.order_id = o.order_id
group by p.order_id, o.order_purchase_timestamp

--What are top 30 product categories with the highest value.
drop view if exists category_value;
create view category_value as
select count(o.order_id) orders, p.product_category_name as category, sum(o.price + o.freight_value) as costs
from order_items o join products p
on o.product_id = p.product_id
group by p.product_category_name
order by sum(o.price + o.freight_value) desc
limit 30

--How lenient are customers on late delivery?
--i.e, % of low ratings (2 or below) amongst orders that are delivered late
--START
drop view if exists delivery_info;
create view delivery_info as
select r.review_score, o.order_id,
case
	when (o.order_estimated_delivery_date - o.order_delivered_customer_date) > '19 days' then 'Very Early (20+ days)'
	when (o.order_estimated_delivery_date - o.order_delivered_customer_date) > '0 days' then 'Early (1 - 19 days)'
	when (o.order_estimated_delivery_date - o.order_delivered_customer_date) = '0 days' then 'On Time'
	when (o.order_estimated_delivery_date - o.order_delivered_customer_date) < '-19 days' then 'Very Late (20+ days)'
	when (o.order_estimated_delivery_date - o.order_delivered_customer_date) < '0 days' then 'Late (1 - 19 days)'
	else 'Not Delivered'
end as delivery_time
from orders o join order_reviews r
on o.order_id = r.order_id

drop view if exists delivery_score;
create view delivery_score as
select delivery_time,
case
	when review_score > 2 then 'Greater than 2 (Lenient)'
	else 'Less than or = 2 (Not Lenient)'
end as rating
from delivery_info
where delivery_time = 'Late (1 - 19 days)' or delivery_time = 'Very Late (20+ days)'
--END

--What is the overall seller Performance
drop view if exists seller_info;
create view seller_info as
select
concat(
	'(',
	s.seller_city, ', ',
	s.seller_state,
	') ',
	left(o.seller_id, 6)
) as seller_label, o.order_id, r.review_score, (o.price + o.freight_value) as order_value,
(ord.order_estimated_delivery_date - ord.order_delivered_customer_date) as order_delivery_time
from order_items o join sellers s
on o.seller_id = s.seller_id
join order_reviews r
on o.order_id = r.order_id
join orders ord
on o.order_id = ord.order_id

--What is the business performance based on geography
drop view if exists geography_value;
create view geography_value as
select o.order_id, r.review_score, p.payment_value, c.customer_city as city, c.customer_state as state
from orders o join customers c
on o.customer_id = c.customer_id
join order_reviews r
on o.order_id = r.order_id
join order_payments p
on o.order_id = p.order_id
