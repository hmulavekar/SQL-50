/* Write your PL/SQL query statement below */

SELECT P.PATIENT_ID,P.PATIENT_NAME,P.CONDITIONS FROM PATIENTS P WHERE  LIKE '%DIAB1%'; -- this does not work as it could return rows with conditions like ABSBADIAB1SKNMF which does not means diabetic

SELECT P.PATIENT_ID,P.PATIENT_NAME,P.CONDITIONS FROM PATIENTS P WHERE P.CONDITIONS LIKE 'DIAB1%' OR P.CONDITIONS LIKE '% DIAB1%';
