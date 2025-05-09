/* Write your PL/SQL query statement below */


SELECT 'High Salary' AS CATEGORY, SUM(CASE WHEN A.INCOME >50000 THEN 1  ELSE 0 END)  AS "accounts_count"FROM ACCOUNTS A 
UNION
SELECT 'Average Salary'  AS CATEGORY, SUM (CASE WHEN B.INCOME<=50000 AND B.INCOME>=20000 THEN 1 ELSE 0 END)AS "accounts_count" FROM ACCOUNTS B
UNION
SELECT 'Low Salary'  AS CATEGORY, SUM (CASE WHEN C.INCOME<20000  THEN 1 ELSE 0 END)AS "accounts_count" FROM ACCOUNTS C;