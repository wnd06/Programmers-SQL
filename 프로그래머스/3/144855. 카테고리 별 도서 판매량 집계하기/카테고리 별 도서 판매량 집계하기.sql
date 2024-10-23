-- 코드를 입력하세요
SELECT b.CATEGORY
     , SUM(bs.SALES) AS TOTAL_SALES
FROM BOOK b
        JOIN
    (SELECT *
    FROM BOOK_SALES  
    WHERE DATE_FORMAT(SALES_DATE, '%Y-%m-%d') = DATE_FORMAT(SALES_DATE, '2022-01-%d')) bs
    ON b.BOOK_ID = bs.BOOK_ID
GROUP BY CATEGORY
ORDER BY CATEGORY