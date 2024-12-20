-- 코드를 작성해주세요
SELECT ID
     , FISH_NAME
     , LENGTH
FROM FISH_INFO I 
        JOIN 
     FISH_NAME_INFO N ON I.FISH_TYPE = N.FISH_TYPE
WHERE (I.FISH_TYPE, LENGTH) IN (SELECT FISH_TYPE, MAX(LENGTH) 
                                FROM FISH_INFO
                                GROUP BY FISH_TYPE)
ORDER BY ID

# SELECT i.ID
#      , n.FISH_NAME
#      , MAX(i.LENGTH)
# FROM FISH_INFO i
#         JOIN
#      FISH_NAME_INFO n ON i.FISH_TYPE = n.FISH_TYPE
# GROUP BY n.FISH_NAME
# ORDER BY ID