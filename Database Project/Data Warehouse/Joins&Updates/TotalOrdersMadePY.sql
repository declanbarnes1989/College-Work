use smartshopdw;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19981230';

update yearly_fact
set Total_Orders_Made= 18393
where  Year_ID =1;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19991230';

update yearly_fact
set Total_Orders_Made= 36221
where  Year_ID =2;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '20000101' and  '20001230';

update yearly_fact
set Total_Orders_Made= 13337
where  Year_ID =3;