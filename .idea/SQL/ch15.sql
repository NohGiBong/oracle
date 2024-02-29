-- system 계정으로 로그인 필요

--이름 앞에 #CC 안 붙이기
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

--CREATE USER : 유저 생성 SQL
CREATE USER orclstudy
IDENTIFIED BY ORACLE;

--세션 생성 권한 설정
GRANT CREATE SESSION TO orclstudy;

--비밀번호 번경
ALTER USER orclstudy
IDENTIFIED BY ORCL;

DROP USER orclstudy;

CREATE USER orclstudy
IDENTIFIED BY ORACLE;

--GRANT 시스템 권한, 시스템 권한, 시스템 권한 TO 유저명;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO orclstudy;

-- 테이블 스페이스 용량 설정(미설정 시 INSERT )
ALTER USER orclstudy QUOTA 2M ON USERS;

CREATE TABLE TEMP
(
    COL1 VARCHAR2(20),
    COLE VARCHAR2(20)
);

GRANT SELECT ON TEMP TO orclstudy;

GRANT INSERT ON TEMP TO orclstudy;

INSERT INTO scott.TEMP VALUES ('T1', SYSDATE);

SELECT * FROM SCOTT.temp;

-- 권한 삭제
REVOKE RESOURCE, CREATE SESSION, CREATE TABLE FROM orclstudy;

REVOKE SELECT, INSERT ON TEMP FROM orclstudy;

--
CREATE ROLE ROLESTUDY;

-- 롤 권한 설정
GRANT RESOURCE, CREATE VIEW, CREATE SYNONYM TO ROLESTUDY;

-- 유저에게 롤 설정
GRANT ROLESTUDY TO ORCLSTUDY;

SELECT * FROM USER_SYS_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;
SELECT * FROM USER_TAB_PRIVS;
