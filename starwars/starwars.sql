-- -------------------------------------------------------------
-- TablePlus 5.3.1(488)
--
-- https://tableplus.com/
--
-- Database: starwars
-- Generation Time: 2023-02-15 13:55:03.2040
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `director` varchar(99) DEFAULT NULL,
  `episode_id` int(11) DEFAULT NULL,
  `opening_crawl` text DEFAULT NULL,
  `producer` varchar(99) DEFAULT NULL,
  `release_date` varchar(99) DEFAULT NULL,
  `title` varchar(99) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `people_id` int(11) NOT NULL AUTO_INCREMENT,
  `birth_year` varchar(99) DEFAULT NULL,
  `eye_color` varchar(99) DEFAULT NULL,
  `gender` varchar(99) DEFAULT NULL,
  `hair_color` varchar(99) DEFAULT NULL,
  `height` varchar(99) DEFAULT NULL,
  `homeworld` int(11) DEFAULT NULL,
  `mass` int(11) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `skin_color` varchar(99) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `planets`;
CREATE TABLE `planets` (
  `planet_id` int(11) NOT NULL AUTO_INCREMENT,
  `climate` varchar(99) DEFAULT NULL,
  `diameter` int(11) DEFAULT NULL,
  `gravity` float DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `orbital_period` int(11) DEFAULT NULL,
  `population` bigint(20) DEFAULT NULL,
  `rotation_period` float DEFAULT NULL,
  `surface_water` varchar(99) DEFAULT NULL,
  `terrain` varchar(20) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`planet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `species`;
CREATE TABLE `species` (
  `specie_id` int(11) NOT NULL AUTO_INCREMENT,
  `average_height` varchar(99) DEFAULT NULL,
  `average_lifespan` varchar(99) DEFAULT NULL,
  `classification` varchar(99) DEFAULT NULL,
  `designation` varchar(99) DEFAULT NULL,
  `eye_colors` varchar(99) DEFAULT NULL,
  `hair_colors` varchar(99) DEFAULT NULL,
  `homeworld` varchar(99) DEFAULT NULL,
  `language` varchar(99) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `skin_colors` varchar(99) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`specie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `starships`;
CREATE TABLE `starships` (
  `starship_id` int(11) NOT NULL AUTO_INCREMENT,
  `MGLT` varchar(99) DEFAULT NULL,
  `cargo_capacity` bigint(20) DEFAULT NULL,
  `consumables` varchar(99) DEFAULT NULL,
  `cost_in_credits` bigint(20) DEFAULT NULL,
  `crew` varchar(99) DEFAULT NULL,
  `hyperdrive_rating` varchar(99) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `manufacturer` varchar(99) DEFAULT NULL,
  `max_atmosphering_speed` varchar(99) DEFAULT NULL,
  `model` varchar(99) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  `starship_class` varchar(99) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`starship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo_capacity` int(11) DEFAULT NULL,
  `consumables` varchar(99) DEFAULT NULL,
  `cost_in_credits` int(11) DEFAULT NULL,
  `crew` int(11) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `manufacturer` varchar(99) DEFAULT NULL,
  `max_atmosphering_speed` int(11) DEFAULT NULL,
  `model` varchar(99) DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `vehicle_class` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `films` (`film_id`, `director`, `episode_id`, `opening_crawl`, `producer`, `release_date`, `title`, `url`) VALUES
(1, 'George Lucas', 4, 'It is a period of civil war.\nRebel spaceships, striking\nfrom a hidden base, have won\ntheir first victory against\nthe evil Galactic Empire.\n\nDuring the battle, Rebel\nspies managed to steal secret\nplans to the Empire\'s\nultimate weapon, the DEATH\nSTAR, an armored space\nstation with enough power\nto destroy an entire planet.\n\nPursued by the Empire\'s\nsinister agents, Princess\nLeia races home aboard her\nstarship, custodian of the\nstolen plans that can save her\npeople and restore\nfreedom to the galaxy....', 'Gary Kurtz, Rick McCallum', '1977-05-25', 'A New Hope', 'https://swapi.dev/api/films/1/'),
(3, 'Irvin Kershner', 5, 'It is a dark time for the\nRebellion. Although the Death\nStar has been destroyed,\nImperial troops have driven the\nRebel forces from their hidden\nbase and pursued them across\nthe galaxy.\n\nEvading the dreaded Imperial\nStarfleet, a group of freedom\nfighters led by Luke Skywalker\nhas established a new secret\nbase on the remote ice world\nof Hoth.\n\nThe evil lord Darth Vader,\nobsessed with finding young\nSkywalker, has dispatched\nthousands of remote probes into\nthe far reaches of space....', 'Gary Kurtz, Rick McCallum', '1980-05-17', 'The Empire Strikes Back', 'https://swapi.dev/api/films/2/'),
(4, 'Richard Marquand', 6, 'Luke Skywalker has returned to\nhis home planet of Tatooine in\nan attempt to rescue his\nfriend Han Solo from the\nclutches of the vile gangster\nJabba the Hutt.\n\nLittle does Luke know that the\nGALACTIC EMPIRE has secretly\nbegun construction on a new\narmored space station even\nmore powerful than the first\ndreaded Death Star.\n\nWhen completed, this ultimate\nweapon will spell certain doom\nfor the small band of rebels\nstruggling to restore freedom\nto the galaxy...', 'Howard G. Kazanjian, George Lucas, Rick McCallum', '1983-05-25', 'Return of the Jedi', 'https://swapi.dev/api/films/3/'),
(5, 'George Lucas', 1, 'Turmoil has engulfed the\nGalactic Republic. The taxation\nof trade routes to outlying star\nsystems is in dispute.\n\nHoping to resolve the matter\nwith a blockade of deadly\nbattleships, the greedy Trade\nFederation has stopped all\nshipping to the small planet\nof Naboo.\n\nWhile the Congress of the\nRepublic endlessly debates\nthis alarming chain of events,\nthe Supreme Chancellor has\nsecretly dispatched two Jedi\nKnights, the guardians of\npeace and justice in the\ngalaxy, to settle the conflict....', 'Rick McCallum', '1999-05-19', 'The Phantom Menace', 'https://swapi.dev/api/films/4/'),
(6, 'George Lucas', 2, 'There is unrest in the Galactic\nSenate. Several thousand solar\nsystems have declared their\nintentions to leave the Republic.\n\nThis separatist movement,\nunder the leadership of the\nmysterious Count Dooku, has\nmade it difficult for the limited\nnumber of Jedi Knights to maintain \npeace and order in the galaxy.\n\nSenator Amidala, the former\nQueen of Naboo, is returning\nto the Galactic Senate to vote\non the critical issue of creating\nan ARMY OF THE REPUBLIC\nto assist the overwhelmed\nJedi....', 'Rick McCallum', '2002-05-16', 'Attack of the Clones', 'https://swapi.dev/api/films/5/'),
(7, 'George Lucas', 3, 'War! The Republic is crumbling\nunder attacks by the ruthless\nSith Lord, Count Dooku.\nThere are heroes on both sides.\nEvil is everywhere.\n\nIn a stunning move, the\nfiendish droid leader, General\nGrievous, has swept into the\nRepublic capital and kidnapped\nChancellor Palpatine, leader of\nthe Galactic Senate.\n\nAs the Separatist Droid Army\nattempts to flee the besieged\ncapital with their valuable\nhostage, two Jedi Knights lead a\ndesperate mission to rescue the\ncaptive Chancellor....', 'Rick McCallum', '2005-05-19', 'Revenge of the Sith', 'https://swapi.dev/api/films/6/');

INSERT INTO `people` (`people_id`, `birth_year`, `eye_color`, `gender`, `hair_color`, `height`, `homeworld`, `mass`, `name`, `skin_color`, `url`) VALUES
(1, '19BBY', 'blue', 'male', 'blond', '172', NULL, 77, 'Luke Skywalker', 'fair', 'https://swapi.dev/api/people/1/'),
(2, '112BBY', 'yellow', 'n/a', 'n/a', '167', NULL, 75, 'C-3PO', 'gold', 'https://swapi.dev/api/people/2/'),
(3, '33BBY', 'red', 'n/a', 'n/a', '96', NULL, 32, 'R2-D2', 'white, blue', 'https://swapi.dev/api/people/3/'),
(4, '41.9BBY', 'yellow', 'male', 'none', '202', NULL, 136, 'Darth Vader', 'white', 'https://swapi.dev/api/people/4/'),
(5, '19BBY', 'brown', 'female', 'brown', '150', NULL, 49, 'Leia Organa', 'light', 'https://swapi.dev/api/people/5/'),
(6, '52BBY', 'blue', 'male', 'brown, grey', '178', NULL, 120, 'Owen Lars', 'light', 'https://swapi.dev/api/people/6/'),
(7, '47BBY', 'blue', 'female', 'brown', '165', NULL, 75, 'Beru Whitesun lars', 'light', 'https://swapi.dev/api/people/7/'),
(8, 'unknown', 'red', 'n/a', 'n/a', '97', NULL, 32, 'R5-D4', 'white, red', 'https://swapi.dev/api/people/8/'),
(9, '24BBY', 'brown', 'male', 'black', '183', NULL, 84, 'Biggs Darklighter', 'light', 'https://swapi.dev/api/people/9/'),
(10, '57BBY', 'blue-gray', 'male', 'auburn, white', '182', NULL, 77, 'Obi-Wan Kenobi', 'fair', 'https://swapi.dev/api/people/10/');

INSERT INTO `planets` (`planet_id`, `climate`, `diameter`, `gravity`, `name`, `orbital_period`, `population`, `rotation_period`, `surface_water`, `terrain`, `url`) VALUES
(13, 'arid', 10465, NULL, 'Tatooine', 304, 200000, 23, '1', 'desert', 'https://swapi.dev/api/planets/1/'),
(14, 'temperate, tropical', 10200, NULL, 'Yavin IV', 4818, 1000, 24, '8', 'jungle, rainforests', 'https://swapi.dev/api/planets/3/'),
(15, 'temperate', 118000, NULL, 'Bespin', 5110, 6000000, 12, '0', 'gas giant', 'https://swapi.dev/api/planets/6/'),
(16, 'temperate', 12240, NULL, 'Coruscant', 368, 1000000000000, 24, 'unknown', 'cityscape, mountains', 'https://swapi.dev/api/planets/9/'),
(17, 'temperate', 19720, NULL, 'Kamino', 463, 1000000000, 27, '100', 'ocean', 'https://swapi.dev/api/planets/10/');

INSERT INTO `species` (`specie_id`, `average_height`, `average_lifespan`, `classification`, `designation`, `eye_colors`, `hair_colors`, `homeworld`, `language`, `name`, `skin_colors`, `url`) VALUES
(1, '180', '120', 'mammal', 'sentient', 'brown, blue, green, hazel, grey, amber', 'blonde, brown, black, red', 'https://swapi.dev/api/planets/9/', 'Galactic Basic', 'Human', 'caucasian, black, asian, hispanic', 'https://swapi.dev/api/species/1/'),
(2, '210', '400', 'mammal', 'sentient', 'blue, green, yellow, brown, golden, red', 'black, brown', 'https://swapi.dev/api/planets/14/', 'Shyriiwook', 'Wookie', 'gray', 'https://swapi.dev/api/species/3/'),
(3, '300', '1000', 'gastropod', 'sentient', 'yellow, red', 'n/a', 'https://swapi.dev/api/planets/24/', 'Huttese', 'Hutt', 'green, brown, tan', 'https://swapi.dev/api/species/5/'),
(4, '66', '900', 'mammal', 'sentient', 'brown, green, yellow', 'brown, white', 'https://swapi.dev/api/planets/28/', 'Galactic basic', 'Yoda\'s species', 'green, yellow', 'https://swapi.dev/api/species/6/'),
(6, 'n/a', 'indefinite', 'artificial', 'sentient', 'n/a', 'n/a', '', 'n/a', 'Droid', 'n/a', 'https://swapi.dev/api/species/2/'),
(8, '170', 'unknown', 'sentient', 'reptilian', 'black', 'n/a', 'https://swapi.dev/api/planets/23/', 'Galatic Basic', 'Rodian', 'green, blue', 'https://swapi.dev/api/species/4/'),
(11, '200', 'unknown', 'reptile', 'sentient', 'yellow, orange', 'none', 'https://swapi.dev/api/planets/29/', 'Dosh', 'Trandoshan', 'brown, green', 'https://swapi.dev/api/species/7/'),
(12, '160', 'unknown', 'amphibian', 'sentient', 'yellow', 'none', 'https://swapi.dev/api/planets/31/', 'Mon Calamarian', 'Mon Calamari', 'red, blue, brown, magenta', 'https://swapi.dev/api/species/8/'),
(13, '100', 'unknown', 'mammal', 'sentient', 'orange, brown', 'white, brown, black', 'https://swapi.dev/api/planets/7/', 'Ewokese', 'Ewok', 'brown', 'https://swapi.dev/api/species/9/'),
(14, '180', 'unknown', 'mammal', 'sentient', 'black', 'none', 'https://swapi.dev/api/planets/33/', 'Sullutese', 'Sullustan', 'pale', 'https://swapi.dev/api/species/10/');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;