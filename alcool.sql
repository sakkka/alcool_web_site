-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 17 Décembre 2013 à 08:50
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `alcool`
--
CREATE DATABASE IF NOT EXISTS `alcool` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alcool`;

-- --------------------------------------------------------

--
-- Structure de la table `alcool`
--

CREATE TABLE IF NOT EXISTS `alcool` (
  `Marque` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Type` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'vin/bière/sky',
  `Detail` varchar(100) NOT NULL COMMENT 'vin blanc/ vin rouge/ bière blanche/blonde/brune/etc...',
  `Conteneur` varchar(100) NOT NULL COMMENT 'canette/bouteille',
  `Volume` decimal(10,0) NOT NULL COMMENT '25cl/50cl/etc...',
  `Prix` decimal(10,2) NOT NULL,
  `Stock` decimal(10,0) NOT NULL,
  `Commentaire` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'commentaires relatifs au produit vendu',
  `Promotion` tinyint(1) NOT NULL COMMENT 'oui ou non',
  `Date_insertion` date NOT NULL,
  `Degre_alcool` decimal(10,1) NOT NULL COMMENT '40° 30° etc...',
  `Numero_produit` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL COMMENT 'image associée a chaque type de produit',
  PRIMARY KEY (`Numero_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='table concernant tous les alcools avec num de produit correspondant' AUTO_INCREMENT=9 ;

--
-- Contenu de la table `alcool`
--

INSERT INTO `alcool` (`Marque`, `Type`, `Detail`, `Conteneur`, `Volume`, `Prix`, `Stock`, `Commentaire`, `Promotion`, `Date_insertion`, `Degre_alcool`, `Numero_produit`, `image`) VALUES
('Leffe', 'Biere', 'blonde', 'bouteille', '25', '1.05', '100', 'Leffe Blonde est une authentique bière blonde d’Abbaye à la douce amertume qui se savoure à tout moment de la journée.', 0, '2013-10-23', '6.6', 1, 'assets/img/leffeblonde.png'),
('Leffe', 'Biere', 'brune', 'bouteille', '25', '1.07', '100', 'Leffe Brune est une authentique bière d’Abbaye à la belle robe acajou et à la saveur pleine et légèrement sucrée qui fait de chaque gorgée un moment d’exception. Une couleur et une saveur uniques provenant de l’utilisation de malt torréfié.', 0, '2013-10-23', '6.5', 2, 'assets/img/leffebrune.png'),
('Jack daniel''s', 'Whisky', 'Franck Sinatra', 'bouteille', '100', '169.00', '1', 'Sinatra Select est une édition exclusive créée pour honorer la relation unique entre Franck Sinatra et Jack Daniel’s. \r\n2015 étant l’année du premier centenaire de la naissance de Frank Sinatra, Jack Daniel’s et la famille Sinatra ont souhaité célébrer l’événement en créant une édition inédite et limitée. ', 0, '2013-11-06', '45.0', 3, ''),
('Jack daniel''s', 'Whisky', 'Master Distiller No1 ', 'bouteille', '70', '34.00', '23', 'Jack Daniel’s Master Distiller N°1 est la première édition d’une série limitée sur les Master Distiller Jack Daniel’s Tennessee Whiskey.\r\nAu cours de la longue histoire de la marque, plus ancienne distillerie enregistrée aux Etats-Unis, seulement sept hommes ont supervisé la fabrication du mythique Tennessee whiskey. Cette lignée remonte à Mr. Jack lui-même. \r\n\r\nQuelle meilleure façon d’honorer le savoir-faire de ces hommes, que de lancer cette série limitée Jack Daniel’s Master Distiller qui rend hommage aux Master Distiller. Cette première édition est à l’honneur de Mr. Jack en personne.', 0, '2013-11-06', '43.0', 4, ''),
('Jack daniel''s', 'Whisky', 'white rabbit', 'bouteille', '70', '35.00', '52', 'Une édition limitée de la marque Jack Daniel''s No. 7, White Rabbit célèbre le 120ème anniversaire de la fondation du Saloon du même nom, le tout premier bar au monde à proposer Jack Daniel''s à ses clients. \r\n\r\nAvant que Lynchburg ne devienne un « dry county », Mr Jack ouvrait en 1892 deux bars: le White Rabbit Saloon & le Red Dog Saloon. Le White Rabbit Saloon était un lieu où les clients côtoyaient Mr Jack et ses amis, dans une atmosphère détendue. Lem, le neveu de Mr Jack, reprit le bar de son oncle et perpétua la tradition en ouvrant d’autres saloons dans les villes environnantes jusqu’au début de la Prohibition, où il fut contraint de cesser ses activités. Fermé en 1909, le White Rabbit n''a jamais ré ouvert.\r\n\r\nCette version sera suivie d''une deuxième, Red Dog, créée pour célébrer l''histoire d''un autre saloon fondé par Jack Daniel.', 0, '2013-11-06', '43.0', 5, ''),
('WISENT', 'Vodka', 'Blanche', 'Bouteille', '70', '14.90', '15', 'Vodka Polonaise aromatisée.', 0, '2013-11-20', '37.5', 6, ''),
('Duff', 'Biere', 'Blonde', 'canette', '50', '1.90', '200', 'La Duff Beer est une bière légendaire qui vient tout droit de l''univers d''une célèbre série télévisée américaine qui met en scène de fictifs personnages jaunes. Cette bière blonde et légère est brassée sous licence.\r\nProduite en Allemagne, la Duff Beer est brassée au monastère Eschwege.Sa légèreté et son houblon malté vous convaincront de goûter la Duff, la bière préférée du personnage principal de la série ', 0, '2013-11-20', '4.9', 7, 'assets/img/duff.jpg'),
('Dom Pérignon', 'Champagne', 'Brut Millésimé Blanc', 'Bouteille', '75', '128.95', '9', 'Cépages : Chardonnay,Pinot Noir\r\nConservation : à déguster dès à présent ou à conserver 8 à 10 ans\r\nAccord : Idéal pour une belle dégustation\r\nService : 10/11°C', 0, '2013-12-11', '10.0', 8, '');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `Commande` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `id_user`, `date`, `Commande`) VALUES
(1, 3, '2013-12-16', '[{"id":"1","qte":"1"},{"id":"2","qte":"1"},{"id":"3","qte":"1"},{"id":"4","qte":"1"},{"id":"5","qte":"1"},{"id":"6","qte":"1"},{"id":"7","qte":"1"},{"id":"8","qte":"1"}]'),
(2, 3, '2013-12-16', '[{"id":"1","qte":"1"}]'),
(3, 3, '2013-12-16', '[{"id":"1","qte":"1"}]');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_u` int(11) NOT NULL AUTO_INCREMENT,
  `Civ` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Datenaissance` int(11) NOT NULL,
  `Dateinscription` datetime NOT NULL,
  `Adresse` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CodePostal` int(11) NOT NULL,
  `Ville` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `root` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_u`),
  UNIQUE KEY `Mail` (`Mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`ID_u`, `Civ`, `Nom`, `Prenom`, `Datenaissance`, `Dateinscription`, `Adresse`, `CodePostal`, `Ville`, `Mail`, `Password`, `root`) VALUES
(0, '', '', '', 0, '0000-00-00 00:00:00', '', 0, '', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(3, 'Monsieur', 'Docteur', 'Who', 1800, '2013-12-15 11:05:06', '42 rue du tardis', 1337, 'Gallifrey', 'docteur@who.com', '4679c499769be1102d8fded7cad421eed40ed758', 0),
(7, 'Mademoiselle', 'Patate', 'Masquée', 1991, '2013-12-15 13:34:14', '69 rue des tubercules', 1337, 'Patatland', 'patate@masquee.com', 'd311b1c8e5fe83187cf2d83c8e080dbcff9fc4ef', 0),
(8, 'Madame', 'Lolipop', 'Chainsaw', 1989, '2013-12-15 13:46:43', '24 rue des sucettes', 75010, 'Zombieland', 'lolipop@chainsaw.com', '645395a7c66b6064c08ddc3e8259ee8ccfefe973', 0),
(9, 'Monsieur', 'Pond', 'Amy', 1980, '2013-12-15 16:22:48', '22 rue de la rivière', 75010, 'Paris', 'amy@pond.com', 'da0cee525ea095cebd642feb98c0fe5678fb7db3', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
