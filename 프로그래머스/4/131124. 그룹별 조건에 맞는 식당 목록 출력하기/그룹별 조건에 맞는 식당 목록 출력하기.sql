-- 코드를 입력하세요
WITH CTE AS (select a.MEMBER_NAME
     , count(*) as review_cnt
from MEMBER_PROFILE a
        JOIN
     REST_REVIEW b ON a.MEMBER_ID = b.MEMBER_ID
group by a.MEMBER_NAME),
CTE2 AS (select a.MEMBER_NAME,
                b.REVIEW_TEXT,
                b.REVIEW_DATE,
                c.review_cnt
from MEMBER_PROFILE a
        JOIN
     REST_REVIEW b ON a.MEMBER_ID = b.MEMBER_ID
        JOIN
     CTE c ON a.MEMBER_NAME = c.MEMBER_NAME)

SELECT MEMBER_NAME
     , REVIEW_TEXT
     , DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d')
FROM CTE2 a
       LEFT JOIN
    (select MAX(review_cnt) as max_cnt
    from CTE2) b ON a.review_cnt = b.max_cnt
WHERE max_cnt is NOT NULL
ORDER BY REVIEW_DATE, REVIEW_TEXT
