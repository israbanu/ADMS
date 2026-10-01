
-- CREATE TABLES
CREATE TABLE studentA (
    id NUMBER,
    name VARCHAR2(30)
);

CREATE TABLE studentB (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO studentA VALUES (1, 'deepak');
INSERT INTO studentA VALUES (2, 'goklul');
INSERT INTO studentA VALUES (3, 'Ravi');

INSERT INTO studentB VALUES (2, 'gokul');
INSERT INTO studentB VALUES (3, 'Ravi');
INSERT INTO studentB VALUES (4, 'arun');

COMMIT;

-- DISPLAY BOTH TABLES
SELECT * FROM studentA;
SELECT * FROM studentB;

-- 1. UNION
SELECT * FROM studentA
UNION
SELECT * FROM studentB;

-- 2. UNION ALL
SELECT * FROM studentA
UNION ALL
SELECT * FROM studentB;

-- 3. INTERSECT
SELECT * FROM studentA
INTERSECT
SELECT * FROM studentB;

-- 4. MINUS
SELECT * FROM studentA
MINUS
SELECT * FROM studentB;
