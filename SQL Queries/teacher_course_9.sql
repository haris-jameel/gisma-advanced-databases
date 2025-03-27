--
-- Table structure for table `teacher_course`
--

DROP TABLE IF EXISTS `teacher_course`;

CREATE TABLE `teacher_course` (
  `teacher_id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  KEY `FKp8bco6842vkqh13y4759ib7tk` (`course_id`),
  KEY `FKaleldsg7yww5as540ld8iwghe` (`teacher_id`),
  CONSTRAINT `FKaleldsg7yww5as540ld8iwghe` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FKp8bco6842vkqh13y4759ib7tk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
)

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` VALUES (2,3),(2,4),(3,1),(3,3),(4,5),(4,6),(5,3),(5,6);

select * from teacher_course

-- get all teachers with course
SELECT t.id, t.name, t.email, c.name AS course_name
FROM teacher t
JOIN teacher_course tc ON t.id = tc.teacher_id
JOIN course c ON tc.course_id = c.id;

-- get courses assigned to specific teacher
SELECT c.id, c.name AS course_name, c.description
FROM course c
JOIN teacher_course tc ON c.id = tc.course_id
WHERE tc.teacher_id = 2;

-- get teacher teaching specific course
SELECT t.id, t.name, t.email
FROM teacher t
JOIN teacher_course tc ON t.id = tc.teacher_id
WHERE tc.course_id = 4;

--  Get Number of Courses Assigned to Each Teacher
SELECT t.id, t.name, COUNT(tc.course_id) AS total_courses
FROM teacher t
LEFT JOIN teacher_course tc ON t.id = tc.teacher_id
GROUP BY t.id, t.name;