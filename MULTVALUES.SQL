SELECT FIRST_NAME|| ' '||LAST_NAME|| ' | Job: '||job_id|| ' |  Sal rio: '||SALARY AS "ACCOUNTANT " FROM EMPLOYEES WHERE JOB_ID IN ('ST_CLERK','IT_PROG') AND SALARY NOT IN(2500,3100,6000)
/
