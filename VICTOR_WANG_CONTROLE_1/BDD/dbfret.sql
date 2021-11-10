-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 nov. 2021 à 15:45
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbfret`
--

-- --------------------------------------------------------

--
-- Structure de la table `affretement`
--

DROP TABLE IF EXISTS `affretement`;
CREATE TABLE IF NOT EXISTS `affretement` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` varchar(10) NOT NULL,
  `idBatFret` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idBatFret` (`idBatFret`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affretement`
--

INSERT INTO `affretement` (`id`, `date`, `heure`, `idBatFret`) VALUES
(1, '2021-03-01', '12h30', 1),
(2, '2021-11-01', '20h00', 2),
(459629, '2021-09-01', '10h00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `bateaufret`
--

DROP TABLE IF EXISTS `bateaufret`;
CREATE TABLE IF NOT EXISTS `bateaufret` (
  `id` int(11) NOT NULL,
  `poidsMax` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bateaufret`
--

INSERT INTO `bateaufret` (`id`, `poidsMax`) VALUES
(1, '1000'),
(2, '850');

-- --------------------------------------------------------

--
-- Structure de la table `lot`
--

DROP TABLE IF EXISTS `lot`;
CREATE TABLE IF NOT EXISTS `lot` (
  `idAff` int(11) NOT NULL,
  `idLot` int(11) NOT NULL,
  `poids` int(20) NOT NULL,
  `idTran` int(11) NOT NULL,
  PRIMARY KEY (`idAff`,`idLot`),
  KEY `idTran` (`idTran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lot`
--

INSERT INTO `lot` (`idAff`, `idLot`, `poids`, `idTran`) VALUES
(1, 1, 500, 1),
(2, 2, 100, 2),
(459629, 3, 500, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tranche`
--

DROP TABLE IF EXISTS `tranche`;
CREATE TABLE IF NOT EXISTS `tranche` (
  `id` int(11) NOT NULL,
  `tarifunit` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tranche`
--

INSERT INTO `tranche` (`id`, `tarifunit`) VALUES
(1, '100'),
(2, '200');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affretement`
--
ALTER TABLE `affretement`
  ADD CONSTRAINT `affretement_ibfk_1` FOREIGN KEY (`idBatFret`) REFERENCES `bateaufret` (`id`);

--
-- Contraintes pour la table `lot`
--
ALTER TABLE `lot`
  ADD CONSTRAINT `lot_ibfk_1` FOREIGN KEY (`idAff`) REFERENCES `affretement` (`id`),
  ADD CONSTRAINT `lot_ibfk_2` FOREIGN KEY (`idTran`) REFERENCES `tranche` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
