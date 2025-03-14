--order by
-uzywamy widoku, a nie tabeli
select c.CountryRegionName, c.StateProvinceName, c.City, c.Name
from [Sales].[vStoreWithAddresses] AS c
ORDER BY c.CountryRegionName

--malejaco:
select c.CountryRegionName, c.StateProvinceName, c.City, c.Name
from [Sales].[vStoreWithAddresses] AS c
ORDER BY c.CountryRegionName desc

select c.CountryRegionName, c.StateProvinceName, c.City, c.Name
from [Sales].[vStoreWithAddresses] AS c
ORDER BY c.CountryRegionName, c.StateProvinceName, c.city, c.Name

--mixing asc and desc order
--asc - jest opcjonalne
select c.CountryRegionName, c.StateProvinceName, c.City, c.Name
from [Sales].[vStoreWithAddresses] AS c
ORDER BY c.CountryRegionName asc,  c.StateProvinceName desc, c.city, c.Name

--mozna uzywac numerow kolumn w trakcie sortowania
select c.CountryRegionName, c.StateProvinceName, c.City, c.Name
from [Sales].[vStoreWithAddresses] AS c
ORDER BY 1 asc,  2 desc, 3, 4


--adding a column
select
c.AddressType,
c.city,
c.Name,
c.StateProvinceName
FROM [Sales].[vStoreWithAddresses] As c
order by c.city, c.Name

--w klauzuli order by mozna uzywac aliasow
--sortowanie to jedna z bardziej kosztownych operacji, dlatego lepiej unikac

--homework order by
--1
select * 
from HumanResources.Employee
order by BirthDate

--2
select * 
from HumanResources.Employee
order by BirthDate desc

--3
select year(getDate())-year(BirthDate) as Age
from HumanResources.Employee
order by Age

--4
select ProductID, Name, ListPrice, Class, Style, Color
from Production.Product
order by class, style

--5
select ProductID, Name, ListPrice, Class, Style, Color
from Production.Product
order by 4, 5

