--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `users`
--
INSERT INTO `users` VALUES (26,'spacebar128@example.com','Nicolas Runolfsson','$2y$13$hFlKaDPQEP75m.ZaHAvD.eMC4NgGxr9L5kCKwiBLCwckWShT2qmkO'),(27,'spacebar43@example.com','Nicolette Bartell','$2y$13$kV2vRMELWm6guwDTzQ.ayeMtvzo.Jfs7eTp175x.u.URJrRQswT0e'),(28,'spacebar84@example.com','Yesenia McKenzie','$2y$13$4d3AapARPyJDf3l/rbJU/ufMxpXHi5.65VCy/tvMaDap0AdciOKwe'),(29,'spacebar136@example.com','Ernie Walsh','$2y$13$4K5evUyGEQoujd./K8OMD.wIQFcWL5iZHBVFBYnWHlPDs7nlFxaMW'),(30,'spacebar123@example.com','Ida Heidenreich','$2y$13$n/PqUd5ekSFcVqA5C09UWOlh1XYjjeFQH6g0cb8VLzx7pnq/wKZu.'),(31,'spacebar72@example.com','Jamarcus Emmerich','$2y$13$NtfYGyi6i8LXFGHoVbX83upEqnQBJy/c9Bpvb6TuyDtRjypLsQfsC'),(32,'spacebar88@example.com','Savion Bartoletti','$2y$13$77HA2IfzIzr3q6fxsIJs6ubSK.3sNhc6Vi3pPA.RPMVUHort0b2cK'),(33,'spacebar166@example.com','Oswald Reinger','$2y$13$3qHGeKzS6FpWLGdRZuCuqeFmbWRREp4qJTKcVOCGo9I1H.B9EZ0ri'),(34,'spacebar192@example.com','Rosella Smitham','$2y$13$Y6VFjpznz07kiKgAaJE8geZYIj2IXuZuaveVBNR1bkGCculmWPxLy'),(35,'spacebar193@example.com','Vinnie Keebler','$2y$13$Mwrz8bYONnESyCaqvIZ17uA8yyOn.1NNL1Pq6SklQThun05qllL7q'),(36,'symfony444_space_bar@gmail.com','SOFIA CAVACO','$2y$13$9kmT1fj3SzjZddlHOJBVW.kvgmX4rHPLtYBKcywHW9ykTqzP1mEKu'),(37,'admin2@thespacebar.com','Admin2','$2y$13$.aqD78mLjJiFHj8Ofk12b.ownKVVNgDWVm6/vPQCiLPkq5CJsfgAW'),(38,'spacebar89@example.com','Peter Kinget','$2y$13$LWV1EMz7Q18qMW7KzW6j8.FYB6tStuMWo4NDKp2PbfYLwxS.l9wri');

--
-- Table structure for table `articles`
--
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `heart_count` int(11) NOT NULL DEFAULT 0,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFDD3168F675F31B` (`author_id`),
  CONSTRAINT `FK_BFDD3168F675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `articles`
--
INSERT INTO `articles` VALUES (1,26,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-05-17 14:56:28',18,'asteroid.jpeg'),(2,33,'Light Speed Travel: Fountain of Youth or Fallacy','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-05-19 12:10:55',47,'asteroid.jpeg'),(3,35,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-04-11 16:34:06',37,'asteroid.jpeg'),(4,27,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-06-01 08:04:55',12,'lightspeed.png'),(5,31,'Why Asteroids Taste Like Bacon','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',NULL,63,'asteroid.jpeg'),(6,27,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-06-25 03:43:17',37,'lightspeed.png'),(7,28,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',NULL,58,'mercury.jpeg'),(8,28,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-05-20 14:11:21',50,'lightspeed.png'),(9,26,'Life on Planet Mercury: Tan, Relaxing and Fabulous','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.',NULL,39,'lightspeed.png'),(10,34,'Why Asteroids Taste Like Bacon','Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.','2020-06-21 07:25:10',91,'mercury.jpeg'),(13,37,'test','test test','2020-07-14 13:23:33',0,'lightspeed.png'),(14,37,'Mars: God of War? Or Misunderstood?','test test test','2020-07-15 11:05:04',0,'lightspeed.png'),(15,37,'Venus: Godine of Love? Or Misunderstood?','test test','2020-07-15 11:41:06',0,'lightspeed.png'),(16,26,'Venus: Godine of Love?','test','2020-07-15 17:27:17',1,'lightspeed.png'),(17,37,'Jupiter: God of fire?','Jupiler for ever!','2021-05-02 11:52:00',4,'lightspeed.png');

--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962A7294869C` (`article_id`),
  KEY `IDX_5F9E962AF675F31B` (`author_id`),
  CONSTRAINT `FK_5F9E962A7294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `FK_5F9E962AF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `comments`
--
INSERT INTO `comments` VALUES (1,6,32,'Eveniet sed enim porro sit aut ad impedit qui. Vel porro consequatur esse tempore et aut. Tenetur in ex debitis quae est qui.','2020-06-20 15:14:07'),(2,10,28,'Aut deleniti et doloribus adipisci beatae iste sunt. In accusantium veritatis est perspiciatis nam. Aut ducimus consectetur aut eius dolor doloremque et.','2020-06-15 23:34:02'),(3,9,31,'Hic exercitationem rerum ut accusamus aut eos iste. Aut ipsa qui perferendis.','2020-06-25 07:10:14'),(4,8,26,'Tenetur tempora adipisci quibusdam incidunt dolor. At omnis labore harum ipsam veniam quas maxime.','2020-06-20 15:47:45'),(5,3,26,'Facilis mollitia laudantium rerum quo et. Consequatur voluptatem animi est modi. Laudantium aut saepe voluptas veritatis accusantium at laudantium dolores. Consequatur odit natus voluptas rerum.','2020-07-03 13:11:40'),(6,10,33,'Nemo dolorem veniam qui ducimus exercitationem. Delectus consequatur est consequuntur sapiente non.','2020-07-04 15:36:51'),(7,9,26,'Qui corporis qui beatae et et. Consequatur harum saepe sint voluptates libero voluptate. Ad quia rerum eum quaerat voluptatum.','2020-07-04 18:22:33'),(8,9,35,'Repellat maiores quam quas impedit beatae. Nobis quibusdam earum non laudantium est sint quibusdam.','2020-06-25 22:05:01'),(9,7,31,'Consequuntur distinctio quis similique sunt magnam sit repellendus. Cumque amet voluptatem quis molestias eveniet. Dolor soluta ut voluptatem cum repudiandae beatae similique qui. Consequatur qui est hic neque ullam.','2020-06-25 22:53:28'),(10,9,35,'Necessitatibus necessitatibus quod voluptatem. Fugiat fuga rerum quisquam optio.','2020-07-02 22:52:52');


--
-- Table structure for table `tags`
--
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6FBC9426989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `tags`
--
INSERT INTO `tags` VALUES (41,'Bill had left off.','rabbit-was-still','2020-05-09 10:59:44','2020-05-07 05:17:14'),(42,'Rome--no, THAT\'S.','suppress-him','2020-06-03 22:57:15','2020-07-02 06:19:29'),(43,'Knave of Hearts.','alice-as-all-the','2020-06-22 13:28:34','2020-06-05 23:42:07'),(44,'Alice was so small.','shakespeare-in','2020-05-18 07:01:08','2020-05-31 00:05:07'),(45,'Owl, as a boon.','i-dont-know-of','2020-05-09 22:24:37','2020-04-16 15:10:21'),(46,'I should be like.','king-and-the-queen','2020-07-05 03:22:50','2020-05-23 02:45:29'),(47,'Cat: \'we\'re all.','xii-alices','2020-06-26 05:18:09','2020-04-09 13:06:45'),(48,'There was exactly.','march-hare-then','2020-06-19 06:24:48','2020-05-22 02:03:25'),(49,'WOULD put their.','the-king-laid-his','2020-05-29 18:17:17','2020-06-09 08:42:25'),(50,'And with that she.','cheshire-cat','2020-05-02 05:24:25','2020-06-23 09:56:11');


--
-- Table structure for table `article_tag`
--
CREATE TABLE `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_919694F97294869C` (`article_id`),
  KEY `IDX_919694F9BAD26311` (`tag_id`),
  CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `article_tag`
--
INSERT INTO `article_tag` VALUES (1,45),(2,41),(2,42),(2,45),(2,49),(3,42),(3,50),(4,43),(4,44),(5,41),(5,42),(5,49),(6,42),(6,49),(9,43),(9,47),(9,48),(9,49),(10,42),(10,44);








