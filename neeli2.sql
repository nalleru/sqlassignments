/* 1.Fetch all the Customer Details along with the product names that the customer has ordered.*/
/*select customer.CustomerId, customer.CustomerName, product.ProductName
from customer
left join orders
on customer.CustomerId = orders.CustomerId
left join order_details
on orders.OrderId = order_details.orderId
left join product
on order_details.ProductId = product.ProductId
group by customer.CustomerId;*/

/* 2.Fetch Order_Id, Ordered_Date, Total Price of the order (product price*qty).*/
/*select orders.OrderId, orders.OrderedDate, (product.ProductPrice * order_details.Quantity) as TotalPriceOfTheOrder
from orders
left join order_details
on orders.OrderId = order_details.OrderId
left join product
on order_details.ProductId = product.ProductId
group by orders.OrderId;*/

/* 3.Fetch the Customer Name, who has not placed any order*/
/*select customer.CustomerName
from customer
left join orders 
on customer.CustomerId = orders.CustomerId
where orders.CustomerId is null;*/

/* 4. Fetch the Product Details without any order(purchase)*/
/*select product.ProductId, product.ProductName, product.ProductPrice
from product
left join order_details
on product.ProductId = order_details.ProductId
where order_details.ProductId is null;*/

/* 5.Fetch the Customer name along with the total Purchase Amount*/
/*select customer.CustomerName, sum(product.ProductPrice * order_details.Quantity) as TotalPurchaseAmount
from customer
left join orders
on customer.CustomerId = orders.CustomerId
left join order_details
on orders.OrderId = order_details.orderId
left join product
on order_details.ProductId = product.ProductId
group by customer.CustomerName;*/

/* 6. Fetch the Customer details, who has placed the first and last order*/
/*select c.*, min(o.OrderedDate) as FirstOrder, max(o.OrderedDate) as LastOrder
from customer c
left join (
select o.*,
row_number() over(partition by CustomerId order by OrderedDate) as rn_asc,
row_number() over(partition by CustomerId order by OrderedDate desc) as rn_desc
from orders o
) o on o.CustomerId= c.CustomerId
where 1 in (o.rn_asc, o.rn_desc)
group by c.CustomerId;*/

/* 7.Fetch the customer details , who has placed more number of orders*/
/*select customer.CustomerId, customer.CustomerName, count(order_details.OrderId) as NoOfOrders
from customer
left join orders
on customer.CustomerId = orders.CustomerId
left join order_details
on orders.OrderId = order_details.OrderId
group by customer.CustomerId
order by NoOfOrders desc;*/

/* 8. Fetch the customer details, who has placed multiple orders in the same year*/
/*select customer.CustomerId, customer.CustomerName, extract(year from orders.OrderedDate) as YearOfOrder
from customer
inner join orders
on customer.CustomerId = orders.CustomerId
group by customer.CustomerId
having customer.CustomerName in (
select customer.CustomerName from customer
left outer join orders
on customer.CustomerId = orders.CustomerId
where count(YearOfOrder) > 1);*/


/* 9.Fetch the name of the month, in which more number of orders has been placed*/
/*select extract(month from orders.OrderedDate) as MonthOfOrder
from orders
inner join order_details
on orders.OrderId= order_details.OrderId
where orders.OrderedDate in (
select max(orders.OrderedDate) from orders) ;*/



/* 10. Fetch the maximum priced Ordered Product*/
/*select product.ProductName, product.ProductPrice
from product
right join order_details
on product.ProductId = order_details.ProductId
where product.ProductPrice in (
select max(ProductPrice) from product);*/

















