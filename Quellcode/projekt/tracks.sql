-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Mai 2015 um 18:35
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH';

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`TrackID`, `User-ID`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`, `Time`, `Description`, `version`) VALUES
(44, 0, 'Der schnelle Lau', 5, 'Rheidt', 'Asphalt', 'schwer', '10:10:15.000000', 'DASD', 12),
(55, 0, 'Ein Lauf durch die City', 15, 'Köln', 'Straße', 'mittel', '00:00:00.000000', '', 1),
(59, 0, 'Hallo', 4, 'Test', 'Mal', 'Das', '00:00:00.000000', '', 1),
(61, 0, 'Ein weiterer Lauf', 24, 'Erftstadt', 'Wald/Asphalt', 'Mittel', '00:00:00.000000', '', 1),
(62, 0, 'Super Wüstenlauf', 102, 'Sahara', 'Wüste', 'Sehr Schwer', '03:12:15.000000', 'Ausreichend Wasser mitnehmen!!', 1);

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
MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
