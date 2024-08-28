-- 코드를 입력하세요
SELECT concat('/home/grep/src/', f.BOARD_ID)||concat('/',f.FILE_ID)||f.FILE_NAME||f.FILE_EXT as FILE_PATH 
FROM USED_GOODS_BOARD b
INNER JOIN USED_GOODS_FILE f
ON b.BOARD_ID = f.BOARD_ID
WHERE b.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY f.FILE_ID DESC;