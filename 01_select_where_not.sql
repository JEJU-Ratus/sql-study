-- 전체 고객 목록 보기
SELECT * 
FROM Custormers;

-- n개의 필드를 지정하여 목록 보기
SELECT CustomerName, City 
FROM Customers;

-- 중복 제거하기(국가 목록)
SELECT DISTINCT Country 
FROM Customers;

-- 조건 지정(국가 명 - 글자는 단일 따옴표로.)
SELECT *
FROM Customers
WHERE Country = 'Mexico';

-- M으로 시작하는 국가들, 끝나는 국가들, 중간에 M이 들어가는 국가들.
SELECT *
FROM Customers
WHERE Country LIKE 'M%';
-- WHERE Country LIKE '%M';
-- WHERE Country LIKE '%M%';

-- OR 처럼 국가 명이 Mexico 거나 Germany
SELECT *
FROM Customers
WHERE Country IN ('Mexico','Germany');

-- 조건 지정2(고객 번호 - 숫자는 따옴표를 사용하지 않음)
SELECT *
FROM Customers
WHERE CustomerID = 1;

SELECT *
FROM Customers
WHERE CustomerID > 80;

-- BETWEEN 1 AND 10 : 1~10 의 값.
SELECT *
FROM Customers
WHERE CustomerID BETWEEN 1 AND 10;

-- 조건 지정3(같지 않음 Not)
SELECT *
FROM Customers
WHERE CustomerID <> 1;

-- 금액별 오름차순(ASC는 생략 가능)
SELECT *
FROM Products
ORDER BY Price;

-- 금액별 내림차순
SELECT *
FROM Products
ORDER BY Price DESC;

-- 상품명 내림차순(알파벳은 Z-A, 한글은 ㅎ-ㄱ)
SELECT * 
FROM Products
ORDER BY ProductName DESC;

-- 혼합하여 사용(국가명 오름차순 및 중복 국가명은 내림차순)
SELECT * 
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- 조건 추가AND(국가는 Spain, 고객명은 G로 시작)
SELECT *
FROM Customers
WHERE Country = 'Spain' 
AND CustomerName LIKE 'G%';

-- 여러개의 조건도 추가 가능
FROM Customers
WHERE Country = 'Spain' 
AND CustomerName LIKE 'G%';
AND CustomerID > 50;

-- OR과도 함께 사용 가능(or를 괄호 처리 안하면 And에 CustomerName LIKE 'G%' 가 할당됨)
SELECT * 
FROM Customers
WHERE Country = 'Spain' 
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-- 조건 추가OR(국가명이 Mexico 또는 Germany)
SELECT *
FROM Customers
WHERE Country = 'Mexico'
OR Country = 'Germany';

-- 조건 제외(NOT)
SELECT *
FROM Customers
WHERE NOT Country = 'Spain';

-- 조건 제외(NOT LIKE)
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'A%';


-- 조건 제외(NOT BETWEEN)
SELECT *
FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

-- 조건 제외(NOT IN)
SELECT *
FROM Customers
WHERE Country NOT IN ('Mexico','Germany');

-- 조건 제외(크기 비교)
SELECT *
FROM Customers
WHERE NOT CustomerID > 60;