-- 검색(R)
-- * : ALL COLUMN ( DEPTNO, DNAME, LOC )
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- 한 컬럼만 보기( DEPTNO )
SELECT DEPTNO FROM DEPT;
-- 다른 컬럼들도 한 개씩 보기
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;

-- 조건에 맞는 데이터 가져오기
-- WHERE [조건절]: 조건 문법
-- DEPT 테이블에 DNAME(부서이름)이 'SALES'인 데이터를 가져오세연
SELECT DNAME FROM DEPT WHERE DNAME = 'SALES';
-- DEPT 테이블에 DEPTNO가 10인 데이터를 컬럼이(DEPTNO)가져오세여
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE[조건 컬럼] LIKE 'S%'
-- 조건 컬럼에 S로 시작되는 문자열은 모두 가져오기
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

-- EMP 테이블에서 JOB에 J로 시작되는 문자열을 가진 데이터는 모두 가져오기
-- SELECT에 들어가는 컬럼의 위치에 따라 데이터 출력 순서가 바뀜
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';

-- DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함(대소문자 정확하게 해야 됨)
-- 밑에 이런식으론 안 됨
SELECT ENAME, JOB FROM EMP WHERE JOB = 'Manager';
SELECT ENAME, JOB FROM EMP WHERE JOB LIKE 'Ma%';
-- 내장 함수
-- UPPER(문자열) = 대문자로 바꿔줌
-- LOWER(문자열) = 소문자로 바꿔줌
SELECT ENAME, JOB FROM EMP WHERE JOB = UPPER('manager');

-- 정렬 : 오름차순
-- SELECT문 끝에 ORDER BY[컬럼 명] ASC 붙이면 됨 
-- DNAME(부서명)을 오름차순으로 정렬해주세요
SELECT * FROM DEPT ORDER BY DNAME ASC;
-- 오름차순은 ASC 생략 가능
SELECT * FROM DEPT ORDER BY DNAME;

-- 정렬 : 내림차순
-- SELECT문 끝에 ORDER BY[컬럼 명] DESC 붙이면 됨 
-- DNAME(부서명)을 내림차순으로 정렬해주세요
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- 연습문제 
-- EMP 테이블에서 JOB이 'MANAGER'인 애들의 데이터를 뽑아서 
-- ENAME(직원이름)을 대상으로 오름차순으로 정렬해보셈
SELECT * FROM EMP WHERE JOB LIKE 'MANAGER%' ORDER BY ENAME ASC;
SELECT * FROM EMP WHERE JOB = 'MANAGER' ORDER BY ENAME ASC;

-- 연습문제 
-- EMP 테이블에서 JOB이 'CLERK'인 애들의 데이터를 뽑아서
-- ENAME(직원이름)을 대상으로 내림차순으로 정렬해보셈
SELECT * FROM EMP WHERE JOB LIKE 'CLERK%' ORDER BY ENAME DESC;
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC;

-- 도전 과제
-- EMP 테이블에서 JOB이 'CLERK'인 애들의 데이터를 뽑아서
-- ENAME(직원이름), EMPNO(직원 번호) 두 개를 대상으로 내림차순으로 정렬해주세요.
-- 첫 번째 정렬로 이미 정렬이 되고, 두 번째 정렬은 첫 번째 정렬로 같은 이름이 있거나
-- 뭐 여튼 비슷하면 두 번째 정렬로 들어감
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO DESC;
-- 이렇게 오름차순, 내림차순 섞는거 쌉가능
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO;


