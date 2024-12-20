-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/'
              , CONCAT(b.BOARD_ID, CONCAT('/', CONCAT(b.FILE_ID, CONCAT(b.FILE_NAME, b.FILE_EXT))))) AS FILE_PATH
FROM USED_GOODS_BOARD a
        JOIN
     USED_GOODS_FILE b ON a.BOARD_ID = b.BOARD_ID
WHERE a.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY b.FILE_ID DESC