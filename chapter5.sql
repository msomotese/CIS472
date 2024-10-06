create database chapter5;
use chapter5;

CREATE TABLE student
(ID	varchar(5),
name	varchar(20) not null, 
dept_name varchar(20), 
tot_cred int);

CREATE TABLE course
(ID	varchar(5),
course_name	varchar(20) not null, 
dept_name varchar(20));

INSERT INTO student (id, name, dept_name, tot_cred) values ('44553', 'Peltier', 'Physics', 56);
INSERT INTO student (id, name, dept_name, tot_cred) values ('45678', 'Levy', 'Physics', 46);
INSERT INTO student (id, name, dept_name, tot_cred) values ('54321', 'Williams', 'Comp. Sci.', 54);
INSERT INTO student (id, name, dept_name, tot_cred) values ('55739', 'Sanchez', 'Music', 38);
INSERT INTO student (id, name, dept_name, tot_cred) values ('70557', 'Snow', 'Physics', 0);
INSERT INTO student (id, name, dept_name, tot_cred) values ('55740', 'Jacobs', 'Music', 42);


INSERT INTO course (id, course_name, dept_name) values ('12345', 'Language Arts', 'English');
INSERT INTO course (id, course_name, dept_name) values ('12346', 'European Literature', 'English');
INSERT INTO course (id, course_name, dept_name) values ('22345', 'Calculus', 'Math');
INSERT INTO course (id, course_name, dept_name) values ('32345', 'Calculus 2', 'Math');
INSERT INTO course (id, course_name, dept_name) values ('42345', 'Calculus 3', 'Math');
INSERT INTO course (id, course_name, dept_name) values ('24345', 'Spanish', 'Foreign Language');


SELECT * FROM student;
SELECT * FROM course;


DELIMITER $$

CREATE FUNCTION dept_count (dept_name varchar(20))
RETURNS int
DETERMINISTIC
BEGIN
DECLARE d_count int;
SELECT count(*) INTO d_count FROM student WHERE student.dept_name = dept_name;
RETURN (d_count);
END;  $$


CREATE FUNCTION course_count (dept_name varchar(20))
RETURNS int
DETERMINISTIC
BEGIN
DECLARE c_count int;
SELECT count(*) INTO c_count FROM course WHERE course.dept_name = dept_name;
RETURN (c_count);
END;  $$

DELIMITER ;

SELECT dept_count('Music');
SELECT course_count('Math');
