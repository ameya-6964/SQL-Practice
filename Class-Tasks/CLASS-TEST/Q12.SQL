SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
           FROM EMP
           WHERE EMPNO IN (SELECT MGR
                           FROM EMP
                           GROUP BY MGR
                           HAVING COUNT(*) >=2))
/
