-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Mai 2015 um 14:55
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
  `version` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH';

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`TrackID`, `User-ID`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`, `version`) VALUES
(44, 0, 'Der schnelle Lauf', 5, 'Rheidt', 'Asphalt', 'leicht', 2),
(46, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1),
(47, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1),
(48, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1),
(49, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1),
(50, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1),
(51, 0, 'bal', 123, 'Monheim', 'Wald', 'leicht', 1);

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
MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
