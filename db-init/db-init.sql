--
-- Table structure for table `movies`
--
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`( 
  `id` MEDIUMINT(4) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `duration` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
INSERT INTO `movies` (`title`, `duration`) VALUES
    ('Spongebob the Movie', 180),
    ('The Big Lebowski', 210),
    ('Lord of the Rings', 300),
    ('Netflix Documentary', 110)
;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`( 
  `id` MEDIUMINT(4) NOT NULL AUTO_INCREMENT,
  `genre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
INSERT INTO `genres` (`genre`) VALUES
    ('Romance'),
    ('Action'),
    ('Comedy'),
    ('Drama')
;
UNLOCK TABLES;
