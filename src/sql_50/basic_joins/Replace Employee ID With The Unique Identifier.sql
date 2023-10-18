SELECT employeeuni.unique_id,
       employees.name
FROM   employees
           LEFT JOIN employeeuni
                     ON employeeuni.id = employees.id;