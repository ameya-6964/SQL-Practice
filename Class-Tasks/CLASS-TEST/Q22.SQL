SELECT EMP.*,DECODE(JOB,
                     'CLERK',1
,'MANAGER',3,
'PRESIDENT',5,
2) AS JOB_CLASS
FROM EMP
/
