-- 코드를 작성해주세요
WITH CTE AS (
    SELECT CASE
            WHEN LENGTH <= 10 THEN 10
            WHEN LENGTH IS NULL THEN 10
            ELSE LENGTH
            END AS LENGTH
    FROM FISH_INFO
)

SELECT ROUND(AVG(LENGTH), 2) AS AVERAGE_LENGTH
FROM CTE