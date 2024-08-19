-- 1번 
-- 춘 기술대학교의 학과 이름과 계열을 조회하시오. 
-- 단, 출력 헤더(컬럼명)는 "학과 명", "계열"으로 표시하도록 한다. 
SELECT
	DEPARTMENT_NAME "학과 명",
	CATEGORY 계열
FROM 
	TB_DEPARTMENT;

-- 2 번 
-- 학과의 학과 정원을 다음과 같은 형태로 조회하시오.
SELECT 
	DEPARTMENT_NAME || '의 정원은' || CAPACITY || '명입니다'
FROM 
	TB_DEPARTMENT;

	
 
-- 3번 
-- "국어국문학과" 에 다니는 여학생 중 현재 휴학중인 여학생을 조회하시오. 
-- (국문학과의 학과코드(DEPARTMENT_NO)는 001) 
SELECT
	STUDENT_NAME
FROM 
	TB_STUDENT
WHERE
	DEPARTMENT_NO = '001'
	AND
	SUBSTR(STUDENT_SSN, 8, 1) = '2'
	AND
	ABSENCE_YN = 'Y';

-- 4번  
-- 도서관에서 대출 도서 장기 연체자들을 찾아 이름을 게시하고자 한다. 
-- 그 대상자들의 학번이 다음과 같을 때 대상자들을 찾는 적절한 SQL구문을 작성하시오. 
-- A513079, A513090, A513091, A513110, A513119 
SELECT 
	STUDENT_NAME
FROM 
	TB_STUDENT
WHERE
	STUDENT_NO IN('A513079', 'A513090', 'A513091', 'A513110', 'A513119')
ORDER BY 
	STUDENT_NAME DESC;

-- 5번 
-- 입학 정원이 20명 이상 30명 이하인 학과들의 학과 이름과 계열을 조회하시오.
SELECT
	DEPARTMENT_NAME, CATEGORY	
FROM
	TB_DEPARTMENT
WHERE
	CAPACITY>=20 AND CAPACITY<=30;
	
-- 6번 
-- 춘 기술대학교는 총장을 제외하고 모든 교수들이 소속 학과를 가지고 있다.
-- 그럼 춘 기술대학교 총장의 이름을 알아낼 수 있는 SQL 문장을 작성하시오.
SELECT 
	PROFESSOR_NAME
FROM
	TB_PROFESSOR
WHERE
	DEPARTMENT_NO IS NULL;


-- 7번 
-- 수강신청을 하려고 한다. 선수과목 여부를 확인해야 하는데, 선수과목이 존재하는 과목들은 
-- 어떤 과목인지 과목 번호를 조회하시오.
SELECT
	CLASS_NO
FROM
	TB_CLASS
WHERE
	PREATTENDING_CLASS_NO IS NOT NULL;

-- 8번 
-- 춘 대학에는 어떤 계열(CATEGORY)들이 있는지 조회해 보시오.
SELECT
	DISTINCT CATEGORY
FROM
	TB_DEPARTMENT;

-- 9번 
-- 02학번 전주 거주자들의 모임을 만들려고 한다. 휴학한 사람들은 제외한 재학중인 학생들의 
-- 학번, 이름, 주민번호를 조회하는 구문을 작성하시오.

SELECT
	STUDENT_NO,
	STUDENT_NAME,
	STUDENT_SSN
FROM
	TB_STUDENT
WHERE
	ABSENCE_YN = 'N'
	AND STUDENT_NO LIKE 'A2%'
	AND STUDENT_ADDRESS LIKE '전주%';

-----------------------------------------------------------

-- 1번
-- 영어영문학과(학과코드 002) 학생들의 학번과 이름, 입학년도를 
-- 입학년도가 빠른순으로 표시하는 SQL을 작성하시오.
-- (단, 헤더는 "학번", "이름", "입학년도"가 표시되도록한다.)
SELECT * FROM TB_DEPARTMENT td ;

SELECT
	STUDENT_NO 학번,
	STUDENT_NAME 이름,
	TO_CHAR(ENTRANCE_DATE, 'YYYY-MM-DD') 입학년도
FROM 
	TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO) 
WHERE
	DEPARTMENT_NAME = '영어영문학과';

-- 2번
-- 춘 기술대학교의 교수 증 이름이 세글자가 아닌 교수가 두명 있다고 한다.
-- 그 교수의 이름과 주민번호를 조회하는 SQL을 작성하시오.

SELECT
	PROFESSOR_NAME,
	PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE PROFESSOR_NAME NOT LIKE '___';

-- 3번
-- 춘 기술대학교의 남자 교수들의 이름과 나이를 나이 오름차순으로 조회하시오.
-- (단, 교수 중 2000년 이후 출생자는 없으며 출력 헤더는 "교수이름"으로 한다.
-- 나이는 '만'으로 계산한다.)

SELECT 
	PROFESSOR_NAME, 
	PROFESSOR_SSN 
FROM 
	TB_PROFESSOR;

-- 4번 -- 교수들의 이름 중 성을 제외한 이름만 조회하시오. 
-- 출력 헤더는 "이름"이 찍히도록 한다. -- (성이 2자인 경우의 교수는 없다고 가정)

SELECT 
	SUBSTR(PROFESSOR_NAME, 2)  키미노나마에와
FROM
	TB_PROFESSOR;

-- 5번 
-- 춘 기술대학교의 재수생 입학자를 조회하시오. 
-- (19살에 입학하면 재수를 하지 않은 것!) 

SELECT * FROM TB_STUDENT;

SELECT
	STUDENT_NO,
	STUDENT_NAME 
FROM 
	TB_STUDENT
WHERE
	STUDENT_SSN 












