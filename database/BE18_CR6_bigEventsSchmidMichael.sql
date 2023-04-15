-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 15. Apr 2023 um 15:19
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `BE18_CR6_bigEventsSchmidMichael`
--
CREATE DATABASE IF NOT EXISTS `BE18_CR6_bigEventsSchmidMichael` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BE18_CR6_bigEventsSchmidMichael`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414102142', '2023-04-14 10:21:56', 21);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `contact_email`, `contact_phone_number`, `address`, `url`, `type`) VALUES
(1, 'Hans Zimmer Live', '2023-05-27 20:00:00', 'Im Frühsommer 2023 kehrt der 2-fache Oscar-Preisträger mit seiner Erfolgs-Tournee zurück nach Europa!', 'https://ik.imagekit.io/guidle/tr:h-250,c-at_least,dpr-1/8/be/23/8be238cb4e977cb6cb91131adc2c4a53054a7ba0_697256181.jpg', '2000', 'hanszimmerberlin@events.com', '01789645234', 'Mercedes-Benz Arena Berlin, Mercedes-Platz 1, 10243 Berlin-Friedrichshain', 'https://www.berlin.de/tickets/konzerte/hans-zimmer-live/2023-05-26-hans-zimmer-63a2c1df-8687-4e55-b95c-a09a983c6691/', 'Music'),
(2, 'Tempelhof Sounds', '2023-06-02 16:30:00', 'Mit Bon Iver, Fever Ray und Holly Humberstone holen wir die einzigartige Atmosphäre des Tempelhof Sounds für einen Abend in die Waldbühne – freu dich auf das exklusive Event „Tempelhof Sounds Presents“.', 'https://media.resources.festicket.com/image/fit-in/700x400/filters:quality(70)/www/photos/TempelhofSounds2022Artwork.png', '1500', 'tempelhofsounds@events.com', '1806570070', 'Waldbühne Berlin im Olympiapark, Glockenturmstraße 1, 14053 Berlin', 'https://tempelhofsounds.de/de/', 'Music'),
(3, 'Eros Ramazzotti', '2023-05-13 19:00:00', 'Vier Jahre nach seinem letzten Studio Album, enthüllte er endlich den Titel seines neuen Albums und gleich Vier Shows in Deutschland.', 'https://media.konzertkasse.de/eros-ramazzoti-battito-infinito-world-tour-tickets/sRBYJriU.jpeg\r\n', '2000', 'erosramazottiberlin@events.com', '081923571234', 'Mercedes-Benz Arena Berlin, Mercedes-Platz 1, 10243 Berlin-Friedrichshain', 'https://www.berlin.de/en/tickets/rock-pop/eros-ramazzotti-battito-infinito-world-tour/2023-05-13-eros-ramazzotti-812934cd-9854-4f2b-8c8c-bc852b2abb87/', 'Music'),
(4, 'Pink', '2023-06-28 18:30:00', 'Pink Summer Carnival 2023 in Berlin im Olymiastadion. P!NK ist zurück: Die Pop-Ikone kommt 2023 für einige epische Stadion-Shows nach Deutschland!', 'https://olympiastadion.berlin/wp-content/uploads/2022/01/388x550-pink.png\r\n', '3500', 'pinkberlin@events.com', '09812345521', 'Olympiastadion Berlin, Olympishcer Platz 3, 14053 Berlin', 'https://www.eventim.de/artist/pink/?affiliate=GMD&includeOnlybookable=true&gclid=CjwKCAjw8-OhBhB5EiwADyoY1VVBwcljv7mQYPrPn0Qroks8rISek36CofLGj35zGy2PbCc6S8vYqxoCtdIQAvD_BwE', 'Music'),
(5, 'Showgirls of Burlesque', '2023-04-30 21:15:00', 'Erleben Sie Berlins erfolgreichste Burlesque-Truppe und ihre Mischung aus klassischer Eleganz, moderner Weiblichkeit und den längsten Beinen im Showbiz.', 'https://cdn.getyourguide.com/img/tour/6414550d0d978.png/145.jpg', '250', 'showgirls@events.com', '07876345633', 'Stadel Freiheit, Köthener Str. 44, 10963 Berlin', 'https://www.getyourguide.co.uk/berlin-l17/berlin-showgirls-of-burlesque-by-gl-amouresque-t405030/?lang=en&date_from=2023-05-07&_pc=1,1', 'Theater'),
(6, 'Super Mario Bros. Film', '2023-04-21 16:30:00', 'Der Klempner Mario und sein Bruder Luigi werden in eine mysteriöse Röhre gezogen und landen im magischen Königreich der Pilze.', 'https://cdn.kinocheck.com/i/760j6q0gco.jpg', '95', 'kinoberlin@events.com', '099123775123', 'CineStar CUBIX, Rathausstraße 1, 10178 Berlin', 'https://www.cinestar.de/kino-berlin-cubix-am-alexanderplatz', 'Movie'),
(7, 'Guardians of the Galaxy: Voulme 3', '2023-05-03 19:30:00', 'In Marvel Studios \"Guardians of the Galaxy Vol. 3\" sieht unsere geliebte Schar von Außenseitern dieser Tage ein wenig anders aus.', 'https://www.cinestar.de/media/cache/web_m/media/mmmb/go/gotg3_dis_cinestar_desktop_slider_767x767_vvk.-642aabc787a36.jpg', '120', 'gotgberlin@events.com', '0912451235612', 'CineStar CUBIX, Rathausstraße 1, 10178 Berlin', 'https://www.cinestar.de/kino-berlin-cubix-am-alexanderplatz', 'Movie'),
(8, '1. FC Union Berlin vs Bayer 04 Leverkusen', '2023-04-29 15:30:00', 'Heimspiel Fc Union Berlin gegen Bayer 04 Leverkusen.', 'https://www.fc-union-berlin.de/cache/9bcaf67eb7d550e5fa6013c6021a514c.jpeg', '22012', 'union@berlin.com', '01241244555', 'Stadion an der alten Försterei, An der Wuhlheide263, 12555 Berlin', 'https://www.fc-union-berlin.de/en/', 'Sport'),
(9, 'Hertha BSC vs VfB Stuttgart', '2023-05-06 15:30:00', 'Hertha BSC gegen VfB Stuttgart im Olympiastadion Berlin 2022/2023', 'https://images.sportschau.de/image/6a6fc7be-6a05-4815-9255-d26eca7671ed/AAABgQLayXU/AAABg8tME_8/16x9-1280/herthabsc-sp-102.jpg', '74475', 'hertha@berlin.com', '0128848814', 'Olympiastadion Berlin, Olympischer Platz 3, 14053 Berlin', 'https://www.herthabsc.com/de', 'Sport');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
