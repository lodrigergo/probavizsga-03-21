﻿CREATE TABLE categories (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

CREATE TABLE sellers (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

CREATE TABLE realestates (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  categoryId bigint(20) NOT NULL,
  sellerId bigint(20) NOT NULL,
  description text DEFAULT "",
  createAt date NOT NULL,
  freeofcharge tinyint(1) NOT NULL,
  imageUrl varchar(200) NOT NULL,
  area int(11) DEFAULT NULL,
  rooms int(11) DEFAULT 1,
  floors int(11) DEFAULT 0,
  latlong varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

ALTER TABLE realestates
ADD CONSTRAINT FK_realestates_categoryId FOREIGN KEY (categoryId)
REFERENCES categories (id) ON DELETE NO ACTION;

ALTER TABLE realestates
ADD CONSTRAINT FK_realestates_sellerId FOREIGN KEY (sellerId)
REFERENCES sellers (id) ON DELETE NO ACTION;

INSERT INTO categories(id, name) VALUES
(1, 'ház'),
(2, 'lakás'),
(3, 'építési telek'),
(4, 'garázs'),
(5, 'mezőgazdasági terület'),
(6, 'ipari ingatlan');

INSERT INTO sellers(id, name, phone) VALUES
(1, 'Vonal Zoltán', '+36 1 5970-6734'),
(2, 'Versitz Péter', '+36 1 2068-3991'),
(3, 'Veg Eta', '+36 1 8434-6191'),
(4, 'Vécsei Brigitta Éva', '+36 1 2435-5299'),
(5, 'Szopkó Mátyás Gergõ', '+36 1 7815-6926'),
(6, 'Szikla Szilárd', '+36 1 8618-6027'),
(7, 'Szabó Gréta', '+36 1 4310-7137'),
(8, 'Simics Eszter', '+36 1 2403-6901'),
(9, 'Rontó Pál', '+36 1 5941-3954'),
(10, 'Rekurz Iván', '+36 1 3973-7021'),
(11, 'Raj Zoltán', '+36 1 7282-2044'),
(12, 'Papp Levente Balázs', '+36 1 6456-9730'),
(13, 'Okos Tóni', '+36 1 8153-1376'),
(14, 'Nagy Adrienn', '+36 1 9912-8987'),
(15, 'Miklósi Dorottya', '+36 1 8160-5546'),
(16, 'Marok Nyikolaj', '+36 1 8139-4405'),
(17, 'Kökény Szabolcs Róbert', '+36 1 9592-3384'),
(18, 'Kádár Dávid', '+36 1 2632-6231'),
(19, 'Hutóczki Eszter', '+36 1 6176-8764'),
(20, 'Húr Katalin', '+36 1 8629-9446'),
(21, 'Hajdú Botond András', '+36 1 1851-1656'),
(22, 'Garabuczi Laura', '+36 1 1672-9525'),
(23, 'Fogd Bea', '+36 1 4725-2442'),
(24, 'Fer Enci', '+36 1 6920-6507'),
(25, 'Dia Dóra', '+36 1 7919-4545'),
(26, 'Del Etele', '+36 1 3324-2735'),
(27, 'Csutorás Bence', '+36 1 1761-2168'),
(28, 'Bistei Miklós', '+36 1 9408-6809'),
(29, 'Barkaszi László', '+36 1 3304-6115'),
(30, 'Balogh Vince', '+36 1 1420-1980'),
(31, 'Bali Rudolf', '+36 1 5390-4806'),
(32, 'Bak Tas', '+36 1 3657-3512'),
(33, 'Tóth Viktor', '+36 1 5424-2393'),
(34, 'Tóth Gábor', '+36 1 2320-1912'),
(35, 'Szilv Eszter', '+36 1 6080-2729'),
(36, 'Székely Virág', '+36 1 1588-5680'),
(37, 'Szabó Dávid', '+36 1 1289-2528'),
(38, 'Steinbach Miklós', '+36 1 8481-1104'),
(39, 'Ropp Tamara', '+36 1 5151-1528'),
(40, 'Róka Gábor', '+36 1 2729-9902'),
(41, 'Rézmûves Boglárka Andrea', '+36 1 1084-3221'),
(42, 'Rákóczi Teri', '+36 1 7283-8397'),
(43, 'Radnóthy Péter Attila', '+36 1 3679-6064'),
(44, 'Princz Stella', '+36 1 3991-5128'),
(45, 'Piptyi Nikolett', '+36 1 6592-2847'),
(46, 'Némethy Zsófia', '+36 1 3494-2935'),
(47, 'Nagy Dóra', '+36 1 1707-1992'),
(48, 'Nagy Ádám', '+36 1 4504-5595'),
(49, 'Mérleg Elek', '+36 1 2337-3282'),
(50, 'Maár Tamás', '+36 1 7606-9208'),
(51, 'Kurucz Márk', '+36 1 7759-7117'),
(52, 'Korrum Pál', '+36 1 2188-8335'),
(53, 'Horváth Anikó', '+36 1 2038-1765'),
(54, 'Hegedûs Adrienn', '+36 1 6078-6520'),
(55, 'Hát Izsák', '+36 1 1883-2963'),
(56, 'Fazekas Zoltán', '+36 1 9929-8217'),
(57, 'Eszte Lenke', '+36 1 1488-9639'),
(58, 'Erõs Bálint', '+36 1 8694-8489'),
(59, 'Egyen Lõrinc', '+36 1 2409-9871'),
(60, 'Dalos Ákos Mihály', '+36 1 9950-1575'),
(61, 'Bur Kolos', '+36 1 3652-1187'),
(62, 'Borsós Dóra', '+36 1 9074-8824'),
(63, 'Bodó Milán Jakab', '+36 1 3864-2860'),
(64, 'Benkõ-Szász Tibor', '+36 1 9217-1601'),
(65, 'Belme Heléna', '+36 1 2234-7946'),
(66, 'Bát Orbán', '+36 1 1358-5589'),
(67, 'Zabka Zalán', '+36 1 9196-1121'),
(68, 'Vegera Attila', '+36 1 6416-3568'),
(69, 'Téli Rege', '+36 1 5838-4505'),
(70, 'Szokolai Bianka', '+36 1 9421-9277'),
(71, 'Szeme Imre', '+36 1 4232-3719'),
(72, 'Szap Panna', '+36 1 1605-3090'),
(73, 'Szabó Péter Bence', '+36 1 2992-3471'),
(74, 'Szabó Dávid', '+36 1 1874-6096'),
(75, 'Puporka Anna', '+36 1 4637-4514'),
(76, 'Pataki András', '+36 1 3738-8719'),
(77, 'Papp Fanni', '+36 1 8030-5512'),
(78, 'Orosz Krisztián', '+36 1 1848-3574'),
(79, 'Nemer Eszti', '+36 1 1807-1928'),
(80, 'Nagy Ferenc', '+36 1 9515-7674'),
(81, 'Má Lénárd', '+36 1 6032-2886'),
(82, 'Leskó András', '+36 1 5240-3808'),
(83, 'Kulcsár Dávid', '+36 1 7964-8120'),
(84, 'Kispál Inka', '+36 1 6162-1396'),
(85, 'Kecskés Dániel Tamás', '+36 1 1388-4882'),
(86, 'Kanyik Márton Gábor', '+36 1 1714-2940'),
(87, 'Kalocsai Gábor', '+36 1 1765-4098'),
(88, 'Kalmár Anita', '+36 1 6728-2516'),
(89, 'Hal Ancsa', '+36 1 1569-3878'),
(90, 'Gyuricza Márton', '+36 1 9880-3757'),
(91, 'Giz Ella', '+36 1 5946-8702'),
(92, 'Gáti Orsolya', '+36 1 3378-6077'),
(93, 'Ellen Zita', '+36 1 3294-9724'),
(94, 'Csordás Gábor', '+36 1 5952-3715'),
(95, 'Bír Tamás', '+36 1 3685-6530'),
(96, 'Bekre Pál', '+36 1 5895-6043'),
(97, 'Bakt Ernõ', '+36 1 6029-4217'),
(98, 'Zúz Ottó', '+36 1 1513-5894'),
(99, 'Vík Endre', '+36 1 1906-5690'),
(100, 'Var Gabika', '+36 1 4036-7512'),
(101, 'Urbán Kristóf', '+36 1 5819-3477'),
(102, 'Szûcs Nikolett', '+36 1 5433-2908'),
(103, 'Szolnoki Anna', '+36 1 4163-7869'),
(104, 'Orgován Ágnes', '+36 1 7255-1765'),
(105, 'Mortad Ella', '+36 1 3466-7477'),
(106, 'Minden Áron', '+36 1 5882-3853'),
(107, 'Mercs Zsolt', '+36 1 1111-6927'),
(108, 'Martinkovics Nóra', '+36 1 6233-9041'),
(109, 'Mar Kolos', '+36 1 8662-1431'),
(110, 'Maczkó Balázs', '+36 1 4257-2220'),
(111, 'Kovács Adrienn', '+36 1 7174-6885'),
(112, 'Kiss Péter', '+36 1 6540-5685'),
(113, 'Illemta Nóra', '+36 1 4253-6749'),
(114, 'Gyõri Petra Lilla', '+36 1 7273-7522'),
(115, 'Gazdas Ági', '+36 1 2517-5779'),
(116, 'Gajdán András', '+36 1 7429-3932'),
(117, 'Erõs Dániel', '+36 1 5579-1934'),
(118, 'Csík Tímea', '+36 1 6454-5514'),
(119, 'Czitán Júlia', '+36 1 4057-6232'),
(120, 'Bor Zoltán', '+36 1 7671-8293'),
(121, 'Bal Margó', '+36 1 2584-8721'),
(122, 'Bakó Éva', '+36 1 9957-1724'),
(123, 'Ápry Lisa', '+36 1 8413-6094'),
(124, 'Amor Ella', '+36 1 6978-7676'),
(125, 'Al Ibi', '+36 1 5252-8297'),
(126, 'Zsiga Maja Mária', '+36 1 2642-3243'),
(127, 'Vincs Eszter', '+36 1 5719-6229'),
(128, 'Török Adrienn', '+36 1 8293-9115'),
(129, 'Tét Elek', '+36 1 9055-2184'),
(130, 'Tasi Csaba', '+36 1 9251-3096'),
(131, 'Szórv Ányos', '+36 1 2498-1996'),
(132, 'Szalmon Ella', '+36 1 4632-1377'),
(133, 'Szabolcsi Hajnalka', '+36 1 5986-3519'),
(134, 'Szabó Dávid', '+36 1 1493-3841'),
(135, 'Segre Vera Lilla', '+36 1 2040-6914'),
(136, 'Print Ernõ', '+36 1 8938-1347'),
(137, 'Por Oszkár', '+36 1 4603-6591'),
(138, 'Patkóm Ágnes', '+36 1 9923-6507'),
(139, 'Nyúl Kálmán', '+36 1 4942-8022'),
(140, 'Nyitrai Krisztina', '+36 1 8706-8131'),
(141, 'Mikolics Katalin', '+36 1 6764-6896'),
(142, 'Meggyes Zita', '+36 1 3811-3614'),
(143, 'Lizák Gerhard', '+36 1 3227-3795'),
(144, 'Lev Elek', '+36 1 2451-9808'),
(145, 'Küzmös Gábor Lajos', '+36 1 3214-1728'),
(146, 'Kis Irma', '+36 1 2999-6656'),
(147, 'Kandisz Nóra', '+36 1 9873-6331'),
(148, 'Kala Pál', '+36 1 8336-2460'),
(149, 'Juhász Dániel', '+36 1 6878-9698'),
(150, 'Horváth Anasztázia', '+36 1 8144-3657'),
(151, 'Hasszán Ádám', '+36 1 3579-8432'),
(152, 'Gyurics Márk', '+36 1 4034-9571'),
(153, 'Günczer Dávid', '+36 1 1589-2153'),
(154, 'Gajdán Dániel', '+36 1 2729-9219'),
(155, 'Bíró Patrícia', '+36 1 8692-7655'),
(156, 'Béres Tamás', '+36 1 1818-4840'),
(157, 'Bán Tamás', '+36 1 9446-6211'),
(158, 'Virág Gergely', '+36 1 9832-4463'),
(159, 'Tukacs Pálma Boglárka', '+36 1 3247-8741'),
(160, 'Tóth Péter Zoltán', '+36 1 7404-1914'),
(161, 'Tóth Gergõ', '+36 1 2283-9614'),
(162, 'Tolnai Alex Gábor', '+36 1 4316-2699'),
(163, 'Szilágyi Kinga Réka', '+36 1 7323-3987'),
(164, 'Szalai Péter', '+36 1 2477-4781'),
(165, 'Szabó Teodóra', '+36 1 4590-3626'),
(166, 'Szabó Lili', '+36 1 1073-5330'),
(167, 'Sarádi Ádám', '+36 1 5978-9290'),
(168, 'Resz Elek', '+36 1 1399-2527'),
(169, 'Puber Orsolya', '+36 1 4152-7857'),
(170, 'Polyák Borbála', '+36 1 5811-4471'),
(171, 'Patta Nóra', '+36 1 8964-1307'),
(172, 'Pariz Ernõ', '+36 1 5630-6050'),
(173, 'Pár Zoltán', '+36 1 3798-6794'),
(174, 'Papp Viktória', '+36 1 7471-8665'),
(175, 'Nyomo Réka', '+36 1 7718-7901'),
(176, 'Net Elek', '+36 1 8973-3525'),
(177, 'Nagy Bence', '+36 1 7255-2356'),
(178, 'Mursa Krisztián', '+36 1 4450-7684'),
(179, 'Moskola Tamás', '+36 1 7610-1466'),
(180, 'Lilaszy Vendel Etele', '+36 1 4229-1174'),
(181, 'Kõrösi Petra Virág', '+36 1 9556-3555'),
(182, 'Körm Ödön', '+36 1 3284-8120'),
(183, 'Korpusz Ilma', '+36 1 6751-6005'),
(184, 'Joó Áron', '+36 1 3563-6618'),
(185, 'Fórián Botond Zoltán', '+36 1 7632-8117'),
(186, 'Fekete Bernadett', '+36 1 3734-6252'),
(187, 'Erdei Bence', '+36 1 5098-3880'),
(188, 'End Renáta', '+36 1 2087-5636'),
(189, 'Daróczi István', '+36 1 6603-2602'),
(190, 'Bitje Imre', '+36 1 6998-9366'),
(191, 'Aszta Lipót', '+36 1 8439-5744'),
(192, 'Vécsei Martin Viktor', '+36 1 1356-2153'),
(193, 'Turbó Paszkál', '+36 1 6958-5052'),
(194, 'Török Lõrinc Géza', '+36 1 4571-9108'),
(195, 'Tóth Márton', '+36 1 5265-9773'),
(196, 'Techno Kolos', '+36 1 5837-1456'),
(197, 'Sztepp Elek', '+36 1 4677-6501'),
(198, 'Szelet Elek', '+36 1 4807-6809'),
(199, 'Szabó Balázs', '+36 1 6798-7940'),
(200, 'Szabó András', '+36 1 7090-7252'),
(201, 'Szabadkai Balázs', '+36 1 5118-1098'),
(202, 'Ria Dóra', '+36 1 5032-7942'),
(203, 'Papp Beáta', '+36 1 1382-1376'),
(204, 'Ösztön Ödön', '+36 1 3078-1467'),
(205, 'Madocsai Anna', '+36 1 4631-7553'),
(206, 'Kulcsár Richárd Soma', '+36 1 4370-7907'),
(207, 'Kovács Viktor', '+36 1 8037-9258'),
(208, 'Kedvenc Itala', '+36 1 3551-7349'),
(209, 'Kant Áron', '+36 1 6322-4554'),
(210, 'Kaba Réka', '+36 1 3075-7049'),
(211, 'Haj Dina', '+36 1 8260-7559'),
(212, 'Gyurina Gábor', '+36 1 3799-3906'),
(213, 'Godz Ila', '+36 1 1976-3679'),
(214, 'Gáti Péter', '+36 1 6850-1404'),
(215, 'Gajdán Kinga Dorottya', '+36 1 6459-9738'),
(216, 'Fagyi Zoltán', '+36 1 9792-9208'),
(217, 'Érd Emi', '+36 1 2040-5761'),
(218, 'Dulai Horváth Lilla', '+36 1 1581-5095'),
(219, 'Daj Kálmán', '+36 1 9847-1930'),
(220, 'Csomós Gergely', '+36 1 5760-8293'),
(221, 'Vágó Péter Ákos', '+36 1 4643-1788'),
(222, 'Tóth Zsuzsa', '+36 1 3720-8653'),
(223, 'Takács Regõ', '+36 1 1931-8091'),
(224, 'Szussza Nóra', '+36 1 9101-8009'),
(225, 'Szalai Anna', '+36 1 5073-4715'),
(226, 'Szabó Sandra', '+36 1 1698-5971'),
(227, 'Rabsz Olga', '+36 1 1233-6271'),
(228, 'Pop Simon', '+36 1 4123-9122'),
(229, 'Pofá Zoltán', '+36 1 3347-6124'),
(230, 'Pataki Gyula', '+36 1 8636-1184'),
(231, 'Pataki Bálint', '+36 1 9998-4893'),
(232, 'Panykó Ivett', '+36 1 7244-4396'),
(233, 'Ó Pál', '+36 1 2842-9219'),
(234, 'Nagy László', '+36 1 8938-8657'),
(235, 'Mor Zsolt', '+36 1 7345-4131'),
(236, 'Mod Emma', '+36 1 1239-2839'),
(237, 'Kovács Edina', '+36 1 5100-2643'),
(238, 'Kolle Gina', '+36 1 9907-6155'),
(239, 'Kiss János Dániel', '+36 1 7334-6307'),
(240, 'Kiss András Szabolcs', '+36 1 7222-5339'),
(241, 'Kálóczi Gábor', '+36 1 9112-2176'),
(242, 'Horváth Tamás Zoltán', '+36 1 9097-7192'),
(243, 'Érték Elek', '+36 1 5935-3091'),
(244, 'Ér Emma', '+36 1 1414-4563'),
(245, 'Dári Dóra', '+36 1 1960-4419'),
(246, 'Csávás Zita', '+36 1 3014-2732'),
(247, 'Bodor Gergõ', '+36 1 3024-5364'),
(248, 'Bõrdzsek Imre', '+36 1 7497-9668'),
(249, 'Bíró Olívia', '+36 1 9189-6594'),
(250, 'Bernát Csilla', '+36 1 8180-8416'),
(251, 'Bársony Edward', '+36 1 5120-3163'),
(252, 'Bak Dóra Regina', '+36 1 2238-2131'),
(253, 'Trippon Fanni', '+36 1 6666-1700'),
(254, 'Trab Antal', '+36 1 8970-1364'),
(255, 'Török Dávid', '+36 1 2889-9438'),
(256, 'Tóth Attila', '+36 1 1685-6576'),
(257, 'Sztárko Lajos', '+36 1 3002-6508'),
(258, 'Szõke Tímea', '+36 1 8322-1999'),
(259, 'Szatmári Veronika', '+36 1 2344-8021'),
(260, 'Szabó Beáta', '+36 1 5461-6069'),
(261, 'Szabó András', '+36 1 7434-4351'),
(262, 'Riz Ottó', '+36 1 3879-2628'),
(263, 'Puber Richárd', '+36 1 9841-6716'),
(264, 'Prek Gábor', '+36 1 9905-5000'),
(265, 'Öröm Melitta', '+36 1 1333-9508'),
(266, 'Nemoda Tamás', '+36 1 6726-8470'),
(267, 'Molnár Zsófia', '+36 1 8177-6970'),
(268, 'Kriston László Béla', '+36 1 1500-6946'),
(269, 'Kér Ede', '+36 1 6998-1064'),
(270, 'Kamu Zoltán', '+36 1 8806-2875'),
(271, 'Huczman Gergely', '+36 1 2819-2249'),
(272, 'Harcsa Katalin', '+36 1 8862-3704'),
(273, 'Glavanov Dániel', '+36 1 4218-3928'),
(274, 'Gáspár Tamás', '+36 1 3697-8129'),
(275, 'Furi Kázmér', '+36 1 9919-6448'),
(276, 'Fige Viktor László', '+36 1 5619-9738'),
(277, 'Fejet Lenke', '+36 1 3231-9626'),
(278, 'Farkas Péter', '+36 1 3572-4760'),
(279, 'Egyen Letti', '+36 1 1834-2886'),
(280, 'Donka Lilla Kata', '+36 1 4796-4716'),
(281, 'Dancs Dániel', '+36 1 2541-3669'),
(282, 'Bali Alexandra Mercédesz', '+36 1 1575-7660'),
(283, 'Am Erika', '+36 1 7721-3943'),
(284, 'Tamás Eszter', '+36 1 7843-4272'),
(285, 'Számta Nóra', '+36 1 9826-5779'),
(286, 'Rond Ella', '+36 1 2351-9385'),
(287, 'Remek Elek', '+36 1 4375-6397'),
(288, 'Petõ Béla', '+36 1 7719-1197'),
(289, 'Orgován Ádám', '+36 1 8592-9072'),
(290, 'Németh Dániel', '+36 1 2061-6041'),
(291, 'Nap Pali', '+36 1 7681-6677'),
(292, 'Nagy Brigitta', '+36 1 8026-3506'),
(293, 'Molnár Tibor', '+36 1 7243-7572'),
(294, 'Mikolics Barbara', '+36 1 1704-3810'),
(295, 'Mérta Nóra', '+36 1 2298-4963'),
(296, 'Meg Gyõzõ', '+36 1 3786-4837'),
(297, 'Matolcsi Réka', '+36 1 3192-6394'),
(298, 'Madru Pál', '+36 1 8497-2011'),
(299, 'Lakatos Emese', '+36 1 7708-3203'),
(300, 'Kana Péter', '+36 1 4350-5709'),
(301, 'Hú Zóra', '+36 1 1245-9368'),
(302, 'Hermann Eszter', '+36 1 9367-9537'),
(303, 'Halász Lilla', '+36 1 4012-4349'),
(304, 'Gubcsó Orsolya', '+36 1 5826-4787'),
(305, 'Figyelt Elek', '+36 1 6176-9522'),
(306, 'Fá Zoltán', '+36 1 6461-5712'),
(307, 'Emanci Pál', '+36 1 1485-5199'),
(308, 'Egyenes Ági', '+36 1 1780-7112'),
(309, 'Csõsz Zoltán', '+36 1 9092-1766'),
(310, 'Békés Csaba', '+36 1 2245-4119'),
(311, 'Báthori Péter', '+36 1 6559-6630'),
(312, 'Bacskai Mihály', '+36 1 4996-5351'),
(313, 'Ádám Ákos Lajos', '+36 1 9163-7120'),
(314, 'Varga Tamás', '+36 1 9809-3219'),
(315, 'Vak Cina', '+36 1 4540-3797'),
(316, 'Trap Pista', '+36 1 8213-2085'),
(317, 'Török Szilárd', '+36 1 3603-9947'),
(318, 'Torma Boróka', '+36 1 1259-5724'),
(319, 'Schmuczer Karina', '+36 1 6893-2997'),
(320, 'Potornai Judit Adrienn', '+36 1 2827-9828'),
(321, 'Pataki Vince', '+36 1 7294-6572'),
(322, 'Ne Pál', '+36 1 1541-7907'),
(323, 'Muschl Ica', '+36 1 5489-6439'),
(324, 'Molnár Ágnes', '+36 1 5273-3691'),
(325, 'Milák Tünde', '+36 1 3589-7902'),
(326, 'Locsolók Anna', '+36 1 4029-1417'),
(327, 'László Éva', '+36 1 6162-7660'),
(328, 'Kovács Gábor', '+36 1 5962-1536'),
(329, 'Ko Paszkál', '+36 1 9114-7704'),
(330, 'Kis Anna', '+36 1 9323-8864'),
(331, 'Hoffer Dóra', '+36 1 1836-1531'),
(332, 'Halo Lajos', '+36 1 6695-3298'),
(333, 'Györka Eszter', '+36 1 5067-5633'),
(334, 'Gaz Ella', '+36 1 9185-9796'),
(335, 'Gál Zsófia', '+36 1 9331-1757'),
(336, 'Elmen Eszter', '+36 1 9463-1356'),
(337, 'Dora Júlia Csenge', '+36 1 6824-3336'),
(338, 'Domi Nóra', '+36 1 4453-7126'),
(339, 'Citad Ella', '+36 1 7812-4371'),
(340, 'Bognár Zsuzsanna', '+36 1 1654-7298'),
(341, 'Bennó Bence', '+36 1 1196-9183'),
(342, 'Bármi Áron', '+36 1 1631-3877'),
(343, 'Balogh Virág', '+36 1 2204-1176'),
(344, 'Aradi Dániel', '+36 1 6663-1353'),
(345, 'Aloe Vera', '+36 1 5072-4171'),
(346, 'Vagd Alma', '+36 1 7446-5220'),
(347, 'Tasi Zsombor', '+36 1 5192-9002'),
(348, 'Szüre Tibor', '+36 1 4459-2226'),
(349, 'Papp István Ádám', '+36 1 4759-5564'),
(350, 'Fakan Petra', '+36 1 5033-3241'),
(351, 'Zúz Mara', '+36 1 6023-9360'),
(352, 'Vincze Szabolcs Albert', '+36 1 5301-9563'),
(353, 'Tóth Ádám', '+36 1 7595-7304'),
(354, 'Tatár Máté', '+36 1 8908-3212'),
(355, 'Táli Zsófia', '+36 1 3030-6604'),
(356, 'Szoboszlai Máté', '+36 1 7856-2320'),
(357, 'Szatvári Miksa', '+36 1 9934-7299'),
(358, 'Raj Zóra', '+36 1 2406-9158'),
(359, 'Nagy Viktor', '+36 1 2169-1687'),
(360, 'Kukor Ica', '+36 1 2011-8245'),
(361, 'Kiss Dávid', '+36 1 8096-8493'),
(362, 'Kaposi Bence', '+36 1 3285-8819'),
(363, 'Idege Imre', '+36 1 2070-2811'),
(364, 'Hot Elek', '+36 1 4112-5076'),
(365, 'Horváth József', '+36 1 3928-7053'),
(366, 'Horváth Gergely', '+36 1 4529-6283'),
(367, 'Gajdán Cintia', '+36 1 6537-9518'),
(368, 'Feles Elek', '+36 1 3175-6982'),
(369, 'Elektro M. Ágnes', '+36 1 2161-6371'),
(370, 'Demeter Anna', '+36 1 2672-9935'),
(371, 'Dani Ella', '+36 1 7445-9647'),
(372, 'Budipa Piroska', '+36 1 4439-9700'),
(373, 'Bõrönd Ödön', '+36 1 2709-2407'),
(374, 'Bac Ilus', '+36 1 1301-2730');



INSERT INTO realestates(id, categoryId, description, createAt, freeofcharge, imageUrl, area, rooms, floors, latlong, sellerid) VALUES
(1, 1, NULL, '2021-11-17', 0, 'https://drive.google.com/file/d/1qs5XyJNnnT_meJn_qVJLwASvY1By2bVj', 165, 5, 1, '47.5410485803319,19.1516419487702', 56),
(2, 1, NULL, '2021-10-13', 1, 'https://drive.google.com/file/d/1rxOCx-iRm2I92A1KranthDq86tdM4MQi', 145, 5, 3, '47.4010485803319,19.1536419487702', 16),
(3, 1, NULL, '2022-01-19', 1, 'https://drive.google.com/file/d/1sYbvNK4_SKKq2zOIDW53lm8HCXqF7woO', 150, 5, 4, '47.5760485803319,19.1616419487702', 61),
(4, 4, NULL, '2021-10-31', 1, 'https://drive.google.com/file/d/1she2wd47cp-DPolEjDksz4tkNwT0hova', 135, 5, 1, '47.5600485803319,19.0686419487702', 238),
(5, 4, NULL, '2021-12-29', 1, 'https://drive.google.com/file/d/1r9JPKeAX6BQ7fF-0fHrNqsTrr8D9JPEw', 135, 5, 1, '47.4350485803319,19.1076419487702', 40),
(6, 1, NULL, '2021-10-05', 0, 'https://drive.google.com/file/d/1sVIIeO80kpKhkPS3o4bk7k64_x3qMfkJ', 150, 5, 1, '47.4210485803319,18.9906419487702', 213),
(7, 3, NULL, '2022-02-20', 1, 'https://drive.google.com/file/d/1qujuTrxsUNZ7z0Y9fobfUhgHGCwyggo8', 230, 5, 0, '47.5390485803319,19.0136419487702', 281),
(8, 4, NULL, '2021-12-07', 1, 'https://drive.google.com/file/d/1suSusCdzSM4qKinfhEYdAV0cUw64oefz', 185, 5, 0, '47.5340485803319,19.0216419487702', 124),
(9, 2, NULL, '2022-02-09', 1, 'https://drive.google.com/file/d/1rj4uO_Ewmhir-7A0IHQBOVuK9-Ef3Dyk', 165, 5, 2, '47.5430485803319,19.1646419487702', 168),
(10, 4, NULL, '2021-10-13', 1, 'https://drive.google.com/file/d/1sufiVE60JmFdEsRQbE3pUeAM2pCM6aX5', 205, 5, 1, '47.4100485803319,18.9876419487702', 346),
(11, 1, NULL, '2022-02-01', 1, 'https://drive.google.com/file/d/1rNXGW2H7LG2RFcEOfIpyTP9_lFVV1NZ2', 65, 2, 2, '47.4200485803319,19.0646419487702', 123),
(12, 4, NULL, '2021-10-19', 1, 'https://drive.google.com/file/d/1sVT8P2AqtfmroUv5Y0oRGPMKeUiCO3UO', 195, 5, 0, '47.5010485803319,19.0936419487702', 222),
(13, 4, NULL, '2021-10-11', 1, 'https://drive.google.com/file/d/1qh0nIM1Gn0zrO6Wkmf7iYxcYKKKPZszZ', 180, 5, 2, '47.4770485803319,18.9996419487702', 374),
(14, 5, NULL, '2022-01-29', 1, 'https://drive.google.com/file/d/1rxOCx-iRm2I92A1KranthDq86tdM4MQi', 135, 5, 4, '47.4860485803319,19.0306419487702', 271),
(15, 3, NULL, '2021-10-28', 1, 'https://drive.google.com/file/d/1rj4uO_Ewmhir-7A0IHQBOVuK9-Ef3Dyk', 60, 2, 4, '47.5220485803319,19.1416419487702', 373),
(16, 1, NULL, '2021-10-05', 1, 'https://drive.google.com/file/d/1qdU5ynDGGx6Exc9s8oE6dfCJ1LMOx6EM', 145, 4, 4, '47.5410485803319,19.0886419487702', 312),
(17, 1, NULL, '2021-11-19', 1, 'https://drive.google.com/file/d/1sDgl74Aj76rzTPwLuLL3OGVwcjZy9XX-', 180, 5, 3, '47.3950485803319,19.1196419487702', 10),
(18, 1, NULL, '2022-02-03', 1, 'https://drive.google.com/file/d/1q_gGeRN1CifVp1wQ_QWksnn5BAKbVOSn', 90, 3, 2, '47.3980485803319,19.0206419487702', 24),
(19, 1, NULL, '2022-02-02', 1, 'https://drive.google.com/file/d/1seI-0QF6m_LHj6dwm4gJ390EdfHZIPBM', 140, 5, 4, '47.5710485803319,19.1526419487702', 46),
(20, 1, NULL, '2022-01-25', 1, 'https://drive.google.com/file/d/1slR5WaRshT0uAx2jyvXOj-JshuFACGSi', 40, 1, 2, '47.5360485803319,19.1466419487702', 85),
(21, 4, NULL, '2021-12-12', 1, 'https://drive.google.com/file/d/1rYClD3Gx9y3YUkdh0rPEcRhYzku7C8Da', 80, 4, 3, '47.5670485803319,19.1376419487702', 308),
(22, 1, NULL, '2021-10-18', 1, 'https://drive.google.com/file/d/1sorJiEJkSPZE7bdr8ObTEEZqMtyg1kpe', 150, 5, 1, '47.5050485803319,19.1416419487702', 48),
(23, 1, NULL, '2021-12-05', 1, 'https://drive.google.com/file/d/1rSdEEX2eBfO157pbSlA3O6Fq1Q0CfH7Q', 55, 2, 2, '47.4110485803319,19.0116419487702', 6),
(24, 1, NULL, '2021-12-13', 1, 'https://drive.google.com/file/d/1q_gGeRN1CifVp1wQ_QWksnn5BAKbVOSn', 165, 5, 1, '47.5380485803319,19.1786419487702', 82),
(25, 1, NULL, '2021-11-17', 1, 'https://drive.google.com/file/d/1rFdK0gc1KV12RBj2av3sh4TpIDrLdtDx', 240, 5, 1, '47.4720485803319,19.1716419487702', 157),
(26, 4, NULL, '2021-12-12', 1, 'https://drive.google.com/file/d/1qc74gm94OAzCf8SlGit-B157YL8sKEH0', 120, 4, 1, '47.4880485803319,18.9906419487702', 144),
(27, 1, NULL, '2021-12-06', 1, 'https://drive.google.com/file/d/1sufiVE60JmFdEsRQbE3pUeAM2pCM6aX5', 45, 2, 3, '47.5200485803319,19.1616419487702', 275),
(28, 1, NULL, '2021-09-29', 1, 'https://drive.google.com/file/d/1rgvC9WGdtVcp-sJH-DJbp7HV_33c-X7U', 110, 5, 3, '47.5440485803319,19.0456419487702', 282),
(29, 6, NULL, '2021-11-24', 1, 'https://drive.google.com/file/d/1rjna1tKJSuawRjq_8oMDl_BMe-VZ1RGp', 120, 5, 4, '47.4310485803319,19.0226419487702', 254),
(30, 1, NULL, '2022-01-10', 1, 'https://drive.google.com/file/d/1sBPbyW84_qCKwHoVf313Bl-LENLnr3J-', 100, 3, 0, '47.4340485803319,19.1796419487702', 321),
(31, 2, NULL, '2021-11-11', 1, 'https://drive.google.com/file/d/1slR5WaRshT0uAx2jyvXOj-JshuFACGSi', 85, 3, 1, '47.4890485803319,19.0326419487702', 345),
(32, 4, NULL, '2021-11-27', 1, 'https://drive.google.com/file/d/1qv3b7t3yLkV9HF5TzbyY_-MKaft83bAB', 85, 3, 3, '47.5170485803319,19.1596419487702', 317),
(33, 1, NULL, '2022-01-13', 1, 'https://drive.google.com/file/d/1qv3b7t3yLkV9HF5TzbyY_-MKaft83bAB', 210, 5, 0, '47.4700485803319,19.0176419487702', 111),
(34, 1, NULL, '2021-12-23', 1, 'https://drive.google.com/file/d/1sVT8P2AqtfmroUv5Y0oRGPMKeUiCO3UO', 90, 4, 1, '47.4410485803319,19.1626419487702', 266),
(35, 4, NULL, '2022-02-25', 1, 'https://drive.google.com/file/d/1rxOCx-iRm2I92A1KranthDq86tdM4MQi', 150, 5, 1, '47.5390485803319,18.9916419487702', 103),
(36, 2, NULL, '2021-10-14', 1, 'https://drive.google.com/file/d/1qc74gm94OAzCf8SlGit-B157YL8sKEH0', 175, 5, 4, '47.5810485803319,19.1796419487702', 156),
(37, 4, NULL, '2021-11-01', 1, 'https://drive.google.com/file/d/1rEbvjvUN8QwZ0hAzVvewt8gS1DdIsSWY', 180, 5, 0, '47.5750485803319,19.1116419487702', 178),
(38, 1, NULL, '2022-02-04', 1, 'https://drive.google.com/file/d/1rLu0j76uj4_2wLjun2BPuOoegExBTsyL', 155, 5, 1, '47.5110485803319,19.1536419487702', 175),
(39, 1, NULL, '2021-10-27', 1, 'https://drive.google.com/file/d/1rnDfcOTchNAcjLxLU3x_f7uFliFibtVG', 125, 4, 0, '47.3910485803319,18.9876419487702', 244),
(40, 1, NULL, '2021-10-13', 1, 'https://drive.google.com/file/d/1qgRV5wlPh0XiUcx9H5kvKHQ2pTEspk1m', 80, 3, 0, '47.4660485803319,19.1336419487702', 22),
(41, 1, NULL, '2022-01-12', 1, 'https://drive.google.com/file/d/1sVIIeO80kpKhkPS3o4bk7k64_x3qMfkJ', 45, 1, 1, '47.4650485803319,19.0146419487702', 226),
(42, 1, NULL, '2021-11-12', 1, 'https://drive.google.com/file/d/1sCQxE2fZVvogzkiqI0Sk8ylVLNOhoza0', 95, 3, 2, '47.5600485803319,19.1096419487702', 299),
(43, 4, NULL, '2021-11-14', 1, 'https://drive.google.com/file/d/1qujuTrxsUNZ7z0Y9fobfUhgHGCwyggo8', 225, 5, 0, '47.5330485803319,19.0036419487702', 313),
(44, 4, NULL, '2021-11-16', 1, 'https://drive.google.com/file/d/1sDgl74Aj76rzTPwLuLL3OGVwcjZy9XX-', 165, 5, 3, '47.4640485803319,19.1346419487702', 320),
(45, 3, NULL, '2022-01-17', 1, 'https://drive.google.com/file/d/1rNXGW2H7LG2RFcEOfIpyTP9_lFVV1NZ2', 145, 5, 1, '47.5440485803319,19.0476419487702', 9),
(46, 1, NULL, '2022-02-10', 1, 'https://drive.google.com/file/d/1rSdEEX2eBfO157pbSlA3O6Fq1Q0CfH7Q', 185, 5, 1, '47.5800485803319,19.1496419487702', 96),
(47, 1, NULL, '2022-01-31', 0, 'https://drive.google.com/file/d/1sB_tjZ8W_oqxygBg2AwHFNnCCKZOr_V5', 165, 5, 4, '47.3970485803319,19.1376419487702', 178),
(48, 1, NULL, '2021-12-24', 1, 'https://drive.google.com/file/d/1sUkVjCwzMkqKEDrVivtbFTJ0AE6eW-7Z', 75, 3, 1, '47.5240485803319,19.1266419487702', 43),
(49, 4, NULL, '2022-01-04', 1, 'https://drive.google.com/file/d/1qro_stZpSbux9oLeFT6xh8qF5m0cPmSS', 220, 5, 4, '47.5440485803319,19.1476419487702', 14),
(50, 4, NULL, '2022-01-10', 1, 'https://drive.google.com/file/d/1rfIBFPxBf_TgWERMh-OqVmpFnDxpo6rn', 140, 5, 2, '47.4740485803319,19.0256419487702', 54),
(51, 1, NULL, '2022-02-14', 1, 'https://drive.google.com/file/d/1sDgl74Aj76rzTPwLuLL3OGVwcjZy9XX-', 45, 1, 2, '47.4600485803319,19.0896419487702', 370),
(52, 1, NULL, '2021-11-26', 1, 'https://drive.google.com/file/d/1rj4uO_Ewmhir-7A0IHQBOVuK9-Ef3Dyk', 225, 5, 1, '47.5540485803319,19.1146419487702', 373),
(53, 4, NULL, '2021-10-01', 1, 'https://drive.google.com/file/d/1sBPbyW84_qCKwHoVf313Bl-LENLnr3J-', 175, 5, 4, '47.4830485803319,19.1246419487702', 236),
(54, 1, NULL, '2022-02-17', 1, 'https://drive.google.com/file/d/1rqCETMo582rAUZd2DheACBDpjuICGNkO', 65, 2, 1, '47.5020485803319,19.1836419487702', 250),
(55, 1, NULL, '2021-12-26', 1, 'https://drive.google.com/file/d/1snpSjKUDvZUs9XI89qVb4hhMGcaY_v_z', 75, 2, 0, '47.4290485803319,19.1746419487702', 300),
(56, 1, NULL, '2022-01-26', 1, 'https://drive.google.com/file/d/1qh0nIM1Gn0zrO6Wkmf7iYxcYKKKPZszZ', 75, 2, 2, '47.5390485803319,19.1086419487702', 249),
(57, 1, NULL, '2021-10-14', 0, 'https://drive.google.com/file/d/1s_YB3Iz9rrM3dWAHePHV3OlseaU_rlKX', 65, 3, 1, '47.4570485803319,19.0696419487702', 372),
(58, 1, NULL, '2021-11-03', 1, 'https://drive.google.com/file/d/1swKq40hxXuUHgoliyFACANGoHmtBvVIt', 45, 1, 0, '47.4840485803319,18.9946419487702', 3),
(59, 1, NULL, '2021-10-09', 1, 'https://drive.google.com/file/d/1swKq40hxXuUHgoliyFACANGoHmtBvVIt', 185, 5, 1, '47.4850485803319,19.0206419487702', 222),
(60, 1, NULL, '2021-11-12', 1, 'https://drive.google.com/file/d/1rgvC9WGdtVcp-sJH-DJbp7HV_33c-X7U', 140, 5, 3, '47.3930485803319,19.0836419487702', 60),
(61, 1, NULL, '2021-12-12', 1, 'https://drive.google.com/file/d/1sP08aDIxy2VOkzyLIQeOopGANtSY1ywM', 100, 3, 0, '47.4010485803319,19.0996419487702', 203),
(62, 2, NULL, '2021-12-16', 1, 'https://drive.google.com/file/d/1qxYVWfF2lYDK070FBGvr44BXPZQmtz3d', 110, 4, 2, '47.5370485803319,19.1796419487702', 221),
(63, 1, NULL, '2021-12-14', 1, 'https://drive.google.com/file/d/1sBPbyW84_qCKwHoVf313Bl-LENLnr3J-', 160, 5, 0, '47.5760485803319,19.0276419487702', 50),
(64, 4, NULL, '2022-02-11', 1, 'https://drive.google.com/file/d/1q_gGeRN1CifVp1wQ_QWksnn5BAKbVOSn', 110, 5, 2, '47.4350485803319,19.1736419487702', 231),
(65, 3, NULL, '2021-12-23', 1, 'https://drive.google.com/file/d/1rqxx7t4OdVFJ5th8b23TWKW62NZzSc9f', 180, 5, 2, '47.4260485803319,19.0846419487702', 183),
(66, 1, NULL, '2021-11-25', 1, 'https://drive.google.com/file/d/1rEbvjvUN8QwZ0hAzVvewt8gS1DdIsSWY', 145, 5, 3, '47.5270485803319,19.1286419487702', 143),
(67, 1, NULL, '2022-02-25', 1, 'https://drive.google.com/file/d/1rqxx7t4OdVFJ5th8b23TWKW62NZzSc9f', 145, 5, 0, '47.4820485803319,19.1526419487702', 92),
(68, 2, NULL, '2021-10-07', 0, 'https://drive.google.com/file/d/1rG7cVUhJxLq6GKgP9KFKLabGH2obu5b5', 190, 5, 2, '47.5430485803319,19.1536419487702', 173),
(69, 1, NULL, '2021-11-20', 1, 'https://drive.google.com/file/d/1sUkVjCwzMkqKEDrVivtbFTJ0AE6eW-7Z', 160, 5, 4, '47.5760485803319,19.0926419487702', 102),
(70, 1, NULL, '2021-10-30', 1, 'https://drive.google.com/file/d/1rbBxI6RDTO6JWAO_c1gu8r8NE1aVoHCs', 105, 4, 3, '47.4860485803319,19.1556419487702', 204),
(71, 2, NULL, '2022-01-05', 1, 'https://drive.google.com/file/d/1rEbvjvUN8QwZ0hAzVvewt8gS1DdIsSWY', 60, 2, 1, '47.4050485803319,19.0356419487702', 23);
