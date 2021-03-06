CREATE OR REPLACE VIEW EMP_ATUAL_ANTIGO
AS
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY,
(SELECT JOB_ID 
FROM JOB_HISTORY where END_DATE =
(SELECT max(END_DATE) FROM JOB_HISTORY WHERE EMPLOYEE_ID = 101))AS "Ultimo emprego",
JOB_ID AS "Emprego atual" FROM EMPLOYEES WHERE EMPLOYEE_ID = 101 ;
SELECT * from EMP_ATUAL_ANTIGO;
SELECT max(END_DATE)as "Ultimo emprego" FROM JOB_HISTORY where employee_id = 101;
SELECT * FROM JOB_HISTORY WHERE END_DATE =(SELECT MAX(END_DATE) FROM JOB_HISTORY) ;
rename EMP_ATUAL_ANTIGO to EMPCOD_101_ATUAL_ANTIGO;
SELECT count(DEPARTMENT_id)FROM DEPARTMENTS; 

DECLARE
    X NUMBER (3);
BEGIN
    SELECT count(DEPARTMENT_ID)
    into x
    FROM DEPARTMENTS; 
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(X));
END   ; 