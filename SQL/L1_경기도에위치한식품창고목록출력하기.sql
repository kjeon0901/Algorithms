/*
https://school.programmers.co.kr/learn/courses/30/lessons/131114
문제 설명
다음은 식품창고의 정보를 담은 FOOD_WAREHOUSE 테이블입니다. FOOD_WAREHOUSE 테이블은 다음과 같으며 WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, TLNO, FREEZER_YN는 창고 ID, 창고 이름, 창고 주소, 전화번호, 냉동시설 여부를 의미합니다.

Column name	Type	Nullable
WAREHOUSE_ID	VARCHAR(10)	FALSE
WAREHOUSE_NAME	VARCHAR(20)	FALSE
ADDRESS	VARCHAR(100)	TRUE
TLNO	VARCHAR(20)	TRUE
FREEZER_YN	VARCHAR(1)	TRUE
문제
FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성해주세요. 이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 결과는 창고 ID를 기준으로 오름차순 정렬해주세요.

예시
FOOD_WAREHOUSE 테이블이 다음과 같을 때

WAREHOUSE_ID	WAREHOUSE_NAME	ADDRESS	TLNO	FREEZER_YN
WH0001	창고_경기1	경기도 안산시 상록구 용담로 141	031-152-1332	Y
WH0002	창고_충북1	충청북도 진천군 진천읍 씨제이로 110	043-623-9900	Y
WH0003	창고_경기2	경기도 이천시 마장면 덕평로 811	031-221-7241	NULL
WH0004	창고_경기3	경기도 김포시 대곶면 율생중앙로205번길	031-671-1900	N
WH0005	창고_충남1	충청남도 천안시 동남구 광덕면 신덕리1길 9	041-876-5421	Y
SQL을 실행하면 다음과 같이 출력되어야 합니다.

WAREHOUSE_ID	WAREHOUSE_NAME	ADDRESS	FREEZER_YN
WH0001	창고_경기1	경기도 안산시 상록구 용담로 141	Y
WH0003	창고_경기2	경기도 이천시 마장면 덕평로 811	N
WH0004	창고_경기3	경기도 김포시 대곶면 율생중앙로205번길	N
*/


SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IFNULL(FREEZER_YN, 'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE "경기도%"
ORDER BY WAREHOUSE_ID ASC


/*
순간 IFNULL 함수를 헷갈려서 ISNULL로 쓰는 바람에 
---------------------------------------------------------------------
SQL 실행 중 오류가 발생하였습니다.
Incorrect parameter count in the call to native function 'ISNULL'
---------------------------------------------------------------------
라는 에러가 떴다. 
mysql에는 ISNULL()이라는 함수는 없고, ~~~ IS NULL 로 앞의 ~~~가 NULL인지 아닌지를 판별해 참과 거짓을 구분해줄 수는 있다. 
*/
