
DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

--
-- Dumping data for table `course`
--

INSERT INTO `course` 
VALUES 
(1,'Mathematics','Math'),
(3,'Java 17','Java'),
(4,'Study of SQL and No SQL Databases','Database'),
(5,'Study of data structres','DataStructures'),
(6,'Machine Learning','Aritifical Intelligence');

select * from course c 

-- get list of students enrolled in each course
SELECT 
    COUNT(sc.student_id) AS student_count, 
    c.name AS course_name
FROM 
    course c
LEFT JOIN 
    student_course sc ON sc.course_id = c.id
GROUP BY 
    c.id, c.name;

-- get list name of teachers and their course
select t.name as teacher_name, c.name as course_name
from course c
join teacher_course tc on tc.course_id = c.id 
join teacher t on t.id = tc.teacher_id;