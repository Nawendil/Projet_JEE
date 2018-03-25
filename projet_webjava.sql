-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 mars 2018 à 15:27
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_webjava`
--

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `IdDoc` int(11) NOT NULL AUTO_INCREMENT,
  `TypeDoc` varchar(20) DEFAULT NULL,
  `Titre` varchar(255) DEFAULT NULL,
  `Auteur` varchar(255) DEFAULT NULL,
  `Disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdDoc`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`IdDoc`, `TypeDoc`, `Titre`, `Auteur`, `Disponible`) VALUES
(1, 'Livre', 'Harry Potter : Tome 1', 'J.K. Rollings', 1),
(2, 'Livre', 'Harry Potter : Tome 2', 'J.K. Rollings', 1),
(3, 'Livre', 'Harry Potter : Tome 3', 'J.K. Rollings', 1),
(4, 'Livre', 'Harry Potter : Tome 4', 'J.K. Rollings', 1),
(5, 'Livre', 'Harry Potter : Tome 5', 'J.K. Rollings', 1),
(6, 'Livre', 'Harry Potter : Tome 6', 'J.K. Rollings', 1),
(7, 'Livre', 'Harry Potter : Tome 7', 'J.K. Rollings', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(20) DEFAULT NULL,
  `Mdp` varchar(20) DEFAULT NULL,
  `TypeUser` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdUtilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUtilisateur`, `Login`, `Mdp`, `TypeUser`) VALUES
(1, 'root', 'root', 'admin'),
(2, 'user', 'user', 'abonne'),
(3, 'gerant', 'gerant', 'bibliothecaire');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
