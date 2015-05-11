-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Mai 2015 um 16:56
-- Server Version: 5.6.21
-- PHP-Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `sportfreunde`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
`TrackID` int(11) NOT NULL,
  `User-ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Distance` float NOT NULL,
  `Location` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Type` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Difficulty` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Time` time(6) NOT NULL,
  `Description` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `version` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH';

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`TrackID`, `User-ID`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`, `Time`, `Description`, `version`) VALUES
(44, 0, 'Der schnelle Lau', 5, 'Rheidt', 'Asphalt', 'schwer', '10:10:15.000000', 'DASD', 12),
(59, 0, 'Hallo', 4, 'Test', 'Mal', 'Das', '01:10:33.000000', 'DAS', 2),
(61, 0, 'Ein weiterer Lauf', 24, 'Erftstadt', 'Wald/Asphalt', 'Mittel', '01:02:03.000000', 'Hahaha', 2),
(62, 0, 'Super Wüstenlauf', 102, 'Sahara', 'Wüste', 'Sehr Schwer', '03:12:15.000000', 'Ausreichend Wasser mitnehmen!!', 1),
(63, 0, 'Kleine Runde', 2, 'Bergheim', 'Training', 'leicht', '00:10:00.000000', 'Warmlaufen', 1),
(64, 0, 'Morgentliche Runde', 5, 'Thorr', 'Training', 'Leicht', '00:25:24.000000', 'Es war sehr angenehm', 1),
(65, 0, 'Sprint auf dem Sportplatz', 1, 'Zu Hause', 'Schnelligkeitstraining', 'Schwer', '00:03:30.000000', 'Vorher: Einlaufen, Nachher: Auslaufen', 1),
(66, 0, 'Pacerechner', 5.15, 'Bergheim', 'Test', 'Leicht', '00:10:21.000000', 'Nur ein Test', 2),
(67, 0, 'Test', 1, 'Ahe', 'Weg', 'Leicht ', '00:01:05.000000', 'Wow', 1),
(68, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(69, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(70, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(71, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(72, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(73, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(74, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(75, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(76, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(77, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(78, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(79, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(80, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(81, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(82, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(83, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(84, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(85, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(86, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(87, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(88, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(89, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(90, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(91, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tracks`
--
ALTER TABLE `tracks`
 ADD PRIMARY KEY (`TrackID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tracks`
--
ALTER TABLE `tracks`
MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
