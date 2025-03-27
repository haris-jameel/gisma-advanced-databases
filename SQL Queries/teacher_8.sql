--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('TEACHER','STUDENT') DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK3kv6k1e64a9gylvkn3gnghc2q` (`email`)
);

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` VALUES (2,'Haslehorst 1','zia@mailinator.com','Zia','+493131341','TEACHER','INACTIVE'),(3,'KirchoffStrase 1','usman@mailinator.com','Usman','+4913434134','TEACHER','ACTIVE'),(4,'Hannover','faisal@mailinator.com','Faisal Khan','+4913432134','TEACHER','ACTIVE'),(5,'Hamburg','shahzaib@mailinator.com','Shahzaib','+49341343114','TEACHER','ACTIVE');

select * from teacher