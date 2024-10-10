SELECT TOP (1000) [CurrencyKey]
      ,[CurrencyLabel]
      ,[CurrencyName]
      ,[CurrencyDescription]
      ,[ETLLoadID]
      ,[LoadDate]
      ,[UpdateDate]
  FROM [ContosoRetailDW].[dbo].[DimCurrency]

  --Exerc�cio 1
SELECT TOP(100) * 
FROM FactSales
ORDER BY SalesAmount DESC

--Exerc�cio 2
SELECT top(10) * 
from DimProduct
ORDER BY UnitPrice DESC, Weight DESC, Size DESC

--ORDER BY UnitPrice DESC, Weight DESC, AvaliableForSalesDate ASC


--Exerc�cio 3
SELECT ProductName AS Nome, 
Weight AS Peso
from DimProduct
WHERE Weight is not null and Weight > 99
ORDER by Weight 


--Exerc�cio 4
SELECT 
	StoreName as 'Nome da Loja',
	OpenDate as 'Data', 
	EmployeeCount as 'Funcionarios',
	StoreType as 'Tipo de loja'

FROM DimStore

WHERE StoreType = 'Store'  AND Status LIKE 'On'

--Exerc�cio 5

SELECT *

FROM DimProduct

WHERE ProductName LIKE '%Home Theater%' AND BrandName LIKE 'Litware' AND AvailableForSaleDate = '15/03/2009'

--Exerc�cio 6 

SELECT *

FROM DimStore

WHERE Status LIKE 'Off'

-- 6- b) Atrav�s da coluna "data de fechamento"

-- Excerc�cio 7

--
SELECT *

FROM DimStore

WHERE EmployeeCount BETWEEN 1 and 20

--

SELECT *

FROM DimStore

WHERE EmployeeCount BETWEEN 21 AND 50

--

SELECT *

FROM DimStore

WHERE EmployeeCount > 50

-- Excerc�cio 8

SELECT *

FROM DimProduct

WHERE ProductDescription LIKE '%LCD%'

-- Excerc�cio 9

SELECT *

FROM DimProduct

WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND 
BrandName IN ('Contoso', 'Litware', 'Fabrikam')

-- Excerc�cio 10

SELECT *

FROM DimProduct

WHERE ColorName IN ('Silver') AND UnitPrice BETWEEN 10 AND 30

ORDER BY UnitPrice 
