-- Statement that returns the name(s) of any existing constraint(s) in your schema that will conflict with the name of a constraint that needs to be created using these SQL scripts.

SELECT CONSTRAINT_NAME, TABLE_NAME 
FROM ALL_CONSTRAINTS WHERE OWNER =
                          (
                               SELECT SYS_CONTEXT('USERENV','CURRENT_SCHEMA')
                               FROM DUAL
                           )
                           AND CONSTRAINT_NAME IN
                           (
                              'EVAL_ITEM_FK',
                              'EVAL_HEADER_FK',
                              'EVAL_REASON_FK',
                              'APPOINTMENT_FK2',
                              'PAY_TYPE_ID_FK',
                              'PAYCHECK_HEADER_ID_FK',
                              'APPOINTMENT_FK1',
                              'LEAVE_TYPE_FK',
                              'APPOINTMENT_FK',
                              'DEPARTMENT_FK',
                              'TITLE_FK',
                              'EMPLOYEE_FK',
                              'DEPARTMENT_PK',
                              'LEAVE_TYPE_PK',
                              'PAY_TYPE_PK',
                              'TITLE_PK',
                              'EVAL_REASON_PK',
                              'EVAL_NAME_PK',
                              'EMPLOYEE_PK',
                              'APPOINTMENT_PK',
                              'ACTUAL_LEAVE_PK',
                              'PAYCHECK_HEADER_PK',
                              'PAYCHECK_DETAIL_PK',
                              'EVAL_HEADER_PK',
                              'EVAL_DETAIL_PK'
)