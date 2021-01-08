-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 08 jan. 2021 à 23:16
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `covid`
--

-- --------------------------------------------------------

--
-- Structure de la table `ami`
--

CREATE TABLE `ami` (
  `user1` int DEFAULT NULL,
  `user2` int DEFAULT NULL,
  `valide` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ami`
--

INSERT INTO `ami` (`user1`, `user2`, `valide`) VALUES
(14, 15, b'1'),
(17, 14, b'1');

-- --------------------------------------------------------

--
-- Structure de la table `Event`
--

CREATE TABLE `Event` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `lieu` int NOT NULL,
  `description` text,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Event`
--

INSERT INTO `Event` (`id`, `date`, `start_hour`, `end_hour`, `lieu`, `description`, `user_id`) VALUES
(1, '2021-01-05', '18:00:00', '20:00:00', 5, 'Réunion COVID', 15),
(2, '2021-01-06', '19:00:00', '21:00:00', 3, 'Rendez-Vous chez le médecin', 14),
(3, '2021-01-01', '20:00:00', '22:00:00', 3, 'Repas de famille nouvel an', 17),
(5, '2020-12-24', '21:00:00', '23:30:00', 5, 'test admin', 14),
(6, '2021-01-03', '19:14:29', '21:14:29', 3, 'Test Contact', 19);

-- --------------------------------------------------------

--
-- Structure de la table `Location`
--

CREATE TABLE `Location` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `latitude` decimal(5,2) DEFAULT NULL,
  `longitude` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Location`
--

INSERT INTO `Location` (`id`, `nom`, `adresse`, `latitude`, `longitude`) VALUES
(3, 'Hôtel de ville', '25 Rue de la corde à linge', '654.00', '654.00'),
(5, 'Hopital', '23 Rue de la place', '-3.00', '-1.00'),
(6, 'Fac de Sciences', '38 Rue du Boucher', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Notifs`
--

CREATE TABLE `Notifs` (
  `id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `notif_type` varchar(255) NOT NULL,
  `time_sent` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Notifs`
--

INSERT INTO `Notifs` (`id`, `receiver_id`, `sender_id`, `notif_type`, `time_sent`, `is_read`) VALUES
(18, 17, 14, 'vous a retiré de sa liste d\'amis', '2021-01-08 20:27:21', 1),
(19, 17, 14, 'vous a envoyé une demande d\'ami', '2021-01-08 20:29:09', 1),
(20, 17, 14, 'vous a retiré de sa liste d\'amis', '2021-01-08 20:36:30', 1),
(27, 14, 17, 'vous a envoyé une demande d\'ami', '2021-01-08 22:13:05', 1);

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `birthdate` date NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'USER',
  `image` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'default_avatar.jpg',
  `statut` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`id`, `pseudo`, `login`, `password`, `nom`, `prenom`, `birthdate`, `role`, `image`, `statut`) VALUES
(14, 'jojo', 'joran', 'joran', 'Meunier', 'Joran', '1999-07-25', 'USER', 'default_avatar.jpg', b'1'),
(15, 'test', 'test', 'test', 'test', 'test', '2020-12-30', 'USER', 'default_avatar.jpg', b'1'),
(17, 'admin', 'admin', 'admin', 'admin', 'admin', '2020-12-10', 'ADMIN', 'default_avatar.jpg', b'0'),
(19, 'boby', 'bob', 'bob', 'ross', 'Jako', '2002-01-24', 'USER', 'default_avatar.jpg', b'0');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ami`
--
ALTER TABLE `ami`
  ADD KEY `user1` (`user1`),
  ADD KEY `user2` (`user2`);

--
-- Index pour la table `Event`
--
ALTER TABLE `Event`
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `event_lieu` (`lieu`),
  ADD KEY `event_user` (`user_id`);

--
-- Index pour la table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Notifs`
--
ALTER TABLE `Notifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Event`
--
ALTER TABLE `Event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Location`
--
ALTER TABLE `Location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Notifs`
--
ALTER TABLE `Notifs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Event`
--
ALTER TABLE `Event`
  ADD CONSTRAINT `event_lieu` FOREIGN KEY (`lieu`) REFERENCES `Location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `event_user` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Notifs`
--
ALTER TABLE `Notifs`
  ADD CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `sender_id` FOREIGN KEY (`sender_id`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
