-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME from animal_ins
where NOT INTAKE_CONDITION = 'Aged'
ORDER BY ANIMAL_ID;