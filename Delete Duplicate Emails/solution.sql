/* Write your PL/SQL query statement below */

-- DELETE FROM PERSON WHERE ID NOT IN (
--     SELECT MIN(P.ID) AS "ID" FROM PERSON P GROUP BY P.EMAIL HAVING  COUNT(P.ID)>1;
--     ); -- this query does not work as when we have same email 3 times then only one of them will be removed from the table which is incorrect so have to use following logic.


/* Write your PL/SQL query statement below */
DELETE FROM PERSON WHERE ID NOT IN (SELECT MIN(ID) FROM PERSON GROUP BY EMAIL);