-- 코드를 입력하세요
-- 대여일부터 1일차라 단순히 날짜 차이를 기준으로 하면 29일 이상부터 장기입니다
SELECT HISTORY_ID
     , CAR_ID
     , DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE
     , DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE
     , CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
        END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE DATE_FORMAT(START_DATE, '%Y-%m') = '2022-09'
ORDER BY HISTORY_ID DESC