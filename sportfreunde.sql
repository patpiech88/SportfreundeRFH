-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 16. Mai 2015 um 15:12
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
  `Username` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Distance` float NOT NULL,
  `Location` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Type` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Difficulty` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Time` time(6) NOT NULL,
  `Description` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `version` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci COMMENT='Verwaltet die Strecken der Seite Sportfreunde RFH';

--
-- Daten für Tabelle `tracks`
--

INSERT INTO `tracks` (`TrackID`, `Username`, `Name`, `Distance`, `Location`, `Type`, `Difficulty`, `Time`, `Description`, `version`) VALUES
(61, '0', 'Ein weiterer Lauf', 24, 'Erftstadt', 'Wald/Asphalt', 'Mittel', '01:02:03.000000', 'Hahaha', 2),
(62, '0', 'Super Wüstenlauf', 102, 'Sahara', 'Wüste', 'Sehr Schwer', '03:12:15.000000', 'Ausreichend Wasser mitnehmen!!', 1),
(63, '0', 'Kleine Runde', 2, 'Bergheim', 'Training', 'leicht', '00:10:00.000000', 'Warmlaufen', 1),
(64, '0', 'Morgentliche Runde', 5, 'Thorr', 'Training', 'Leicht', '00:25:24.000000', 'Es war sehr angenehm', 1),
(65, '0', 'Sprint auf dem Sportplatz', 1, 'Zu Hause', 'Schnelligkeitstraining', 'Schwer', '00:03:30.000000', 'Vorher: Einlaufen, Nachher: Auslaufen', 1),
(66, '0', 'Pacerechner', 5.15, 'Bergheim', 'Test', 'Leicht', '00:10:21.000000', 'Nur ein Test', 2),
(67, '0', 'Test', 1, 'Ahe', 'Weg', 'Leicht ', '00:01:05.000000', 'Wow', 1),
(68, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(69, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(70, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(71, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(72, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(73, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(74, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(75, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(76, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(77, '0', 'test12', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 3),
(78, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(79, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(80, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(81, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(82, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(83, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(84, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(85, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(86, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(87, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(88, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(89, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(90, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 1),
(91, '0', 'letzter', 123, 'test', 'test', 'test', '00:00:00.000000', 'test', 2),
(92, '0', 'Bla', 123, 'Hüho', 'Asphalt', 'Leicht', '01:03:15.000000', 'Test', 1),
(93, '0', 'test', 123, 'test', 'test', 'test', '00:00:00.000000', 'ba', 1),
(94, '0', 'neu', 123, 'neu', 'neu', 'neu', '01:03:15.000000', 'neu', 1),
(95, '0', 'neuerneu', 123, 'neu', 'neu', 'neu', '01:02:13.000000', 'Bla', 1),
(96, '0', 'Ein schöner Lauf', 18, 'Bremen', 'Straße', 'mittel', '01:42:21.000000', 'Es war wirklich schön', 1),
(97, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(98, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(99, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(100, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(101, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(102, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(103, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(104, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(105, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(106, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(107, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(108, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(109, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(110, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(111, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(112, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(113, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(114, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(115, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(116, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(117, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(118, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(119, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(120, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(121, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(122, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(123, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(124, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(125, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(126, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(127, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(128, '0', 'Bla', 123, 'Hamburg', 'Wald', 'Leicht', '01:02:03.000000', 'Bla', 1),
(129, '', 'Test1', 12, 'Baki', 'qwe', 'wef', '00:01:20.000000', 'sdfsdf', 1),
(130, '', 'asd', 123, 'asd', 'asd', 'asd', '00:00:12.000000', 'asd', 1),
(131, '', 'sdf', 0, '', '', '', '00:00:00.000000', '', 1),
(132, '', 'qwe', 0, '', '', '', '00:00:00.000000', '', 1),
(133, '', '', 0, '', '', '', '00:00:00.000000', '', 1),
(134, '', '', 0, '', '', '', '00:00:00.000000', '', 1),
(135, '', '', 0, '', '', '', '00:00:00.000000', '', 1),
(136, '', '', 0, '', '', '', '00:00:00.000000', '', 1),
(137, '', 'asd', 12, '', '', '', '00:00:00.000000', '', 1),
(138, '', 'a', 1, 'b', 'a', '2', '00:00:00.000000', 'a', 1),
(139, '', 'a', 0, '1', 'a', 's', '00:00:00.000000', 'a', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`User-ID` int(11) NOT NULL,
  `LastName` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `FirstName` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Gender` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Birthdate` date NOT NULL,
  `Location` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `AboutMe` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `Association` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `user` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `pw` varchar(255) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`User-ID`, `LastName`, `FirstName`, `Gender`, `Birthdate`, `Location`, `AboutMe`, `Association`, `user`, `pw`) VALUES
(1, '', '', '', '0000-00-00', '', '', '', 'test', 'test'),
(2, '', 'Patrick', 'männlich', '1988-12-21', 'Köln', 'Das bin ich', 'Sportfreunde RFH', 'patrick', 'abc'),
(3, '', 'Thorsten', 'männlich', '1983-04-29', 'Köln', 'Schnell', 'Sportfreunde RFH', 'thorsten', '123'),
(4, '', 'Reinhard', 'männlich', '1966-01-11', 'Köln', 'Ich laufe gern', 'Sportfreunde RFH', 'reinhard', '234'),
(5, '', 'Sebastian', 'männlich', '1990-05-05', 'Köln', 'Ich bin jung und dynamisch', 'Sportfreunde RFH', 'sebastian', '123');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tracks`
--
ALTER TABLE `tracks`
 ADD PRIMARY KEY (`TrackID`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`User-ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tracks`
--
ALTER TABLE `tracks`
MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
MODIFY `User-ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
