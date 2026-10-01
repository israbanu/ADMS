CREATE TABLE students (
    sid NUMBER,
    sname VARCHAR2(30)
);

INSERT INTO students VALUES (101, 'Riya');
INSERT INTO students VALUES (102, 'Priya');

DELETE FROM students
WHERE sid = 102;

ROLLBACK;

SELECT * FROM students;
