-- CREATE TABLE

CREATE TABLE course (
    course_id NUMBER,
    course_name VARCHAR2(30)
);

CREATE TABLE learner (
    learner_id NUMBER,
    learner_name VARCHAR2(30),
    email VARCHAR2(50),
    age NUMBER,
    course_id NUMBER
);

-- INSERT VALUES

INSERT INTO course VALUES (201, 'Information Technology');
INSERT INTO course VALUES (202, 'Business Management');

INSERT INTO learner VALUES (1, 'Meena', 'meena@gmail.com', 19, 201);
INSERT INTO learner VALUES (2, 'Rahul', 'rahul@gmail.com', 22, 202);

COMMIT;

-- PRIMARY KEY

ALTER TABLE learner
ADD CONSTRAINT pk_learner
PRIMARY KEY (learner_id);

-- UNIQUE

ALTER TABLE learner
ADD CONSTRAINT uq_learner_email
UNIQUE (email);

-- FOREIGN KEY

ALTER TABLE learner
ADD CONSTRAINT fk_learner_course
FOREIGN KEY (course_id)
REFERENCES course(course_id);

-- CHECK

ALTER TABLE learner
ADD CONSTRAINT chk_learner_age
CHECK (age >= 18);

-- SELECT

SELECT * FROM learner;
