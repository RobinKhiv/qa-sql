-- School database exercise
CREATE DATABASE school;
use school;

-- 1) Create a database for a school. It should include at least three tables - students, classes, enrolments

DROP TABLE IF EXISTS enrollment;
DROP TABLE IF EXISTS class;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
    student_id INTEGER NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) DEFAULT 'John',
    last_name VARCHAR(255) DEFAULT 'Smith',
    age INTEGER DEFAULT 0,
    PRIMARY KEY(student_id)
);

CREATE TABLE class (
    class_id INTEGER NOT NULL AUTO_INCREMENT,
    subject VARCHAR(255) NOT NULL,
    description VARCHAR(255) DEFAULT 'none',
    level INTEGER DEFAULT 0,
    PRIMARY KEY (class_id)
);

CREATE TABLE enrollment (
    enrollment_id INTEGER NOT NULL AUTO_INCREMENT,
    fk_student_id INTEGER NOT NULL,
    fk_class_id INTEGER NOT NULL,
    PRIMARY KEY (enrollment_id),
    FOREIGN KEY (fk_student_id)
        REFERENCES student(student_id),
    FOREIGN KEY (fk_class_id) 
        REFERENCES class(class_id)
);

-- 2) You should insert at least 3 students and classes into your tables.
INSERT INTO student (first_name, last_name, age)
VALUES 
    ('Robbie', 'Smith', 22),
    ('Rob', 'Doe', 23),
    ('Robi', 'Rob', 24);


INSERT INTO class (subject, description, level)
VALUES 
    ('Database Design', 'Learn all about making a ERD model', 1),
    ('Database Manipulation Language', 'Learn to manipulate', 2),
    ('Database Query Language', 'Learn how to query', 1);

-- 3) Each student should be enrolled in at least 2 classes.
INSERT INTO enrollment (fk_student_id, fk_class_id)
VALUES
    (1,2),
    (1,1),
    (2,1),
    (2,3),
    (3,2),
    (3,1);

-- 4) Use joins to find out which classes they should attend.
SELECT s.first_name, s.last_name, c.subject  from enrollment e 
    JOIN class c ON c.class_id = e.fk_class_id  
    JOIN student s ON s.student_id = e.fk_student_id; 