/* Write your PL/SQL query statement below */

SELECT S.USER_ID AS "user_id" ,ROUND(AVG(CASE WHEN C.ACTION = 'confirmed' THEN 1 ELSE 0 END),2) AS "confirmation_rate" FROM SIGNUPS S LEFT JOIN CONFIRMATIONS C ON S.USER_ID = C.USER_ID GROUP BY S.USER_ID;