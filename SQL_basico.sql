SELECT
	FirstName AS PrimerNombre, 
	LastName AS Apellido
FROM Person.Person
WHERE FirstName = 'Kim';

SELECT DISTINCT
	FirstName AS PrimerNombre, 
	LastName AS Apellido
FROM Person.Person
WHERE FirstName = 'Kim';

SELECT *
FROM HumanResources.Employee
WHERE
	MaritalStatus = 'S' AND
	Gender = 'M';

SELECT *
FROM HumanResources.Employee
WHERE
	MaritalStatus = 'S' OR
	Gender = 'M';

SELECT *
FROM HumanResources.Employee
WHERE
	(MaritalStatus = 'S' AND Gender = 'M') OR
	OrganizationLevel = 1;

SELECT * 
FROM HumanResources.Employee
WHERE 
	VacationHours > 95 AND
	JobTitle != 'Chief Executive Officer';

SELECT * 
FROM HumanResources.Employee
WHERE 
	VacationHours > 95 AND 
	OrganizationLevel IS NOT NULL;

SELECT * 
FROM HumanResources.Employee
WHERE
	VacationHours >= 60 AND
	VacationHours <= 70;

SELECT * 
FROM HumanResources.Employee
WHERE
	VacationHours BETWEEN 60 AND 70;

SELECT *
FROM HumanResources.Employee
WHERE 
	VacationHours IN (60, 70, 68);

SELECT * 
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Officer';

SELECT *
FROM Person.Person
WHERE FirstName LIKE '_e_e%'

SELECT *
FROM Person.Person
WHERE 
	LastName LIKE 'a%' OR 
	LastName LIKE 'b%' OR 
	LastName LIKE 'c%'

SELECT *
FROM Person.Person
WHERE 
	LastName LIKE '[abc]%'

-- Que el apellido empiece con letras de la A a la E
SELECT *
FROM Person.Person
WHERE
	LastName LIKE '[A-E]%'

-- Que el apellido NO empiece con letras de la A a la E
SELECT *
FROM Person.Person
WHERE
	LastName LIKE '[^A-E]%'

---------------------------
----- ORDER BY ------------
---------------------------

SELECT 
	FirstName,
	LastName
FROM Person.Person
ORDER BY FirstName, LastName;

SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY 
	FirstName,
	LastName DESC

---------------------
------- TOP ---------
---------------------

SELECT TOP 30
	FirstName, 
	MiddleName, 
	LastName
FROM Person.Person
ORDER BY 
	FirstName,
	LastName DESC;

--------------------
----- CASE ---------
--------------------

SELECT
	NationalIDNumber,
	JobTitle,
	Gender,
	CASE 
		WHEN Gender = 'M' THEN 'Hombres'
		WHEN Gender = 'F' THEN 'Mujeres'
		ELSE 'Otro'
	END AS Genero_OK,
	MaritalStatus
FROM HumanResources.Employee
WHERE MaritalStatus = 'S'
Order BY 
	JobTitle, Gender


