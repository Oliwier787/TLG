-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 28, 2024 at 10:03 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum-wedkarskie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galeria`
--

CREATE TABLE `galeria` (
  `ID` int(11) NOT NULL,
  `zdjecie` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`ID`, `zdjecie`, `user_id`, `post_id`) VALUES
(1, 'https://costaricadivers.com/wp-content/uploads/202', 1, 1),
(2, 'https://atlasryb.online/zdjecia/100_1200.jpg', 2, 2),
(3, 'https://fathers.pl/wp-content/uploads/2016/05/IMG_', 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `opinia` varchar(200) NOT NULL,
  `ilosc_gwiazdek` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opinie`
--

INSERT INTO `opinie` (`ID`, `user_ID`, `opinia`, `ilosc_gwiazdek`, `post_id`) VALUES
(1, 3, 'Super piękna rybka, pozdrawiam też za niedługo się wybiore', 5, 1),
(2, 4, 'Mega okaz bratku!', 5, 2),
(3, 1, 'Mega też muszę się wybrac z dziećmi !', 5, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `tytul` varchar(50) NOT NULL,
  `tresc` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `galeria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `tytul`, `tresc`, `user_id`, `galeria_id`) VALUES
(1, 'Pierwszy wypad w tym roku', 'Czesc, dzisiaj pierwszy raz wybralem się na ryby w tym roku i ocencie rybke, którą udało mi się złowić.', 1, 1),
(2, 'Super dzień nad jeziorkiem', 'Dzisiaj nad jeziorkiem było ekstra! patrzcie co udało mi się złowić', 2, 2),
(3, 'Pierwsze łowienie z synem', 'Zarażam syna zajawką pozdro!', 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `haslo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `email`, `nick`, `haslo`) VALUES
(1, 'janusz@poczta.com', 'janusz', '111'),
(2, 'wedkarz@poczta.com', 'wedkarz', '$2y$10$a2EE3LcVCHOGtxIoC6SpuegTRpKNyABASmXdkmiSozP'),
(3, 'zawodowiec@poczta.com', 'zawodowiec', '$2y$10$Tk9u5dSsC4VIkOJXlnid/edtIl0aR2/5iusmzSnqFut'),
(4, 'milosnikryb@gmail.com', 'MilosnikRyb', '$2y$10$mC4SQJ6xXRwlQ8RRlvqF1umlUL.u46h.u2Nrw2xEakN');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opinie`
--
ALTER TABLE `opinie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
