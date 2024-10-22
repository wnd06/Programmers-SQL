-- 코드를 작성해주세요
SELECT i.ID
     , n.FISH_NAME
     , i.LENGTH
FROM FISH_INFO i
        JOIN
     FISH_NAME_INFO n ON i.FISH_TYPE = n.FISH_TYPE
WHERE i.LENGTH = (SELECT MAX(LENGTH)
                  FROM FISH_INFO
                  WHERE FISH_TYPE = i.FISH_TYPE)
ORDER BY ID