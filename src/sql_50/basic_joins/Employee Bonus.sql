SELECT name,
       bonus
FROM Employee
         LEFT JOIN Bonus ON Bonus.empId=Employee.empId
WHERE Bonus.bonus < 1000 || Bonus.bonus IS NULL;