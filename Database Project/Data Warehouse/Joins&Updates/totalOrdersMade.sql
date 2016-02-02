
use smartshopdw;

select sum(QuantityOrdered) 
from product_dim
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19980107';