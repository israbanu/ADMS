-- CREATE TABLE
CREATE TABLE student_string (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO student_string VALUES (1, 'Meena');
INSERT INTO student_string VALUES (2, 'Rahul');
INSERT INTO student_string VALUES (3, 'Suresh');

COMMIT;

-- DISPLAY TABLE
SELECT * FROM student_string;

-- 1. UPPER
SELECT UPPER(name) AS uppercase
FROM student_string;

-- 2. LOWER
SELECT LOWER(name) AS lowercase
FROM student_string;

-- 3. INITCAP
SELECT INITCAP(name) AS capitalized
FROM student_string;

-- 4. LENGTH
SELECT name, LENGTH(name) AS length
FROM student_string;

-- 5. SUBSTR
SELECT name, SUBSTR(name, 1, 3) AS substring
FROM student_string;

-- 6. CONCAT
SELECT CONCAT(name, ' CS') AS fullname
FROM student_string;

-- 7. INSTR
SELECT name, INSTR(name, 'a') AS position
FROM student_string;

-- 8. REPLACE
SELECT name, REPLACE(name, 'a', 'o') AS replaced
FROM student_string;

-- 9. TRIM
SELECT TRIM('  Oracle Database  ') AS trimmed
FROM DUAL;

-- 10. LPAD
SELECT LPAD(name, 10, '*') AS left_padding
FROM student_string;

-- 11. RPAD
SELECT RPAD(name, 10, '*') AS right_padding
FROM student_string;

-- 12. REVERSE
SELECT REVERSE(name) AS reversed
FROM student_string;
