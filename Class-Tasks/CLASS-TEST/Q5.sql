SELECT *
FROM (SELECT DENSE_RANK() OVER (ORDER BY EMPNO ASC) AS RANK,EMP.*
      FROM EMP)
WHERE MOD(RANK,2) = 0
/
