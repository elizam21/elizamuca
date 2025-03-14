-- WHERE
USE AdventureWorks2014
GO
-- GO oznacza, butch - do GO, wykonuje po kolei, a¿ do GO,
--po s³ówku GO zmienna znika, gdy puszczamy ca³y skrypt

Select * from Production.Product
GO

Select * from Production.Product
WHERE ListPrice >0


Select * from Production.Product
WHERE ListPrice >0 AND ListPrice <200

Select * from Production.Product
WHERE ListPrice >0 AND NOT ListPrice <200


Select * From Production.Product 
WHERE 
ListPrice BETWEEN 0 AND 200
--BETWEEN - >= od 0 i <= 200

select * 
from Sales.SalesOrderHeader


select *
from Sales.SalesOrderHeader
where OrderDate between '2011-06-12' AND '2011-06-13'
-- wartosci graniczne sa uwzglednione
-- to jest to samo:
select *
from Sales.SalesOrderHeader
where OrderDate >= '2011-06-12' AND OrderDate =<'2011-06-13'


select 
Name, Color, ListPrice, Size
from Production.Product
where Color='Silver' OR Color='Black' OR Color='Yellow'



select 
Name, Color, ListPrice, Size
from Production.Product
where Color  in ('Silver','Black','Yellow')


select 
Name, Color, ListPrice, Size
from Production.Product
where NOT Color  in ('Silver','Black','Yellow')
-- NOT jest gorsze dla SQL Servera

Select 
Name, Color, ListPrice, Size
from Production.Product
where 
Color='Blue' AND ListPrice>100
OR
Color='Multi' AND ListPrice<50

-- dwa and najpierw, a potem or, and wi¹¿e bardziej
-- mo¿na do³ozyc nawias
Select 
Name, Color, ListPrice, Size
from Production.Product
where 
(Color='Blue' AND ListPrice>100
OR
Color='Multi' AND ListPrice<50)
AND Size='XL'


--WHERE homework
--1
USE AdventureWorks2014
GO
--2 
select * 
from HumanResources.Employee

--3
select *
from HumanResources.Employee
where BirthDate>='1980-01-01';

--4
select *
from HumanResources.Employee
where BirthDate between '1980-01-01' and '1980-12-31'

--5
select *
from HumanResources.Employee
where BirthDate between '1980-01-01' and '1980-12-31' and Gender='M'

--6
select 
JobTitle
,BirthDate
,Gender
,VacationHours
from HumanResources.Employee
where (VacationHours between 90 and 99 and Gender='M') or (VacationHours between 80 and 89 and Gender='K');


--7
select 
JobTitle
,BirthDate
,Gender
,VacationHours
from HumanResources.Employee
where ((VacationHours between 90 and 99 and Gender='M') or (VacationHours between 80 and 89 and Gender='K')) and BirthDate>'1990-01-01';

--8
select * 
from HumanResources.Employee
where JobTitle in ('Marketing Specialist', 'control Specialist', 'Benefits Specialist', 'Accounts Receivable Specialist');


-- WHERE cz. 2
select *
from Person.Address;

select * from Person.Address
where
PostalCode LIKE '%47%'
--kod zawiera w sobie 47, maska, % dowolona ilosc, dowolnych znakow

select * from Person.Address
where PostalCode LIKE '47%';

select * from Person.Address
where PostalCode LIKE '%47';

-- w masce mozna uzyc []
select * from Person.Address
where PostalCode LIKE '[89]47%'
--dopuszczamy, aby przed 47 pojawila sie 8 lub 9 

select * from Person.Address
where PostalCode LIKE '[89]47[2]%'
--rownowazne z tym, jakby dac 472

select * from Person.Address
where PostalCode LIKE '[0123456789]%'
-- kod ma zaczynac sie od jednej z cyfr od 0 do 9, wyeliminowano kody pocztowe zaczynajace sie od literki

select * from Person.Address
where PostalCode LIKE '[^0123456789]%'
--tu sa te, ktore zaczynaja sie od literki, czyli zaden z wymienionych ->^

select * from Person.Address
where PostalCode LIKE '[^0123456789][0-9]%'
-- najpierw litera, potem cyfra, potem obojetnie, to to samo:
select * from Person.Address
where PostalCode LIKE '[^0-9][0-9]%'


select * from Person.Address
where 
PostalCode LIKE '____'
-- jedno podkreslenie, w jego miejscu dokladnie jeden dowolny znak

select * from Person.Address
where 
PostalCode LIKE '6___'
--dowolne 4 znaki, ale pierwszy to 6


select ProductDescriptionID
,Description
from Production.ProductDescription


update Production.ProductDescription
set Description = 'very good quality 100% guarantee'
where ProductDescriptionID=1607

select *
from Production.ProductDescription 
where Description like '%[%]%'
-- tutaj procent wystepuje w Description, inny sposob:
select * 
from Production.ProductDescription
where Description LIKE '%\%%' escape '\'
-- znak, przed którym zostal uzyty  \ jest pozbawiany znaczenia specjalnego, znak ten wypisujemy w escape


--WHERE Homework 2 
--1
select *
from HumanResources.Employee
where JobTitle like'%Specialist%'

--2
select * 
from HumanResources.Employee
where JobTitle like '%Specialist%' and Jobtitle like '%Marketing%'


--3
select * 
from HumanResources.Employee
where JobTitle like '%Specialist%' or Jobtitle like '%Marketing%'

--4
select *
from Production.Product
where Name like '%[0-9]%'

--5
select *
from Production.Product
where Name like '%[0-9][0-9]%'

--6
select *
from Production.Product
where Name like '%[0-9][0-9]%[^0-9]';

--7
select * from Production.Product
where Name ='____'










