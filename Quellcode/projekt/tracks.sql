-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Mai 2015 um 15:54
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH';

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`TrackID`, `User-ID`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`, `Time`, `Description`, `version`) VALUES
(44, 0, 'Der schnelle Lau1', 5, 'Rheidt', 'Asphalt', 'schwer', '00:00:00.000000', 'DASD', 18),
(59, 0, 'Hallo1', 4, 'Test', 'Mal', 'Das', '01:10:33.000000', 'DAS', 3),
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
(77, 0, 'test12', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 3),
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
(91, 0, 'letzter', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 2),
(92, 0, 'Bla', 123, 'Hüho', 'Asphalt', 'Leicht', '01:03:15.000000', 'Test', 1),
(93, 0, 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'ba', 1),
(94, 0, 'neu', 123, 'neu', 'neu', 'neu', '01:03:15.000000', 'neu', 1),
(95, 0, 'neuerneu', 123, 'neu', 'neu', 'neu', '01:02:13.000000', 'Bla', 1),
(96, 0, 'Ein schöner Lauf', 18, 'Bremen', 'Straße', 'mittel', '01:42:21.000000', 'Es war wirklich schön', 1),
(97, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(98, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(99, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(100, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(101, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(102, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(103, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(104, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(105, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(106, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(107, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(108, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(109, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(110, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(111, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(112, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(113, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(114, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(115, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(116, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(117, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(118, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(119, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(120, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(121, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(122, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(123, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(124, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(125, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(126, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(127, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(128, 0, 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1);

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
MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
