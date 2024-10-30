-- 코드를 작성해주세요
SELECT COUNT(a.ID) AS FISH_COUNT
     , MAX(a.LENGTH) AS MAX_LENGTH
     , a.FISH_TYPE
FROM (SELECT FISH_TYPE
           , ID
           , CASE
                WHEN LENGTH <= 10 THEN 10
                WHEN LENGTH IS NULL THEN 10
                ELSE LENGTH
                END AS LENGTH
      FROM FISH_INFO) a
GROUP BY a.FISH_TYPE
HAVING AVG(a.LENGTH) >= 33
ORDER BY a.FISH_TYPE
