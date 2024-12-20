SELECT *
FROM EMP
WHERE EMPNO NOT IN (SELECT MGR
                    FROM EMP
                    WHERE MGR IS NOT NULL)
/
