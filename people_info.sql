create database people_education;
show databases;
use people_education;
create table people_info
(name varchar(255), age INT, high_school_attended varchar(255), height float);

create table school_info
(school_name varchar(255), zip_code INT);

create table school_mascot
(school_name varchar(255), school_mascot varchar(255));

drop table school_mascot;

-- Inserting data into people_info table
INSERT INTO people_info (name, age, high_school_attended, height)
VALUES
    ('John Doe', 25, 'ABC High School', 1.75),
    ('Jane Smith', 22, 'XYZ High School', 1.68),
    ('Michael Johnson', 27, 'PQR High School', 1.82),
    ('Emily Brown', 23, 'LMN High School', 1.60);

-- Inserting data into school_info table
INSERT INTO school_info (school_name, zip_code)
VALUES
    ('ABC High School', '12345'),
    ('XYZ High School', '67890'),
    ('PQR High School', '54321'),
    ('LMN High School', '98765');





