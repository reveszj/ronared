-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2015. márc. 02. 12:38
-- Szerver verzió: 5.5.16
-- PHP verzió: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Adatbázis: `ronared`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `ronared_dokumentumok`
--

CREATE TABLE IF NOT EXISTS `ronared_dokumentumok` (
  `id` int(11) NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_hu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_de` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_fr` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_it` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `ronared_dokumentumok`
--

INSERT INTO `ronared_dokumentumok` (`id`, `file`, `folder`, `title_hu`, `title_en`, `title_de`, `title_fr`, `title_it`, `title_ru`, `date`, `status`) VALUES
(1, '2014_01_29_Másolat eredetijeMunkanapló-2013_04 hó.xls', NULL, 'munkanapló (xls)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2014_01_29_Chrysanthemum.jpg', NULL, 'virág (jpg)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2014_02_04_Vilagitotorony_kep.jpg', NULL, 'torony 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `ronared_kepek`
--

CREATE TABLE IF NOT EXISTS `ronared_kepek` (
  `id` int(11) NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_hu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_de` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_fr` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_it` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet: `ronared_regisztralt`
--

CREATE TABLE IF NOT EXISTS `ronared_regisztralt` (
  `sorszam` int(11) NOT NULL AUTO_INCREMENT,
  `azonosito` varchar(20) COLLATE latin2_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `jelszo` varchar(32) COLLATE latin2_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `hirlevel` varchar(10) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `jog` varchar(1) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '0',
  `archiv` varchar(1) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '0',
  `regisztracio` datetime DEFAULT NULL,
  `bejelentkezes` datetime DEFAULT NULL,
  `megjegyzes` text COLLATE latin2_hungarian_ci,
  `keresztnev` varchar(40) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `vezeteknev` varchar(40) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `telefon` varchar(20) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `telepules` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `cim` varchar(80) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `vevoszam` int(20) DEFAULT NULL,
  PRIMARY KEY (`sorszam`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci AUTO_INCREMENT=35 ;

--
-- A tábla adatainak kiíratása `ronared_regisztralt`
--

INSERT INTO `ronared_regisztralt` (`sorszam`, `azonosito`, `nev`, `jelszo`, `email`, `hirlevel`, `jog`, `archiv`, `regisztracio`, `bejelentkezes`, `megjegyzes`, `keresztnev`, `vezeteknev`, `telefon`, `telepules`, `cim`, `vevoszam`) VALUES
(3, 'AdminZoli', 'Molnár Zoltán', 'e20ffabe4230eed6ba92c6ee9d9618e4', 'info@inkozrt.hu', 'igen', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'hasznalt', 'admin', '358ef71ff5370984ccff4c2828724a30', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '_anonim_', NULL, '0', 'info@inkozrt.hu', NULL, '5', '0', '2012-02-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'molnarzoli82', NULL, 'b6908e5d5d2917785c6a7b186e6dbb8f', 'molnarzoli82@gmail.com', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'chuck', NULL, '33883c600b81f8d3e5ce558260065ec5', 'chnk@mtv.hu', '1', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AdminKati', NULL, 'c633bd2e4c159b186bd8db72c40e8c18', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'reveszj', NULL, '8d6eaa43a5155fb6052265af62b41d0e', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `ronared_szoveg`
--

CREATE TABLE IF NOT EXISTS `ronared_szoveg` (
  `id` smallint(5) unsigned NOT NULL,
  `oldalcim` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `kulcsszo` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `leiras` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `tartalom` text COLLATE latin2_hungarian_ci,
  `php_file` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `aktiv` varchar(1) COLLATE latin2_hungarian_ci NOT NULL,
  `menu` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `sorrend` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `ronared_szoveg`
--

INSERT INTO `ronared_szoveg` (`id`, `oldalcim`, `kulcsszo`, `leiras`, `tartalom`, `php_file`, `aktiv`, `menu`, `sorrend`) VALUES
(0, 'Bemutatkozás', '', '', '<p><span class="cim2">Introduction </span></p>\r\n<p class="szoveg">XXLorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<p>This template has been tested in:</p>\r\n<ul>\r\n<li>Firefox 3.5</li>\r\n<li>Opera 10.00</li>\r\n<li>IE 6, 7 and 8</li>\r\n<li>Chrome</li>\r\n</ul>\r\n<h3>Buy unbranded</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<h3>More free web templates</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<h3>Webmaster forums</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>', '', '1', 'Fõoldal', 1),
(2, 'Nyelvoktatás', '', '', '<h3>Idézet</h3>\r\n<blockquote class="idezet">\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n</blockquote>\r\n<p> </p>\r\n<h3 class="cim4"><em>Táblázat</em></h3>\r\n<table>\r\n<tbody>\r\n<tr><th style="text-align: left;">ID</th><th>Name</th><th>Age</th></tr>\r\n<tr>\r\n<td>1</td>\r\n<td>John Smith</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Fred James</td>\r\n<td>49</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Rachel Johnson</td>\r\n<td>19</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '1', 'Nyelvoktatás', 3),
(3, NULL, NULL, NULL, '<h1>Wikipédia</h1>\r\n\r\n\r\n<h2>A Wikipédia többnyelvû, nyílt tartalmú, a nyílt közösség által fejlesztett webes világenciklopédia.</h2>\r\n<p>A Wikipédiát a Wikimédia Alapítvány üzemelteti ? egy floridai központú nonprofit alapítvány ?, szerkesztését pedig önkéntes közösség végzi.\r\n\r\nA Wikipédia magában foglalja a különbözõ nyelvi változatait is, köztük a magyar Wikipédiát. Az angol változat 2012. július 13-án elérte a 4 milliós szócikkszámot[3]; ez a világ legnagyobb enciklopédikus mûve. A 286 különbözõ nyelvû változatban összesen (az angollal együtt) több mint 30 millió szócikk olvasható és szerkeszthetõ, és több mint 39 millió felhasználó szerkeszti õket világszerte.[4] Az internet tíz népszerû szolgáltatása közül az Index-olvasók a Wikipédiát 2010-ben a harmadik leginkább pótolhatatlannak választották (a Google-t és a YouTube-ot követõen).[5]\r\n\r\nA Wikipédia név a wiki és az enciklopédia szavakból ered. Bár gyakori, hogy a Wikipédiára ?Wiki?-ként hivatkoznak (lévén ez a legnagyobb wiki rendszer) ez az elnevezés helytelen, mert több tízezer független, ?wiki-rendszerû? oldal üzemel az interneten, melyek jelentõs része nem enciklopédia formájú.</p>\r\n<h3>Jellemzõk</h3>\r\n<p>\r\nJimmy Wales, a Wikipédia egyik alapítója</p>\r\n<ol>\r\n<h4>A Wikipédia projekt három alapvonása:</h4>\r\n\r\n    <li>A Wikipédia elsõdlegesen enciklopédia, vagy célja azzá válni (kalendárium és napi hírek adatokkal bõvítve);</li>\r\n    <li>a Wikipédia egy wiki, és így (néhány kivételtõl eltekintve) bárki által szerkeszthetõ;</li>\r\n    <li>a Wikipédia nyílt tartalmú, és a Creative Commons Nevezd meg! Így add tovább! 3.0 szabályai vonatkoznak rá.</li>\r\n</ol>\r\n<p>\r\nA Wikipédiát a Nupediához (a Wikipédia elõdjéhez) hasonlóan támogatja Richard Stallman, a szabadszoftver-mozgalom és a Free Software Foundation (Szabad Szoftver Alapítvány, FSF) alapítója; Stallman többször említette a ?szabad, univerzális enciklopédia? hasznosságát még a Nupedia és a Wikipédia alapítása elõtt.\r\n\r\nA Wikipédia tágra nyitottságának van néhány hátránya. Például azon cikkek esetén, melyek a legtöbb résztvevõ számára ismeretlenek, a pontosság és a pártatlanság sokszor megkérdõjelezhetõ. A résztvevõk egy része ezzel vitába szállva úgy gondolja, hogy idõvel ezek a hibák csökkennek, és az egyes cikkek minõsége javulni fog.\r\n\r\nEgy másik hátrány az, hogy sok szerkesztést olyan emberek végeznek, akiknek nem céljuk az, hogy hasznosan vegyenek részt a munkában, hanem mindenféle értelmetlenséget (?fghfhgf?) vagy elfogadhatatlan tartalmat (?hüje aki ólvasa?) adnak a cikkekhez. Ezt a Wikipédia ?vandalizmusnak? nevezi. A projekt nyílt természete ezt ugyan lehetõvé teszi, de egyben ellene is dolgozik. Minden résztvevõnek megvan a lehetõsége az ilyen firkák eltüntetésére, a megelõzõ állapot visszaállítására. Ha ez egy lapnál túl sokszor fordul elõ, akkor ez a lap ?lezárható?, és így csak az adminisztrátorok tudják azt módosítani; erre általában azonban nincs szükség.</p>', NULL, '1', 'Futárszolgálat', 4),
(4, 'Tanácsadás', '', '', '<h2>Új gyógyszer törzskönyvezési kérelmének benyújtásához szükséges tudnivalók</h2>\r\n<p class="soveg">A gyógyszerek forgalombahozatalának engedélyezésével kapcsolatos hatósági feladatok az Országos Gyógyszerészeti Intézet (OGYI) hatáskörébe tartoznak. A forgalomba hozatali engedély kiadásának folyamata kérelemre indul. <br /><br /> <strong>Új törzskönyvezési kérelem elbírásához a dokumentumokat az alábbiak szerint kérjük benyújtani:</strong></p>\r\n<ul>\r\n<li>a kérelmet alátámasztó dokumentációt az 52/2005 (XI. 18.) EüM rendelet 1. számú mellékletében elõírtaknak megfelelõen CTD (Közös Mûszaki Dokumentáció- Common Technical Document) formátumban,</li>\r\n<li>fizetési bizonylatot (ld. Jogszabályok: 32/2005. (VIII. 11.) EüM rendelet az emberi felhasználásra kerülõ gyógyszerekkel kapcsolatos egyes engedélyezési eljárások során fizetendõ igazgatási szolgáltatási díjakról),</li>\r\n<li>további fontos információ a dosszié összeállításának részleteirõl a Notice to Applicants, Volume 2A, Chapter 7 részben található (példányszámok, nemzeti sajátosságok stb.).</li>\r\n<li>a gyógyszerkészítmény tényleges forgalmazása akkor kezdhetõ meg, ha véglegmintáját Intézetünknek benyújtották, és Intézetünk azt elfogadta.</li>\r\n<li>Felhívjuk a figyelmet a 30/2005 (VII. 2) EüM rendelet 2 § (7) bekezdésére, mely szerint ? A gyógyszer külsõ csomagolásán, amennyiben külsõ csomagolás nincs, a közvetlen csomagoláson Braille-írással is fel kell tüntetni a gyógyszer nevét, és amennyiben több hatáserõssége van forgalomban, a hatáserõsségét?.</li>\r\n<li>Ezt a feltételt elsõ ízben a fent említett rendelet hatálybalépése után benyújtott forgalomba hozatali engedélyek iránti kérelmek elbírálása során kell alkalmazni (2005 október 30.) E rendelet hatálybalépésekor már forgalomba hozatalra engedélyezett gyógyszerek esetében a címkézésre és a betegtájékoztatóra vonatkozó rendelkezéseknek legkésõbb 2010. december 31-ig kell megfelelni.</li>\r\n</ul>\r\n<p class="soveg">Hatóságunk bármely - Magyarországon ( vagy az EGK területén) hivatalosan bejegyzett - a vakok és gyengénlátók érdekeit képviselõ szervezet, ill. intézmény Braille írásra vonatkozó szakvéleményét elfogadja!</p>', '', '1', 'Tanácsadás', 5),
(5, 'Kapcsolat', '', '', '<p><span class="cim3"><strong>Telefon</strong>:</span> <span class="szoveg">Rédei Katalin +36 20 989 1027</span></p>', 'uzenet.php', '1', 'Kapcsolat', 7),
(6, 'Üzleti ajánlat', '', '', '', '', '1', 'Üzleti ajánlat', 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `ronared_uzenet`
--

CREATE TABLE IF NOT EXISTS `ronared_uzenet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `nev` varchar(80) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `message` text COLLATE latin2_hungarian_ci,
  `rogzites` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci AUTO_INCREMENT=17 ;

--
-- A tábla adatainak kiíratása `ronared_uzenet`
--

INSERT INTO `ronared_uzenet` (`id`, `email`, `nev`, `message`, `rogzites`) VALUES
(1, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba4', '0000-00-00 00:00:00'),
(2, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba4', '0000-00-00 00:00:00'),
(3, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba7', '0000-00-00 00:00:00'),
(4, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba7', '0000-00-00 00:00:00'),
(5, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: Üzenet: próba7', '0000-00-00 00:00:00'),
(6, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: Üzenet: próba7', '0000-00-00 00:00:00'),
(7, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba8', '0000-00-00 00:00:00'),
(8, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba8', '0000-00-00 00:00:00'),
(9, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: asdaéldskélds\r\nasd', '0000-00-00 00:00:00'),
(10, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: asdaéldskélds\r\nasd', '0000-00-00 00:00:00'),
(11, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba inkognitó', '0000-00-00 00:00:00'),
(12, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: próba inkognitó', '0000-00-00 00:00:00'),
(13, 'molnarzoli82@gmail.com', '', 'Üzenet: ffhdhfgdfh', '0000-00-00 00:00:00'),
(14, 'molnarzoli82@gmail.com', '', 'Üzenet: ffhdhfgdfh', '0000-00-00 00:00:00'),
(15, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: fgjhgf', '0000-00-00 00:00:00'),
(16, 'molnarzoli82@gmail.com', 'Zoli', 'Üzenet: fgjhgf', '0000-00-00 00:00:00');
