SELECT *
FROM (SELECT DENSE_RANK() OVER (ORDER BY EMPNO ASC) 
      AS RANK,E.ENAME,E.SAL - (E.SAL * 0.45),D.DNAME,D.LOC
      FROM EMP E INNER JOIN DEPT D
      ON E.DEPTNO = D.DEPTNO)
WHERE RANK <= 3
/
