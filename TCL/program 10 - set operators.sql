Sure. Here is the **changed Oracle SQL program** with different table names, student names, and values.

```sql
-- CREATE TABLES
CREATE TABLE studentC (
    id NUMBER,
    name VARCHAR2(30)
);

CREATE TABLE studentD (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO studentC VALUES (1, 'Kumar');
INSERT INTO studentC VALUES (2, 'Priya');
INSERT INTO studentC VALUES (3, 'Ravi');

INSERT INTO studentD VALUES (2, 'Priya');
INSERT INTO studentD VALUES (3, 'Ravi');
INSERT INTO studentD VALUES (4, 'Anu');

COMMIT;

-- DISPLAY BOTH TABLES
SELECT * FROM studentC;
SELECT * FROM studentD;

-- 1. UNION
SELECT * FROM studentC
UNION
SELECT * FROM studentD;

-- 2. UNION ALL
SELECT * FROM studentC
UNION ALL
SELECT * FROM studentD;

-- 3. INTERSECT
SELECT * FROM studentC
INTERSECT
SELECT * FROM studentD;

-- 4. MINUS
SELECT * FROM studentC
MINUS
SELECT * FROM studentD;
```

### Expected results

* **UNION** → All unique records from both tables.
* **UNION ALL** → All records, including duplicates.
* **INTERSECT** → Common records in both tables: `(2, Priya)`, `(3, Ravi)`.
* **MINUS** → Records present in `studentC` but not in `studentD`: `(1, Kumar)`.
