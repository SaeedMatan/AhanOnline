/* first, initial data is imported from excel to SSMS as a tables into "NEW1 database" and then some tables are converted.
ََAlso, the relations are created between the tables by creating primary and foreign key.*/


-- converting data of Customers
insert into Customers(name)
select distinct Customer from [dbo].[Sales$] where Customer not in (select name from Customers)


--converting data of Products
insert into Products(name)
select distinct Product from [dbo].[Sales$] where Product not in (select [name] from Products)

--converting data of managers
insert into managers(name)
select distinct manager
from [dbo].[organizationchart$]
where manager not in (select [name] from managers) and manager <> 'NULL'

--converting data of Sales
insert into Sales(
       [OrderId]
      ,[CustomerId]
      ,[ProductId]
      ,[Date]
      ,[Quantity]
      ,[UnitPrice]
		)
select s.OrderID, c.id, p.id, s.date, s.Quantity, s.UnitPrice from [dbo].[Sales$] s 
join Customers c on s.Customer = c.name
join Products p on s.Product = p.name

--converting data of SaleProfit
insert into SaleProfit(ProductId,ProfitRatio)
select p.id, sp.ProfitRatio from [dbo].[SalesProfit$] sp
join [dbo].[Products] p on sp.Product = p.name

insert into SaleProfit(ProductId,ProfitRatio)
select DISTINCT id, 0.1 from Products where id not in (select id from SaleProfit)

