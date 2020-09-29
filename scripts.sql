CREATE TABLE DEPT (
DEPTNO NUMBER(4) NOT NULL,
DNAME VARCHAR2(20),
LOC VARCHAR2(20),
INFO VARCHAR2(40),
PRIMARY KEY (DEPTNO)
);


INSERT INTO DEPT (DEPTNO, DNAME, LOC, INFO) VALUES
(10, 'ACCOUNTING', 'NEW YORK', NULL);
INSERT INTO DEPT (DEPTNO, DNAME, LOC, INFO) VALUES
(20, 'RESEARCH', 'DALLAS', NULL);
INSERT INTO DEPT (DEPTNO, DNAME, LOC, INFO) VALUES
(30, 'SALES', 'CHICAGO', NULL); 
INSERT INTO DEPT (DEPTNO, DNAME, LOC, INFO) VALUES
(40, 'OPERATIONS', 'BOSTON', NULL);


CREATE TABLE EMP (
empno NUMBER(6) NOT NULL,
ename VARCHAR2(20),
job VARCHAR2(20),
mgr NUMBER(6),
hiredate date,
sal NUMBER(7,2),
comm NUMBER(7,2),
deptno NUMBER(4) REFERENCES DEPT(DEPTNO),
PRIMARY KEY (empno));


INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-09-12', 3000.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7900, 'JAMES', 'CLERK', 7698, '1981-03-12', 950.00, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7902, 'FORD', 'ANALYST', 7566, '1981-03-12', 3000.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);


INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7369, 'SMITH', 'CLERK', 7902, TO_DATE('1980-12-17','YYYY-MM-DD'), 800.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, TO_DATE('1981-02-20','YYYY-MM-DD'), 1600.00, 300.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7521, 'WARD', 'SALESMAN', 7698, TO_DATE('1981-02-22','YYYY-MM-DD'), 1250.00, 500.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7566, 'JONES', 'MANAGER', 7839, TO_DATE('1981-04-02','YYYY-MM-DD'), 2975.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, TO_DATE('1981-09-28','YYYY-MM-DD'), 1250.00, 1400.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7698, 'BLAKE', 'MANAGER', 7839, TO_DATE('1981-05-01','YYYY-MM-DD'), 2850.00, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7782, 'CLARK', 'MANAGER', 7839, TO_DATE('1981-06-09','YYYY-MM-DD'), 2450.00, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('1982-09-12','YYYY-MM-DD'), 3000.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7839, 'KING', 'PRESIDENT', NULL, TO_DATE('1981-11-17','YYYY-MM-DD'), 5000.00, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('1981-09-08','YYYY-MM-DD'), 1500.00, 0.00, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7876, 'ADAMS', 'CLERK', 7788, TO_DATE('1983-01-12','YYYY-MM-DD'), 1100.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7900, 'JAMES', 'CLERK', 7698, TO_DATE('1981-03-12','YYYY-MM-DD'), 950.00, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7902, 'FORD', 'ANALYST', 7566, TO_DATE('1981-03-12','YYYY-MM-DD'), 3000.00, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES  (7934, 'MILLER', 'CLERK', 7782, TO_DATE('1982-01-23','YYYY-MM-DD'), 1300.00, NULL, 10);

--1.	Выберите всю информацию из таблицы DЕРT (отделы).
SELECT * FROM DEPT;
--2.Выберите всю информацию из таблицы ЕМР (сотрудники).
SELECT * FROM EMP;
--3.Вывести информацию о служащих, которые не имеет комиссионных.
SELECT * FROM EMP WHERE COMM IS NULL OR COMM = 0;
--4. Определить служащих, зачисленных на работу между двумя задаваемыми датами.
SELECT * FROM EMP WHERE HIREDATE BETWEEN TO_DATE('1981-01-15','YYYY-MM-DD') AND TO_DATE('1981-07-23','YYYY-MM-DD');
--5. Вывести номера, имена, должности и зарплаты служащих, которые в качестве управляющего получают больше 2000 или в качестве клерка – больше 1000. 
SELECT  EMPNO, ENAME, JOB, SAL FROM EMP WHERE (JOB = 'CLERK' AND SAL > 1000) OR (JOB ='MANAGER' AND SAL > 2000);
--6.Вывести информацию о сотрудниках в виде одной фразы: «Отдел DNAME номер DEPTNO расположен в городе LOC».
SELECT 'Отдел', DEPTNO, 'номер', DNAME, 'расположен в городе', LOC FROM DEPT;
--7. Выдайте имена всех служащих и их годовой доход (годовая зарплата плюс премия (на базе комиссионных)), используйте заменитель имен столбцов.
SELECT ENAME, (SAL + COMM)*12 AS SAl1 FROM EMP WHERE COMM IS NOT NULL 
UNION SELECT ENAME, (SAL*12) AS SAL1 FROM EMP WHERE COMM IS NULL;
--8.Определите первую дату зачисления сотрудников на работу
SELECT MIN(HIREDATE) FROM EMP;
--9. Определите, сколько должностей существует в компании.
SELECT COUNT(DISTINCT JOB) FROM EMP;
--10. Выдайте имена и зарплату служащих, работающих в Далласе. Отсортируйте результат по возрастанию зарплаты.
SELECT ENAME, SAL FROM EMP 
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE LOC  = 'DALLAS'
ORDER BY SAL;
--11. По каждой дате посчитайте количество клерков, зачисленных в этот день на работу.
SELECT HIREDATE, COUNT(JOB) FROM EMP 
WHERE JOB = 'CLERK'
GROUP BY HIREDATE;
--12.Найдите должности и их максимальные зарплаты, вывести только те должности,  максимальная зарплата которых превышает 2000.
SELECT DISTINCT JOB, MAX(SAL) FROM EMP 
GROUP BY JOB
HAVING MAX(SAL)> 2000;
--13.По городам посчитайте количество служащих работающих в компании, и выдайте только те строки,  где количество меньше 2.
SELECT LOC, COUNT(EMPNO) FROM DEPT
LEFT JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY LOC
HAVING COUNT(EMPNO)<2;
--14. Выдайте пары имен служащих с их номерами, которые работают в одном отделе на одинаковых должностях, указав  номер отдела и должность.
-- Формат вывода результата: номер отдела, должность, номер сотрудника №1, имя сотрудника № 1, номер сотрудника № 2, имя сотрудника № 2.
SELECT E1.DEPTNO, E1.JOB, E1.EMPNO, E1.ENAME, E2.EMPNO, E2.ENAME
FROM EMP E1,EMP E2
WHERE E1.EMPNO< E2.EMPNO AND E1.DEPTNO = E2.DEPTNO AND E1.JOB = E2.JOB;
--15. Выведите всю информацию об отделе, в котором нет служащих.
SELECT * FROM DEPT ONE WHERE ONE.DEPTNO = 
(SELECT DEPNO FROM DEPT  TWO  
LEFT JOIN EMP ON TWO.DEPTNO = EMP.DEPTNO
GROUP BY TWO.DEPTNO
HAVING COUNT(EMPNO)=0
)
--16. Найти служащих, получающих меньше всех в компании. 
SELECT * FROM EMP WHERE SAL = (SELECT MIN(SAL) FROM EMP);
--17. Найти служащих, получающих больше всех по своей должности. Упорядочить по убыванию значений зарплаты.
SELECT* FROM EMP  WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY JOB)
ORDER BY SAL DESC;
--18. Найти город, суммарная выплата зарплаты по которому максимальна в формате: город, суммарная зарплата.
SELECT LOC, SUM(SAL) FROM DEPT
INNER JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY LOC
HAVING SUM(SAL) = 
(SELECT MAX(SUM(SAL)) 
FROM DEPT
INNER JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY LOC);

--
--1.Напишіть та виконайте команди, що створюють додаткові таблиці для бази даних, 
--що використовувалася в попередній роботі.
CREATE TABLE GOOD (
GOODNO NUMBER(4) NOT NULL,
NAME VARCHAR2(20),
PRICE NUMBER(6,2),
QUANTITY NUMBER(4),
PRODUCER VARCHAR2(40),
DEPTNO NUMBER(4) REFERENCES DEPT(DEPTNO),
DESCRIPTION CHAR(50),
PRIMARY KEY (GOODNO)
);
CREATE TABLE SALE (
SALENO NUMBER(4) NOT NULL,
CHECK_NO NUMBER(6),
GOODNO NUMBER(4) REFERENCES GOOD(GOODNO),
QUANTITY NUMBER(4),
PRIMARY KEY (SALENO)
);

--Завдання 2:. Заповніть Ваші таблиці  
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (1, 'TV/Philips', 5000, 3, 'Philips', 30, ' ');
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (2, 'Sony_TV', 3000, 9, 'Sony', 40, '');
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (3, 'A560', 2500, 8, 'Canon', 40, '');
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (4, 'A480', 2000, 4, 'Canon', 30, '');
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (5, 'AX240', 4000, 5, 'Canon', 30, '');
INSERT INTO GOOD (GOODNO, NAME, PRICE, QUANTITY, PRODUCER, DEPTNO , DESCRIPTION) VALUES (6, 'Monitor_LG', 1500, 2, 'LG', 30, '');

INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (1, 111111, 2, 1);
INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (2, 111111, 3, 2);
INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (3, 111112, 3, 1);
INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (4, 111112, 4, 1);
INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (5, 111112, 3, 1);
INSERT INTO SALE(SALENO, CHECK_NO , GOODNO, QUANTITY) VALUES (6, 111113, 2, 1);

--Завдання 3: Командою Update збільшіть на 10 відсотків зарплату співробітників, які мають посаду «Клерк».
UPDATE EMP SET COMM = COMM*1.1 WHERE JOB = 'CLERK';
--Завдання 4: Командою Update збільшіть на 20 відсотків зарплату співробітників з Нью-Йорка.
UPDATE EMP SET SAL = SAL*1.2 WHERE DEPTNO  IN (SELECT DEPTNO FROM DEPT WHERE LOC = 'NEW YORK');
--Завдання 5: Призначте найстарішого співробітника на посаду менеджера.
UPDATE EMP SET JOB = 'MANAGER' WHERE DEPTNO IN(SELECT DEPTNO FROM EMP WHERE JOB IN(SELECT MIN(HIREDATE) FROM EMP)));
--Завдання 6: Видаліть відділи, в яких немає співробітників.
DELETE FROM DEPT WHERE
--Завдання 7: Видаліть співробітника, який був зарахований на посаду клерка найостаннішим.
DELETE FROM EMP WHERE (JOB = 'CLERK') AND HIREDATE IN(SELECT MAX(HIREDATE) FROM EMP);
--Завдання 8: У поле INFO таблиці відділів занести інформацію «Відсутні  вільні місця» для всіх відділів, в яких співробітників більш 3-х.
UPDATE DEPT SET INFO = 'Відс. вільні місця' WHERE DEPTNO IN(SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(DEPTNO)>3);







