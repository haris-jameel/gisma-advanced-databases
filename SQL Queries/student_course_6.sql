--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;

CREATE TABLE `student_course` (
  `student_id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`),
  KEY `FKejrkh4gv8iqgmspsanaji90ws` (`course_id`),
  CONSTRAINT `FKejrkh4gv8iqgmspsanaji90ws` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKq7yw2wg9wlt2cnj480hcdn6dq` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) 

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` VALUES (4,1),(4,3),(5,3),(5,4),(6,5),(6,6);

select * from student_course