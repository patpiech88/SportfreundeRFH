-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 24. Apr 2015 um 07:11
-- Server Version: 5.5.41
-- PHP-Version: 5.4.39-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
-- Tabellenstruktur für Tabelle `runs`
--

CREATE TABLE IF NOT EXISTS `runs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `User-ID` int(11) NOT NULL,
  `Track-ID` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die gelaufene Zeit mit Datum' AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `runs`
--

INSERT INTO `runs` (`ID`, `User-ID`, `Track-ID`, `Time`, `Date`) VALUES
(1, 2, 2, '00:25:10', '2015-04-22');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `Track-ID` int(11) NOT NULL AUTO_INCREMENT,
  `User-ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Distance` float NOT NULL,
  `Location` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Type` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Difficulty` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`Track-ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH' AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`Track-ID`, `User-ID`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`) VALUES
(1, 2, 'Waldlauf', 22, 'Bergheim', 'Cross', 'Medium'),
(2, 2, 'Kleine Runde', 5, 'Quadrath-Ichendorf', 'Asphalt', 'Easy');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `User-ID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `FirstName` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Gender` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Birthdate` date NOT NULL,
  `Location` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `AboutMe` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Association` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `user` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `pw` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`User-ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`User-ID`, `LastName`, `FirstName`, `Gender`, `Birthdate`, `Location`, `AboutMe`, `Association`, `user`, `pw`) VALUES
(1, '', '', '', '0000-00-00', '', '', '', 'test', 'test'),
(2, '', 'Patrick', 'männlich', '1988-12-21', 'Köln', 'Das bin ich', 'Sportfreunde RFH', 'patrick', 'abc'),
(3, '', 'Thorsten', 'männlich', '1983-04-29', 'Köln', 'Geiler Bock', 'Sportfreunde RFH', 'thorsten', '123'),
(4, '', 'Reinhard', 'männlich', '1966-01-11', 'Köln', 'Ich laufe gern', 'Sportfreunde RFH', 'reinhard', '234'),
(5, '', 'Sebastian', 'männlich', '1990-05-05', 'Köln', 'Ich bin jung und dynamisch', 'Sportfreunde RFH', 'sebastian', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
