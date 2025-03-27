--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKce16mrsgeokucc022mpyev7xk` (`course_id`),
  CONSTRAINT `FKce16mrsgeokucc022mpyev7xk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
)

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` 
VALUES 
(2,'OOP',3),
(3,'OOP',3),
(12,'SQL Keywords',4),
(13,'Data Structures',5);

select * from quiz

-- get list of quiz title with questions and their correct answers
select q.text as question, q.correct_answer, qz.title as quiz_title from quiz qz
join question q on q.quiz_id = qz.id

-- list of students attempted quiz and their percentages
select q.title as quiz_name, (sqa.student_score/sqa.total_score)*100 as score_in_percent, s.name 
from quiz q 
join student_quiz_attempt sqa on sqa.quiz_id = q.id
join student s on s.id = sqa.student_id

