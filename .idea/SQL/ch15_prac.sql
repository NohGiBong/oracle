ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
-- system 계정
CREATE USER PREV_HW
IDENTIFIED BY ORCL;

GRANT CREATE SESSION TO PREV_HW;

DROP USER PREV_HW CASCADE;
DROP USER ORCLSTUDY CASCADE;


-- scott 계정
GRANT SELECT ON EMP TO PREV_HW;
GRANT SELECT ON DEPT TO PREV_HW;
GRANT SELECT ON SALGRADE TO PREV_HW;

-- prev_hw 계정
SELECT * FROM SCOTT.EMP;

-- scott 계정
REVOKE SELECT ON EMP FROM PREV_HW;
REVOKE SELECT ON DEPT FROM PREV_HW;
REVOKE SELECT ON SALGRADE FROM PREV_HW;

-- prev_hw 계정
SELECT * FROM SCOTT.SALGRADE;

GRANT ALL PRIVILEGES TO PREV_HW;

