/* Write your PL/SQL query statement below */

SELECT C.CUSTOMER_ID FROM CUSTOMER C GROUP BY C.CUSTOMER_ID HAVING COUNT(DISTINCT(C.PRODUCT_KEY)) = (SELECT COUNT(*) FROM PRODUCT P) 
