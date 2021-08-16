SELECT *
FROM PortfolioHR..HRDataset_v14$

SELECT COUNT(Employee_Name) As Number_of_Total_Employees
FROM HRDataset_v14$


--Distinguish Employees by EmployementStatus

SELECT EmploymentStatus, COUNT(EmploymentStatus) as NumberOfEmplolyees
From HRDataset_v14$
GROUP BY EmploymentStatus
ORDER BY 1


--Number of Employees and Average Salary by Department, Position

SELECT DISTINCT Department, Position
FROM HRDataset_v14$

SELECT Department, Position, COUNT(Position) AS NumbOfEmployees, AVG(Salary) AS AvgSalary
FROM HRDataset_v14$
GROUP BY Department, Position
ORDER BY 1, 3 DESC


--Employee Satisfaction

SELECT AVG(EmpSatisfaction) AS AvgEmpSatifaction
FROM HRDataset_v14$

SELECT EmpSatisfaction, Count(EmpSatisfaction) As SatisfactionRating
FROM HRDataset_v14$
GROUP BY EmpSatisfaction


--Number of Employees by States

SELECT State, COUNT(State) As NumberOfEmployees
FROM HRDataset_v14$
GROUP BY State
ORDER BY 2 DESC, 1


--Number of Employees by Sex
SELECT Sex, COUNT(Sex) As NumberOfEmployees
FROM HRDataset_v14$
GROUP BY SEX



--Employees by Race

SELECT RaceDesc, COUNT(RaceDesc) As NumberOfEmployees, Sex
FROM HRDataset_v14$
GROUP BY RaceDesc, Sex
ORDER BY 2 DESC, 1


--Employees by Marital Status

SELECT MaritalDesc, COUNT(MaritalDesc) As NumberOfEmployees, Sex
FROM HRDataset_v14$
GROUP BY MaritalDesc, Sex
ORDER BY 2 Desc


-- Number of Employees Hired and Percetange by Different RecuiredSources

SELECT RecruitmentSource,  COUNT(RecruitmentSource) AS NumberOfHired, COUNT(RecruitmentSource)*100.0/SUM(COUNT(RecruitmentSource)) OVER () AS PercentageHired
FROM HRDataset_v14$
GROUP BY RecruitmentSource