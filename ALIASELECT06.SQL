SELECT FIRST_NAME|| ' '||LAST_NAME|| '| Department:' ||DEPARTMENT_ID|| '| Salary:'||SALARY AS "EMPLOYEES FROM 10 AND 30 DEPT" FROM EMPLOYEES WHERE DEPARTMENT_ID IN (10,30) AND SALARY > 3000 ORDER BY FIRST_NAME 
/
