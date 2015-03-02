-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- L�trehoz�s ideje: 2015. m�rc. 02. 12:38
-- Szerver verzi�: 5.5.16
-- PHP verzi�: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Adatb�zis: `ronared`
--

-- --------------------------------------------------------

--
-- T�bla szerkezet: `ronared_dokumentumok`
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
-- A t�bla adatainak ki�rat�sa `ronared_dokumentumok`
--

INSERT INTO `ronared_dokumentumok` (`id`, `file`, `folder`, `title_hu`, `title_en`, `title_de`, `title_fr`, `title_it`, `title_ru`, `date`, `status`) VALUES
(1, '2014_01_29_M�solat eredetijeMunkanapl�-2013_04 h�.xls', NULL, 'munkanapl� (xls)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2014_01_29_Chrysanthemum.jpg', NULL, 'vir�g (jpg)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2014_02_04_Vilagitotorony_kep.jpg', NULL, 'torony 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- T�bla szerkezet: `ronared_kepek`
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
-- T�bla szerkezet: `ronared_regisztralt`
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
-- A t�bla adatainak ki�rat�sa `ronared_regisztralt`
--

INSERT INTO `ronared_regisztralt` (`sorszam`, `azonosito`, `nev`, `jelszo`, `email`, `hirlevel`, `jog`, `archiv`, `regisztracio`, `bejelentkezes`, `megjegyzes`, `keresztnev`, `vezeteknev`, `telefon`, `telepules`, `cim`, `vevoszam`) VALUES
(3, 'AdminZoli', 'Moln�r Zolt�n', 'e20ffabe4230eed6ba92c6ee9d9618e4', 'info@inkozrt.hu', 'igen', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'hasznalt', 'admin', '358ef71ff5370984ccff4c2828724a30', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '_anonim_', NULL, '0', 'info@inkozrt.hu', NULL, '5', '0', '2012-02-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'molnarzoli82', NULL, 'b6908e5d5d2917785c6a7b186e6dbb8f', 'molnarzoli82@gmail.com', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'chuck', NULL, '33883c600b81f8d3e5ce558260065ec5', 'chnk@mtv.hu', '1', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AdminKati', NULL, 'c633bd2e4c159b186bd8db72c40e8c18', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'reveszj', NULL, '8d6eaa43a5155fb6052265af62b41d0e', NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- T�bla szerkezet: `ronared_szoveg`
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
-- A t�bla adatainak ki�rat�sa `ronared_szoveg`
--

INSERT INTO `ronared_szoveg` (`id`, `oldalcim`, `kulcsszo`, `leiras`, `tartalom`, `php_file`, `aktiv`, `menu`, `sorrend`) VALUES
(0, 'Bemutatkoz�s', '', '', '<p><span class="cim2">Introduction </span></p>\r\n<p class="szoveg">XXLorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<p>This template has been tested in:</p>\r\n<ul>\r\n<li>Firefox 3.5</li>\r\n<li>Opera 10.00</li>\r\n<li>IE 6, 7 and 8</li>\r\n<li>Chrome</li>\r\n</ul>\r\n<h3>Buy unbranded</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<h3>More free web templates</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n<h3>Webmaster forums</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>', '', '1', 'F�oldal', 1),
(2, 'Nyelvoktat�s', '', '', '<h3>Id�zet</h3>\r\n<blockquote class="idezet">\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque venenatis sagittis enim. Maecenas ligula erat, egestas congue, varius nec, sagittis nec, purus. In neque. Curabitur at metus tincidunt dui tristique molestie. Donec porta molestie tortor. Fusce euismod consectetuer sapien. Fusce ac velit.</p>\r\n</blockquote>\r\n<p>�</p>\r\n<h3 class="cim4"><em>T�bl�zat</em></h3>\r\n<table>\r\n<tbody>\r\n<tr><th style="text-align: left;">ID</th><th>Name</th><th>Age</th></tr>\r\n<tr>\r\n<td>1</td>\r\n<td>John Smith</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Fred James</td>\r\n<td>49</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Rachel Johnson</td>\r\n<td>19</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '1', 'Nyelvoktat�s', 3),
(3, NULL, NULL, NULL, '<h1>Wikip�dia</h1>\r\n\r\n\r\n<h2>A Wikip�dia t�bbnyelv�, ny�lt tartalm�, a ny�lt k�z�ss�g �ltal fejlesztett webes vil�genciklop�dia.</h2>\r\n<p>A Wikip�di�t a Wikim�dia Alap�tv�ny �zemelteti ? egy floridai k�zpont� nonprofit alap�tv�ny ?, szerkeszt�s�t pedig �nk�ntes k�z�ss�g v�gzi.\r\n\r\nA Wikip�dia mag�ban foglalja a k�l�nb�z� nyelvi v�ltozatait is, k�zt�k a magyar Wikip�di�t. Az angol v�ltozat 2012. j�lius 13-�n el�rte a 4 milli�s sz�cikksz�mot[3]; ez a vil�g legnagyobb enciklop�dikus m�ve. A 286 k�l�nb�z� nyelv� v�ltozatban �sszesen (az angollal egy�tt) t�bb mint 30 milli� sz�cikk olvashat� �s szerkeszthet�, �s t�bb mint 39 milli� felhaszn�l� szerkeszti �ket vil�gszerte.[4] Az internet t�z n�pszer� szolg�ltat�sa k�z�l az Index-olvas�k a Wikip�di�t 2010-ben a harmadik legink�bb p�tolhatatlannak v�lasztott�k (a Google-t �s a YouTube-ot k�vet�en).[5]\r\n\r\nA Wikip�dia n�v a wiki �s az enciklop�dia szavakb�l ered. B�r gyakori, hogy a Wikip�di�ra ?Wiki?-k�nt hivatkoznak (l�v�n ez a legnagyobb wiki rendszer) ez az elnevez�s helytelen, mert t�bb t�zezer f�ggetlen, ?wiki-rendszer�? oldal �zemel az interneten, melyek jelent�s r�sze nem enciklop�dia form�j�.</p>\r\n<h3>Jellemz�k</h3>\r\n<p>\r\nJimmy Wales, a Wikip�dia egyik alap�t�ja</p>\r\n<ol>\r\n<h4>A Wikip�dia projekt h�rom alapvon�sa:</h4>\r\n\r\n    <li>A Wikip�dia els�dlegesen enciklop�dia, vagy c�lja azz� v�lni (kalend�rium �s napi h�rek adatokkal b�v�tve);</li>\r\n    <li>a Wikip�dia egy wiki, �s �gy (n�h�ny kiv�telt�l eltekintve) b�rki �ltal szerkeszthet�;</li>\r\n    <li>a Wikip�dia ny�lt tartalm�, �s a Creative Commons Nevezd meg! �gy add tov�bb! 3.0 szab�lyai vonatkoznak r�.</li>\r\n</ol>\r\n<p>\r\nA Wikip�di�t a Nupedi�hoz (a Wikip�dia el�dj�hez) hasonl�an t�mogatja Richard Stallman, a szabadszoftver-mozgalom �s a Free Software Foundation (Szabad Szoftver Alap�tv�ny, FSF) alap�t�ja; Stallman t�bbsz�r eml�tette a ?szabad, univerz�lis enciklop�dia? hasznoss�g�t m�g a Nupedia �s a Wikip�dia alap�t�sa el�tt.\r\n\r\nA Wikip�dia t�gra nyitotts�g�nak van n�h�ny h�tr�nya. P�ld�ul azon cikkek eset�n, melyek a legt�bb r�sztvev� sz�m�ra ismeretlenek, a pontoss�g �s a p�rtatlans�g sokszor megk�rd�jelezhet�. A r�sztvev�k egy r�sze ezzel vit�ba sz�llva �gy gondolja, hogy id�vel ezek a hib�k cs�kkennek, �s az egyes cikkek min�s�ge javulni fog.\r\n\r\nEgy m�sik h�tr�ny az, hogy sok szerkeszt�st olyan emberek v�geznek, akiknek nem c�ljuk az, hogy hasznosan vegyenek r�szt a munk�ban, hanem mindenf�le �rtelmetlens�get (?fghfhgf?) vagy elfogadhatatlan tartalmat (?h�je aki �lvasa?) adnak a cikkekhez. Ezt a Wikip�dia ?vandalizmusnak? nevezi. A projekt ny�lt term�szete ezt ugyan lehet�v� teszi, de egyben ellene is dolgozik. Minden r�sztvev�nek megvan a lehet�s�ge az ilyen firk�k elt�ntet�s�re, a megel�z� �llapot vissza�ll�t�s�ra. Ha ez egy lapn�l t�l sokszor fordul el�, akkor ez a lap ?lez�rhat�?, �s �gy csak az adminisztr�torok tudj�k azt m�dos�tani; erre �ltal�ban azonban nincs sz�ks�g.</p>', NULL, '1', 'Fut�rszolg�lat', 4),
(4, 'Tan�csad�s', '', '', '<h2>�j gy�gyszer t�rzsk�nyvez�si k�relm�nek beny�jt�s�hoz sz�ks�ges tudnival�k</h2>\r\n<p class="soveg">A gy�gyszerek forgalombahozatal�nak enged�lyez�s�vel kapcsolatos hat�s�gi feladatok az Orsz�gos Gy�gyszer�szeti Int�zet (OGYI) hat�sk�r�be tartoznak. A forgalomba hozatali enged�ly kiad�s�nak folyamata k�relemre indul. <br /><br /> <strong>�j t�rzsk�nyvez�si k�relem elb�r�s�hoz a dokumentumokat az al�bbiak szerint k�rj�k beny�jtani:</strong></p>\r\n<ul>\r\n<li>a k�relmet al�t�maszt� dokument�ci�t az 52/2005 (XI. 18.) E�M rendelet 1. sz�m� mell�klet�ben el��rtaknak megfelel�en CTD (K�z�s M�szaki Dokument�ci�- Common Technical Document) form�tumban,</li>\r\n<li>fizet�si bizonylatot (ld. Jogszab�lyok: 32/2005. (VIII. 11.) E�M rendelet az emberi felhaszn�l�sra ker�l� gy�gyszerekkel kapcsolatos egyes enged�lyez�si elj�r�sok sor�n fizetend� igazgat�si szolg�ltat�si d�jakr�l),</li>\r\n<li>tov�bbi fontos inform�ci� a dosszi� �ssze�ll�t�s�nak r�szleteir�l a Notice to Applicants, Volume 2A, Chapter 7 r�szben tal�lhat� (p�ld�nysz�mok, nemzeti saj�toss�gok stb.).</li>\r\n<li>a gy�gyszerk�sz�tm�ny t�nyleges forgalmaz�sa akkor kezdhet� meg, ha v�glegmint�j�t Int�zet�nknek beny�jtott�k, �s Int�zet�nk azt elfogadta.</li>\r\n<li>Felh�vjuk a figyelmet a 30/2005 (VII. 2) E�M rendelet 2 � (7) bekezd�s�re, mely szerint ? A gy�gyszer k�ls� csomagol�s�n, amennyiben k�ls� csomagol�s nincs, a k�zvetlen csomagol�son Braille-�r�ssal is fel kell t�ntetni a gy�gyszer nev�t, �s amennyiben t�bb hat�ser�ss�ge van forgalomban, a hat�ser�ss�g�t?.</li>\r\n<li>Ezt a felt�telt els� �zben a fent eml�tett rendelet hat�lybal�p�se ut�n beny�jtott forgalomba hozatali enged�lyek ir�nti k�relmek elb�r�l�sa sor�n kell alkalmazni (2005 okt�ber 30.) E rendelet hat�lybal�p�sekor m�r forgalomba hozatalra enged�lyezett gy�gyszerek eset�ben a c�mk�z�sre �s a betegt�j�koztat�ra vonatkoz� rendelkez�seknek legk�s�bb 2010. december 31-ig kell megfelelni.</li>\r\n</ul>\r\n<p class="soveg">Hat�s�gunk b�rmely - Magyarorsz�gon ( vagy az EGK ter�let�n) hivatalosan bejegyzett - a vakok �s gyeng�nl�t�k �rdekeit k�pvisel� szervezet, ill. int�zm�ny Braille �r�sra vonatkoz� szakv�lem�ny�t elfogadja!</p>', '', '1', 'Tan�csad�s', 5),
(5, 'Kapcsolat', '', '', '<p><span class="cim3"><strong>Telefon</strong>:</span> <span class="szoveg">R�dei Katalin�+36 20 989 1027</span></p>', 'uzenet.php', '1', 'Kapcsolat', 7),
(6, '�zleti aj�nlat', '', '', '', '', '1', '�zleti aj�nlat', 6);

-- --------------------------------------------------------

--
-- T�bla szerkezet: `ronared_uzenet`
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
-- A t�bla adatainak ki�rat�sa `ronared_uzenet`
--

INSERT INTO `ronared_uzenet` (`id`, `email`, `nev`, `message`, `rogzites`) VALUES
(1, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba4', '0000-00-00 00:00:00'),
(2, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba4', '0000-00-00 00:00:00'),
(3, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba7', '0000-00-00 00:00:00'),
(4, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba7', '0000-00-00 00:00:00'),
(5, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: �zenet: pr�ba7', '0000-00-00 00:00:00'),
(6, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: �zenet: pr�ba7', '0000-00-00 00:00:00'),
(7, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba8', '0000-00-00 00:00:00'),
(8, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba8', '0000-00-00 00:00:00'),
(9, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: asda�ldsk�lds\r\nasd', '0000-00-00 00:00:00'),
(10, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: asda�ldsk�lds\r\nasd', '0000-00-00 00:00:00'),
(11, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba inkognit�', '0000-00-00 00:00:00'),
(12, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: pr�ba inkognit�', '0000-00-00 00:00:00'),
(13, 'molnarzoli82@gmail.com', '', '�zenet: ffhdhfgdfh', '0000-00-00 00:00:00'),
(14, 'molnarzoli82@gmail.com', '', '�zenet: ffhdhfgdfh', '0000-00-00 00:00:00'),
(15, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: fgjhgf', '0000-00-00 00:00:00'),
(16, 'molnarzoli82@gmail.com', 'Zoli', '�zenet: fgjhgf', '0000-00-00 00:00:00');
