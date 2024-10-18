-- 코드를 작성해주세요
# SELECT COUNT(*) AS COUNT
# FROM ECOLI_DATA 
# WHERE CONV(GENOTYPE, 10, 2) = '1' OR CONV(GENOTYPE, 10, 2) = '11' OR CONV(GENOTYPE, 10, 2) = '1101' OR CONV(GENOTYPE, 10, 2) = '11111'
select COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 2 != 2 
AND (GENOTYPE & 1 = 1 OR GENOTYPE & 4 = 4)