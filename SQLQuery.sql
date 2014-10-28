select e.LastName from Employees as e where e.Region is null

select ProductName, UnitPrice from Products where UnitPrice=(select MIN(UnitPrice) from Products) or UnitPrice=(select Max(UnitPrice) from Products)

select ProductName, UnitPrice from Products where UnitPrice>(select AVG(UnitPrice) from Products)

select SUM(Freight) from Orders

select distinct p.ProductName, p.ProductID from Products as p
inner join [Order Details] as od on p.ProductID=od.ProductID 
inner join Orders as o on od.OrderID=o.OrderID
where DATENAME ( WEEKDAY , o.OrderDate)='Sunday' or DATENAME ( WEEKDAY , o.OrderDate)='Saturday'

select AVG(UnitPrice) as srednia from Products group by CategoryID

select  SUM(od.UnitPrice*od.Quantity-od.Discount), c.CompanyName
from [Order Details] as od inner join Orders as o on od.OrderID=o.OrderID
inner join Customers as c on o.CustomerID=c.CustomerID 
group by c.CompanyName order by c.CompanyName

select SUM(p.UnitsOnOrder), p.ProductName from Products as p group by p.ProductName


