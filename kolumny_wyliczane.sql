USE AdventureWorks2014
GO

select FirstName, LastName
from Person.Person


-- polaczony napis, moge uzyc +, i spacja w apostrofach
select FirstName+ ' ' +LastName
from Person.Person

--to samo robi tez dedykowana funkcja concat,jako argumenty przyjmuje napisy
select concat(FirstName,' ',LastName)
from Person.Person

select FirstName, MiddleName, LastName
from Person.Person

select FirstName, MiddleName, LastName, FirstName + ' ' + MiddleName + ' ' + LastName
from Person.Person

select FirstName, MiddleName, LastName, concat(FirstName,  ' ', MiddleName,  ' ',  LastName)
from Person.Person

--ci co nie podali drugiego imienia, maja wartosc null w polaczonym takze lancuchu, Kim+null=null
--natomiast concat jest sprytna, jezeli chodzi o prace z nullem, jesli nie znalismy imienia, to ona daje pusty napis, czyli wstawia spacje

select BusinessEntityID, VacationHours
from HumanResources.Employee

select BusinessEntityID, VacationHours, VacationHours/8 
from HumanResources.Employee

select BusinessEntityID, VacationHours, VacationHours/8, VacationHours%8
from HumanResources.Employee

select BusinessEntityID, HireDate
from HumanResources.Employee

select BusinessEntityID, YEAR(HireDate)
from HumanResources.Employee
--getdate zwraca date dzisiejsz¹
select BusinessEntityID, YEAR(HireDate), GETDATE()
from HumanResources.Employee

select BusinessEntityID, YEAR(HireDate), YEAR(GetDate())
from HumanResources.Employee

select BusinessEntityID, YEAR(HireDate), Year(GetDate()), Year(GetDate())-YEAR(HireDate)
from HumanResources.Employee


select BusinessEntityID, YEAR(HireDate), Year(GetDate()), Year(GetDate())-YEAR(HireDate)
from HumanResources.Employee
where (YEAR(GetDate())-YEAR(HireDate))%5=0


select BusinessEntityID, YEAR(HireDate), Year(GetDate()), Year(GetDate())-YEAR(HireDate)
from HumanResources.Employee
where (YEAR(GetDate())-YEAR(HireDate)) IN (3,5,10,15,20)




--tabele wyliczane - homework
--1
select UnitPrice, OrderQty, UnitPrice*OrderQty
from Sales.SalesOrderDetail
--2
select (UnitPrice-UnitPriceDiscount)*OrderQty
from Sales.SalesOrderDetail

--3
select concat(cardtype, ':', CardNumber)
from Sales.CreditCard
--4
select SalesOrderNumber, PurchaseOrderNumber
from Sales.SalesOrderHeader

--6
select SalesOrderNumber, PurchaseOrderNumber, concat(SalesOrderNumber, '-', PurchaseOrderNumber)
from Sales.SalesOrderHeader

--5
select SalesOrderNumber, PurchaseOrderNumber, SalesOrderNumber+'-'+PurchaseOrderNumber
from Sales.SalesOrderHeader
