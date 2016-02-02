SELECT SUM(Price) 
FROM product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19981230';

update yearly_fact 
set Highest_Price_product_PY =91141
where Year_ID = 1;


SELECT SUM(Price) 
FROM product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19990101' and  '19991230';

update yearly_fact 
set Highest_Price_product_PY =91588
where Year_ID = 2;


SELECT SUM(Price) 
FROM product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '20000101' and  '20001230';

update yearly_fact 
set Highest_Price_product_PY =72754
where Year_ID = 3;

