-- 코드를 입력하세요
SELECT b.APNT_NO
     , a.PT_NAME
     , b.PT_NO
     , b.MCDP_CD
     , c.DR_NAME
     , b.APNT_YMD
FROM PATIENT a
        JOIN
     APPOINTMENT b ON a.PT_NO = b.PT_NO
        JOIN
     DOCTOR c ON b.MDDR_ID = c.DR_ID
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = '2022-04-13' AND APNT_CNCL_YN = 'N'
ORDER BY b.APNT_YMD