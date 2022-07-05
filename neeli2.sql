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
















