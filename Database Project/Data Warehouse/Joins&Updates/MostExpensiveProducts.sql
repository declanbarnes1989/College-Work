SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980101' and  '19981007'
and price >498;

update weekly_fact
set Most_Expensive_Products= 'Jumper and Coat'
where  Week_ID =1;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980107' and  '19980113'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =2;


SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980114' and  '19980120'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'Vest'
where  Week_ID =3;


SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980121' and  '19980127'
and price >420;

update weekly_fact
set Most_Expensive_Products= 'Gloves'
where  Week_ID =4;


SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980128' and  '19980203'
and price >460;

update weekly_fact
set Most_Expensive_Products= 'T-Shirt'
where  Week_ID =5;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980204' and  '19980210'
and price >300;

update weekly_fact
set Most_Expensive_Products= 'Hat'
where  Week_ID =6;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980211' and  '19980217'
and price >495;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =7;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980218' and  '19980224'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Jeans'
where  Week_ID =8;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980225' and  '19980301'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =9;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980302' and  '19980308'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'Jeans'
where  Week_ID =10;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980309' and  '19980315'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Hat'
where  Week_ID =11;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980316' and  '19980322'
and price >420;

update weekly_fact
set Most_Expensive_Products= 'Shirt'
where  Week_ID =12;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980323' and  '19980329'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Jeans'
where  Week_ID =13;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980330' and  '19980405'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Hat'
where  Week_ID =14;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980406' and  '19980413'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Gloves'
where  Week_ID =15;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980414' and  '19980420'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Shoes'
where  Week_ID =16;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980421' and  '19980427'
and price >410;

update weekly_fact
set Most_Expensive_Products= 'Suit'
where  Week_ID =17;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980428' and  '19980504'
and price >380;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =18;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980505' and  '19980511'
and price >320;

update weekly_fact
set Most_Expensive_Products= 'Runners'
where  Week_ID =19;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980512' and  '19980518'
and price >320;

update weekly_fact
set Most_Expensive_Products= 'Vest'
where  Week_ID =20;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980519' and  '19980525'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Jeans'
where  Week_ID =21;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980526' and  '19980602'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =22;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980603' and  '19980609'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =23;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980610' and  '19980616'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'T-Shirt'
where  Week_ID =24;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980617' and  '19980623'
and price >420;

update weekly_fact
set Most_Expensive_Products= 'T-Shirt'
where  Week_ID =25;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980624' and  '19980630'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Runners'
where  Week_ID =26;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980701' and  '19980707'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Hat'
where  Week_ID =27;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980708' and  '19980714'
and price >350;

update weekly_fact
set Most_Expensive_Products= 'Vest'
where  Week_ID =28;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980715' and  '19980721'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Suit'
where  Week_ID =29;


SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980722' and  '19980728'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Vest'
where  Week_ID =30;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980729' and  '19980804'
and price >430;

update weekly_fact
set Most_Expensive_Products= 'Scarf'
where  Week_ID =31;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980805' and  '19980811'
and price >480;

update weekly_fact
set Most_Expensive_Products= 'Scarf'
where  Week_ID =32;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980812' and  '19980818'
and price >370;

update weekly_fact
set Most_Expensive_Products= 'T-Shirt'
where  Week_ID =33;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980819' and  '19980825'
and price >280;

update weekly_fact
set Most_Expensive_Products= 'Shorts'
where  Week_ID =34;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980826' and  '19980901'
and price >430;

update weekly_fact
set Most_Expensive_Products= 'Shirt'
where  Week_ID =35;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980902' and  '19980908'
and price >340;

update weekly_fact
set Most_Expensive_Products= 'Shirt'
where  Week_ID =36;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980909' and  '19980915'
and price >402;

update weekly_fact
set Most_Expensive_Products= 'Shoes'
where  Week_ID =37;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980916' and  '19980923'
and price >380;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =36;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19980924' and  '19980930'
and price >380;

update weekly_fact
set Most_Expensive_Products= 'Vest'
where  Week_ID =37;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981001' and  '19981007'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Shorts'
where  Week_ID =38;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981008' and  '19981014'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =39;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981015' and  '19981021'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Shorts'
where  Week_ID =40;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981022' and  '19981028'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Scarf'
where  Week_ID =41;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981029' and  '19981104'
and price >375;

update weekly_fact
set Most_Expensive_Products= 'Vests'
where  Week_ID =42;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981105' and  '19981111'
and price >430;

update weekly_fact
set Most_Expensive_Products= 'Gloves'
where  Week_ID =43;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981112' and  '19981118'
and price >470;

update weekly_fact
set Most_Expensive_Products= 'Hat'
where  Week_ID =44;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981119' and  '19981125'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =45;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981126' and  '19981202'
and price >350;

update weekly_fact
set Most_Expensive_Products= 'Shorts'
where  Week_ID =46;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981203' and  '19981209'
and price >350;

update weekly_fact
set Most_Expensive_Products= 'Shorts'
where  Week_ID =47;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981210' and  '19981216'
and price >450;

update weekly_fact
set Most_Expensive_Products= 'Suit'
where  Week_ID =48;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981217' and  '19981223'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Shirt'
where  Week_ID =49;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981224' and  '19981227'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =50;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981228' and  '19981230'
and price >400;

update weekly_fact
set Most_Expensive_Products= 'Coat'
where  Week_ID =51;

SELECT Prod_Type 
FROM product_dim 
inner join order_dim
on product_dim.Prod_ID=order_dim.Order_ID
where  Order_Date  between '19981230' and  '19981231'
and price >100;

update weekly_fact
set Most_Expensive_Products= 'Jumper'
where  Week_ID =52;