-- This statement returns the name(s) of any existing table(s) in your schema that will conflict with the name of a table that needs to be created using these SQL scripts

SELECT TABLE_NAME 
FROM ALL_TABLES 
WHERE OWNER=
      (
         SELECT SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA') FROM DUAL
      )
      AND TABLE_NAME IN
      (
         'DEPARTMENT',
         'LEAVE_TYPE',
         'PAY_TYPE',
         'TITLE',
         'EVAL_REASON',
         'EVALUATION_ITEM',
         'EMPLOYEE',
         'APPOINTMENT',
         'ACTUAL_LEAVE',
         'PAYCHECK_HEADER',
         'PAYCHECK_DETAIL',
         'EVALUATION_HEADER',
         'EVALUATION_DETAIL'
       )