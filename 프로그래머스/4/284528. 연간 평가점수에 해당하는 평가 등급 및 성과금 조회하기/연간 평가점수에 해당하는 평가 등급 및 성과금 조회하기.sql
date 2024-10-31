-- 코드를 작성해주세요
SELECT e.EMP_NO
     , e.EMP_NAME
     , a.GRADE
     , CASE
        WHEN a.GRADE = 'S' THEN e.SAL * 0.2
        WHEN a.GRADE = 'A' THEN e.SAL * 0.15
        WHEN a.GRADE = 'B' THEN e.SAL * 0.1
        ELSE 0
        END AS BONUS
FROM (SELECT EMP_NO
          , AVG(SCORE) AS SCORE
          , CASE 
            WHEN AVG(SCORE) >= 96 THEN 'S'
            WHEN AVG(SCORE) >= 90 THEN 'A'
            WHEN AVG(SCORE) >= 80 THEN 'B'
            ELSE 'C'
            END AS GRADE
     FROM HR_GRADE
     GROUP BY EMP_NO) a
        JOIN
     HR_EMPLOYEES e ON a.EMP_NO = e.EMP_NO
ORDER BY EMP_NO