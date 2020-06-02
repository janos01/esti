-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Máj 25. 21:06
-- Kiszolgáló verziója: 10.1.39-MariaDB
-- PHP verzió: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `azo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozok`
--

CREATE TABLE `dolgozok` (
  `az` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `telepules` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `fizetes` double NOT NULL,
  `belepes` date NOT NULL,
  `szuletes` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `dolgozok`
--

INSERT INTO `dolgozok` (`az`, `nev`, `telepules`, `fizetes`, `belepes`, `szuletes`) VALUES
(1, 'Szabó Lajos', 'Szolnok', 2800000, '2020-01-07', '1995-03-12'),
(2, 'Pere Ferenc', 'Szeged', 2200500, '2020-02-12', '0000-00-00'),
(3, 'Kis Mária', 'Hatvan', 1750500, '0000-00-00', '0000-00-00'),
(4, 'Fehér Emese', 'Szolnok', 2800000, '0000-00-00', '0000-00-00'),
(6, 'Nagy István', 'Szeged', 2800000, '0000-00-00', '0000-00-00'),
(7, 'Takaros István', 'Szeged', 2800000, '0000-00-00', '0000-00-00'),
(8, 'Sárga István', 'Hatvan', 2800000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nevek`
--

CREATE TABLE `nevek` (
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `telepules` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `nevek`
--

INSERT INTO `nevek` (`nev`, `telepules`) VALUES
('Lajos', 'Szolnok'),
('Feri', 'Hatvan'),
('Mari', NULL),
('Emese', 'Szolnok');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `enabled`) VALUES
(1, 'mari', 'titok', 1),
(2, 'kati', 'titok', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dolgozok`
--
ALTER TABLE `dolgozok`
  ADD PRIMARY KEY (`az`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `dolgozok`
--
ALTER TABLE `dolgozok`
  MODIFY `az` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
