CREATE TABLE MEMBER_INFO
(
    ID VARCHAR2(20)
        CONSTRAINT MI_ID_PK PRIMARY KEY
        CONSTRAINT MI_ID_NN NOT NULL
        CONSTRAINT MI_ID_CK CHECK ( REGEXP_LIKE(ID,'^[a-z0-9]+$') AND LENGTH(ID) BETWEEN 4 AND 16),
    PW VARCHAR2(20)
        CONSTRAINT MI_PW_NN NOT NULL
        CONSTRAINT MI_PW_CK CHECK
        ( REGEXP_LIKE(PW, '^(?=.*[a-z])
                            (?=.*[A-Z])(?=.*[0-9!@#$%^&*()-_+=])
                            (?!.*[^\w!@#$%^&*()-_+=])')
                            AND LENGTH(PW) BETWEEN 10 AND 16),
    NAME VARCHAR2(20)
        CONSTRAINT MI_NA_NN NOT NULL
        CONSTRAINT MI_NA_CK CHECK (REGEXP_LIKE(NAME, '^[가-힣]+$')),
    TEL VARCHAR2(20)
        CONSTRAINT MI_TE_NN NOT NULL
--         CONSTRAINT MI_TE_CK

);