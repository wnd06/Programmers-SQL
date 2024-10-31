-- 코드를 입력하세요
SELECT YEAR(s.sales_date) AS YEAR
     , MONTH(s.sales_date) AS MONTH
     , i.GENDER
     , COUNT(DISTINCT s.USER_ID) AS USERS
FROM USER_INFO i
        JOIN
     ONLINE_SALE s ON i.USER_ID = s.USER_ID
WHERE i.GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY CONVERT(YEAR, SIGNED), CONVERT(MONTH, SIGNED), GENDER