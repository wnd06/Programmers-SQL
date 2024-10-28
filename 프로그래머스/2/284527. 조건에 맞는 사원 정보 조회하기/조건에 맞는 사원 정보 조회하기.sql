-- 코드를 작성해주세요
# SELECT *
# FROM HR_EMPLOYEES e
#         JOIN
#      HR_GRADE g ON g.EMP_NO = g.EMP_NO
# WHERE g.YEAR = 2022
# GROUP BY g.EMP_NO

SELECT g.SCORE
     , e.EMP_NO  
     , e.EMP_NAME
     , e.POSITION
     , e.EMAIL
FROM HR_EMPLOYEES e
        JOIN
    (SELECT g1.EMP_NO
         , g1.SCORE + g2.SCORE AS SCORE
    FROM HR_GRADE g1
            JOIN
         HR_GRADE g2 ON g1.EMP_NO = g2.EMP_NO AND g1.HALF_YEAR + 1 = g2.HALF_YEAR
    WHERE g1.YEAR = 2022) g ON e.EMP_NO = g.EMP_NO
WHERE g.SCORE = (SELECT MAX(g1.SCORE + g2.SCORE) AS SCORE
    FROM HR_GRADE g1
            JOIN
         HR_GRADE g2 ON g1.EMP_NO = g2.EMP_NO AND g1.HALF_YEAR + 1 = g2.HALF_YEAR
    WHERE g1.YEAR = 2022)
      