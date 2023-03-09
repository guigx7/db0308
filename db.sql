--Exemplo Slide 12
SELECT employee_id, job_id
FROM   employees
UNION
SELECT employee_id, job_id
FROM   job_history;

--Exemplo Slide 15
SELECT employee_id, job_id, department_id
FROM   employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM   job_history
ORDER BY  employee_id;

--Exemplo Slide 17
SELECT employee_id, job_id
FROM   employees
INTERSECT
SELECT employee_id, job_id
FROM   job_history;

--Exemplo Slide 19
SELECT employee_id
FROM   employees
MINUS
SELECT employee_id
FROM   job_history;


--Exemplo slide 22
SELECT department_id, TO_NUMBER(null) 
       location, hire_date
FROM   employees
UNION
SELECT department_id, location_id,  TO_DATE(null)
FROM   departments;

--Exemplo slide 23
SELECT employee_id, job_id,TO_CHAR(salary)
FROM   employees
UNION
SELECT employee_id, job_id,'---'
FROM   job_history;

--Exercício 2
SELECT COUNTRY_ID CO, COUNTRY_NAME
FROM COUNTRIES
MINUS
SELECT C.COUNTRY_ID, COUNTRY_NAME
FROM COUNTRIES C JOIN LOCATIONS L
ON C.COUNTRY_ID = L.COUNTRY_ID
JOIN DEPARTMENTS D
ON L.LOCATION_ID = D.LOCATION_ID;


