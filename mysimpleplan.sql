-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jan 2016 um 16:25
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
-- Tabellenstruktur fÃ¼r Tabelle `diary`
--

CREATE TABLE `diary` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'value',
  `date` date NOT NULL,
  `meal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `diary`
--

INSERT INTO `diary` (`ID`, `user_id`, `food_id`, `value`, `type`, `date`, `meal`) VALUES
(1, 1, 1, 150, 'value', '2016-01-13', 'lunch'),
(2, 1, 3, 50, 'value', '2016-01-13', 'breakfast'),
(3, 1, 4, 1, 'piece', '2016-01-13', 'breakfast'),
(4, 1, 5, 250, 'value', '2016-01-13', 'breakfast');

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `foods`
--

CREATE TABLE `foods` (
  `ID` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `calories` int(11) NOT NULL,
  `carbohydrates` float NOT NULL,
  `fat` float NOT NULL,
  `protein` float NOT NULL,
  `portion` int(11) NOT NULL,
  `type` varchar(3) NOT NULL DEFAULT 'g'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `foods`
--

INSERT INTO `foods` (`ID`, `name`, `calories`, `carbohydrates`, `fat`, `protein`, `portion`, `type`) VALUES
(1, 'Uncle Ben''s Natur-Reis', 344, 73, 2.2, 8, 100, 'g'),
(2, 'Uncle Ben''s Spitzen-Langkorn-Reis', 344, 76, 1.3, 7.3, 100, 'g'),
(3, 'Alnatura Haferflocken Feinblatt', 372, 59.1, 7, 13, 70, 'g'),
(4, 'Banane', 89, 23, 0.3, 1.1, 70, 'g'),
(5, 'BÃ¤renmarke Die Alpenfrische Vollmilch', 67, 4.8, 3.8, 3.4, 200, 'ml');

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
  `dateFormat` varchar(20) NOT NULL DEFAULT 'dd-MM-yyyy',
  `timeFormat` varchar(10) NOT NULL DEFAULT 'hh:mm',
  `firstDayOfTheWeek` varchar(10) NOT NULL DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `user`
--

INSERT INTO `user` (`ID`, `email`, `password`, `firstName`, `lastName`, `emailShow`, `dateFormat`, `timeFormat`, `firstDayOfTheWeek`) VALUES
(1, 'marius8hartmann@gmail.com', '123', 'Marius', 'Hartmann', 0, 'd MMM yyyy', 'hh:mm', 'monday');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes fÃ¼r die Tabelle `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes fÃ¼r die Tabelle `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes fÃ¼r die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT fÃ¼r exportierte Tabellen
--

--
-- AUTO_INCREMENT fÃ¼r Tabelle `diary`
--
ALTER TABLE `diary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT fÃ¼r Tabelle `foods`
--
ALTER TABLE `foods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT fÃ¼r Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
