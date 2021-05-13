CREATE DATABASE school;
use school;

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