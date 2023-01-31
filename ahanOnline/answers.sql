--create a DB called new and three table called Sales, SaleProfit, OrgChart
CREATE DATABASE new
USE new
CREATE TABLE Sales(
		SalesID int NOT NULL IDENTITY(1,1),
		OrderID int NOT NULL,
		Customer varchar(10),
		Product varchar(10),
		[Date] Date,
		Quantity tinyint,
		UnitPrice int,
		);

CREATE TABLE SaleProfit(
		Product varchar(10),
		ProfitRatio int
		);
/*  tip: The query below inserts 10% profit as record of ProfitRatio column 
	for values of Product column(in Sales table) that don't exist in SaleProfit*/
	select*from saleprofit
INSERT INTO SaleProfit(Product, ProfitRatio)
SELECT distinct Product, 10 FROM Sales WHERE Product NOT IN(SELECT distinct Product FROM SaleProfit);

CREATE TABLE OrgChart(
		id int NOT NULL IDENTITY(1,1),
		[name] nvarchar(50),
		manager nvarchar(50),
		ManagerId tinyint
		);


-- section1
SELECT SUM(Quantity*UnitPrice) AS TotalSales
FROM Sales;

-- sectoin2
SELECT COUNT(DISTINCT CustomerId) AS CountOfCustomers
FROM Sales;

-- section3
SELECT p.name AS ProductName, SUM(s.Quantity*s.UnitPrice) AS ProductSales
FROM Sales s
join Products p on s.ProductId = p.id
Group BY p.name;

--section4
SELECT c.name, SUM(s.Quantity*s.UnitPrice) AS PurchaseAmount,
COUNT(DISTINCT s.OrderID) AS NumOfInvoices, SUM(s.Quantity) AS SumOfQTY
FROM Sales s
join Customers c on s.CustomerId = c.id
WHERE s.CustomerId in(
				 select CustomerId
				 from Sales 
				 where Quantity*UnitPrice>1500
				 )
Group BY c.name;

-- section5
select SUM(s.Quantity*s.UnitPrice*sp.ProfitRatio) AS ProfAmount,
round(SUM(s.Quantity*s.UnitPrice*sp.ProfitRatio)/SUM(s.Quantity*s.UnitPrice)*100,3) AS ProfPercent
from Sales s
join SaleProfit sp on s.ProductId = sp.ProductId;

--section6
select SUM(s.CountOfCust)
from(
	select count(distinct CustomerId) AS CountOfCust, date
	from Sales
	group by date
) s;

--section7
/*this question is so amazing! I can't solve it but 
I searched about it and found a content on Stackoverflow.com on how to display an organization chart.    
https://stackoverflow.com/questions/3309405/tough-t-sql-to-display-org-chart-hierarchy-recursion */