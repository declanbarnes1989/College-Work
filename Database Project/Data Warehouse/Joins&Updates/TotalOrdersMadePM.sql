use smartshopdw;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19980130';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1549
where  Month_ID =1;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980201' and  '19980230';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1465
where  Month_ID =2;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980301' and  '19980330';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1483
where  Month_ID =3;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980401' and  '19980430';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1383
where  Month_ID =4;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980501' and  '19980530';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1552
where  Month_ID =5;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980601' and  '19980630';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1628
where  Month_ID =6;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980701' and  '19980730';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1372
where  Month_ID =7;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980801' and  '19980830';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1405
where  Month_ID =8;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980901' and  '19980930';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1550
where  Month_ID =9;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981001' and  '19981030';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1730
where  Month_ID =10;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981101' and  '19981130';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1518
where  Month_ID =11;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981201' and  '19981230';

update monthly_fact Total_Orders_Made
set Total_Orders_Made= 1415
where  Month_ID =12;