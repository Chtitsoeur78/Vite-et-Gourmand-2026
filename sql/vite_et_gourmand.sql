-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 20 mai 2026 à 18:13
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vite_et_gourmand`
--

-- --------------------------------------------------------

--
-- Structure de la table `allergenes`
--

CREATE TABLE `allergenes` (
  `id_allergene` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `allergenes`
--

INSERT INTO `allergenes` (`id_allergene`, `libelle`) VALUES
(1, 'gluten / cereales avec gluten'),
(2, 'crustaces'),
(3, 'oeufs'),
(4, 'arachide / cacahuetes'),
(5, 'soja'),
(6, 'lait'),
(7, 'fruits a coque'),
(8, 'celeri'),
(9, 'moutarde'),
(10, 'sesame'),
(11, 'poisson'),
(12, 'lupin'),
(13, 'sulfites'),
(14, 'mollusques');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_commande` int(11) UNSIGNED NOT NULL,
  `id_commune` int(11) UNSIGNED NOT NULL,
  `id_utilisateur` int(11) UNSIGNED NOT NULL,
  `id_statut_commande` int(11) UNSIGNED NOT NULL,
  `id_horaire_livraison` int(11) UNSIGNED NOT NULL,
  `date_commande` date NOT NULL,
  `date_livraison` date NOT NULL,
  `nom_menu` varchar(50) NOT NULL,
  `nb_entree1` int(4) UNSIGNED NOT NULL,
  `nb_entree2` int(4) UNSIGNED NOT NULL,
  `nb_dessert1` int(4) UNSIGNED NOT NULL,
  `nb_dessert2` int(4) UNSIGNED NOT NULL,
  `nb_personnes` tinyint(3) UNSIGNED NOT NULL,
  `prix_menu` decimal(6,2) NOT NULL,
  `prix_total` decimal(6,2) NOT NULL,
  `pret_materiel` tinyint(1) NOT NULL,
  `retour_materiel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `id_commune`, `id_utilisateur`, `id_statut_commande`, `id_horaire_livraison`, `date_commande`, `date_livraison`, `nom_menu`, `nb_entree1`, `nb_entree2`, `nb_dessert1`, `nb_dessert2`, `nb_personnes`, `prix_menu`, `prix_total`, `pret_materiel`, `retour_materiel`) VALUES
(6, 240, 13, 0, 3, '2026-05-17', '2026-06-25', 'charentes', 0, 0, 0, 0, 8, 0.00, 0.00, 0, 0),
(7, 240, 13, 0, 1, '2026-05-17', '2026-06-07', 'Menu Charentes', 0, 0, 0, 0, 18, 0.00, 0.00, 0, 0),
(8, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 14, 4, 12, 6, 18, 0.00, 0.00, 0, 0),
(9, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 15, 3, 5, 13, 18, 0.00, 0.00, 0, 0),
(10, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 7, 11, 5, 13, 18, 0.00, 0.00, 0, 0),
(11, 240, 13, 0, 2, '2026-05-17', '2026-06-05', 'Menu Charentes', 5, 7, 9, 3, 12, 0.00, 0.00, 0, 0),
(12, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 12, 6, 7, 11, 18, 0.00, 0.00, 0, 0),
(13, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 14, 4, 2, 16, 18, 0.00, 0.00, 0, 0),
(14, 240, 13, 0, 1, '2026-05-17', '2026-05-31', 'Menu Le Jardin de Jose', 13, 5, 4, 14, 18, 0.00, 0.00, 0, 0),
(15, 240, 13, 0, 1, '2026-05-17', '2026-05-27', 'Menu Charentes', 12, 1, 5, 8, 13, 0.00, 0.00, 0, 0),
(16, 240, 13, 0, 4, '2026-05-17', '2026-06-04', 'Menu Fiesta', 0, 0, 0, 0, 12, 0.00, 0.00, 0, 0),
(17, 240, 13, 0, 4, '2026-05-17', '2026-06-04', 'Menu Fiesta', 7, 5, 2, 10, 12, 0.00, 0.00, 0, 0),
(18, 240, 13, 0, 1, '2026-05-17', '2026-05-28', 'Menu Mariage', 0, 0, 0, 0, 46, 0.00, 0.00, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commune_gironde`
--

CREATE TABLE `commune_gironde` (
  `id_commune` int(11) UNSIGNED NOT NULL,
  `commune_gironde` varchar(70) NOT NULL,
  `kilometrage_bordeaux` int(11) NOT NULL,
  `frais_livraison_euros` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commune_gironde`
--

INSERT INTO `commune_gironde` (`id_commune`, `commune_gironde`, `kilometrage_bordeaux`, `frais_livraison_euros`) VALUES
(1, 'Abzac', 58, 39.22),
(2, 'Aillas', 71, 46.89),
(3, 'Ambarès-et-Lagrave', 15, 13.85),
(4, 'Ambès', 29, 22.11),
(5, 'Andernos-les-Bains', 48, 33.32),
(6, 'Anglade', 67, 44.53),
(7, 'Arbanats', 31, 23.29),
(8, 'Arcachon', 66, 43.94),
(9, 'Arcins', 36, 26.24),
(10, 'Arès', 50, 34.50),
(11, 'Arsac', 25, 19.75),
(12, 'Artigues-près-Bordeaux', 15, 13.85),
(13, 'Arveyres', 30, 22.70),
(14, 'Asques', 30, 22.70),
(15, 'Aubiac', 55, 37.45),
(16, 'Audenge', 49, 33.91),
(17, 'Auriolles', 70, 46.30),
(18, 'Auros', 59, 39.81),
(19, 'Avensan', 31, 23.29),
(20, 'Ayguemorte-les-Graves', 24, 19.16),
(21, 'Bagas', 83, 53.97),
(22, 'Baigneaux', 40, 28.60),
(23, 'Balizac', 54, 36.86),
(24, 'Barie', 66, 43.94),
(25, 'Baron', 2, 6.18),
(26, 'Barsac', 83, 53.97),
(27, 'Bassanne', 74, 48.66),
(28, 'Bassens', 12, 12.08),
(29, 'Baurech', 25, 19.75),
(30, 'Bayas', 52, 35.68),
(31, 'Bayon/Gironde', 44, 30.96),
(32, 'Bazas', 68, 45.12),
(33, 'Beautiran', 26, 20.34),
(34, 'Bégadan', 71, 46.89),
(35, 'Bègles', 6, 8.54),
(36, 'Béguey', 43, 30.37),
(37, 'Belin-Beliet', 45, 31.55),
(38, 'Bellebat', 34, 25.06),
(39, 'Bellefond', 33, 24.47),
(40, 'Belvès-de-Castillon', 58, 39.22),
(41, 'Bernos-Beaulac', 66, 43.94),
(42, 'Berson', 43, 30.37),
(43, 'Berthez', 51, 35.09),
(44, 'Beychac-et-Caillau', 24, 19.16),
(45, 'Bieujac', 59, 39.81),
(46, 'Biganos', 46, 32.14),
(47, 'Birac', 75, 49.25),
(48, 'Blaignac', 73, 48.07),
(49, 'Blaignan-Prignac', 67, 44.53),
(50, 'Blanquefort', 11, 11.49),
(51, 'Blasimon', 57, 38.63),
(52, 'Blaye', 51, 35.09),
(53, 'Blésignac', 36, 26.24),
(54, 'Bommes', 48, 33.32),
(55, 'Bonnetan', 17, 15.03),
(56, 'Bonzac', 52, 35.68),
(57, 'Bordeaux', 1, 5.00),
(58, 'Bossugan', 61, 40.99),
(59, 'Bouliac', 11, 11.49),
(60, 'Bourdelles', 78, 51.02),
(61, 'Bourg', 40, 28.60),
(62, 'Bourideys', 77, 50.43),
(63, 'Brach', 39, 28.01),
(64, 'Branne', 42, 29.78),
(65, 'Brannens', 58, 39.22),
(66, 'Braud-et-St-Louis', 67, 44.53),
(67, 'Brouqueyran', 54, 36.86),
(68, 'Bruges', 6, 8.54),
(69, 'Budos', 42, 29.78),
(70, 'Cabanac - Villagrains', 36, 26.24),
(71, 'Cabara', 45, 31.55),
(72, 'Cadarsac', 32, 23.88),
(73, 'Cadaujac', 13, 12.67),
(74, 'Cadillac-en-Fronsadais', 29, 22.11),
(75, 'Cadillac-sur-Garonne', 42, 29.78),
(76, 'Camarsac', 24, 19.16),
(77, 'Cambes', 19, 16.21),
(78, 'Camblanes-et-Meynac', 7, 9.13),
(79, 'Camiac-et-Saint-Denis', 30, 22.70),
(80, 'Camiran', 68, 45.12),
(81, 'Camps-sur-l\'Isle', 62, 41.58),
(82, 'Campugnan', 54, 36.86),
(83, 'Canéjan', 13, 12.67),
(84, 'Capian', 32, 23.88),
(85, 'Caplong', 75, 49.25),
(86, 'Captieux', 87, 56.33),
(87, 'Carbon-Blanc', 12, 12.08),
(88, 'Carcans', 49, 33.91),
(89, 'Cardan', 32, 23.88),
(90, 'Carignan-de-Bordeaux', 14, 13.26),
(91, 'Cars', 48, 33.32),
(92, 'Cartelègue', 53, 36.27),
(93, 'Casseuil', 59, 39.81),
(94, 'Castelmoron-d\'Albret', 58, 39.22),
(95, 'Castelnau-de-Médoc', 29, 22.11),
(96, 'Castelviel', 50, 34.50),
(97, 'Castets et Castillon', 56, 38.04),
(98, 'Castillon-la-Bataille', 47, 32.73),
(99, 'Castres-Gironde', 24, 19.16),
(100, 'Caudrot', 55, 37.45),
(101, 'Caumont', 48, 33.32),
(102, 'Cauvignac', 64, 42.76),
(103, 'Cavignac', 38, 27.42),
(104, 'Cazalis', 79, 51.61),
(105, 'Cazats', 50, 34.50),
(106, 'Cazaugitat', 56, 38.04),
(107, 'Cénac', 15, 13.85),
(108, 'Cenon', 9, 10.31),
(109, 'Cérons', 39, 28.01),
(110, 'Cessac', 44, 30.96),
(111, 'Cestas', 18, 15.62),
(112, 'Cézac', 37, 26.83),
(113, 'Chamadelle', 65, 43.35),
(114, 'Cissac-Médoc', 53, 36.27),
(115, 'Civrac-de-Blaye', 41, 29.19),
(116, 'Civrac-en-Médoc', 67, 44.53),
(117, 'Civrac-sur-Dordogne', 39, 28.01),
(118, 'Cleyrac', 53, 36.27),
(119, 'Coimères', 53, 36.27),
(120, 'Coirac', 46, 32.14),
(121, 'Comps', 41, 29.19),
(122, 'Coubeyrac', 60, 40.40),
(123, 'Couquèques', 71, 46.89),
(124, 'Courpiac', 42, 29.78),
(125, 'Cours-de-Monségur ', 72, 47.48),
(126, 'Cours-les-Bains', 76, 49.84),
(127, 'Coutras', 51, 35.09),
(128, 'Coutures', 63, 42.17),
(129, 'Créon', 26, 20.34),
(130, 'Croignon', 23, 18.57),
(131, 'Cubnezais', 35, 25.65),
(132, 'Cubzac-les-Ponts', 22, 17.98),
(133, 'Cudos', 64, 42.76),
(134, 'Cursan', 25, 19.75),
(135, 'Cussac-Fort-Médoc ', 39, 28.01),
(136, 'Daignac', 22, 17.98),
(137, 'Dardenac', 38, 27.42),
(138, 'Daubèze', 48, 33.32),
(139, 'Dieulivol', 98, 62.82),
(140, 'Donnezac', 62, 41.58),
(141, 'Donzac', 48, 33.32),
(142, 'Doulezon', 63, 42.17),
(143, 'Escaudes', 88, 56.92),
(144, 'Escoussans', 50, 34.50),
(145, 'Espiet', 31, 23.29),
(146, 'Étauliers', 61, 40.99),
(147, 'Eynesse', 73, 48.07),
(148, 'Eyrans', 54, 36.86),
(149, 'Eysines', 8, 9.72),
(150, 'Faleyras', 38, 27.42),
(151, 'Fargues', 52, 35.68),
(152, 'Fargues-Saint-Hilaire', 15, 13.85),
(153, 'Flaujagues', 61, 40.99),
(154, 'Floirac', 7, 9.13),
(155, 'Floudès', 77, 50.43),
(156, 'Fontet', 73, 48.07),
(157, 'Fossès-et-Baleyssac', 83, 53.97),
(158, 'Fours', 54, 36.86),
(159, 'Francs', 62, 41.58),
(160, 'Fronsac', 40, 28.60),
(161, 'Frontenac', 45, 31.55),
(162, 'Gabarnac', 50, 34.50),
(163, 'Gaillan-en-Médoc', 67, 44.53),
(164, 'Gajac', 69, 45.71),
(165, 'Galgon', 40, 28.60),
(166, 'Gans', 65, 43.35),
(167, 'Gardegan-et-Tourtirac', 60, 40.40),
(168, 'Gauriac', 45, 31.55),
(169, 'Gauriaguet', 32, 23.88),
(170, 'Générac', 56, 38.04),
(171, 'Génissac', 35, 25.65),
(172, 'Gensac', 68, 45.12),
(173, 'Gironde-sur-Dropt', 63, 42.17),
(174, 'Giscos', 89, 57.51),
(175, 'Gornac', 56, 38.04),
(176, 'Goualade', 83, 53.97),
(177, 'Gours', 69, 45.71),
(178, 'Gradignan', 10, 10.90),
(179, 'Grayan-et-l\'Hôpital', 85, 55.15),
(180, 'Grézillac', 42, 29.78),
(181, 'Grignols', 75, 49.25),
(182, 'Guillac', 35, 25.65),
(183, 'Guillos', 42, 29.78),
(184, 'Guîtres', 54, 36.86),
(185, 'Gujan-Mestras', 56, 38.04),
(186, 'Haux', 27, 20.93),
(187, 'Hostens', 49, 33.91),
(188, 'Hourtin', 61, 40.99),
(189, 'Hure', 74, 48.66),
(190, 'Illats', 39, 28.01),
(191, 'Isle-Saint-Georges', 24, 19.16),
(192, 'Izon', 26, 20.34),
(193, 'Jau-Dignac-et-Loirac', 81, 52.79),
(194, 'Jugazan', 40, 28.60),
(195, 'Juillac', 64, 42.76),
(196, 'La Brède', 25, 19.75),
(197, 'La Lande-de-Fronsac', 29, 22.11),
(198, 'La Réole', 78, 51.02),
(199, 'La Rivière', 36, 26.24),
(200, 'La Roquille', 80, 52.20),
(201, 'La Sauve', 29, 22.11),
(202, 'La Teste-de-Buch', 60, 40.40),
(203, 'Labarde', 27, 20.93),
(204, 'Labescau', 59, 39.81),
(205, 'Lacanau', 56, 38.04),
(206, 'Ladaux', 41, 29.19),
(207, 'Lados', 54, 36.86),
(208, 'Lagorce', 54, 36.86),
(209, 'Lalande-de-Pomerol   ', 39, 28.01),
(210, 'Lamarque', 36, 26.24),
(211, 'Lamothe-Landerron  ', 79, 51.61),
(212, 'Landerrouat', 70, 46.30),
(213, 'Landerrouet-sur-Ségur   ', 60, 40.40),
(214, 'Landiras', 42, 29.78),
(215, 'Langoiran', 24, 19.16),
(216, 'Langon', 47, 32.73),
(217, 'Lansac', 36, 26.24),
(218, 'Lanton', 44, 30.96),
(219, 'Lapouyade', 43, 30.37),
(220, 'Laroque', 30, 22.70),
(221, 'Lartigue', 84, 54.56),
(222, 'Laruscade', 42, 29.78),
(223, 'Latresne', 11, 11.49),
(224, 'Lavazan', 70, 46.30),
(225, 'Le Barp', 32, 23.88),
(226, 'Le Bouscat', 4, 7.36),
(227, 'Le Fieu', 63, 42.17),
(228, 'Le Haillan', 9, 10.31),
(229, 'Le Nizan', 55, 37.45),
(230, 'Le Pian-Médoc   ', 58, 39.22),
(231, 'Le Pian-sur-Garonne   ', 52, 35.68),
(232, 'Le Porge', 44, 30.96),
(233, 'Le Pout', 25, 19.75),
(234, 'Le Puy', 66, 43.94),
(235, 'Le Taillan-Médoc ', 11, 11.49),
(236, 'Le Teich', 52, 35.68),
(237, 'Le Temple', 36, 26.24),
(238, 'Le Tourne', 24, 19.16),
(239, 'Le Tuzan', 48, 33.32),
(240, 'Le Verdon-sur-Mer', 98, 62.82),
(241, 'Lège-Cap-Ferret', 49, 33.91),
(242, 'Léogeats', 48, 33.32),
(243, 'Léognan', 14, 13.26),
(244, 'Lerm-et-Musset ', 73, 48.07),
(245, 'Les Artigues-de-Lussac   ', 43, 30.37),
(246, 'Les Billaux', 37, 26.83),
(247, 'Les Églisottes-et-Chalaures ', 60, 40.40),
(248, 'Les Esseintes   ', 59, 39.81),
(249, 'Les Lèves-et-Thoumeyragues  ', 71, 46.89),
(250, 'Les Peintures', 55, 37.45),
(251, 'Les Salles-de-Castillon', 57, 38.63),
(252, 'Lesparre-Médoc ', 64, 42.76),
(253, 'Lestiac-sur-Garonne', 27, 20.93),
(254, 'Libourne', 33, 24.47),
(255, 'Lignan-de-Bazas', 62, 41.58),
(256, 'Lignan-de-Bordeaux', 17, 15.03),
(257, 'Ligueux', 82, 53.38),
(258, 'Listrac-de-Durèze ', 58, 39.22),
(259, 'Listrac-Médoc ', 35, 25.65),
(260, 'Lormont', 10, 10.90),
(261, 'Loubens', 59, 39.81),
(262, 'Louchats', 40, 28.60),
(263, 'Loupes', 20, 16.80),
(264, 'Loupiac', 42, 29.78),
(265, 'Loupiac-de-la-Réole   ', 68, 45.12),
(266, 'Lucmau', 69, 45.71),
(267, 'Ludon-Médoc', 18, 15.62),
(268, 'Lugaignac', 34, 25.06),
(269, 'Lugasson', 44, 30.96),
(270, 'Lugon-et-l\'Île-du-Carnay   ', 32, 23.88),
(271, 'Lugos', 56, 38.04),
(272, 'Lussac', 46, 32.14),
(273, 'Macau', 21, 17.39),
(274, 'Madirac', 20, 16.80),
(275, 'Maransin', 43, 30.37),
(276, 'Marcenais', 39, 28.01),
(277, 'Marcheprime', 29, 22.11),
(278, 'Margaux-Cantenac ', 27, 20.93),
(279, 'Margueron', 84, 54.56),
(280, 'Marimbault', 72, 47.48),
(281, 'Marions', 80, 52.20),
(282, 'Marsas', 34, 25.06),
(283, 'Martignas-sur-Jalle', 19, 16.21),
(284, 'Martillac', 20, 16.80),
(285, 'Martres', 44, 30.96),
(286, 'Masseilles', 74, 48.66),
(287, 'Massugas', 72, 47.48),
(288, 'Mauriac', 62, 41.58),
(289, 'Mazères', 55, 37.45),
(290, 'Mazion', 51, 35.09),
(291, 'Mérignac', 6, 8.54),
(292, 'Mérignas', 55, 37.45),
(293, 'Mesterrieux', 86, 55.74),
(294, 'Mios', 44, 30.96),
(295, 'Mombrier', 42, 29.78),
(296, 'Mongauzy', 79, 51.61),
(297, 'Monprimblanc', 49, 33.91),
(298, 'Monségur', 90, 58.10),
(299, 'Montagne', 50, 34.50),
(300, 'Montagoudin', 77, 50.43),
(301, 'Montignac', 42, 29.78),
(302, 'Montussan', 19, 16.21),
(303, 'Morizès', 67, 44.53),
(304, 'Mouillac', 33, 24.47),
(305, 'Mouliets-et-Villemartin', 57, 38.63),
(306, 'Moulis-en-Médoc', 35, 25.65),
(307, 'Moulon', 38, 27.42),
(308, 'Mourens', 53, 36.27),
(309, 'Naujac-sur-Mer', 64, 42.76),
(310, 'Naujan-et-Postiac', 38, 27.42),
(311, 'Néac', 45, 31.55),
(312, 'Nérigean', 34, 25.06),
(313, 'Neuffons', 88, 56.92),
(314, 'Noaillac', 52, 35.68),
(315, 'Noaillan', 61, 40.99),
(316, 'Omet', 47, 32.73),
(317, 'Ordonnac', 67, 44.53),
(318, 'Origne', 48, 33.32),
(319, 'Paillet', 29, 22.11),
(320, 'Parempuyre', 18, 15.62),
(321, 'Pauillac', 52, 35.68),
(322, 'Pellegrue', 72, 47.48),
(323, 'Périssac', 36, 26.24),
(324, 'Pessac', 6, 8.54),
(325, 'Pessac-sur-Dordogne', 67, 44.53),
(326, 'Petit-Palais-et-Cornemps', 63, 42.17),
(327, 'Peujard', 32, 23.88),
(328, 'Pineuilh', 77, 50.43),
(329, 'Plassac', 50, 34.50),
(330, 'Pleine-Selve', 67, 44.53),
(331, 'Podensac', 42, 29.78),
(332, 'Pomerol', 43, 30.37),
(333, 'Pompéjac', 74, 48.66),
(334, 'Pompignac', 15, 13.85),
(335, 'Pondaurat', 72, 47.48),
(336, 'Porchères', 69, 45.71),
(337, 'Porte-de-Benauge', 52, 35.68),
(338, 'Portets', 28, 21.52),
(339, 'Préchac', 67, 44.53),
(340, 'Preignac', 46, 32.14),
(341, 'Prignac-et-Marcamps', 31, 23.29),
(342, 'Pugnac', 37, 26.83),
(343, 'Puisseguin', 55, 37.45),
(344, 'Pujols', 60, 40.40),
(345, 'Pujols-sur-Ciron', 44, 30.96),
(346, 'Puybarban', 74, 48.66),
(347, 'Puynormand', 67, 44.53),
(348, 'Queyrac', 72, 47.48),
(349, 'Quinsac', 16, 14.44),
(350, 'Rauzan', 43, 30.37),
(351, 'Reignac', 62, 41.58),
(352, 'Rimons', 72, 47.48),
(353, 'Riocaud', 83, 53.97),
(354, 'Rions', 32, 23.88),
(355, 'Roaillan', 55, 37.45),
(356, 'Romagne', 41, 29.19),
(357, 'Roquebrune', 85, 55.15),
(358, 'Ruch', 59, 39.81),
(359, 'Sablons', 53, 36.27),
(360, 'Sadirac', 22, 17.98),
(361, 'Saillans', 39, 28.01),
(362, 'Saint-Aignan', 37, 26.83),
(363, 'Saint-André-de-Cubzac', 26, 20.34),
(364, 'Saint-André-du-Bois', 58, 39.22),
(365, 'Saint-André-et-Appelles', 77, 50.43),
(366, 'Saint-Androny', 57, 38.63),
(367, 'Saint-Antoine-du-Queyret', 67, 44.53),
(368, 'Saint-Antoine-sur-l\'Isle', 71, 46.89),
(369, 'Saint-Aubin-de-Blaye', 59, 39.81),
(370, 'Saint-Aubin-de-Branne', 45, 31.55),
(371, 'Saint-Aubin-de-Médoc', 15, 13.85),
(372, 'Saint-Avit-de-Soulège', 71, 46.89),
(373, 'Saint-Avit-Saint-Nazaire', 76, 49.84),
(374, 'Saint-Brice', 48, 33.32),
(375, 'Saint-Caprais-de-Bordeaux ', 18, 15.62),
(376, 'Saint-Christoly-de-Blaye ', 43, 30.37),
(377, 'Saint-Christoly-Médoc', 71, 46.89),
(378, 'Saint-Christophe-de-Double    ', 68, 45.12),
(379, 'Saint-Christophe-des-Bardes   ', 47, 32.73),
(380, 'Saint-Cibard', 53, 36.27),
(381, 'Saint-Ciers-d\'Abzac ', 40, 28.60),
(382, 'Saint-Ciers-de-Canesse', 43, 30.37),
(383, 'Saint-Ciers-sur-Gironde', 65, 43.35),
(384, 'Saint-Côme', 62, 41.58),
(385, 'Saint-Denis-de-Pile', 42, 29.78),
(386, 'Saint-Émilion', 41, 29.19),
(387, 'Saint-Estèphe', 60, 40.40),
(388, 'Saint-Étienne-de-Lisse', 46, 32.14),
(389, 'Saint-Exupéry', 65, 43.35),
(390, 'Saint-Félix-de-Foncaude', 43, 30.37),
(391, 'Saint-Ferme', 62, 41.58),
(392, 'Saint-Genès-de-Blaye', 52, 35.68),
(393, 'Saint-Genès-de-Castillon', 49, 33.91),
(394, 'Saint-Genès-de-Fronsac', 33, 24.47),
(395, 'Saint-Genès-de-Lombaud', 23, 18.57),
(396, 'Saint-Germain-d\'Esteuil', 62, 41.58),
(397, 'Saint-Germain-de-Grave', 50, 34.50),
(398, 'Saint-Germain-de-la-Rivière', 33, 24.47),
(399, 'Saint-Germain-du-Puch', 26, 20.34),
(400, 'Saint-Gervais', 28, 21.52),
(401, 'Saint-Girons-d\'Aiguevives', 45, 31.55),
(402, 'Saint-Hilaire-de-la-Noaille', 61, 40.99),
(403, 'Saint-Hilaire-du-Bois', 44, 30.96),
(404, 'Saint-Hippolyte', 48, 33.32),
(405, 'Saint-Jean-d\'Illac', 18, 15.62),
(406, 'Saint-Jean-de-Blaignac', 41, 29.19),
(407, 'Saint-Julien-Beychevelle', 49, 33.91),
(408, 'Saint-Laurent-d\'Arce', 31, 23.29),
(409, 'Saint-Laurent-des-Combes', 43, 30.37),
(410, 'Saint-Laurent-du-Bois', 50, 34.50),
(411, 'Saint-Laurent-du-Plan', 66, 43.94),
(412, 'Saint-Laurent-Médoc', 44, 30.96),
(413, 'Saint-Léger-de-Balson', 55, 37.45),
(414, 'Saint-Léon', 33, 24.47),
(415, 'Saint-Loubert', 54, 36.86),
(416, 'Saint-Loubès', 20, 16.80),
(417, 'Saint-Louis-de-Montferrand ', 16, 14.44),
(418, 'Saint-Macaire', 50, 34.50),
(419, 'Saint-Magne', 38, 27.42),
(420, 'Saint-Magne-de-Castillon', 52, 35.68),
(421, 'Saint-Maixant', 53, 36.27),
(422, 'Saint-Mariens', 41, 29.19),
(423, 'Saint-Martial', 62, 41.58),
(424, 'Saint-Martin-de-Laye', 50, 34.50),
(425, 'Saint-Martin-de-Lerm', 87, 56.33),
(426, 'Saint-Martin-de-Sescas', 57, 38.63),
(427, 'Saint-Martin-du-Bois', 42, 29.78),
(428, 'Saint-Martin-du-Puy', 70, 46.30),
(429, 'Saint-Martin-Lacaussade', 51, 35.09),
(430, 'Saint-Médard-d\'Eyrans', 20, 16.80),
(431, 'Saint-Médard-de-Guizières', 61, 40.99),
(432, 'Saint-Médard-en-Jalles', 15, 13.85),
(433, 'Saint-Michel-de-Castelnau', 95, 61.05),
(434, 'Saint-Michel-de-Fronsac', 37, 26.83),
(435, 'Saint-Michel-de-Lapujade', 83, 53.97),
(436, 'Saint-Michel-de-Rieufret', 34, 25.06),
(437, 'Saint-Morillon', 29, 22.11),
(438, 'Saint-Palais', 66, 43.94),
(439, 'Saint-Pardon-de-Conques', 56, 38.04),
(440, 'Saint-Paul', 49, 33.91),
(441, 'Saint-Pey-d\'Armens', 48, 33.32),
(442, 'Saint-Pey-de-Castets', 55, 37.45),
(443, 'Saint-Philippe-d\'Aiguille', 58, 39.22),
(444, 'Saint-Philippe-du-Seignal', 79, 51.61),
(445, 'Saint-Pierre-d\'Aurillac', 55, 37.45),
(446, 'Saint-Pierre-de-Bat', 53, 36.27),
(447, 'Saint-Pierre-de-Mons', 53, 36.27),
(448, 'Saint-Quentin-de-Baron', 28, 21.52),
(449, 'Saint-Quentin-de-Caplong', 74, 48.66),
(450, 'Saint-Romain-la-Virvée', 28, 21.52),
(451, 'Saint-Sauveur', 51, 35.09),
(452, 'Saint-Sauveur-de-Puynormand', 65, 43.35),
(453, 'Saint-Savin', 46, 32.14),
(454, 'Saint-Selve', 27, 20.93),
(455, 'Saint-Seurin-de-Bourg', 42, 29.78),
(456, 'Saint-Seurin-de-Cadourne', 64, 42.76),
(457, 'Saint-Seurin-de-Cursac', 52, 35.68),
(458, 'Saint-Seurin-sur-l\'Isle', 65, 43.35),
(459, 'Saint-Sève', 80, 52.20),
(460, 'Saint-Sulpice-de-Faleyrens', 42, 29.78),
(461, 'Saint-Sulpice-de-Guilleragues', 86, 55.74),
(462, 'Saint-Sulpice-de-Pommiers', 68, 45.12),
(463, 'Saint-Sulpice-et-Cameyrac', 11, 11.49),
(464, 'Saint-Symphorien', 62, 41.58),
(465, 'Saint-Trojan', 45, 31.55),
(466, 'Saint-Vincent-de-Paul', 20, 16.80),
(467, 'Saint-Vincent-de-Pertignas ', 42, 29.78),
(468, 'Saint-Vivien-de-Blaye', 39, 28.01),
(469, 'Saint-Vivien-de-Médoc', 84, 54.56),
(470, 'Saint-Vivien-de-Monségur', 72, 47.48),
(471, 'Saint-Yzan-de-Soudiac', 43, 30.37),
(472, 'Saint-Yzans-de-Médoc', 68, 45.12),
(473, 'Sainte-Colombe', 56, 38.04),
(474, 'Sainte-Croix-du-Mont', 46, 32.14),
(475, 'Sainte-Eulalie', 15, 13.85),
(476, 'Sainte-Florence', 39, 28.01),
(477, 'Sainte-Foy-la-Grande', 71, 46.89),
(478, 'Sainte-Foy-la-Longue', 62, 41.58),
(479, 'Sainte-Gemme', 57, 38.63),
(480, 'Sainte-Hélène', 30, 22.70),
(481, 'Sainte-Radegonde', 60, 40.40),
(482, 'Sainte-Terr', 53, 36.27),
(483, 'Salaunes', 24, 19.16),
(484, 'Sallebœuf', 18, 15.62),
(485, 'Salles', 48, 33.32),
(486, 'Samonac', 40, 28.60),
(487, 'Saucats', 23, 18.57),
(488, 'Saugon', 48, 33.32),
(489, 'Saumos', 39, 28.01),
(490, 'Sauternes', 56, 38.04),
(491, 'Sauveterre-de-Guyenne', 63, 42.17),
(492, 'Sauviac', 74, 48.66),
(493, 'Savignac', 62, 41.58),
(494, 'Savignac-de-l\'Isle', 49, 33.91),
(495, 'Semens', 52, 35.68),
(496, 'Sendets', 70, 46.30),
(497, 'Sigalens', 76, 49.84),
(498, 'Sillas', 77, 50.43),
(499, 'Soulac-sur-Mer', 94, 60.46),
(500, 'Soulignac', 38, 27.42),
(501, 'Soussac', 71, 46.89),
(502, 'Soussans', 37, 26.83),
(503, 'Tabanac', 25, 19.75),
(504, 'Taillecavat', 96, 61.64),
(505, 'Talais', 87, 56.33),
(506, 'Talence', 6, 8.54),
(507, 'Targon', 36, 26.24),
(508, 'Tarnès', 31, 23.29),
(509, 'Tauriac', 36, 26.24),
(510, 'Tayac', 69, 45.71),
(511, 'Teuillac', 42, 29.78),
(512, 'Tizac-de-Curton', 32, 23.88),
(513, 'Tizac-de-Lapouyade', 43, 30.37),
(514, 'Toulenne', 50, 34.50),
(515, 'Tresses', 12, 12.08),
(516, 'Uzeste', 62, 41.58),
(517, 'Val de Virvée', 30, 22.70),
(518, 'Val-de-Livenne', 62, 41.58),
(519, 'Valeyrac', 77, 50.43),
(520, 'Vayres', 29, 22.11),
(521, 'Vendays-Montalivet', 81, 52.79),
(522, 'Vensac', 78, 51.02),
(523, 'Vérac', 33, 24.47),
(524, 'Verdelais', 52, 35.68),
(525, 'Vertheuil', 57, 38.63),
(526, 'Vignonet', 45, 31.55),
(527, 'Villandraut', 57, 38.63),
(528, 'Villegouge', 36, 26.24),
(529, 'Villenave-d\'Ornon', 8, 9.72),
(530, 'Villenave-de-Rions', 32, 23.88),
(531, 'Villeneuve', 48, 33.32),
(532, 'Virelade', 33, 24.47),
(533, 'Virsac', 29, 22.11),
(534, 'Yvrac', 15, 13.85);

-- --------------------------------------------------------

--
-- Structure de la table `horaires_livraison`
--

CREATE TABLE `horaires_livraison` (
  `id_horaire_livraison` int(11) UNSIGNED NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `tranche_horaire` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `horaires_livraison`
--

INSERT INTO `horaires_livraison` (`id_horaire_livraison`, `heure_debut`, `heure_fin`, `tranche_horaire`) VALUES
(1, '11:00:00', '13:00:00', '11h a 13h'),
(2, '13:00:00', '15:00:00', '13h a 15h'),
(3, '18:00:00', '20:00:00', '18h a 20h'),
(4, '20:00:00', '22:00:00', '20h a 22h'),
(5, '22:00:00', '23:59:59', '22h a minuit');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id_menus` int(11) UNSIGNED NOT NULL,
  `titre_menus` varchar(100) NOT NULL,
  `id_plat` int(11) UNSIGNED NOT NULL,
  `id_regime` int(11) UNSIGNED NOT NULL,
  `nb_personnes_minimum` int(11) UNSIGNED NOT NULL,
  `prix_par_personne_euros` decimal(6,2) UNSIGNED NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages_contact`
--

CREATE TABLE `messages_contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `sujet_message` varchar(255) NOT NULL,
  `titre_message` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date_envoi` datetime NOT NULL DEFAULT current_timestamp(),
  `statut_message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages_contact`
--

INSERT INTO `messages_contact` (`id`, `pseudo`, `prenom`, `nom`, `email`, `sujet_message`, `titre_message`, `message`, `date_envoi`, `statut_message`) VALUES
(1, 'Chtitsoeur', 'Celine', 'belmer', 'chtitsoeur78@gmail.com', 'probleme-commande', 'PLAT IMMONDE', 'C\'était vraiment un mauvais plat vous venez de perdre un client', '2026-05-03 12:56:41', '');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `id_plat` int(11) UNSIGNED NOT NULL,
  `titre_plat` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plat_allergene`
--

CREATE TABLE `plat_allergene` (
  `id_plat` int(11) UNSIGNED NOT NULL,
  `id_allergene` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `regime`
--

CREATE TABLE `regime` (
  `id_regime` int(11) UNSIGNED NOT NULL,
  `libelle_regime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `libelle`) VALUES
(1, 'administrateur'),
(2, 'employe'),
(3, 'utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `statut_commande`
--

CREATE TABLE `statut_commande` (
  `id_statut_commande` int(11) UNSIGNED NOT NULL,
  `libelle_statut` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `statut_commande`
--

INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES
(0, 'en attente d acceptation'),
(1, 'acceptee'),
(2, 'en preparation'),
(3, 'en cours de livraison '),
(4, 'livree'),
(5, 'en attente de retour de materiel '),
(6, 'terminee'),
(7, 'annulee');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(11) UNSIGNED NOT NULL,
  `id_role` int(11) UNSIGNED NOT NULL,
  `raison_sociale` varchar(100) DEFAULT NULL,
  `pseudo` varchar(100) NOT NULL,
  `civilite` enum('monsieur','madame') DEFAULT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL DEFAULT '',
  `mot_de_passe` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `livraison_adresse_complement` varchar(150) DEFAULT NULL,
  `livraison_adresse` varchar(150) NOT NULL,
  `livraison_code_postal` varchar(5) NOT NULL,
  `livraison_ville` varchar(150) NOT NULL,
  `adresse_facturation_identique` tinyint(1) NOT NULL,
  `facturation_adresse_complement` varchar(150) DEFAULT NULL,
  `facturation_adresse` varchar(150) DEFAULT NULL,
  `facturation_code_postal` varchar(5) DEFAULT NULL,
  `facturation_ville` varchar(150) DEFAULT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `id_role`, `raison_sociale`, `pseudo`, `civilite`, `prenom`, `nom`, `email`, `mot_de_passe`, `telephone`, `livraison_adresse_complement`, `livraison_adresse`, `livraison_code_postal`, `livraison_ville`, `adresse_facturation_identique`, `facturation_adresse_complement`, `facturation_adresse`, `facturation_code_postal`, `facturation_ville`, `date_inscription`) VALUES
(6, 3, '', 'Nadette', 'madame', 'Bernadette', 'BARRAN', 'bernadette.barran78@wanadoo.fr', '$2y$10$vng05IVJ2LDpNFuq4sXx/e6J4.qUNtkKTc9YLEs3hhKi9ajxHzzbi', '0548354577', '', '17 avenue du Baron Haussmann', '33610', 'CESTAS', 1, '', '', '', '', '2026-05-03 17:11:15'),
(13, 3, '', 'Chtitsoeur', '', 'Céline', 'BARRAN', 'chtitsoeur@gmail.com', '$2y$10$YQHpZT/XumMbxbkdReAukuW1EnWWzaHPGQqMhG7xQ8Nx4KwPRycBq', '0646841755', '', '20 rue d\'Iéna', '33123', 'LE VERDON SUR MER', 1, '', '', '', '', '2026-05-17 05:57:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allergenes`
--
ALTER TABLE `allergenes`
  ADD PRIMARY KEY (`id_allergene`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `idx_utilisateur` (`id_utilisateur`),
  ADD KEY `idx_commiune` (`id_commune`),
  ADD KEY `idx_statut_commande` (`id_statut_commande`),
  ADD KEY `idx_horaire_livraison` (`id_horaire_livraison`);

--
-- Index pour la table `commune_gironde`
--
ALTER TABLE `commune_gironde`
  ADD PRIMARY KEY (`id_commune`);

--
-- Index pour la table `horaires_livraison`
--
ALTER TABLE `horaires_livraison`
  ADD PRIMARY KEY (`id_horaire_livraison`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menus`),
  ADD KEY `idx_plat` (`id_plat`),
  ADD KEY `idx_regime` (`id_regime`);

--
-- Index pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id_plat`);

--
-- Index pour la table `plat_allergene`
--
ALTER TABLE `plat_allergene`
  ADD PRIMARY KEY (`id_plat`,`id_allergene`);

--
-- Index pour la table `regime`
--
ALTER TABLE `regime`
  ADD PRIMARY KEY (`id_regime`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `statut_commande`
--
ALTER TABLE `statut_commande`
  ADD PRIMARY KEY (`id_statut_commande`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_role` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allergenes`
--
ALTER TABLE `allergenes`
  MODIFY `id_allergene` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_commande` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `commune_gironde`
--
ALTER TABLE `commune_gironde`
  MODIFY `id_commune` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT pour la table `horaires_livraison`
--
ALTER TABLE `horaires_livraison`
  MODIFY `id_horaire_livraison` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menus` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `id_plat` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `statut_commande`
--
ALTER TABLE `statut_commande`
  MODIFY `id_statut_commande` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `fk_commande_statut_commande` FOREIGN KEY (`id_statut_commande`) REFERENCES `statut_commande` (`id_statut_commande`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_commandes_commune_gironde` FOREIGN KEY (`id_commune`) REFERENCES `commune_gironde` (`id_commune`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_commandes_horaires_livraison` FOREIGN KEY (`id_horaire_livraison`) REFERENCES `horaires_livraison` (`id_horaire_livraison`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_commandes_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `fk_menus_plat` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fx_menus_regime` FOREIGN KEY (`id_regime`) REFERENCES `regime` (`id_regime`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `plat_allergene`
--
ALTER TABLE `plat_allergene`
  ADD CONSTRAINT `fk_allergene_plat` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_plat_allergene` FOREIGN KEY (`id_allergene`) REFERENCES `allergenes` (`id_allergene`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `fk_utilisateurs_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
