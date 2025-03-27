--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `correct_answer` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `quiz_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb0yh0c1qaxfwlcnwo9dms2txf` (`quiz_id`),
  CONSTRAINT `FKb0yh0c1qaxfwlcnwo9dms2txf` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
)
--
-- Dumping data for table `question`
--

INSERT INTO `question` VALUES (3,'when two or more method has same name with different params','What is Overloading',2),(4,'Using interface','How can we acheive 100% abstraction in Java',2),(21,'first_name like \'a%\' ','Get records which first name column values starts with a',12),(22,'id in (1,2,5)','Get list of records which has the ids 1,2,5',12),(23,'stores same type of objects','What is an array?',13),(24,'contains only single null key','Hashmap contains null keys',13);

select * from question

-- get list of question with their possible answers and identfier of correct answer
select q.text as quiz_questions, qo.text as possible_answer, qo.correct as is_correct_answer
from question q 
join quiz_option qo on qo.question_id = q.id


-- quiz with their respective questions
SELECT q.id AS question_id, q.text AS question_text, qu.title AS quiz_title
FROM question q
JOIN quiz qu ON q.quiz_id = qu.id;

-- Find all correct options for each question
SELECT q.text AS question, qo.text AS correct_option
FROM quiz_option qo
JOIN question q ON qo.question_id = q.id
WHERE qo.correct = 1;

-- Add an Index on quiz_id in question Table
CREATE INDEX idx_question_quiz_id ON question(quiz_id);

