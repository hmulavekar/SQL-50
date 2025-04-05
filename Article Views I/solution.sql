/* Write your PL/SQL query statement below */

SELECT DISTINCT(AUTHOR_ID) AS id  FROM VIEWS WHERE AUTHOR_ID = VIEWER_ID ORDER BY id asc; 