-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:8889
-- Létrehozás ideje: 2025. Már 21. 14:30
-- Kiszolgáló verziója: 8.0.40
-- PHP verzió: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ingatlanok`
--
CREATE DATABASE IF NOT EXISTS `ingatlanok` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `ingatlanok`;

DELIMITER $$
--
-- Eljárások
--
DROP PROCEDURE IF EXISTS `createIngatlan`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `createIngatlan` (IN `kategoria_id` INT(11), IN `leiras` TEXT, IN `hirdetesDatuma` DATE, IN `tehermentes` TINYINT, IN `ar` INT(11), IN `kepUrl` TEXT)   BEGIN
    INSERT INTO `ingatlanok` (`kategoria_id`, `leiras`, `hirdetesDatuma`, `tehermentes`, `ar`, `kepUrl`)
    VALUES (`kategoria_id`, `leiras`, `hirdetesDatuma`, `tehermentes`, `ar`, `kepUrl`);
END$$

DROP PROCEDURE IF EXISTS `deleteIngatlanById`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteIngatlanById` (IN `idIN` INT(11))   DELETE FROM `ingatlanok` WHERE `ingatlanok`.`id` = idIN$$

DROP PROCEDURE IF EXISTS `getAllIngatlanWithCategoryName`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllIngatlanWithCategoryName` ()   BEGIN
    SELECT `ingatlanok`.*, `kategoriak`.`nev` AS kategoria_nev
    FROM `ingatlanok` 
    JOIN `kategoriak` ON `ingatlanok`.`kategoria_id` = `kategoriak`.`id`;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingatlanok`
--

DROP TABLE IF EXISTS `ingatlanok`;
CREATE TABLE `ingatlanok` (
  `id` int NOT NULL,
  `kategoria_id` int NOT NULL,
  `leiras` text NOT NULL,
  `hirdetesDatuma` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tehermentes` tinyint(1) NOT NULL,
  `ar` int NOT NULL,
  `kepUrl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `ingatlanok`
--

INSERT INTO `ingatlanok` (`id`, `kategoria_id`, `leiras`, `hirdetesDatuma`, `tehermentes`, `ar`, `kepUrl`) VALUES
(1, 1, 'Kertvárosi részén, egyszintes házat kínálunk nyugodt környezetben, nagy telken.', '2022-02-21 00:00:00', 1, 26990000, 'http://localhost:3000/adv01.jpg'),
(2, 1, 'Belvárosi környezetben, árnyékos helyen kis méretú családi ház eladó. Tömegközlekedéssel könnyen megközelíthető.', '2022-02-28 00:00:00', 1, 28990000, 'http://localhost:3000/adv02.jpg'),
(3, 2, 'Kétszintes berendezett lakás a belvárosban kiadó.', '2022-02-24 00:00:00', 1, 32000000, 'http://localhost:3000/adv03.jpg'),
(4, 4, 'Nagy garázs kertvárosi környezetben kiadó', '2022-02-26 00:00:00', 1, 5990000, 'http://localhost:3000/adv04.jpg'),
(5, 5, '10 hektáros mezőhazdasági terület eladó.', '2022-03-18 00:00:00', 1, 79000000, 'http://localhost:3000/adv05.jpg'),
(6, 6, 'Felújításra szoruló üzemcsarnok zöld környezetben áron alul eladó', '2022-02-23 00:00:00', 0, 25000000, 'http://localhost:3000/adv06.jpg'),
(7, 2, 'ASDSAD', '2023-10-22 00:00:00', 1, 12000000, 'image.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

DROP TABLE IF EXISTS `kategoriak`;
CREATE TABLE `kategoriak` (
  `id` int NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `nev`) VALUES
(1, 'Ház'),
(2, 'Lakás'),
(3, 'Építési telek'),
(4, 'Garázs'),
(5, 'Mezőgazdasági terület'),
(6, 'Ipari ingatlan');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ingatlanok`
--
ALTER TABLE `ingatlanok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategoriak`
--
ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `kategoriak`
--
ALTER TABLE `kategoriak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
