/*
    다대다 관게
    1. 2개의 테이블을 직접 관계 짓는 것은 불가능하다.
    2. 다대다 관계를 가지는 2개의 테이블과 연결될 중간 테이블이 필요하다.
    3. 일대다 관계를 2개 만들면 다대다 관계가 된다.

*/
CREATE TABLE STUDENT_T (
    STUDENT_NO NUMBER             NOT NULL PRIMARY KEY,
    NAME       VARCHAR2(100 BYTE) NOT NULL,
    GRADE      NUMBER             NOT NULL,
    CLASS      NUMBER             NOT NULL,
    NUM        NUMBER             NOT NULL
);

CREATE TABLE SUBJECT_T (
    SUBJECT_NO   NUMBER             NOT NULL PRIMARY KEY,
    SUBJECT_NAME VARCHAR2(100 BYTE) NOT NULL
);

CREATE TABLE ENROLL_T (
    ENROLL_NO    NUMBER NOT NULL PRIMARY KEY,
    STUDENT_NO   NUMBER             REFERENCES STUDENT_T(STUDENT_NO) ON DELETE CASCADE, -- 학생이 지워지면 수강신청도 지워진다.
    SUBJECT_NO   NUMBER             REFERENCES SUBJECT_T(SUBJECT_NO) ON DELETE SET NULL  --과목이 지워지면 수강신청에서 과목번호만 지운다.
    
);

DROP TABLE ENROLL_T;
DROP TABLE SUBJECT_T;
DROP TABLE STUDENT_T

