CREATE TABLE teachers (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    first_name varchar(25) NOT NULL,
    last_name varchar(50),
    school varchar(50) NOT NULL,
    hire_date date,
    salary numeric
    );
    
INSERT INTO teachers (id,first_name, last_name, school, hire_date, salary)
    VALUES (1,'Janet', 'Smith', 'MIT', '2011-10-30', 36200),
           (2,'Lee', 'Reynolds', 'MIT', '1993-05-22', 65000),
           (3,'Samuel', 'Cole', 'Cambridge University', '2005-08-01', 43500),
           (4,'Samantha', 'Bush', 'Cambridge University', '2011-10-30', 36200),
           (5,'Betty', 'Diaz', 'Cambridge University', '2005-08-30', 43500),
           (6,'Kathleen', 'Roush', 'MIT', '2010-10-22', 38500),
           (7,'James', 'Diaz', 'Harvard University', '2003-07-18', 61000),
           (8,'Zack', 'Smith', 'Harvard University', '2000-12-29', 55500),
           (9,'Luis', 'Gonzales', 'Standford University', '2002-12-01', 50000),
           (10,'Frank', 'Abbers', 'Standford University', '1999-01-30', 66000);
           
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
    VALUES ('Samuel', 'Abbers', 'Standford University', '2006-01-30', 32000),
           ('Jessica', 'Abbers', 'Standford University', '2005-01-30', 33000),
           ('Tom', 'Massi', 'Harvard University', '1999-09-09', 39500),
           ('Esteban', 'Brown', 'MIT', '2007-01-30', 36000),
           ('Carlos', 'Alonso', 'Standford University', '2001-01-30', 44000);
           
           
           
           
CREATE TABLE courses (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name varchar(20),
    teachers_id INT,
    total_students INT
    );
    
INSERT INTO courses (name, teachers_id, total_students)
    VALUES  ('Calculus', 2, 20),
            ('Physics', 2, 10),
            ('Calculus', 1, 30),
            ('Computer Science', 1, 20),
            ('Politic', 13, 15),
            ('Algebra', 2, 10),
            ('Algebra', 13, 30),
            ('Computer Science', 10, 35),
            ('Life Science', 11, 20),
            ('Chemistry', 9, 22),
            ('Chemistry', 8, 16),
            ('Calculus', 5, 19),
            ('Politic', 4, 17),
            ('Biology', 6, 22),
            ('Physics', 3, 29),
            ('Biology', 8, 28),
            ('Calculus', 12, 34),
            ('Physics', 13, 34),
            ('Biology', 14, 25),
            ('Calculus', 15, 20);


soalppt
SELECT * from (SELECT * FROM teachers
INNER JOIN courses on courses.teachers_id = teachers.id
order by teachers.salary DESC) as combi
group BY combi.name
order by combi.name asc;

c11
select * from (select * from teachers order by salary DESC)
group by school
order by salary desc;

c12
select * from (select * from teachers order by salary DESC)
where school='Standford University'
group by school;

c21
SELECT teachers.first_name,teachers.last_name,courses.name FROM teachers
INNER JOIN courses on courses.teachers_id = teachers.id
ORDER BY teachers.id ASC;

SELECT teachers.school, courses.name FROM teachers 
INNER JOIN courses on courses.teachers_id = teachers.id
order by teachers.school ASC;

c22
SELECT teachers.school, count(courses.name) as total_courses from teachers 
INNER JOIN courses on courses.teachers_id = teachers.id
GROUP by teachers.school;

c23
select teachers.first_name,teachers.last_name, SUM(courses.total_students) as total_stud from teachers
inner join courses on courses.teachers_id = teachers.id
group by teachers.id;

c24
select teachers.first_name,teachers.last_name, COUNT(courses.name) as total_courses from teachers
inner join courses on courses.teachers_id = teachers.id
group by teachers.id;