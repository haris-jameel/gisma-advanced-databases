--
-- Table structure for table `quiz_option`
--

DROP TABLE IF EXISTS `quiz_option`;

CREATE TABLE `quiz_option` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  `correct` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3tn69ehmohhd77gufh49cq4sj` (`question_id`),
  CONSTRAINT `FK3tn69ehmohhd77gufh49cq4sj` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) 

--
-- Dumping data for table `quiz_option`
--

INSERT INTO `quiz_option` 
VALUES 
(1,'when child and parent class has method with same name',3,_binary '\0'),
(2,'when child and parent class has method with same name and same signature',3,_binary '\0'),
(3,'when two or more method has same name with different params',3,_binary ''),
(4,'using abstract classes',4,_binary '\0'),(5,'using interface',4,_binary ''),
(27,'first_name like \'%a%\' ',21,_binary '\0'),(28,'first_name like \'%a\' ',21,_binary '\0'),
(29,'first_name like \'a%\' ',21,_binary ''),(30,'id is = \'1,2,5\'',22,_binary '\0'),
(31,'id in (1,2,5)',22,_binary ''),(32,'first_name like \'%a%\' ',23,_binary '\0'),
(33,'stores different types of objects',23,_binary '\0'),
(34,'stores same type of objects',23,_binary ''),
(35,'contains only single null key',24,_binary ''),
(36,'contains multiple null keys',24,_binary '\0');

select * from quiz_option

-- set profiling for query execution time
SET profiling = 1;

-- query before indexing 
SELECT q.text AS question, qo.text AS correct_answer
FROM question q
JOIN quiz_option qo ON q.id = qo.question_id
WHERE qo.correct = 1
ORDER BY q.id;

-- query takes 0.0028145 sec before indexing 
SHOW PROFILES;

-- create indexes
CREATE INDEX idx_quiz_option_question_id ON quiz_option(question_id);
CREATE INDEX idx_quiz_option_correct ON quiz_option(correct);
CREATE INDEX idx_quiz_option_question_correct ON quiz_option(question_id, correct);

-- set profile
SET profiling = 1;

-- execute query after indexing 
SELECT q.text AS question, qo.text AS correct_answer
FROM question q
JOIN quiz_option qo ON q.id = qo.question_id
WHERE qo.correct = 1
ORDER BY q.id;

-- query takes now 0.00046725 which is lesser than before indexing
SHOW PROFILES;