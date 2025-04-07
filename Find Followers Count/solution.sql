/* Write your PL/SQL query statement below */

SELECT F.USER_ID, COUNT(F.FOLLOWER_ID) AS "followers_count" FROM FOLLOWERS F GROUP BY F.USER_ID ORDER BY F.USER_ID;
