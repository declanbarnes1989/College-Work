SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19981230'
and price >498;

update yearly_fact
set Most_Expensive_Products= 'Jumper and Coat'
where  Year_ID =1;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19990101' and  '19991230'
and price >498;

update yearly_fact
set Most_Expensive_Products= 'Shorts'
where  Year_ID =2;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '20000101' and  '20001230'
and price >498;

update yearly_fact
set Most_Expensive_Products= 'Shoes'
where  Year_ID =3;