SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19980130'
and price >490;

update monthly_fact
set Most_Expensive_Products= 'Vest'
where  Month_ID =1;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980201' and  '19980230'
and price >495;

update monthly_fact
set Most_Expensive_Products= 'Jumper'
where  Month_ID =2;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980301' and  '19980330'
and price >470;

update monthly_fact
set Most_Expensive_Products= 'Jeans'
where  Month_ID =3;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980401' and  '19980430'
and price >485;

update monthly_fact
set Most_Expensive_Products= 'Shoes'
where  Month_ID =4;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980501' and  '19980530'
and price >495;

update monthly_fact
set Most_Expensive_Products= 'Coat'
where  Month_ID =5;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980601' and  '19980630'
and price >485;

update monthly_fact
set Most_Expensive_Products= 'T-Shirt'
where  Month_ID =6;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980701' and  '19980730'
and price >480;

update monthly_fact
set Most_Expensive_Products= 'Hat'
where  Month_ID =7;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980801' and  '19980830'
and price >480;

update monthly_fact
set Most_Expensive_Products= 'Scarf'
where  Month_ID =8;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980901' and  '19980930'
and price >470;

update monthly_fact
set Most_Expensive_Products= 'Jumper'
where  Month_ID =9;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981001' and  '19981030'
and price >460;

update monthly_fact
set Most_Expensive_Products= 'shorts'
where  Month_ID =10;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981101' and  '19981130'
and price >475;

update monthly_fact
set Most_Expensive_Products= 'Hat'
where  Month_ID =11;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981201' and  '19981230'
and price >483;

update monthly_fact
set Most_Expensive_Products= 'Suit'
where  Month_ID =12;