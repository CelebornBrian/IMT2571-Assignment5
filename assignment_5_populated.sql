-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 05:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` varchar(25) COLLATE utf8_danish_ci NOT NULL,
  `clubName` varchar(75) COLLATE utf8_danish_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_danish_ci NOT NULL,
  `county` varchar(50) COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`id`, `clubName`, `city`, `county`) VALUES
('asker-ski', 'Asker skiklubb', 'Asker', 'Akershus'),
('lhmr-ski', 'Lillehammer Skiklub', 'Lillehammer', 'Oppland'),
('skiklubben', 'Trondhjems skiklub', 'Trondheim', 'Sør-Trøndelag'),
('vindil', 'Vind Idrettslag', 'Gjøvik', 'Oppland');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `fallYear` int(4) NOT NULL,
  `skierUserName` varchar(10) COLLATE utf8_danish_ci NOT NULL,
  `clubId` varchar(15) COLLATE utf8_danish_ci DEFAULT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`fallYear`, `skierUserName`, `clubId`, `totalDistance`) VALUES
(2015, 'ande_andr', 'skiklubben', 23),
(2015, 'ande_rønn', 'lhmr-ski', 942),
(2015, 'andr_stee', 'asker-ski', 440),
(2015, 'anna_næss', 'skiklubben', 3),
(2015, 'arne_anto', 'skiklubben', 32),
(2015, 'arne_inge', 'skiklubben', 1),
(2015, 'astr_amun', 'lhmr-ski', 961),
(2015, 'astr_sven', 'skiklubben', 1),
(2015, 'bent_håla', 'asker-ski', 19),
(2015, 'bent_svee', 'asker-ski', 125),
(2015, 'beri_hans', 'asker-ski', 448),
(2015, 'bjør_ali', 'asker-ski', 47),
(2015, 'bjør_rønn', 'lhmr-ski', 33),
(2015, 'bjør_sand', 'lhmr-ski', 460),
(2015, 'bjør_aase', 'asker-ski', 121),
(2015, 'cami_erik', 'vindil', 1),
(2015, 'dani_hamm', 'lhmr-ski', 33),
(2015, 'eina_nygå', 'lhmr-ski', 31),
(2015, 'elis_ruud', 'asker-ski', 341),
(2015, 'elle_wiik', 'lhmr-ski', 12),
(2015, 'erik_haal', 'lhmr-ski', 122),
(2015, 'erik_lien', 'vindil', 1),
(2015, 'erik_pete', 'vindil', 581),
(2015, 'espe_egel', 'skiklubben', 519),
(2015, 'espe_haal', 'lhmr-ski', 1),
(2015, 'eva_kvam', 'skiklubben', 28),
(2015, 'fred_lien', 'asker-ski', 113),
(2015, 'frod_mads', 'skiklubben', 1),
(2015, 'frod_rønn', 'lhmr-ski', 237),
(2015, 'geir_birk', 'skiklubben', 69),
(2015, 'geir_herm', 'asker-ski', 891),
(2015, 'gerd_svee', 'lhmr-ski', 173),
(2015, 'gunn_berg', 'vindil', 2),
(2015, 'hans_foss', 'asker-ski', 240),
(2015, 'hans_løke', 'skiklubben', 3),
(2015, 'hara_bakk', 'lhmr-ski', 7),
(2015, 'heid_dani', 'asker-ski', 3),
(2015, 'helg_brei', 'skiklubben', 27),
(2015, 'helg_toll', 'skiklubben', 9),
(2015, 'henr_bern', 'asker-ski', 799),
(2015, 'henr_dale', NULL, 2),
(2015, 'henr_lore', 'vindil', 1),
(2015, 'hild_hass', 'lhmr-ski', 2),
(2015, 'håko_jens', 'lhmr-ski', 778),
(2015, 'ida_mykl', 'skiklubben', 666),
(2015, 'inge_simo', 'asker-ski', 3),
(2015, 'inge_thor', NULL, 194),
(2015, 'ingr_edva', 'skiklubben', 294),
(2015, '﻿jan_tang', NULL, 2),
(2015, 'juli_ande', 'skiklubben', 20),
(2015, 'kari_thor', 'skiklubben', 261),
(2015, 'kjel_fjel', 'asker-ski', 1),
(2015, 'knut_bye', 'lhmr-ski', 2),
(2015, 'kris_even', 'skiklubben', 586),
(2015, 'kris_hass', 'skiklubben', 4),
(2015, 'kris_hass1', 'skiklubben', 391),
(2015, 'lind_lore', 'lhmr-ski', 578),
(2015, 'liv_khan', 'asker-ski', 178),
(2015, 'magn_sand', 'asker-ski', 200),
(2015, 'mari_bye', NULL, 362),
(2015, 'mari_dahl', 'lhmr-ski', 576),
(2015, 'mari_eile', 'lhmr-ski', 18),
(2015, 'mari_stra', 'skiklubben', 41),
(2015, 'mart_halv', 'vindil', 63),
(2015, 'mona_lie', 'skiklubben', 7),
(2015, 'mort_iver', 'skiklubben', 2),
(2015, 'nils_bakk', 'lhmr-ski', 36),
(2015, 'nils_knud', 'skiklubben', 4),
(2015, 'odd_moha', 'skiklubben', 352),
(2015, 'olav_bråt', NULL, 17),
(2015, 'olav_eike', 'lhmr-ski', 2),
(2015, 'olav_hell', 'skiklubben', 1),
(2015, 'olav_lien', 'asker-ski', 408),
(2015, 'ole_borg', 'lhmr-ski', 311),
(2015, 'reid_hamr', 'skiklubben', 2),
(2015, 'rolf_wiik', 'skiklubben', 749),
(2015, 'rune_haga', 'asker-ski', 228),
(2015, 'silj_mykl', 'asker-ski', 1),
(2015, 'solv_solb', NULL, 2),
(2015, 'stia_andr', NULL, 8),
(2015, 'stia_haug', 'skiklubben', 412),
(2015, 'stia_henr', 'vindil', 62),
(2015, 'terj_mort', 'skiklubben', 119),
(2015, 'thom_inge', 'vindil', 15),
(2015, 'tom_bråt', 'vindil', 1),
(2015, 'tom_bøe', 'vindil', 176),
(2015, 'tom_jako', 'asker-ski', 18),
(2015, 'tor_dale', 'skiklubben', 408),
(2015, 'tore_gulb', 'lhmr-ski', 375),
(2015, 'tore_svee', 'skiklubben', 1156),
(2015, 'tove_moe', 'asker-ski', 321),
(2015, 'tron_kris', 'skiklubben', 3),
(2015, 'tron_moen', 'vindil', 8),
(2015, 'øyst_lore', 'skiklubben', 13),
(2015, 'øyst_sæth', 'vindil', 831),
(2015, 'øyst_aase', 'skiklubben', 2),
(2015, 'øyvi_hell', 'asker-ski', 950),
(2015, 'øyvi_jens', 'skiklubben', 3),
(2015, 'øyvi_kvam', 'asker-ski', 18),
(2015, 'øyvi_vike', 'asker-ski', 20),
(2016, 'ande_andr', 'skiklubben', 55),
(2016, 'andr_stee', 'asker-ski', 379),
(2016, 'anna_næss', 'skiklubben', 3),
(2016, 'arne_anto', 'skiklubben', 99),
(2016, 'arne_inge', 'skiklubben', 2),
(2016, 'astr_amun', 'lhmr-ski', 761),
(2016, 'astr_sven', 'skiklubben', 3),
(2016, 'bent_håla', 'skiklubben', 62),
(2016, 'beri_hans', 'asker-ski', 374),
(2016, 'bjør_ali', 'asker-ski', 47),
(2016, 'bjør_rønn', 'lhmr-ski', 56),
(2016, 'bjør_sand', 'lhmr-ski', 449),
(2016, 'bjør_aase', 'asker-ski', 116),
(2016, 'bror_kals', NULL, 202),
(2016, 'bror_﻿mos', 'skiklubben', 243),
(2016, 'cami_erik', 'vindil', 1),
(2016, 'dani_hamm', 'lhmr-ski', 61),
(2016, 'eina_nygå', 'skiklubben', 68),
(2016, 'elis_ruud', 'skiklubben', 368),
(2016, 'elle_wiik', 'lhmr-ski', 35),
(2016, 'erik_haal', 'lhmr-ski', 143),
(2016, 'espe_egel', 'skiklubben', 556),
(2016, 'espe_haal', 'lhmr-ski', 2),
(2016, 'eva_kvam', 'skiklubben', 89),
(2016, 'fred_lien', 'asker-ski', 122),
(2016, 'frod_mads', 'skiklubben', 2),
(2016, 'geir_birk', 'skiklubben', 71),
(2016, 'geir_herm', 'skiklubben', 789),
(2016, 'gerd_svee', 'lhmr-ski', 196),
(2016, 'gunn_berg', 'vindil', 2),
(2016, 'guri_nord', 'skiklubben', 17),
(2016, '﻿hal_﻿mos', 'asker-ski', 3),
(2016, 'hann_stei', 'lhmr-ski', 14),
(2016, 'hans_foss', 'lhmr-ski', 276),
(2016, 'hans_løke', 'skiklubben', 1),
(2016, 'hara_bakk', 'lhmr-ski', 16),
(2016, 'heid_dani', 'asker-ski', 3),
(2016, 'helg_brei', 'skiklubben', 74),
(2016, 'henr_dale', NULL, 2),
(2016, 'henr_lore', 'vindil', 1),
(2016, 'hild_hass', 'lhmr-ski', 1),
(2016, 'håko_jens', 'lhmr-ski', 804),
(2016, 'ida_mykl', 'skiklubben', 614),
(2016, 'idar_kals', 'skiklubben', 101),
(2016, 'idar_kals1', 'vindil', 1308),
(2016, 'inge_simo', 'asker-ski', 2),
(2016, 'inge_thor', NULL, 220),
(2016, 'ingr_edva', 'skiklubben', 309),
(2016, '﻿jan_tang', NULL, 4),
(2016, 'juli_ande', 'skiklubben', 34),
(2016, 'kari_thor', 'skiklubben', 233),
(2016, 'kjel_fjel', 'skiklubben', 2),
(2016, 'kris_hass', 'skiklubben', 11),
(2016, 'kris_hass1', 'lhmr-ski', 334),
(2016, 'lind_lore', 'lhmr-ski', 551),
(2016, 'liv_khan', 'asker-ski', 183),
(2016, 'magn_sand', 'asker-ski', 166),
(2016, 'mari_dahl', 'lhmr-ski', 492),
(2016, 'mari_eile', 'lhmr-ski', 18),
(2016, 'mari_stra', 'skiklubben', 35),
(2016, 'mart_halv', 'vindil', 50),
(2016, 'mona_lie', 'skiklubben', 12),
(2016, 'mort_iver', 'skiklubben', 4),
(2016, 'nils_bakk', 'lhmr-ski', 93),
(2016, 'nils_knud', 'skiklubben', 2),
(2016, 'olav_bråt', NULL, 19),
(2016, 'olav_eike', 'lhmr-ski', 2),
(2016, 'olav_lien', 'asker-ski', 423),
(2016, 'ole_borg', 'lhmr-ski', 314),
(2016, 'reid_hamr', 'skiklubben', 3),
(2016, 'rolf_wiik', 'skiklubben', 632),
(2016, 'rune_haga', 'asker-ski', 248),
(2016, '﻿rut_﻿mos', 'vindil', 1237),
(2016, '﻿rut_nord', 'skiklubben', 368),
(2016, 'sara_okst', 'asker-ski', 5),
(2016, 'silj_mykl', 'asker-ski', 2),
(2016, 'sive_nord', 'skiklubben', 1),
(2016, 'solv_solb', 'asker-ski', 1),
(2016, 'stia_andr', 'vindil', 9),
(2016, 'stia_haug', 'skiklubben', 443),
(2016, 'stia_henr', 'vindil', 49),
(2016, 'terj_mort', 'skiklubben', 95),
(2016, 'thom_inge', 'vindil', 26),
(2016, 'tom_bråt', 'vindil', 1),
(2016, 'tom_bøe', 'vindil', 194),
(2016, 'tom_jako', 'skiklubben', 33),
(2016, 'tore_gulb', 'lhmr-ski', 342),
(2016, 'tove_moe', 'asker-ski', 352),
(2016, 'trin_kals', 'lhmr-ski', 22),
(2016, 'tron_kris', 'skiklubben', 5),
(2016, 'tron_moen', 'vindil', 17),
(2016, 'øyst_lore', 'skiklubben', 47),
(2016, 'øyst_sæth', 'vindil', 631),
(2016, 'øyst_aase', 'skiklubben', 1),
(2016, 'øyvi_hell', 'asker-ski', 869),
(2016, 'øyvi_jens', 'skiklubben', 2),
(2016, 'øyvi_vike', 'asker-ski', 52);

-- --------------------------------------------------------

--
-- Table structure for table `skier`
--

CREATE TABLE `skier` (
  `userName` varchar(10) COLLATE utf8_danish_ci NOT NULL,
  `firstName` varchar(60) COLLATE utf8_danish_ci NOT NULL,
  `lastName` varchar(60) COLLATE utf8_danish_ci NOT NULL,
  `dateOfBirth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Dumping data for table `skier`
--

INSERT INTO `skier` (`userName`, `firstName`, `lastName`, `dateOfBirth`) VALUES
('ande_andr', 'Anders', 'Andresen', 2004),
('ande_rønn', 'Anders', 'Rønning', 2001),
('andr_stee', 'Andreas', 'Steen', 2001),
('anna_næss', 'Anna', 'Næss', 2005),
('arne_anto', 'Arne', 'Antonsen', 2005),
('arne_inge', 'Arne', 'Ingebrigtsen', 2005),
('astr_amun', 'Astrid', 'Amundsen', 2001),
('astr_sven', 'Astrid', 'Svendsen', 2008),
('bent_håla', 'Bente', 'Håland', 2009),
('bent_svee', 'Bente', 'Sveen', 2003),
('beri_hans', 'Berit', 'Hanssen', 2003),
('bjør_ali', 'Bjørn', 'Ali', 2008),
('bjør_rønn', 'Bjørg', 'Rønningen', 2009),
('bjør_sand', 'Bjørn', 'Sandvik', 1997),
('bjør_aase', 'Bjørn', 'Aasen', 2006),
('bror_kals', 'Bror', 'Kalstad', 2006),
('bror_﻿mos', 'Bror', '﻿Mostuen', 2005),
('cami_erik', 'Camilla', 'Eriksen', 2005),
('dani_hamm', 'Daniel', 'Hammer', 2000),
('eina_nygå', 'Einar', 'Nygård', 2009),
('elis_ruud', 'Elisabeth', 'Ruud', 2003),
('elle_wiik', 'Ellen', 'Wiik', 2004),
('erik_haal', 'Erik', 'Haaland', 2007),
('erik_lien', 'Erik', 'Lien', 2008),
('erik_pete', 'Erik', 'Petersen', 2002),
('espe_egel', 'Espen', 'Egeland', 2005),
('espe_haal', 'Espen', 'Haaland', 2004),
('eva_kvam', 'Eva', 'Kvam', 2000),
('fred_lien', 'Fredrik', 'Lien', 2000),
('frod_mads', 'Frode', 'Madsen', 2008),
('frod_rønn', 'Frode', 'Rønningen', 2005),
('geir_birk', 'Geir', 'Birkeland', 2010),
('geir_herm', 'Geir', 'Hermansen', 2003),
('gerd_svee', 'Gerd', 'Sveen', 2001),
('gunn_berg', 'Gunnar', 'Berge', 2009),
('guri_nord', 'Guri', 'Nordli', 2003),
('﻿hal_﻿mos', '﻿Halvor', '﻿Mostuen', 2009),
('hann_stei', 'Hanno', 'Steiro', 2005),
('hans_foss', 'Hans', 'Foss', 1998),
('hans_løke', 'Hans', 'Løken', 2005),
('hara_bakk', 'Harald', 'Bakken', 2002),
('heid_dani', 'Heidi', 'Danielsen', 2005),
('helg_brei', 'Helge', 'Breivik', 2006),
('helg_toll', 'Helge', 'Tollefsen', 2003),
('henr_bern', 'Henrik', 'Berntsen', 2003),
('henr_dale', 'Henrik', 'Dalen', 2005),
('henr_lore', 'Henrik', 'Lorentzen', 2006),
('hild_hass', 'Hilde', 'Hassan', 2007),
('håko_jens', 'Håkon', 'Jensen', 2005),
('ida_mykl', 'Ida', 'Myklebust', 2001),
('idar_kals', 'Idar', 'Kalstad', 2007),
('idar_kals1', 'Idar', 'Kalstad', 2002),
('inge_simo', 'Inger', 'Simonsen', 2004),
('inge_thor', 'Inger', 'Thorsen', 2006),
('ingr_edva', 'Ingrid', 'Edvardsen', 2001),
('﻿jan_tang', '﻿Jan', 'Tangen', 2007),
('juli_ande', 'Julie', 'Andersson', 2003),
('kari_thor', 'Karin', 'Thorsen', 2002),
('kjel_fjel', 'Kjell', 'Fjeld', 2004),
('knut_bye', 'Knut', 'Bye', 2006),
('kris_even', 'Kristian', 'Evensen', 2004),
('kris_hass', 'Kristin', 'Hassan', 2003),
('kris_hass1', 'Kristian', 'Hassan', 2004),
('lind_lore', 'Linda', 'Lorentzen', 2004),
('liv_khan', 'Liv', 'Khan', 2006),
('magn_sand', 'Magnus', 'Sande', 2003),
('mari_bye', 'Marit', 'Bye', 2003),
('mari_dahl', 'Marit', 'Dahl', 2004),
('mari_eile', 'Marius', 'Eilertsen', 2000),
('mari_stra', 'Marius', 'Strand', 2005),
('mart_halv', 'Martin', 'Halvorsen', 2002),
('mona_lie', 'Mona', 'Lie', 2004),
('mort_iver', 'Morten', 'Iversen', 2003),
('nils_bakk', 'Nils', 'Bakke', 2003),
('nils_knud', 'Nils', 'Knudsen', 2006),
('odd_moha', 'Odd', 'Mohamed', 2005),
('olav_bråt', 'Olav', 'Bråthen', 2000),
('olav_eike', 'Olav', 'Eikeland', 2008),
('olav_hell', 'Olav', 'Helle', 2007),
('olav_lien', 'Olav', 'Lien', 2002),
('ole_borg', 'Ole', 'Borge', 2002),
('reid_hamr', 'Reidun', 'Hamre', 2008),
('rolf_wiik', 'Rolf', 'Wiik', 2002),
('rune_haga', 'Rune', 'Haga', 2005),
('﻿rut_﻿mos', '﻿Ruth', '﻿Mostuen', 2002),
('﻿rut_nord', '﻿Ruth', 'Nordli', 2006),
('sara_okst', 'Sarah', 'Okstad', 2003),
('silj_mykl', 'Silje', 'Myklebust', 2007),
('sive_nord', 'Sivert', 'Nordli', 2009),
('solv_solb', 'Solveig', 'Solbakken', 2004),
('stia_andr', 'Stian', 'Andreassen', 2004),
('stia_haug', 'Stian', 'Haugland', 2002),
('stia_henr', 'Stian', 'Henriksen', 2001),
('terj_mort', 'Terje', 'Mortensen', 2003),
('thom_inge', 'Thomas', 'Ingebrigtsen', 2006),
('tom_bråt', 'Tom', 'Bråthen', 2008),
('tom_bøe', 'Tom', 'Bøe', 2008),
('tom_jako', 'Tom', 'Jakobsen', 2002),
('tor_dale', 'Tor', 'Dalen', 2005),
('tore_gulb', 'Tore', 'Gulbrandsen', 2005),
('tore_svee', 'Tore', 'Sveen', 2001),
('tove_moe', 'Tove', 'Moe', 2002),
('trin_kals', 'Trine', 'Kalstad', 2009),
('tron_kris', 'Trond', 'Kristensen', 2006),
('tron_moen', 'Trond', 'Moen', 2004),
('øyst_lore', 'Øystein', 'Lorentzen', 2004),
('øyst_sæth', 'Øystein', 'Sæther', 2000),
('øyst_aase', 'Øystein', 'Aasen', 2007),
('øyvi_hell', 'Øyvind', 'Helle', 2000),
('øyvi_jens', 'Øyvind', 'Jenssen', 1999),
('øyvi_kvam', 'Øyvind', 'Kvam', 2000),
('øyvi_vike', 'Øyvind', 'Viken', 2004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`fallYear`,`skierUserName`),
  ADD KEY `clubId` (`clubId`),
  ADD KEY `skierUserName` (`skierUserName`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_4` FOREIGN KEY (`clubId`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `journal_ibfk_5` FOREIGN KEY (`skierUserName`) REFERENCES `skier` (`userName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
