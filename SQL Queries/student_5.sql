--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('TEACHER','STUDENT') DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKfe0i52si7ybu0wjedj6motiim` (`email`)
) 

--
-- Dumping data for table `student`
--

INSERT INTO `student` VALUES (1,'maselake 11','usman@mailinator.com','usman','+4912423423421','STUDENT','ACTIVE'),(4,'Rathaus 21','faiza@mailinator.com','Shahzaib','+4912457629607','STUDENT','ACTIVE'),(5,'Munich','rajesh@mailinator.com','Rajesh','+491245763521','STUDENT','INACTIVE'),(6,'Duseldorf','khizer@mailinator.com','Khizer','+49121241343','STUDENT','INACTIVE');

select * from student

-- get all sutdents with their courses
SELECT s.id, s.name, s.email, c.name AS course_name
FROM student s
JOIN student_course sc ON s.id = sc.student_id
JOIN course c ON sc.course_id = c.id;

-- get courses taken by specific students
SELECT c.id, c.name AS course_name, c.description
FROM course c
JOIN student_course sc ON c.id = sc.course_id
WHERE sc.student_id = 4;

-- get students enrolled in specific course
SELECT s.id, s.name, s.email
FROM student s
JOIN student_course sc ON s.id = sc.student_id
WHERE sc.course_id = 3;