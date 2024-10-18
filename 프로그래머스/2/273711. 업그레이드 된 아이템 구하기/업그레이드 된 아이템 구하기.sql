-- 코드를 작성해주세요
SELECT i.ITEM_ID
     , i.ITEM_NAME
     , i.RARITY
FROM ITEM_INFO i
        JOIN
     ITEM_TREE it on i.ITEM_ID = it.ITEM_ID
        JOIN
     ITEM_INFO i2 on i2.ITEM_ID = it.PARENT_ITEM_ID
WHERE i2.RARITY = 'RARE'
ORDER BY it.ITEM_ID DESC