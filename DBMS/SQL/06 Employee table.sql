#https://w3resource.com/sql-exercises/employee-database-exercise/subqueries-exercises-on-employee-database.php
#'employees' subqueary 1~20

--1. Write a query in SQL to display all the details of managers.

SELECT *
FROM employees
WHERE emp_id IN
    (SELECT manager_id
     FROM employees);


--2. Write a query in SQL to display the employee ID, name, job name, hire date, and experience of all the managers.

SELECT emp_id,
       emp_name,
       job_name,
       hire_date,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE emp_id IN
    (SELECT manager_id
     FROM employees);


--3. Write a query in SQL to list the employee ID, name, salary, department name of all the 'MANAGERS' and 'ANALYST' working in SYDNEY, PERTH with an exp more than 5 years without receiving the commission and display the list in ascending order of location.

SELECT e.emp_id, e.emp_name, e.salary, d.dep_name
FROM employees e, department d
WHERE e.dep_id=d.dep_id 
    AND e.job_name IN ('MANAGERS', 'ANALYST')
    AND d.dep_location IN ('SYDNEY', 'PERTH')
    AND EXTRACT(YEAR FROM age(CURRENT_DATE, e.hire_date))>5
    AND e.commission IS NOT NULL
ORDER BY d.dep_location;


--4. Write a query in SQL to display the employee ID, name, salary, department name, location, department ID, job name of all the employees working at SYDNEY or working in the FINANCE deparment with an annual salary above 28000, but the monthly salary should not be 3000 or 2800 and who does not works as a MANAGER and whose ID containing a digit of '3' or '7' in 3rd position. List the result in ascending order of department ID and descending order of job name.

SELECT e.emp_id, e.emp_name, e.salary, d.dep_id, d.dep_name, d.dep_location
FROM employees e, department d
WHERE e.dep_id = d.dep_id AND
    d.dep_loaction = 'SYDNEY' OR
    d.dep_name = 'FINANCE' AND 
    12*e.salary > 28000 AND
    d.salary NOT IN (3000, 2800) AND
    e.jop_name <> 'MANAGER' AND 
    (trim(to_char(e.emp_id,'99999')) LIKE '__3%'
            OR trim(to_char(e.emp_id,'99999')) LIKE '__7%'))
ORDER BY d.dep_id ASC,
         e.job_name DESC;  
         
----Sample Solution Áú¹®

SELECT E.emp_id,
       E.emp_name,
       E.salary,
       D.dep_name,
       D.dep_location,
       E.dep_id,
       E.job_name
FROM employees E,
     department D
WHERE (D.dep_location = 'SYDNEY'
       OR D.dep_name = 'FINANCE')
  AND E.dep_id=D.dep_id
  AND E.emp_id IN
    (SELECT emp_id
     FROM employees E
     WHERE (12*E.salary) > 28000
       AND E.salary NOT IN (3000,
                            2800)
       AND E.job_name !='MANAGER'
       AND (trim(to_char(emp_id,'99999')) LIKE '__3%'
            OR trim(to_char(emp_id,'99999')) LIKE '__7%'))
ORDER BY E.dep_id ASC,
         E.job_name DESC;


--5. Write a query in SQL to list all the employees of grade 2 and 3.

SELECT e.* 
FROM employees e, salary_grade s
WHERE e.salary BETWEEN s.min_sal AND s.max_sal
    AND s.grade IN (2,3);
    
    
--6. Write a query in SQL to display all the employees of grade 4 and 5 who are working as ANALYST or MANAGER.

SELECT *
FROM employees e,
     salary_grade s
WHERE e.salary BETWEEN s.min_sal AND s.max_sal
  AND s.grade IN (4,
                  5)
  AND e.job_name IN ('MANAGER',
                          'ANALYST'));
                          
---Sample Solution Áú¹®

SELECT *
FROM employees e,
     salary_grade s
WHERE e.salary BETWEEN s.min_sal AND s.max_sal
  AND s.grade IN (4,
                  5)
  AND e.emp_id IN
    (SELECT e.emp_id
     FROM employees e
     WHERE e.job_name IN ('MANAGER',
                          'ANALYST'));
                          

--7. Write a query in SQL to list the details of the employees whose salary is more than the salary of JONAS.

SELECT *
FROM employees 
WHERE salary > 
    (select salary FROM employees WHERE emp_name = 'JONAS');
    

--8. Write a query in SQL to list the employees who works in the same designation as FRANK.

SELECT *
FROM employees
WHERE job_name = 
    (SELECT job_name FROM employees WHERE emp_name='FRANK');


--9. Write a query in SQL to list the employees who are senior to ADELYN.

SELECT *
FROM employees
WHERE hire_date <
    (SELECT hire_date
     FROM employees
     WHERE emp_name = 'ADELYN');


--10. Write a query in SQL to list the employees of department ID 2001 who works in the designation same as department ID 1001.

SELECT *
FROM employees e,
     department d
WHERE d.dep_id = 2001
  AND e.dep_id = d.dep_id
  AND e.job_name IN
    (SELECT e.job_name
     FROM employees e,
          department d
     WHERE e.dep_id = d.dep_id
       AND d.dep_id =1001);
       

--11. Write a query in SQL to list the employees whose salary is same as the salary of FRANK or SANDRINE. List the result in descending order of salary.

SELECT * FROM employees
WHERE salary = 
    (SELECT salary FROM employees
    WHERE emp_name IN ('FRANK', 'SANDRINE'))
ORDER BY salary desc;


--12. Write a query in SQL to list the employees whose designation are same as the designation of MARKER or salary is more than the salary of ADELYN.

SELECT *
FROM employees
WHERE job_name =
    (SELECT job_name
     FROM employees
     WHERE emp_name = 'MARKER' )
  OR salary>
    (SELECT salary
     FROM employees
     WHERE emp_name = 'ADELYN');
     
     
--13. Write a query in SQL to list the employees whose salary is more than the total remuneration of the SALESMAN.

SELECT * FROM employees
WHERE salary > (SELECT max(salary+commission) FROM employees WHERE job_name = 'SALESMAN');


--14. Write a query in SQL to list the employees who are senior to BLAZE and working at PERTH or BRISBANE.

SELECT * FROM employees e, department d
WHERE e.hire_date < 
    (SELECT hire_date FROM employees WHERE emp_name='BLAZE')
    AND e.dep_id=d.dep_id
    AND d.dep_location IN ('PERTH', 'BRISBANE');
    
    
--15. Write a query in SQL to list the employees of grade 3 and 4 working in the department of FINANCE or AUDIT and whose salary is more than the salary of ADELYN and experience is more than FRANK. List the result in the ascending order of experience.

SELECT * FROM employees e, department d, salary_grade s
WHERE e.salary BETWEEN s.min_sal AND s.max_sal
    AND s.grade IN (3, 4)
    AND e.dep_id=d.dep_id
    AND d.dep_name IN ('FINANCE', 'AUDIT')
    AND e.hire_date < 
        (SELECT hire_date FROM employees WHERE emp_name='FRANK')    
ORDER BY AGE(current_date, e.hire_date) desc;


----Sample Solution
SELECT *
FROM employees e
WHERE e.dep_id IN
    (SELECT d.dep_id
     FROM department d
     WHERE d.dep_name IN ('FINANCE',
                          'AUDIT') )
  AND e.salary >
    (SELECT salary
     FROM employees
     WHERE emp_name = 'ADELYN')
  AND e.hire_date <
    (SELECT hire_date
     FROM employees
     WHERE emp_name = 'FRANK')
  AND e.emp_id IN
    (SELECT e.emp_id
     FROM employees e,
          salary_grade s
     WHERE e.salary BETWEEN s.min_sal AND s.max_sal
       AND s.grade IN (3,
                       4) )
ORDER BY e.hire_date ASC;



--16. Write a query in SQL to list the employees whose designation is same as the designation of SANDRINE or ADELYN.

SELECT *
FROM employees
WHERE job_name IN
    (SELECT job_name
     FROM employees
     WHERE emp_name IN('SANDRINE',
                       'ADELYN'));


--17. Write a query in SQL to list any job of department ID 1001 those that are not found in department ID 2001.

SELECT e.job_name
FROM employees e
WHERE e.dep_id = 1001
  AND e.job_name NOT IN
    (SELECT job_name
     FROM employees
     WHERE dep_id =2001);


--18. Write a query in SQL to find the details of highest paid employee.

SELECT * 
FROM employees
WHERE salary IN (SELECT max(salary) FROM employees);


--19. Write a query in SQL to find the highest paid employees in the department MARKETING.

SELECT *
FROM employees
WHERE salary IN
    (SELECT max(salary)
     FROM employees
     WHERE dep_id IN
         (SELECT d.dep_id
          FROM department d
          WHERE d.dep_name = 'MARKETING'));


--20. Write a query in SQL to list the employees of grade 3 who have been hired in most recently and belongs to PERTH.

SELECT e.emp_id, e.emp_name, e.job_name, e.hire_date,e.salary
FROM employees e,
     department d
WHERE d.dep_location='PERTH'
  AND hire_date IN
    (SELECT max(hire_date)
     FROM employees e,
          salary_grade s
     WHERE salary BETWEEN min_sal AND max_sal
       AND grade=3);
