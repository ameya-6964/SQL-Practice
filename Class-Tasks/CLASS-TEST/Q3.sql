SELECT *
FROM (SELECT DENSE_RANK() OVER (ORDER BY EMPNO DESC) AS RANK,EMP.*
      FROM EMP)
WHERE RANK = 4
/
