use  samplesuper_store;
select * from sample_superstore;
select* from sample_superstore where ship_mode ='second class';
select order_id,order_date.ship_mode from sample_superstore where ship_mode ='standard class';
select customer_name,segment from sample_superstore where profit <0;

select distinct(customer_id) quantity from sample_superstore where quantity ='5';
select region, sum(sales) from sample_superstore where region ='east';
select ship_date avg(discount),ship_date from sample_superstore where ship_date between '01/01/2016'and'31/12/2016'
group by ship_date;
select segment, count(segment) from sample_superstore group by segment; 
select max(profit) from sample_superstore;
select product_name,quantity,category from sample_superstore where category ='Technology'; 
select sub_category,profit,sum(sales) from sample_superstore group by sub_category,profit;
select avg(discount) from sample_superstore where quantity > 3;
select ship_date,ship_mode discount from sample_superstore where discount =0.2;

select count(order_id)from sample_superstore group by city;
select avg(sales) from sample_superstore where discount<0.5;
select ship_mode, sum(profit) from sample_superstore where ship_mode ='second class' and discount =0;
