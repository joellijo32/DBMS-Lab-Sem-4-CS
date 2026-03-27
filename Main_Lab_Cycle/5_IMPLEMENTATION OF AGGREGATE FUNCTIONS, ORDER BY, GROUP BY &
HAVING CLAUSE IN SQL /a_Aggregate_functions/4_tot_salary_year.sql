SELECT SUM(salary) AS Total_salary
FROM employee
WHERE EXTRACT(YEAR FROM doj) = 2022;
