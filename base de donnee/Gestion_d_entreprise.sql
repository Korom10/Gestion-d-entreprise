-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 déc. 2021 à 10:45
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Gestion_d'entreprise`
--

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `id_arti` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `Carasteristique` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Caisse`
--

CREATE TABLE `Caisse` (
  `idCaisse` int(12) NOT NULL,
  `NumeroDeCaisse` int(12) NOT NULL,
  `balance` int(11) NOT NULL,
  `compte` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id_client` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `Adresse` varchar(230) NOT NULL,
  `Categorie` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Compt`
--

CREATE TABLE `Compt` (
  `idCompt` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `login` varchar(230) NOT NULL,
  `password` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Entrepise`
--

CREATE TABLE `Entrepise` (
  `id_entreprise` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `ville` varchar(230) NOT NULL,
  `telephone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE `Facture` (
  `idFacture` int(12) NOT NULL,
  `Designation` varchar(230) NOT NULL,
  `Quantite` int(12) NOT NULL,
  `PrixUnitaire` int(12) NOT NULL,
  `PrixTotal` int(12) NOT NULL,
  `Total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseur`
--

CREATE TABLE `Fournisseur` (
  `id_fourni` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `ville` varchar(230) NOT NULL,
  `Adresse` varchar(230) NOT NULL,
  `Telephone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Gerant`
--

CREATE TABLE `Gerant` (
  `id_gerant` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `Telephone` int(12) NOT NULL,
  `email` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `id_prod` int(12) NOT NULL,
  `Nom` varchar(230) NOT NULL,
  `Marque` varchar(230) NOT NULL,
  `type` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id_arti`);

--
-- Index pour la table `Caisse`
--
ALTER TABLE `Caisse`
  ADD PRIMARY KEY (`idCaisse`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `Compt`
--
ALTER TABLE `Compt`
  ADD PRIMARY KEY (`idCompt`);

--
-- Index pour la table `Entrepise`
--
ALTER TABLE `Entrepise`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `Facture`
--
ALTER TABLE `Facture`
  ADD PRIMARY KEY (`idFacture`);

--
-- Index pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  ADD PRIMARY KEY (`id_fourni`);

--
-- Index pour la table `Gerant`
--
ALTER TABLE `Gerant`
  ADD PRIMARY KEY (`id_gerant`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `id_arti` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Caisse`
--
ALTER TABLE `Caisse`
  MODIFY `idCaisse` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id_client` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Compt`
--
ALTER TABLE `Compt`
  MODIFY `idCompt` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Entrepise`
--
ALTER TABLE `Entrepise`
  MODIFY `id_entreprise` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Facture`
--
ALTER TABLE `Facture`
  MODIFY `idFacture` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  MODIFY `id_fourni` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Gerant`
--
ALTER TABLE `Gerant`
  MODIFY `id_gerant` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `id_prod` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
