-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Jan 2016 um 21:28
-- Server-Version: 10.1.9-MariaDB
-- PHP-Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mysimpleplan`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `emailShow` int(1) NOT NULL DEFAULT '0',
  `timeFormat` int(11) NOT NULL DEFAULT '24',
  `firstDayOfTheWeek` varchar(10) NOT NULL DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `user`
--

INSERT INTO `user` (`ID`, `email`, `password`, `firstName`, `lastName`, `emailShow`, `timeFormat`, `firstDayOfTheWeek`) VALUES
(1, 'marius8hartmann@gmail.com', '123', 'Marius', 'Hartmann', 0, 24, 'monday');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes fÃ¼r die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT fÃ¼r exportierte Tabellen
--

--
-- AUTO_INCREMENT fÃ¼r Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
