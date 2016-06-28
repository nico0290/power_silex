-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Dim 12 Juin 2016 à 23:46
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hetic_silex_power`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(250) NOT NULL,
  `real_name` varchar(250) NOT NULL,
  `description` varchar(900) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `occurrence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `actors`
--

INSERT INTO `actors` (`id`, `name`, `real_name`, `description`, `photo`, `occurrence`) VALUES
(1, 'James "Ghost" St. Patrick', 'Omari Hardwick', 'The brilliant and debonair owner of Truth nightclub, Ghost is also one of the largest drug distributors in New York City. His\ndreams of a legitimate future for himself and his family were dealt a stunning blow after a shooting at Truth brings its\nexistence into question. His plans to get out of the drug game are set back even further by his business partner Tommy, and\nhis former mentor, Kanan, who is fresh out of jail and looking for revenge. But his work troubles pale when compared to the\ncomplexity of juggling his relationship with Tasha, his wife, and Angela, his first love, who is an Assistant United States\nAttorney investigating his drug organization.', 'http://ia.media-imdb.com/images/M/MV5BMTU3Mjc4MDczNF5BMl5BanBnXkFtZTgwOTA1MzE5MTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 28),
(2, 'Angela Valdes', 'Lela Loren', 'Angela’s goal is to advance in her career as an assistant US attorney investigating an international drug syndicate. She believes this will allow her to live the life she should want. She grew up with Ghost - who she has only ever known as “Jamie” - in a rough neighborhood. She managed to escape using her intellect, ambition and determination, but she never truly left her childhood behind. Her desire for a relationship with her “Jamie” could be her downfall.', 'http://ia.media-imdb.com/images/M/MV5BMTg0Mjk2ODE0OF5BMl5BanBnXkFtZTgwNTAyODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 28),
(3, 'Tommy Egan', 'Joseph Sikora', 'Mercurial, extreme, wounded, and loyal to a fault, Tommy grew up with Ghost like a brother. They began the drug business\r\ntogether, and for Tommy, it’s not a means to an end – it is the end itself. The money, power, control, and achievement are\r\naddictive, as is the bond he has with Ghost and Ghost’s family – a surrogate for the love Tommy never had growing up. But\r\nGhost’s focus on the club and his relationship with Angela have strained the partners connection, which could have\r\nconsequences on their business dealings.', 'http://ia.media-imdb.com/images/M/MV5BMTk0NDE2NDM1OV5BMl5BanBnXkFtZTgwNTkxODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 28),
(4, 'Tasha St. Patrick', 'Naturi Naughton', 'Crafty, loving, fierce, and drop-dead gorgeous, Tasha is Ghost’s young wife who has been at his side for years, throughout\r\nhis rise in the drug game. She’s been his partner in raising three children and building an empire while providing the home\r\nlife and stability he wants. But as Ghost pursues the club and his relationship with Angela, Tasha asserts control over her\r\nown family and future.', 'http://ia.media-imdb.com/images/M/MV5BODA4NDk1NjE1Nl5BMl5BanBnXkFtZTgwMTQyNzQ2ODE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 28),
(5, 'Kanan', 'Curtis ''50 cent'' Jackson', 'Ghost’s former boss Kanan is out of prison and eager to make up for the years he lost. He took Ghost and Tommy under his wing years ago, and taught them everything they know about the drug business. He plans on returning to the game in grand fashion now that he is back on the streets.', 'http://ia.media-imdb.com/images/M/MV5BMjI0NTE2ODUzMF5BMl5BanBnXkFtZTgwMDcxODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 19),
(6, 'Shawn', 'Sinqua Walls', 'Ghost’s driver and the son of Ghost’s former boss, Kanan, Shawn’s an eager-but-green kid attempting to fit into his father’s shoes and world. He looks at Ghost like an uncle but also desires to make his mark and find his place both in his family and the drug gam', 'http://ia.media-imdb.com/images/M/MV5BMjU2NjQyNTc3Nl5BMl5BanBnXkFtZTgwMjAxODI1MzE@._V1_SY1000_CR0,0,647,1000_AL_.jpg', 18),
(7, 'Josh Kantos', '	Adam Huss', 'An experienced nightclub manager with all the right lists, contacts and know-how, he also comes with a sordid history. He was persona non-grata in the club world until Ghost found him and brought him into Truth.', 'http://ia.media-imdb.com/images/M/MV5BMTQ3OTQ0NjYwOV5BMl5BanBnXkFtZTgwMzM3NDY4ODE@._V1_SY1000_CR0,0,665,1000_AL_.jpg', 20),
(8, 'Greg Knox', 'Andy Bean', 'Greg is a capable and lethal FBI agent who used to secretly date Angela Valdes. Desperate for her approval, he one day hopes to solidify their relationship.\r\n', 'http://ia.media-imdb.com/images/M/MV5BMTUxMTk3MTI4MF5BMl5BanBnXkFtZTgwODMyODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 27),
(9, 'Carlos “Vibora” Ruiz', '	Luis Antonio Ramos', 'Ruiz is leader of the Soldado Nation, a Puerto Rican gang within Ghost’s distribution network. While he is towing the line, Ruiz is chaffing under Ghost and Tommy’s authority. He is looking for any opportunity to strike out on his own or take over the network altogether.', 'http://ia.media-imdb.com/images/M/MV5BMTQ4NDg4Mjc1M15BMl5BanBnXkFtZTgwMTI0OTYzMjE@._V1_.jpg', 22),
(10, 'Simon Stern', '	Victor Garber', 'Simon Stern is a renowned club owner and events guru who has the successful, legitimate lifestyle James “Ghost” St. Patrick covets. Intrigued by James’ success with Truth, Stern seeks to capitalize on the shooting at Truth and bring both Ghost and his club under his umbrella of international nightlife venues.', 'http://ia.media-imdb.com/images/M/MV5BNTczMjg2NDcyOF5BMl5BanBnXkFtZTgwODg3MzY1MTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 7),
(11, 'Holly', 'Lucy Walters', 'Ever-ambitious, Holly’s a waitress at Truth, the club Ghost and Tommy own. As she and Tommy develop their charged relationship, she encourages him to seek the kind of power and control she wants as well, priming them both for ascension.\r\n', 'http://ia.media-imdb.com/images/M/MV5BMTkyODM2ODM1OF5BMl5BanBnXkFtZTgwNjI1NjM5MjE@._V1_.jpg', 23),
(12, 'Dre', 'Rotimi', 'Cut from the same cloth as Ghost, Dre is a savvy, ambitious criminal who hasn’t had the same luck as Ghost in his life, though they have a lot in common, namely, mentorship by Kanan. Dre was a part of Kanan’s crew while in prison. He is indebted to him for keeping him alive in jail and giving him an opportunity on the streets.', 'http://ia.media-imdb.com/images/M/MV5BNDYxNTkzOTAyNl5BMl5BanBnXkFtZTgwNjAyODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 17),
(13, 'Mike Sandoval', 'David Fumero', 'A cunning and seemingly banal Lobos cartel expert transplanted from Southern California to lead the Lobos task force for the Southern District of New York, this Assistant US Attorney proves to be Angela’s foil, not impressed with her cutting corners or her charms.', 'http://ia.media-imdb.com/images/M/MV5BMTUyOTIxNDk3MF5BMl5BanBnXkFtZTgwOTMyODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 20),
(14, 'Julio', 'J.R. Ramirez', 'Julio is Ghost and Tommy’s right hand, a street-smart Cuban-American whose pragmatic approach keeps their drug business on track.', 'http://ia.media-imdb.com/images/M/MV5BMjM0NzcxMTA3NF5BMl5BanBnXkFtZTgwMjgxODA5NTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 23),
(15, 'LaKeisha Graham', 'La La Anthony', 'LaKeisha is Tasha St. Patrick’s best friend who lives for Tasha’s castaway merchandise. She is an opinionated chatterbox who doesn’t see the dark side of Tasha’s life.', 'http://ia.media-imdb.com/images/M/MV5BMzAwNTExNTQ2NV5BMl5BanBnXkFtZTcwNjc1MzUwNw@@._V1_SY1000_CR0,0,665,1000_AL_.jpg', 14),
(16, 'Cooper Saxe', 'Shane Johnson', 'Cooper Saxe is an Assistant United States Attorney in Angela’s office. Arrogant and cocksure, he never lets anything stand in the way of his ambitions.', 'http://ia.media-imdb.com/images/M/MV5BMTQ2MjI1NjQyNF5BMl5BanBnXkFtZTgwMTc1MTM5MTE@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 27),
(17, 'Felipe Lobos', 'Enrique Murciano', 'Lobos is leader of a Mexican drug cartel with an expansive supply chain importing high quality wholesale drugs into the United States. He is an intelligent, sophisticated psychopath, who has hired Ghost and Tommy as his NY connect. While he sees potential for Ghost to be his protégé, doubts crop up when Ghost’s network is compromised.', 'http://ia.media-imdb.com/images/M/MV5BMjM3NzYyMzUyM15BMl5BanBnXkFtZTgwMzA1NTg2NDE@._V1_SY1000_CR0,0,665,1000_AL_.jpg', 10),
(18, 'Joe Proctor', 'Jerry Ferrara', 'Joe Proctor is a successful attorney with a dark secret, not easily intimidated by anyone.', 'http://ia.media-imdb.com/images/M/MV5BMjAxMDA4NTk1M15BMl5BanBnXkFtZTgwOTc0Mjg4NTE@._V1_SY1000_CR0,0,695,1000_AL_.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) unsigned NOT NULL,
  `characters_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` int(2) NOT NULL,
  `nation` varchar(3) NOT NULL,
  `quote` varchar(200) NOT NULL,
  `crew` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `main` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) unsigned NOT NULL,
  `time` int(3) NOT NULL,
  `synopsis_episode` mediumtext NOT NULL,
  `image_episode` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `episodes`
--

INSERT INTO `episodes` (`id`, `time`, `synopsis_episode`, `image_episode`, `date`, `season_id`, `title`, `number`) VALUES
(1, 57, 'A New York nightclub owner, runs into an old flame and faces up to a threatening presence from his secret dealings in the world of drugs.', 'http://ia.media-imdb.com/images/M/MV5BMTkzNzc0OTkxNl5BMl5BanBnXkFtZTgwMzczNzE1ODE@._V1_.jpg', '7 June 2014', 1, 'Not Exactly How We Planned ', 1),
(2, 58, 'Ghost and Tommy attempt to deal with those responsible for the attack on their drug organization. Ghost''s wife has a new career.', 'http://ia.media-imdb.com/images/M/MV5BMjA2OTQxNDQ5M15BMl5BanBnXkFtZTgwMzI0NzE1ODE@._V1_.jpg', '14 June 2014', 1, 'Whoever He Is', 2),
(3, 56, 'Ghost and Tasha''s rift intensifies. Ghost is worried his family may be in danger, when he continues to pursue Angela.', 'http://ia.media-imdb.com/images/M/MV5BMTg0MTU2NzgwOF5BMl5BanBnXkFtZTgwNTY0NzE1ODE@._V1_.jpg', '21 June 2014', 1, 'This Is Real ', 3),
(4, 51, 'Angela schedules surveillance of a meeting between Ghost and Tommy and some gang leaders. Ghost reveals the truth to Angela. The assailant returns.', 'http://ia.media-imdb.com/images/M/MV5BMTgzMDMwNjcxM15BMl5BanBnXkFtZTgwMzY0NzE1ODE@._V1_.jpg', '28 June 2014', 1, 'Who Are You?', 4),
(5, 59, 'Tasha grows more and more concerned about Ghosts attitude, so decides to get involved with business at the club more. Ghost and Angela''s affair heats up, whilst Tommy is attracted to someone at the club.', 'http://ia.media-imdb.com/images/M/MV5BMjM3ODMwNTQ0N15BMl5BanBnXkFtZTgwNzYxMjE0NzE@._V1_.jpg', '12 July 2014', 1, 'I Gotta Go', 5),
(6, 59, 'Angela wires one of Tommy''s gang members up as he makes peace with Ruiz. Ghost forgets Tasha''s birthday, as he and Angela realize the wider effect that their affair may have.', 'http://ia.media-imdb.com/images/M/MV5BMTgyODU0NjE2NF5BMl5BanBnXkFtZTgwMzA3NzE1ODE@._V1_.jpg', '19 July 2014', 1, 'Who You With?', 6),
(7, 60, 'Tasha finally sees Angela; Ghost learns a friend may be responsible for the hits; Angela attempts to stop an upcoming attack; Ghost makes a promise to Angela.', 'http://ia.media-imdb.com/images/M/MV5BMTU1NzM4MjYzNF5BMl5BanBnXkFtZTgwMjA3NzE1ODE@._V1_.jpg', '26 July 2014', 1, 'Loyalty', 7),
(8, 60, 'Ghost plans to hold a massive party at Truth in hopes of expanding out of NYC and the drug world.', 'http://ia.media-imdb.com/images/M/MV5BMTU3ODA0Nzk4MF5BMl5BanBnXkFtZTgwMDA3NzE1ODE@._V1_.jpg', '2 August 2014', 1, 'Best Laid Plans', 8),
(9, 61, 'Ghost picks up the pieces at Truth after the botched murder attempt against him, while recommitting to the drug game. Tommy disappears after learning Angela is with the feds.', 'http://ia.media-imdb.com/images/M/MV5BMTA2NTM3MDU0MjBeQTJeQWpwZ15BbWU4MDU1MTgwOTUx._V1_SY1000_SX1500_AL_.jpg', '6 June 2015', 2, 'Consequences', 1),
(10, 58, 'Tommy offers to help Ghost with his drug business on the condition that he uses Angela as an information source. Ghost is surprised when Kanan is released from jail.', 'http://ia.media-imdb.com/images/M/MV5BMTU1NjY3NzUwOF5BMl5BanBnXkFtZTgwMzYwODE1ODE@._V1_.jpg', '13 June 2015', 2, 'No Friends on the Street', 2),
(11, 58, 'Ghost and Angela enjoy a getaway in Miami until reality intrudes on their fantasy life as a couple; Tommy and Kanan bond.', 'http://ia.media-imdb.com/images/M/MV5BMjM2OTkxNjY2Ml5BMl5BanBnXkFtZTgwMzUwODE1ODE@._V1_.jpg', '20 June 2015', 2, 'Like We''re Any Other Couple', 3),
(12, 58, 'Ghost struggles to keep Angela, Tommy and others in his control; Simon Stern prevents Ghost from regaining his club.', 'http://ia.media-imdb.com/images/M/MV5BMTA5NjQ4NzM3MTFeQTJeQWpwZ15BbWU4MDA1MDc5Nzcx._V1_.jpg', '27 June 2015', 2, 'You''re the Only Person I Can Trust', 4),
(13, 58, 'Ghost and Tommy are under the gun in trying to deal all the product in order to pay Lobos, unaware that Holly is being grilled by the FBI.', 'http://ia.media-imdb.com/images/M/MV5BMTk4NjUyMDk3Nl5BMl5BanBnXkFtZTgwOTgwNzk3NzE@._V1_.jpg', '11 July 2015', 2, 'Who You Are and Who You Want to Be', 5),
(14, 57, 'Angela learns that Jamie and Ghost are the same person; the drug syndicate welcomes a new member.', 'http://ia.media-imdb.com/images/M/MV5BMTU2NTU1Mzk5OF5BMl5BanBnXkFtZTgwODExODE1ODE@._V1_.jpg', '18 July 2015', 2, 'Why Her?', 6),
(15, 56, 'Angela learns more about Ghost. Holly makes a choice about Tommy. James works on his relationship with his kids. Natasha learns Angela is investigating Tommy. Angela''s partner becomes suspicious of her actions. The drug bosses meet.', 'http://ia.media-imdb.com/images/M/MV5BMjEzODI0NjIyMV5BMl5BanBnXkFtZTgwNzExODE1ODE@._V1_.jpg', '25 July 2015', 2, 'You''re Not the Man', 7),
(16, 58, 'Ghost attempts to distance himself from Lobos before Angela gets to him.', 'http://ia.media-imdb.com/images/M/MV5BMTk5NDgyNzc5N15BMl5BanBnXkFtZTgwNTIxODE1ODE@._V1_.jpg', '1 August 2015', 2, 'Three Moves Ahead', 8),
(17, 58, 'Tommy is pressured to flip on Lobos or go to jail; Ghost tries to do the right thing.', 'http://ia.media-imdb.com/images/M/MV5BMjM5NDQyNDkwN15BMl5BanBnXkFtZTgwMzg0MjE0NzE@._V1_.jpg', '8 August 2015', 2, 'Time''s Up', 9),
(18, 57, 'Bodies from Ghost''s organization drop left and right, each death inching closer to Ghost and Tommy.', 'http://ia.media-imdb.com/images/M/MV5BNzY3NjEzODg4MV5BMl5BanBnXkFtZTgwODQ5NzE1ODE@._V1_.jpg', '15 August 2015', 2, 'Ghost Is Dead', 10);

-- --------------------------------------------------------

--
-- Structure de la table `episode_actors`
--

CREATE TABLE `episode_actors` (
  `episode_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `episode_actors`
--

INSERT INTO `episode_actors` (`episode_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 11),
(1, 15),
(1, 16),
(1, 17),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 11),
(2, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 11),
(3, 16),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 11),
(4, 15),
(4, 16),
(4, 17),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 16),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 15),
(6, 16),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 15),
(7, 16),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(8, 11),
(8, 16),
(8, 17),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 2),
(18, 3),
(18, 4);

-- --------------------------------------------------------

--
-- Structure de la table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) unsigned NOT NULL,
  `synopsis_season` mediumtext NOT NULL,
  `image_season` varchar(200) NOT NULL,
  `episodes` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `seasons`
--

INSERT INTO `seasons` (`id`, `synopsis_season`, `image_season`, `episodes`) VALUES
(1, 'Power''s first season centers around James St. Patrick (better known as Ghost), a very successful businessman that''s running a popular nightclub in New York, raising his kids with his wife Tasha, and just so happens to also be top dog in the drug world. He’s already living a double life as a drug dealer with a legitimate business front and it only gets more complicated when he reconnects with his first love, a beautiful lawyer named Angela. Complicated enough for you? We’re just getting started.', 'http://www.q8dvd.com/site/images/movie/19460.jpg', 8),
(2, 'James "Ghost" St. Patrick finds leaving his drug dealing business is hard when his nightclub is struggling. And on top of his business troubles, he continues to juggle his relationship with his wife and his first love, Assistant US Attorney Angela Valdes', 'http://cdn1-www.comingsoon.net/assets/uploads/gallery/power-1385143260/powerseason2.jpg', 10);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `episode_actors`
--
ALTER TABLE `episode_actors`
  ADD PRIMARY KEY (`episode_id`,`actor_id`);

--
-- Index pour la table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
