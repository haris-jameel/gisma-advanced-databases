--
-- Table structure for table `student_quiz_attempt`
--

DROP TABLE IF EXISTS `student_quiz_attempt`;

CREATE TABLE `student_quiz_attempt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quiz_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `total_score` int NOT NULL,
  `student_score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK19hjtv8wucanpaa28nffq578v` (`quiz_id`),
  KEY `FKilfy7fxklg09oqxyvi0vli9o5` (`student_id`),
  CONSTRAINT `FK19hjtv8wucanpaa28nffq578v` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  CONSTRAINT `FKilfy7fxklg09oqxyvi0vli9o5` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) 

--
-- Dumping data for table `student_quiz_attempt`
--

INSERT INTO `student_quiz_attempt` VALUES (1,2,1,2,1),(3,13,6,2,1),(4,2,6,2,1);

select * from student_quiz_attempt