/*
    DQL
    1. Data Query Language
    2. 데이터 조회어
    3. 데이터(행, Row)를 조회할 때 사용한다.
    4. DQL을 실행해도 데이터베이스의 변화는 발생하지 않는다.
    5. 형식
        SELECT 조회할칼럼, 조회할칼럼, ...
          FROM 테이블명
         WHERE 조건식
      GROUP BY 그룹화할칼럼, ...
        HAVING 그룹조건식
      ORDER BY 정렬할칼럼 ASC|DESC, 정렬할칼럼 ASC|DESC, ...
       
*/

-- 1. 부서 테이블의 모든 칼럼을 조회하시오.
SELECT DEPT_NO, DEPT_NAME, LOCATION 
  FROM DEPARTMENT_T;

SELECT *   --모든 칼럼을 의미하는 *, 실제 개발할때는 사용 금지
  FROM DEPARTMENT_T;
  
SELECT DEPARTMENT_T.DEPT_NO, DEPARTMENT_T.DEPT_NAME, DEPARTMENT_T.LOCATION
  FROM DEPARTMENT_T;

SELECT D.DEPT_NO, D.DEPT_NAME, D.LOCATION
  FROM DEPARTMENT_T D; --테이블의 별명(ALIAS)을 D로 지정
  
-- 2. 부서 테이블의 모든 칼럼을 조회하시오. 조회할 칼럼명을 '부서번호', '부서명', '위치'로 지정하시오.
SELECT DEPT_NO   AS 부서번호 -- 칼럼의 별명(ALIAS)을 부서번호로 지정
     , DEPT_NAME AS 부서명
     , LOCATION  AS 위치
  FROM DEPARTMENT_T;
  
-- 3. 부서 테이블의 위치 칼럼을 중복을 제거하여 조회하시오.
SELECT DISTINCT LOCATION 
  FROM DEPARTMENT_T;

SELECT LOCATION 
  FROM DEPARTMENT_T
 GROUP BY LOCATION;
  
/*
    주요 조건식 작성 방법
    1. 칼럼 = 값
    2. 칼럼 = BETWEEN 값1 AND 값2 
    3. 칼럼 IN(값1, 값2)
    4. 칼럼 IS NULL
    5. 칼럼 IS NOT NULL
    6. 칼러 LIKE 값
     
*/
