-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 17-04-2014 a las 12:15:01
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `7art`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `archivo`
-- 

CREATE TABLE `archivo` (
  `idarchivo` int(11) NOT NULL,
  `archivo` blob NOT NULL,
  `tipo` tinyint(4) default NULL,
  PRIMARY KEY  (`idarchivo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `archivo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estado`
-- 

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL auto_increment,
  `estado` varchar(45) NOT NULL,
  `codigoPais` varchar(3) NOT NULL,
  PRIMARY KEY  (`idestado`),
  KEY `estadoPais` (`codigoPais`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4086 ;

-- 
-- Volcar la base de datos para la tabla `estado`
-- 

INSERT INTO `estado` VALUES (3291, '', 'TWN');
INSERT INTO `estado` VALUES (915, 'Abhasia [Aphazeti]', 'GEO');
INSERT INTO `estado` VALUES (2818, 'Abidjan', 'CIV');
INSERT INTO `estado` VALUES (1504, 'Abruzzit', 'ITA');
INSERT INTO `estado` VALUES (71, 'Abu Dhabi', 'ARE');
INSERT INTO `estado` VALUES (988, 'Aceh', 'IDN');
INSERT INTO `estado` VALUES (285, 'Acre', 'BRA');
INSERT INTO `estado` VALUES (3366, 'Adana', 'TUR');
INSERT INTO `estado` VALUES (762, 'Addis Abeba', 'ETH');
INSERT INTO `estado` VALUES (1787, 'Aden', 'YEM');
INSERT INTO `estado` VALUES (3398, 'Adiyaman', 'TUR');
INSERT INTO `estado` VALUES (3690, 'Adygea', 'RUS');
INSERT INTO `estado` VALUES (914, 'Adzaria [Atšara]', 'GEO');
INSERT INTO `estado` VALUES (3415, 'Afyon', 'TUR');
INSERT INTO `estado` VALUES (2541, 'Aguascalientes', 'MEX');
INSERT INTO `estado` VALUES (3425, 'Ahal', 'TKM');
INSERT INTO `estado` VALUES (1541, 'Aichi', 'JPN');
INSERT INTO `estado` VALUES (74, 'Ajman', 'ARE');
INSERT INTO `estado` VALUES (2817, 'Akershus', 'NOR');
INSERT INTO `estado` VALUES (1600, 'Akita', 'JPN');
INSERT INTO `estado` VALUES (3416, 'Aksaray', 'TUR');
INSERT INTO `estado` VALUES (1383, 'al-Anbar', 'IRQ');
INSERT INTO `estado` VALUES (2435, 'al-Asima', 'KWT');
INSERT INTO `estado` VALUES (3239, 'al-Bahr al-Abyad', 'SDN');
INSERT INTO `estado` VALUES (3233, 'al-Bahr al-Ahmar', 'SDN');
INSERT INTO `estado` VALUES (2826, 'al-Batina', 'OMN');
INSERT INTO `estado` VALUES (629, 'al-Buhayra', 'EGY');
INSERT INTO `estado` VALUES (622, 'al-Daqahliya', 'EGY');
INSERT INTO `estado` VALUES (627, 'al-Faiyum', 'EGY');
INSERT INTO `estado` VALUES (620, 'al-Gharbiya', 'EGY');
INSERT INTO `estado` VALUES (3261, 'al-Hasaka', 'SYR');
INSERT INTO `estado` VALUES (3237, 'al-Jazira', 'SDN');
INSERT INTO `estado` VALUES (3198, 'al-Khudud al-Samaliy', 'SAU');
INSERT INTO `estado` VALUES (155, 'al-Manama', 'BHR');
INSERT INTO `estado` VALUES (636, 'al-Minufiya', 'EGY');
INSERT INTO `estado` VALUES (632, 'al-Minya', 'EGY');
INSERT INTO `estado` VALUES (1377, 'al-Najaf', 'IRQ');
INSERT INTO `estado` VALUES (3238, 'al-Qadarif', 'SDN');
INSERT INTO `estado` VALUES (1382, 'al-Qadisiya', 'IRQ');
INSERT INTO `estado` VALUES (617, 'al-Qalyubiya', 'EGY');
INSERT INTO `estado` VALUES (3186, 'al-Qasim', 'SAU');
INSERT INTO `estado` VALUES (3265, 'al-Raqqa', 'SYR');
INSERT INTO `estado` VALUES (2445, 'al-Shamal', 'LBN');
INSERT INTO `estado` VALUES (626, 'al-Sharqiya', 'EGY');
INSERT INTO `estado` VALUES (1376, 'al-Sulaymaniya', 'IRQ');
INSERT INTO `estado` VALUES (1374, 'al-Tamim', 'IRQ');
INSERT INTO `estado` VALUES (1793, 'al-Zarqa', 'JOR');
INSERT INTO `estado` VALUES (2450, 'al-Zawiya', 'LBY');
INSERT INTO `estado` VALUES (3869, 'Alabama', 'USA');
INSERT INTO `estado` VALUES (229, 'Alagoas', 'BRA');
INSERT INTO `estado` VALUES (3863, 'Alaska', 'USA');
INSERT INTO `estado` VALUES (1817, 'Alberta', 'CAN');
INSERT INTO `estado` VALUES (615, 'Aleksandria', 'EGY');
INSERT INTO `estado` VALUES (3257, 'Aleppo', 'SYR');
INSERT INTO `estado` VALUES (41, 'Alger', 'DZA');
INSERT INTO `estado` VALUES (1885, 'Almaty', 'KAZ');
INSERT INTO `estado` VALUES (1866, 'Almaty Qalasy', 'KAZ');
INSERT INTO `estado` VALUES (2986, 'Alsace', 'FRA');
INSERT INTO `estado` VALUES (3610, 'Altai', 'RUS');
INSERT INTO `estado` VALUES (2892, 'Alto Paraná', 'PRY');
INSERT INTO `estado` VALUES (287, 'Amapá', 'BRA');
INSERT INTO `estado` VALUES (221, 'Amazonas', 'BRA');
INSERT INTO `estado` VALUES (765, 'Amhara', 'ETH');
INSERT INTO `estado` VALUES (1792, 'Amman', 'JOR');
INSERT INTO `estado` VALUES (3670, 'Amur', 'RUS');
INSERT INTO `estado` VALUES (3788, 'An Giang', 'VNM');
INSERT INTO `estado` VALUES (2757, 'Anambra & Enugu & Eb', 'NGA');
INSERT INTO `estado` VALUES (2902, 'Ancash', 'PER');
INSERT INTO `estado` VALUES (662, 'Andalusia', 'ESP');
INSERT INTO `estado` VALUES (1034, 'Andhra Pradesh', 'IND');
INSERT INTO `estado` VALUES (3512, 'Andijon', 'UZB');
INSERT INTO `estado` VALUES (61, 'Andorra la Vella', 'AND');
INSERT INTO `estado` VALUES (3101, 'Anhalt Sachsen', 'DEU');
INSERT INTO `estado` VALUES (1922, 'Anhui', 'CHN');
INSERT INTO `estado` VALUES (3364, 'Ankara', 'TUR');
INSERT INTO `estado` VALUES (44, 'Annaba', 'DZA');
INSERT INTO `estado` VALUES (3371, 'Antalya', 'TUR');
INSERT INTO `estado` VALUES (2461, 'Antananarivo', 'MDG');
INSERT INTO `estado` VALUES (2265, 'Antioquia', 'COL');
INSERT INTO `estado` VALUES (565, 'Antofagasta', 'CHL');
INSERT INTO `estado` VALUES (181, 'Antwerpen', 'BEL');
INSERT INTO `estado` VALUES (3552, 'Anzoátegui', 'VEN');
INSERT INTO `estado` VALUES (1604, 'Aomori', 'JPN');
INSERT INTO `estado` VALUES (1479, 'Apulia', 'ITA');
INSERT INTO `estado` VALUES (3583, 'Apure', 'VEN');
INSERT INTO `estado` VALUES (1874, 'Aqtöbe', 'KAZ');
INSERT INTO `estado` VALUES (3178, 'Aqua Grande', 'STP');
INSERT INTO `estado` VALUES (2988, 'Aquitaine', 'FRA');
INSERT INTO `estado` VALUES (3037, 'Arad', 'ROM');
INSERT INTO `estado` VALUES (663, 'Aragonia', 'ESP');
INSERT INTO `estado` VALUES (3551, 'Aragua', 'VEN');
INSERT INTO `estado` VALUES (1401, 'Ardebil', 'IRN');
INSERT INTO `estado` VALUES (2930, 'Arecibo', 'PRI');
INSERT INTO `estado` VALUES (2897, 'Arequipa', 'PER');
INSERT INTO `estado` VALUES (3036, 'Arges', 'ROM');
INSERT INTO `estado` VALUES (3322, 'Århus', 'DNK');
INSERT INTO `estado` VALUES (3357, 'Ariana', 'TUN');
INSERT INTO `estado` VALUES (3804, 'Arizona', 'USA');
INSERT INTO `estado` VALUES (3634, 'Arkangeli', 'RUS');
INSERT INTO `estado` VALUES (3908, 'Arkansas', 'USA');
INSERT INTO `estado` VALUES (899, 'ARMM', 'PHL');
INSERT INTO `estado` VALUES (3318, 'Arusha', 'TZA');
INSERT INTO `estado` VALUES (917, 'Ashanti', 'GHA');
INSERT INTO `estado` VALUES (3189, 'Asir', 'SAU');
INSERT INTO `estado` VALUES (1070, 'Assam', 'IND');
INSERT INTO `estado` VALUES (630, 'Assuan', 'EGY');
INSERT INTO `estado` VALUES (1870, 'Astana', 'KAZ');
INSERT INTO `estado` VALUES (3620, 'Astrahan', 'RUS');
INSERT INTO `estado` VALUES (673, 'Asturia', 'ESP');
INSERT INTO `estado` VALUES (2891, 'Asunción', 'PRY');
INSERT INTO `estado` VALUES (624, 'Asyut', 'EGY');
INSERT INTO `estado` VALUES (582, 'Atacama', 'CHL');
INSERT INTO `estado` VALUES (194, 'Atacora', 'BEN');
INSERT INTO `estado` VALUES (2266, 'Atlántico', 'COL');
INSERT INTO `estado` VALUES (941, 'Atlántida', 'HND');
INSERT INTO `estado` VALUES (192, 'Atlantique', 'BEN');
INSERT INTO `estado` VALUES (2407, 'Attika', 'GRC');
INSERT INTO `estado` VALUES (1881, 'Atyrau', 'KAZ');
INSERT INTO `estado` VALUES (3500, 'Auckland', 'NZL');
INSERT INTO `estado` VALUES (3000, 'Auvergne', 'FRA');
INSERT INTO `estado` VALUES (2912, 'Ayacucho', 'PER');
INSERT INTO `estado` VALUES (3401, 'Aydin', 'TUR');
INSERT INTO `estado` VALUES (601, 'Azuay', 'ECU');
INSERT INTO `estado` VALUES (3786, 'Ba Ria-Vung Tau', 'VNM');
INSERT INTO `estado` VALUES (1379, 'Babil', 'IRQ');
INSERT INTO `estado` VALUES (3789, 'Bac Thai', 'VNM');
INSERT INTO `estado` VALUES (3035, 'Bacau', 'ROM');
INSERT INTO `estado` VALUES (3496, 'Bács-Kiskun', 'HUN');
INSERT INTO `estado` VALUES (3081, 'Baden-Württemberg', 'DEU');
INSERT INTO `estado` VALUES (1371, 'Baghdad', 'IRQ');
INSERT INTO `estado` VALUES (214, 'Bahia', 'BRA');
INSERT INTO `estado` VALUES (3241, 'Bahr al-Jabal', 'SDN');
INSERT INTO `estado` VALUES (3076, 'Baijeri', 'DEU');
INSERT INTO `estado` VALUES (2527, 'Baja California', 'MEX');
INSERT INTO `estado` VALUES (2595, 'Baja California Sur', 'MEX');
INSERT INTO `estado` VALUES (150, 'Baki', 'AZE');
INSERT INTO `estado` VALUES (668, 'Balears', 'ESP');
INSERT INTO `estado` VALUES (960, 'Bali', 'IDN');
INSERT INTO `estado` VALUES (3390, 'Balikesir', 'TUR');
INSERT INTO `estado` VALUES (10, 'Balkh', 'AFG');
INSERT INTO `estado` VALUES (2698, 'Balti', 'MDA');
INSERT INTO `estado` VALUES (2836, 'Baluchistan', 'PAK');
INSERT INTO `estado` VALUES (2488, 'Bamako', 'MLI');
INSERT INTO `estado` VALUES (3220, 'Banaadir', 'SOM');
INSERT INTO `estado` VALUES (2312, 'Bandundu', 'COD');
INSERT INTO `estado` VALUES (3326, 'Bangkok', 'THA');
INSERT INTO `estado` VALUES (1895, 'Bangui', 'CAF');
INSERT INTO `estado` VALUES (633, 'Bani Suwayf', 'EGY');
INSERT INTO `estado` VALUES (910, 'Banjul', 'GMB');
INSERT INTO `estado` VALUES (3493, 'Baranya', 'HUN');
INSERT INTO `estado` VALUES (3559, 'Barinas', 'VEN');
INSERT INTO `estado` VALUES (163, 'Barisal', 'BGD');
INSERT INTO `estado` VALUES (2314, 'Bas-Zaïre', 'COD');
INSERT INTO `estado` VALUES (3253, 'Basel-Stadt', 'CHE');
INSERT INTO `estado` VALUES (665, 'Baskimaa', 'ESP');
INSERT INTO `estado` VALUES (3594, 'Baškortostan', 'RUS');
INSERT INTO `estado` VALUES (1375, 'Basra', 'IRQ');
INSERT INTO `estado` VALUES (3009, 'Basse-Normandie', 'FRA');
INSERT INTO `estado` VALUES (925, 'Basse-Terre', 'GLP');
INSERT INTO `estado` VALUES (3389, 'Batman', 'TUR');
INSERT INTO `estado` VALUES (45, 'Batna', 'DZA');
INSERT INTO `estado` VALUES (1807, 'Battambang', 'KHM');
INSERT INTO `estado` VALUES (2789, 'Bauchi & Gombe', 'NGA');
INSERT INTO `estado` VALUES (2926, 'Bayamón', 'PRI');
INSERT INTO `estado` VALUES (55, 'Béchar', 'DZA');
INSERT INTO `estado` VALUES (2444, 'Beirut', 'LBN');
INSERT INTO `estado` VALUES (51, 'Béjaïa', 'DZA');
INSERT INTO `estado` VALUES (3639, 'Belgorod', 'RUS');
INSERT INTO `estado` VALUES (190, 'Belize City', 'BLZ');
INSERT INTO `estado` VALUES (2699, 'Bender (Tîghina)', 'MDA');
INSERT INTO `estado` VALUES (2448, 'Bengasi', 'LBY');
INSERT INTO `estado` VALUES (986, 'Bengkulu', 'IDN');
INSERT INTO `estado` VALUES (64, 'Benguela', 'AGO');
INSERT INTO `estado` VALUES (2799, 'Benue', 'NGA');
INSERT INTO `estado` VALUES (3074, 'Berliini', 'DEU');
INSERT INTO `estado` VALUES (3254, 'Bern', 'CHE');
INSERT INTO `estado` VALUES (826, 'Bicol', 'PHL');
INSERT INTO `estado` VALUES (1051, 'Bihar', 'IND');
INSERT INTO `estado` VALUES (3034, 'Bihor', 'ROM');
INSERT INTO `estado` VALUES (3785, 'Binh Dinh', 'VNM');
INSERT INTO `estado` VALUES (3791, 'Binh Thuan', 'VNM');
INSERT INTO `estado` VALUES (564, 'Bíobío', 'CHL');
INSERT INTO `estado` VALUES (2978, 'Bioko', 'GNQ');
INSERT INTO `estado` VALUES (3361, 'Biserta', 'TUN');
INSERT INTO `estado` VALUES (2259, 'Bishkek shaary', 'KGZ');
INSERT INTO `estado` VALUES (49, 'Biskra', 'DZA');
INSERT INTO `estado` VALUES (933, 'Bissau', 'GNB');
INSERT INTO `estado` VALUES (2467, 'Blantyre', 'MWI');
INSERT INTO `estado` VALUES (50, 'Blida', 'DZA');
INSERT INTO `estado` VALUES (2267, 'Bolívar', 'COL');
INSERT INTO `estado` VALUES (195, 'Borgou', 'BEN');
INSERT INTO `estado` VALUES (2763, 'Borno & Yobe', 'NGA');
INSERT INTO `estado` VALUES (3491, 'Borsod-Abaúj-Zemplén', 'HUN');
INSERT INTO `estado` VALUES (3043, 'Botosani', 'ROM');
INSERT INTO `estado` VALUES (2819, 'Bouaké', 'CIV');
INSERT INTO `estado` VALUES (557, 'Boulkiemdé', 'BFA');
INSERT INTO `estado` VALUES (2997, 'Bourgogne', 'FRA');
INSERT INTO `estado` VALUES (2296, 'Boyacá', 'COL');
INSERT INTO `estado` VALUES (2924, 'Braga', 'PRT');
INSERT INTO `estado` VALUES (3033, 'Braila', 'ROM');
INSERT INTO `estado` VALUES (3128, 'Brandenburg', 'DEU');
INSERT INTO `estado` VALUES (3030, 'Brasov', 'ROM');
INSERT INTO `estado` VALUES (3215, 'Bratislava', 'SVK');
INSERT INTO `estado` VALUES (2302, 'Brazzaville', 'COG');
INSERT INTO `estado` VALUES (3083, 'Bremen', 'DEU');
INSERT INTO `estado` VALUES (3531, 'Brest', 'BLR');
INSERT INTO `estado` VALUES (2993, 'Bretagne', 'FRA');
INSERT INTO `estado` VALUES (1824, 'British Colombia', 'CAN');
INSERT INTO `estado` VALUES (3625, 'Brjansk', 'RUS');
INSERT INTO `estado` VALUES (544, 'Brunei and Muara', 'BRN');
INSERT INTO `estado` VALUES (185, 'Bryssel', 'BEL');
INSERT INTO `estado` VALUES (3489, 'Budapest', 'HUN');
INSERT INTO `estado` VALUES (76, 'Buenos Aires', 'ARG');
INSERT INTO `estado` VALUES (3513, 'Buhoro', 'UZB');
INSERT INTO `estado` VALUES (558, 'Bujumbura', 'BDI');
INSERT INTO `estado` VALUES (3024, 'Bukarest', 'ROM');
INSERT INTO `estado` VALUES (4075, 'Bulawayo', 'ZWE');
INSERT INTO `estado` VALUES (548, 'Burgas', 'BGR');
INSERT INTO `estado` VALUES (3632, 'Burjatia', 'RUS');
INSERT INTO `estado` VALUES (3367, 'Bursa', 'TUR');
INSERT INTO `estado` VALUES (1423, 'Bushehr', 'IRN');
INSERT INTO `estado` VALUES (3041, 'Buzau', 'ROM');
INSERT INTO `estado` VALUES (851, 'Cagayan Valley', 'PHL');
INSERT INTO `estado` VALUES (2929, 'Caguas', 'PRI');
INSERT INTO `estado` VALUES (2914, 'Cajamarca', 'PER');
INSERT INTO `estado` VALUES (1487, 'Calabria', 'ITA');
INSERT INTO `estado` VALUES (2273, 'Caldas', 'COL');
INSERT INTO `estado` VALUES (3800, 'California', 'USA');
INSERT INTO `estado` VALUES (2900, 'Callao', 'PER');
INSERT INTO `estado` VALUES (2421, 'Camagüey', 'CUB');
INSERT INTO `estado` VALUES (1472, 'Campania', 'ITA');
INSERT INTO `estado` VALUES (2591, 'Campeche', 'MEX');
INSERT INTO `estado` VALUES (3782, 'Can Tho', 'VNM');
INSERT INTO `estado` VALUES (666, 'Canary Islands', 'ESP');
INSERT INTO `estado` VALUES (684, 'Cantabria', 'ESP');
INSERT INTO `estado` VALUES (3501, 'Canterbury', 'NZL');
INSERT INTO `estado` VALUES (3203, 'Cap-Vert', 'SEN');
INSERT INTO `estado` VALUES (141, 'Capital Region', 'AUS');
INSERT INTO `estado` VALUES (2297, 'Caquetá', 'COL');
INSERT INTO `estado` VALUES (802, 'CAR', 'PHL');
INSERT INTO `estado` VALUES (3548, 'Carabobo', 'VEN');
INSERT INTO `estado` VALUES (798, 'Caraga', 'PHL');
INSERT INTO `estado` VALUES (3052, 'Caras-Severin', 'ROM');
INSERT INTO `estado` VALUES (2928, 'Carolina', 'PRI');
INSERT INTO `estado` VALUES (3341, 'Caroni', 'TTO');
INSERT INTO `estado` VALUES (2491, 'Casablanca', 'MAR');
INSERT INTO `estado` VALUES (669, 'Castilla and León', 'ESP');
INSERT INTO `estado` VALUES (3071, 'Castries', 'LCA');
INSERT INTO `estado` VALUES (119, 'Catamarca', 'ARG');
INSERT INTO `estado` VALUES (2288, 'Cauca', 'COL');
INSERT INTO `estado` VALUES (3020, 'Cayenne', 'GUF');
INSERT INTO `estado` VALUES (191, 'Cayo', 'BLZ');
INSERT INTO `estado` VALUES (216, 'Ceará', 'BRA');
INSERT INTO `estado` VALUES (770, 'Central', 'FJI');
INSERT INTO `estado` VALUES (951, 'Central Java', 'IDN');
INSERT INTO `estado` VALUES (793, 'Central Luzon', 'PHL');
INSERT INTO `estado` VALUES (2408, 'Central Macedonia', 'GRC');
INSERT INTO `estado` VALUES (795, 'Central Mindanao', 'PHL');
INSERT INTO `estado` VALUES (1798, 'Central Serbia', 'YUG');
INSERT INTO `estado` VALUES (775, 'Central Visayas', 'PHL');
INSERT INTO `estado` VALUES (1810, 'Centre', 'CMR');
INSERT INTO `estado` VALUES (2281, 'Cesar', 'COL');
INSERT INTO `estado` VALUES (104, 'Chaco', 'ARG');
INSERT INTO `estado` VALUES (2333, 'Chagang', 'PRK');
INSERT INTO `estado` VALUES (1444, 'Chaharmahal va Bakht', 'IRN');
INSERT INTO `estado` VALUES (2990, 'Champagne-Ardenne', 'FRA');
INSERT INTO `estado` VALUES (1079, 'Chandigarh', 'IND');
INSERT INTO `estado` VALUES (3284, 'Changhwa', 'TWN');
INSERT INTO `estado` VALUES (2504, 'Chaouia-Ouardigha', 'MAR');
INSERT INTO `estado` VALUES (3343, 'Chari-Baguirmi', 'TCD');
INSERT INTO `estado` VALUES (2364, 'Cheju', 'KOR');
INSERT INTO `estado` VALUES (1086, 'Chhatisgarh', 'IND');
INSERT INTO `estado` VALUES (3329, 'Chiang Mai', 'THA');
INSERT INTO `estado` VALUES (2556, 'Chiapas', 'MEX');
INSERT INTO `estado` VALUES (3282, 'Chiayi', 'TWN');
INSERT INTO `estado` VALUES (1550, 'Chiba', 'JPN');
INSERT INTO `estado` VALUES (2526, 'Chihuahua', 'MEX');
INSERT INTO `estado` VALUES (612, 'Chimborazo', 'ECU');
INSERT INTO `estado` VALUES (2742, 'Chinandega', 'NIC');
INSERT INTO `estado` VALUES (2696, 'Chisinau', 'MDA');
INSERT INTO `estado` VALUES (157, 'Chittagong', 'BGD');
INSERT INTO `estado` VALUES (57, 'Chlef', 'DZA');
INSERT INTO `estado` VALUES (2348, 'Chollabuk', 'KOR');
INSERT INTO `estado` VALUES (2366, 'Chollanam', 'KOR');
INSERT INTO `estado` VALUES (1898, 'Chongqing', 'CHN');
INSERT INTO `estado` VALUES (121, 'Chubut', 'ARG');
INSERT INTO `estado` VALUES (2349, 'Chungchongbuk', 'KOR');
INSERT INTO `estado` VALUES (2356, 'Chungchongnam', 'KOR');
INSERT INTO `estado` VALUES (204, 'Chuquisaca', 'BOL');
INSERT INTO `estado` VALUES (2694, 'Chuuk', 'FSM');
INSERT INTO `estado` VALUES (2432, 'Ciego de Ávila', 'CUB');
INSERT INTO `estado` VALUES (2427, 'Cienfuegos', 'CUB');
INSERT INTO `estado` VALUES (3522, 'Cizah', 'UZB');
INSERT INTO `estado` VALUES (3027, 'Cluj', 'ROM');
INSERT INTO `estado` VALUES (2545, 'Coahuila de Zaragoza', 'MEX');
INSERT INTO `estado` VALUES (1888, 'Coast', 'KEN');
INSERT INTO `estado` VALUES (202, 'Cochabamba', 'BOL');
INSERT INTO `estado` VALUES (2923, 'Coímbra', 'PRT');
INSERT INTO `estado` VALUES (2636, 'Colima', 'MEX');
INSERT INTO `estado` VALUES (3823, 'Colorado', 'USA');
INSERT INTO `estado` VALUES (932, 'Conakry', 'GIN');
INSERT INTO `estado` VALUES (3952, 'Connecticut', 'USA');
INSERT INTO `estado` VALUES (3026, 'Constanta', 'ROM');
INSERT INTO `estado` VALUES (43, 'Constantine', 'DZA');
INSERT INTO `estado` VALUES (3169, 'Copperbelt', 'ZMB');
INSERT INTO `estado` VALUES (576, 'Coquimbo', 'CHL');
INSERT INTO `estado` VALUES (77, 'Córdoba', 'ARG');
INSERT INTO `estado` VALUES (100, 'Corrientes', 'ARG');
INSERT INTO `estado` VALUES (940, 'Cortés', 'HND');
INSERT INTO `estado` VALUES (3394, 'Çorum', 'TUR');
INSERT INTO `estado` VALUES (2412, 'Crete', 'GRC');
INSERT INTO `estado` VALUES (2783, 'Cross River', 'NGA');
INSERT INTO `estado` VALUES (3492, 'Csongrád', 'HUN');
INSERT INTO `estado` VALUES (2280, 'Cundinamarca', 'COL');
INSERT INTO `estado` VALUES (39, 'Curaçao', 'ANT');
INSERT INTO `estado` VALUES (2905, 'Cusco', 'PER');
INSERT INTO `estado` VALUES (3796, 'Dac Lac', 'VNM');
INSERT INTO `estado` VALUES (3642, 'Dagestan', 'RUS');
INSERT INTO `estado` VALUES (2516, 'Dakhlet Nouâdhibou', 'MRT');
INSERT INTO `estado` VALUES (2821, 'Daloa', 'CIV');
INSERT INTO `estado` VALUES (3256, 'Damascus', 'SYR');
INSERT INTO `estado` VALUES (3263, 'Damaskos', 'SYR');
INSERT INTO `estado` VALUES (3048, 'Dâmbovita', 'ROM');
INSERT INTO `estado` VALUES (3311, 'Dar es Salaam', 'TZA');
INSERT INTO `estado` VALUES (3236, 'Darfur al-Janubiya', 'SDN');
INSERT INTO `estado` VALUES (3240, 'Darfur al-Shamaliya', 'SDN');
INSERT INTO `estado` VALUES (3427, 'Dashhowuz', 'TKM');
INSERT INTO `estado` VALUES (2441, 'Daugavpils', 'LVA');
INSERT INTO `estado` VALUES (3262, 'Dayr al-Zawr', 'SYR');
INSERT INTO `estado` VALUES (1031, 'Delhi', 'IND');
INSERT INTO `estado` VALUES (3379, 'Denizli', 'TUR');
INSERT INTO `estado` VALUES (156, 'Dhaka', 'BGD');
INSERT INTO `estado` VALUES (1380, 'DhiQar', 'IRQ');
INSERT INTO `estado` VALUES (1528, 'Dili', 'TMP');
INSERT INTO `estado` VALUES (3211, 'Diourbel', 'SEN');
INSERT INTO `estado` VALUES (763, 'Dire Dawa', 'ETH');
INSERT INTO `estado` VALUES (3819, 'District of Columbia', 'USA');
INSERT INTO `estado` VALUES (939, 'Distrito Central', 'HND');
INSERT INTO `estado` VALUES (75, 'Distrito Federal', 'ARG');
INSERT INTO `estado` VALUES (593, 'Distrito Nacional', 'DOM');
INSERT INTO `estado` VALUES (1385, 'Diyala', 'IRQ');
INSERT INTO `estado` VALUES (3372, 'Diyarbakir', 'TUR');
INSERT INTO `estado` VALUES (591, 'Djibouti', 'DJI');
INSERT INTO `estado` VALUES (3434, 'Dnipropetrovsk', 'UKR');
INSERT INTO `estado` VALUES (2697, 'Dnjestria', 'MDA');
INSERT INTO `estado` VALUES (3312, 'Dodoma', 'TZA');
INSERT INTO `estado` VALUES (2979, 'Doha', 'QAT');
INSERT INTO `estado` VALUES (3031, 'Dolj', 'ROM');
INSERT INTO `estado` VALUES (2937, 'Dolnoslaskie', 'POL');
INSERT INTO `estado` VALUES (3435, 'Donetsk', 'UKR');
INSERT INTO `estado` VALUES (3779, 'Dong Nai', 'VNM');
INSERT INTO `estado` VALUES (2501, 'Doukkala-Abda', 'MAR');
INSERT INTO `estado` VALUES (33, 'Drenthe', 'NLD');
INSERT INTO `estado` VALUES (597, 'Duarte', 'DOM');
INSERT INTO `estado` VALUES (70, 'Dubai', 'ARE');
INSERT INTO `estado` VALUES (3506, 'Dunedin', 'NZL');
INSERT INTO `estado` VALUES (2549, 'Durango', 'MEX');
INSERT INTO `estado` VALUES (1389, 'East Azerbaidzan', 'IRN');
INSERT INTO `estado` VALUES (769, 'East Falkland', 'FLK');
INSERT INTO `estado` VALUES (182, 'East Flanderi', 'BEL');
INSERT INTO `estado` VALUES (3058, 'East Götanmaan län', 'SWE');
INSERT INTO `estado` VALUES (946, 'East Java', 'IDN');
INSERT INTO `estado` VALUES (2306, 'East Kasai', 'COD');
INSERT INTO `estado` VALUES (1871, 'East Kazakstan', 'KAZ');
INSERT INTO `estado` VALUES (1891, 'Eastern', 'KEN');
INSERT INTO `estado` VALUES (721, 'Eastern Cape', 'ZAF');
INSERT INTO `estado` VALUES (820, 'Eastern Visayas', 'PHL');
INSERT INTO `estado` VALUES (3403, 'Edirne', 'TUR');
INSERT INTO `estado` VALUES (2771, 'Edo & Delta', 'NGA');
INSERT INTO `estado` VALUES (1565, 'Ehime', 'JPN');
INSERT INTO `estado` VALUES (602, 'El Oro', 'ECU');
INSERT INTO `estado` VALUES (2459, 'El-Aaiún', 'ESH');
INSERT INTO `estado` VALUES (3384, 'Elâzig', 'TUR');
INSERT INTO `estado` VALUES (1476, 'Emilia-Romagna', 'ITA');
INSERT INTO `estado` VALUES (462, 'England', 'GBR');
INSERT INTO `estado` VALUES (106, 'Entre Rios', 'ARG');
INSERT INTO `estado` VALUES (2315, 'Equateur', 'COD');
INSERT INTO `estado` VALUES (3418, 'Erzincan', 'TUR');
INSERT INTO `estado` VALUES (3381, 'Erzurum', 'TUR');
INSERT INTO `estado` VALUES (1388, 'Esfahan', 'IRN');
INSERT INTO `estado` VALUES (3374, 'Eskisehir', 'TUR');
INSERT INTO `estado` VALUES (613, 'Esmeraldas', 'ECU');
INSERT INTO `estado` VALUES (266, 'Espírito Santo', 'BRA');
INSERT INTO `estado` VALUES (908, 'Estuaire', 'GAB');
INSERT INTO `estado` VALUES (703, 'Extremadura', 'ESP');
INSERT INTO `estado` VALUES (1812, 'Extrême-Nord', 'CMR');
INSERT INTO `estado` VALUES (3339, 'Fakaofo', 'TKL');
INSERT INTO `estado` VALUES (3563, 'Falcón', 'VEN');
INSERT INTO `estado` VALUES (3516, 'Fargona', 'UZB');
INSERT INTO `estado` VALUES (1390, 'Fars', 'IRN');
INSERT INTO `estado` VALUES (207, 'Federaatio', 'BIH');
INSERT INTO `estado` VALUES (2760, 'Federal Capital Dist', 'NGA');
INSERT INTO `estado` VALUES (3497, 'Fejér', 'HUN');
INSERT INTO `estado` VALUES (2494, 'Fès-Boulemane', 'MAR');
INSERT INTO `estado` VALUES (2465, 'Fianarantsoa', 'MDG');
INSERT INTO `estado` VALUES (23, 'Flevoland', 'NLD');
INSERT INTO `estado` VALUES (3812, 'Florida', 'USA');
INSERT INTO `estado` VALUES (116, 'Formosa', 'ARG');
INSERT INTO `estado` VALUES (2514, 'Fort-de-France', 'MTQ');
INSERT INTO `estado` VALUES (3008, 'Franche-Comté', 'FRA');
INSERT INTO `estado` VALUES (211, 'Francistown', 'BWA');
INSERT INTO `estado` VALUES (3325, 'Frederiksberg', 'DNK');
INSERT INTO `estado` VALUES (733, 'Free State', 'ZAF');
INSERT INTO `estado` VALUES (1483, 'Friuli-Venezia Giuli', 'ITA');
INSERT INTO `estado` VALUES (1918, 'Fujian', 'CHN');
INSERT INTO `estado` VALUES (1622, 'Fukui', 'JPN');
INSERT INTO `estado` VALUES (1545, 'Fukuoka', 'JPN');
INSERT INTO `estado` VALUES (1587, 'Fukushima', 'JPN');
INSERT INTO `estado` VALUES (3430, 'Funafuti', 'TUV');
INSERT INTO `estado` VALUES (3323, 'Fyn', 'DNK');
INSERT INTO `estado` VALUES (3362, 'Gabès', 'TUN');
INSERT INTO `estado` VALUES (210, 'Gaborone', 'BWA');
INSERT INTO `estado` VALUES (3028, 'Galati', 'ROM');
INSERT INTO `estado` VALUES (671, 'Galicia', 'ESP');
INSERT INTO `estado` VALUES (151, 'Gäncä', 'AZE');
INSERT INTO `estado` VALUES (1919, 'Gansu', 'CHN');
INSERT INTO `estado` VALUES (719, 'Gauteng', 'ZAF');
INSERT INTO `estado` VALUES (3068, 'Gävleborgs län', 'SWE');
INSERT INTO `estado` VALUES (2713, 'Gaza', 'MOZ');
INSERT INTO `estado` VALUES (3368, 'Gaziantep', 'TUR');
INSERT INTO `estado` VALUES (19, 'Gelderland', 'NLD');
INSERT INTO `estado` VALUES (3252, 'Geneve', 'CHE');
INSERT INTO `estado` VALUES (934, 'Georgetown', 'GUY');
INSERT INTO `estado` VALUES (3837, 'Georgia', 'USA');
INSERT INTO `estado` VALUES (2499, 'Gharb-Chrarda-Béni H', 'MAR');
INSERT INTO `estado` VALUES (58, 'Ghardaïa', 'DZA');
INSERT INTO `estado` VALUES (1576, 'Gifu', 'JPN');
INSERT INTO `estado` VALUES (1397, 'Gilan', 'IRN');
INSERT INTO `estado` VALUES (616, 'Giza', 'EGY');
INSERT INTO `estado` VALUES (224, 'Goiás', 'BRA');
INSERT INTO `estado` VALUES (1414, 'Golestan', 'IRN');
INSERT INTO `estado` VALUES (3527, 'Gomel', 'BLR');
INSERT INTO `estado` VALUES (3050, 'Gorj', 'ROM');
INSERT INTO `estado` VALUES (545, 'Grad Sofija', 'BGR');
INSERT INTO `estado` VALUES (2415, 'Grad Zagreb', 'HRV');
INSERT INTO `estado` VALUES (559, 'Grand Cayman', 'CYM');
INSERT INTO `estado` VALUES (3429, 'Grand Turk', 'TCA');
INSERT INTO `estado` VALUES (924, 'Grande-Terre', 'GLP');
INSERT INTO `estado` VALUES (2426, 'Granma', 'CUB');
INSERT INTO `estado` VALUES (916, 'Greater Accra', 'GHA');
INSERT INTO `estado` VALUES (3530, 'Grodno', 'BLR');
INSERT INTO `estado` VALUES (17, 'Groningen', 'NLD');
INSERT INTO `estado` VALUES (2528, 'Guanajuato', 'MEX');
INSERT INTO `estado` VALUES (1903, 'Guangdong', 'CHN');
INSERT INTO `estado` VALUES (1926, 'Guangxi', 'CHN');
INSERT INTO `estado` VALUES (2424, 'Guantánamo', 'CUB');
INSERT INTO `estado` VALUES (3577, 'Guárico', 'VEN');
INSERT INTO `estado` VALUES (928, 'Guatemala', 'GTM');
INSERT INTO `estado` VALUES (599, 'Guayas', 'ECU');
INSERT INTO `estado` VALUES (2931, 'Guaynabo', 'PRI');
INSERT INTO `estado` VALUES (2534, 'Guerrero', 'MEX');
INSERT INTO `estado` VALUES (1920, 'Guizhou', 'CHN');
INSERT INTO `estado` VALUES (1035, 'Gujarat', 'IND');
INSERT INTO `estado` VALUES (1610, 'Gumma', 'JPN');
INSERT INTO `estado` VALUES (3494, 'Györ-Moson-Sopron', 'HUN');
INSERT INTO `estado` VALUES (1460, 'Ha Darom', 'ISR');
INSERT INTO `estado` VALUES (1459, 'Ha Merkaz', 'ISR');
INSERT INTO `estado` VALUES (3607, 'Habarovsk', 'RUS');
INSERT INTO `estado` VALUES (1790, 'Hadramawt', 'YEM');
INSERT INTO `estado` VALUES (1458, 'Haifa', 'ISR');
INSERT INTO `estado` VALUES (3190, 'Hail', 'SAU');
INSERT INTO `estado` VALUES (1965, 'Hainan', 'CHN');
INSERT INTO `estado` VALUES (183, 'Hainaut', 'BEL');
INSERT INTO `estado` VALUES (3777, 'Haiphong', 'VNM');
INSERT INTO `estado` VALUES (3490, 'Hajdú-Bihar', 'HUN');
INSERT INTO `estado` VALUES (3689, 'Hakassia', 'RUS');
INSERT INTO `estado` VALUES (3259, 'Hama', 'SYR');
INSERT INTO `estado` VALUES (1398, 'Hamadan', 'IRN');
INSERT INTO `estado` VALUES (3075, 'Hamburg', 'DEU');
INSERT INTO `estado` VALUES (2325, 'Hamgyong N', 'PRK');
INSERT INTO `estado` VALUES (2326, 'Hamgyong P', 'PRK');
INSERT INTO `estado` VALUES (197, 'Hamilton', 'BMU');
INSERT INTO `estado` VALUES (3776, 'Hanoi', 'VNM');
INSERT INTO `estado` VALUES (3657, 'Hanti-Mansia', 'RUS');
INSERT INTO `estado` VALUES (4074, 'Harare', 'ZWE');
INSERT INTO `estado` VALUES (3797, 'Harjumaa', 'EST');
INSERT INTO `estado` VALUES (3433, 'Harkova', 'UKR');
INSERT INTO `estado` VALUES (1061, 'Haryana', 'IND');
INSERT INTO `estado` VALUES (550, 'Haskovo', 'BGR');
INSERT INTO `estado` VALUES (3392, 'Hatay', 'TUR');
INSERT INTO `estado` VALUES (2989, 'Haute-Normandie', 'FRA');
INSERT INTO `estado` VALUES (2308, 'Haute-Zaïre', 'COD');
INSERT INTO `estado` VALUES (3844, 'Hawaii', 'USA');
INSERT INTO `estado` VALUES (2433, 'Hawalli', 'KWT');
INSERT INTO `estado` VALUES (1913, 'Hebei', 'CHN');
INSERT INTO `estado` VALUES (4082, 'Hebron', 'PSE');
INSERT INTO `estado` VALUES (1901, 'Heilongjiang', 'CHN');
INSERT INTO `estado` VALUES (1912, 'Henan', 'CHN');
INSERT INTO `estado` VALUES (9, 'Herat', 'AFG');
INSERT INTO `estado` VALUES (3445, 'Herson', 'UKR');
INSERT INTO `estado` VALUES (3078, 'Hessen', 'DEU');
INSERT INTO `estado` VALUES (3250, 'Hhohho', 'SWZ');
INSERT INTO `estado` VALUES (2584, 'Hidalgo', 'MEX');
INSERT INTO `estado` VALUES (3258, 'Hims', 'SYR');
INSERT INTO `estado` VALUES (1547, 'Hiroshima', 'JPN');
INSERT INTO `estado` VALUES (3345, 'Hlavní mesto Praha', 'CZE');
INSERT INTO `estado` VALUES (3456, 'Hmelnytskyi', 'UKR');
INSERT INTO `estado` VALUES (3775, 'Ho Chi Minh City', 'VNM');
INSERT INTO `estado` VALUES (1789, 'Hodeida', 'YEM');
INSERT INTO `estado` VALUES (1455, 'Höfuðborgarsvæði', 'ISL');
INSERT INTO `estado` VALUES (1542, 'Hokkaido', 'JPN');
INSERT INTO `estado` VALUES (2422, 'Holguín', 'CUB');
INSERT INTO `estado` VALUES (2322, 'Home Island', 'CCK');
INSERT INTO `estado` VALUES (943, 'Hongkong', 'HKG');
INSERT INTO `estado` VALUES (3167, 'Honiara', 'SLB');
INSERT INTO `estado` VALUES (3526, 'Horad Minsk', 'BLR');
INSERT INTO `estado` VALUES (2814, 'Hordaland', 'NOR');
INSERT INTO `estado` VALUES (1406, 'Hormozgan', 'IRN');
INSERT INTO `estado` VALUES (556, 'Houet', 'BFA');
INSERT INTO `estado` VALUES (3278, 'Hsinchu', 'TWN');
INSERT INTO `estado` VALUES (3303, 'Hualien', 'TWN');
INSERT INTO `estado` VALUES (63, 'Huambo', 'AGO');
INSERT INTO `estado` VALUES (2911, 'Huanuco', 'PER');
INSERT INTO `estado` VALUES (1900, 'Hubei', 'CHN');
INSERT INTO `estado` VALUES (2276, 'Huila', 'COL');
INSERT INTO `estado` VALUES (1916, 'Hunan', 'CHN');
INSERT INTO `estado` VALUES (2332, 'Hwanghae N', 'PRK');
INSERT INTO `estado` VALUES (2331, 'Hwanghae P', 'PRK');
INSERT INTO `estado` VALUES (1544, 'Hyogo', 'JPN');
INSERT INTO `estado` VALUES (3025, 'Iasi', 'ROM');
INSERT INTO `estado` VALUES (1624, 'Ibaragi', 'JPN');
INSERT INTO `estado` VALUES (1791, 'Ibb', 'YEM');
INSERT INTO `estado` VALUES (2908, 'Ica', 'PER');
INSERT INTO `estado` VALUES (3370, 'Içel', 'TUR');
INSERT INTO `estado` VALUES (3904, 'Idaho', 'USA');
INSERT INTO `estado` VALUES (3266, 'Idlib', 'SYR');
INSERT INTO `estado` VALUES (1431, 'Ilam', 'IRN');
INSERT INTO `estado` VALUES (3309, 'Ilan', 'TWN');
INSERT INTO `estado` VALUES (2980, 'Île-de-France', 'FRA');
INSERT INTO `estado` VALUES (3801, 'Illinois', 'USA');
INSERT INTO `estado` VALUES (829, 'Ilocos', 'PHL');
INSERT INTO `estado` VALUES (608, 'Imbabura', 'ECU');
INSERT INTO `estado` VALUES (912, 'Imereti', 'GEO');
INSERT INTO `estado` VALUES (2766, 'Imo & Abia', 'NGA');
INSERT INTO `estado` VALUES (2339, 'Inchon', 'KOR');
INSERT INTO `estado` VALUES (3810, 'Indiana', 'USA');
INSERT INTO `estado` VALUES (2715, 'Inhambane', 'MOZ');
INSERT INTO `estado` VALUES (2490, 'Inner Harbour', 'MLT');
INSERT INTO `estado` VALUES (1931, 'Inner Mongolia', 'CHN');
INSERT INTO `estado` VALUES (3891, 'Iowa', 'USA');
INSERT INTO `estado` VALUES (1794, 'Irbid', 'JOR');
INSERT INTO `estado` VALUES (1373, 'Irbil', 'IRQ');
INSERT INTO `estado` VALUES (3609, 'Irkutsk', 'RUS');
INSERT INTO `estado` VALUES (2720, 'Irrawaddy [Ayeyarwad', 'MMR');
INSERT INTO `estado` VALUES (1567, 'Ishikawa', 'JPN');
INSERT INTO `estado` VALUES (2837, 'Islamabad', 'PAK');
INSERT INTO `estado` VALUES (628, 'Ismailia', 'EGY');
INSERT INTO `estado` VALUES (3405, 'Isparta', 'TUR');
INSERT INTO `estado` VALUES (3363, 'Istanbul', 'TUR');
INSERT INTO `estado` VALUES (3460, 'Ivano-Frankivsk', 'UKR');
INSERT INTO `estado` VALUES (3623, 'Ivanovo', 'RUS');
INSERT INTO `estado` VALUES (1609, 'Iwate', 'JPN');
INSERT INTO `estado` VALUES (3365, 'Izmir', 'TUR');
INSERT INTO `estado` VALUES (945, 'Jakarta Raya', 'IDN');
INSERT INTO `estado` VALUES (2522, 'Jalisco', 'MEX');
INSERT INTO `estado` VALUES (964, 'Jambi', 'IDN');
INSERT INTO `estado` VALUES (1052, 'Jammu and Kashmir', 'IND');
INSERT INTO `estado` VALUES (3606, 'Jaroslavl', 'RUS');
INSERT INTO `estado` VALUES (541, 'Jersey', 'GBR');
INSERT INTO `estado` VALUES (1456, 'Jerusalem', 'ISR');
INSERT INTO `estado` VALUES (1068, 'Jharkhand', 'IND');
INSERT INTO `estado` VALUES (1905, 'Jiangsu', 'CHN');
INSERT INTO `estado` VALUES (1917, 'Jiangxi', 'CHN');
INSERT INTO `estado` VALUES (1906, 'Jilin', 'CHN');
INSERT INTO `estado` VALUES (3351, 'Jizní Cechy', 'CZE');
INSERT INTO `estado` VALUES (3346, 'Jizní Morava', 'CZE');
INSERT INTO `estado` VALUES (2472, 'Johor', 'MYS');
INSERT INTO `estado` VALUES (3063, 'Jönköpings län', 'SWE');
INSERT INTO `estado` VALUES (3222, 'Jubbada Hoose', 'SOM');
INSERT INTO `estado` VALUES (111, 'Jujuy', 'ARG');
INSERT INTO `estado` VALUES (2903, 'Junín', 'PER');
INSERT INTO `estado` VALUES (3665, 'Kabardi-Balkaria', 'RUS');
INSERT INTO `estado` VALUES (7, 'Kabol', 'AFG');
INSERT INTO `estado` VALUES (555, 'Kadiogo', 'BFA');
INSERT INTO `estado` VALUES (2755, 'Kaduna', 'NGA');
INSERT INTO `estado` VALUES (2336, 'Kaesong-si', 'PRK');
INSERT INTO `estado` VALUES (640, 'Kafr al-Shaykh', 'EGY');
INSERT INTO `estado` VALUES (1592, 'Kagawa', 'JPN');
INSERT INTO `estado` VALUES (1556, 'Kagoshima', 'JPN');
INSERT INTO `estado` VALUES (3383, 'Kahramanmaras', 'TUR');
INSERT INTO `estado` VALUES (614, 'Kairo', 'EGY');
INSERT INTO `estado` VALUES (3360, 'Kairouan', 'TUN');
INSERT INTO `estado` VALUES (962, 'Kalimantan Barat', 'IDN');
INSERT INTO `estado` VALUES (958, 'Kalimantan Selatan', 'IDN');
INSERT INTO `estado` VALUES (1013, 'Kalimantan Tengah', 'IDN');
INSERT INTO `estado` VALUES (963, 'Kalimantan Timur', 'IDN');
INSERT INTO `estado` VALUES (3629, 'Kaliningrad', 'RUS');
INSERT INTO `estado` VALUES (3745, 'Kalmykia', 'RUS');
INSERT INTO `estado` VALUES (3640, 'Kaluga', 'RUS');
INSERT INTO `estado` VALUES (3680, 'Kamtšatka', 'RUS');
INSERT INTO `estado` VALUES (1539, 'Kanagawa', 'JPN');
INSERT INTO `estado` VALUES (2369, 'Kang-won', 'KOR');
INSERT INTO `estado` VALUES (2329, 'Kangwon', 'PRK');
INSERT INTO `estado` VALUES (2750, 'Kano & Jigawa', 'NGA');
INSERT INTO `estado` VALUES (3848, 'Kansas', 'USA');
INSERT INTO `estado` VALUES (3270, 'Kaohsiung', 'TWN');
INSERT INTO `estado` VALUES (3206, 'Kaolack', 'SEN');
INSERT INTO `estado` VALUES (3406, 'Karabük', 'TUR');
INSERT INTO `estado` VALUES (3515, 'Karakalpakistan', 'UZB');
INSERT INTO `estado` VALUES (3414, 'Karaman', 'TUR');
INSERT INTO `estado` VALUES (3719, 'Karatšai-Tšerkessia', 'RUS');
INSERT INTO `estado` VALUES (1378, 'Karbala', 'IRQ');
INSERT INTO `estado` VALUES (3654, 'Karjala', 'RUS');
INSERT INTO `estado` VALUES (1036, 'Karnataka', 'IND');
INSERT INTO `estado` VALUES (1534, 'Kärnten', 'AUT');
INSERT INTO `estado` VALUES (3267, 'Karotegin', 'TJK');
INSERT INTO `estado` VALUES (3422, 'Kars', 'TUR');
INSERT INTO `estado` VALUES (3234, 'Kassala', 'SDN');
INSERT INTO `estado` VALUES (696, 'Kastilia-La Mancha', 'ESP');
INSERT INTO `estado` VALUES (660, 'Katalonia', 'ESP');
INSERT INTO `estado` VALUES (2773, 'Katsina', 'NGA');
INSERT INTO `estado` VALUES (2454, 'Kaunas', 'LTU');
INSERT INTO `estado` VALUES (3373, 'Kayseri', 'TUR');
INSERT INTO `estado` VALUES (2484, 'Kedah', 'MYS');
INSERT INTO `estado` VALUES (3275, 'Keelung', 'TWN');
INSERT INTO `estado` VALUES (2477, 'Kelantan', 'MYS');
INSERT INTO `estado` VALUES (3611, 'Kemerovo', 'RUS');
INSERT INTO `estado` VALUES (3862, 'Kentucky', 'USA');
INSERT INTO `estado` VALUES (1072, 'Kerala', 'IND');
INSERT INTO `estado` VALUES (1399, 'Kerman', 'IRN');
INSERT INTO `estado` VALUES (1394, 'Kermanshah', 'IRN');
INSERT INTO `estado` VALUES (4081, 'Khan Yunis', 'PSE');
INSERT INTO `estado` VALUES (3780, 'Khanh Hoa', 'VNM');
INSERT INTO `estado` VALUES (3230, 'Khartum', 'SDN');
INSERT INTO `estado` VALUES (2732, 'Khomas', 'NAM');
INSERT INTO `estado` VALUES (3332, 'Khon Kaen', 'THA');
INSERT INTO `estado` VALUES (1387, 'Khorasan', 'IRN');
INSERT INTO `estado` VALUES (3520, 'Khorazm', 'UZB');
INSERT INTO `estado` VALUES (3268, 'Khujand', 'TJK');
INSERT INTO `estado` VALUES (158, 'Khulna', 'BGD');
INSERT INTO `estado` VALUES (1392, 'Khuzestan', 'IRN');
INSERT INTO `estado` VALUES (3787, 'Kien Giang', 'VNM');
INSERT INTO `estado` VALUES (3053, 'Kigali', 'RWA');
INSERT INTO `estado` VALUES (3319, 'Kilimanjaro', 'TZA');
INSERT INTO `estado` VALUES (3407, 'Kilis', 'TUR');
INSERT INTO `estado` VALUES (2304, 'Kinshasa', 'COD');
INSERT INTO `estado` VALUES (3432, 'Kiova', 'UKR');
INSERT INTO `estado` VALUES (3397, 'Kirikkale', 'TUR');
INSERT INTO `estado` VALUES (3622, 'Kirov', 'RUS');
INSERT INTO `estado` VALUES (3455, 'Kirovograd', 'UKR');
INSERT INTO `estado` VALUES (923, 'Kitaa', 'GRL');
INSERT INTO `estado` VALUES (2455, 'Klaipeda', 'LTU');
INSERT INTO `estado` VALUES (3378, 'Kocaeli', 'TUR');
INSERT INTO `estado` VALUES (1598, 'Kochi', 'JPN');
INSERT INTO `estado` VALUES (909, 'Kombo St Mary', 'GMB');
INSERT INTO `estado` VALUES (3666, 'Komi', 'RUS');
INSERT INTO `estado` VALUES (3369, 'Konya', 'TUR');
INSERT INTO `estado` VALUES (1405, 'Kordestan', 'IRN');
INSERT INTO `estado` VALUES (2822, 'Korhogo', 'CIV');
INSERT INTO `estado` VALUES (2887, 'Koror', 'PLW');
INSERT INTO `estado` VALUES (1801, 'Kosovo and Metohija', 'YUG');
INSERT INTO `estado` VALUES (3651, 'Kostroma', 'RUS');
INSERT INTO `estado` VALUES (2303, 'Kouilou', 'COG');
INSERT INTO `estado` VALUES (942, 'Kowloon and New Kowl', 'HKG');
INSERT INTO `estado` VALUES (3605, 'Krasnodar', 'RUS');
INSERT INTO `estado` VALUES (3600, 'Krasnojarsk', 'RUS');
INSERT INTO `estado` VALUES (3446, 'Krim', 'UKR');
INSERT INTO `estado` VALUES (2941, 'Kujawsko-Pomorskie', 'POL');
INSERT INTO `estado` VALUES (1552, 'Kumamoto', 'JPN');
INSERT INTO `estado` VALUES (3235, 'Kurdufan al-Shamaliy', 'SDN');
INSERT INTO `estado` VALUES (3633, 'Kurgan', 'RUS');
INSERT INTO `estado` VALUES (3627, 'Kursk', 'RUS');
INSERT INTO `estado` VALUES (3395, 'Kütahya', 'TUR');
INSERT INTO `estado` VALUES (913, 'Kvemo Kartli', 'GEO');
INSERT INTO `estado` VALUES (2342, 'Kwangju', 'KOR');
INSERT INTO `estado` VALUES (2752, 'Kwara & Kogi', 'NGA');
INSERT INTO `estado` VALUES (723, 'KwaZulu-Natal', 'ZAF');
INSERT INTO `estado` VALUES (2344, 'Kyonggi', 'KOR');
INSERT INTO `estado` VALUES (2352, 'Kyongsangbuk', 'KOR');
INSERT INTO `estado` VALUES (2343, 'Kyongsangnam', 'KOR');
INSERT INTO `estado` VALUES (1543, 'Kyoto', 'JPN');
INSERT INTO `estado` VALUES (3321, 'København', 'DNK');
INSERT INTO `estado` VALUES (567, 'La Araucanía', 'CHL');
INSERT INTO `estado` VALUES (2298, 'La Guajira', 'COL');
INSERT INTO `estado` VALUES (2419, 'La Habana', 'CUB');
INSERT INTO `estado` VALUES (656, 'La Libertad', 'SLV');
INSERT INTO `estado` VALUES (200, 'La Paz', 'BOL');
INSERT INTO `estado` VALUES (118, 'La Rioja', 'ARG');
INSERT INTO `estado` VALUES (595, 'La Romana', 'DOM');
INSERT INTO `estado` VALUES (2747, 'Lagos', 'NGA');
INSERT INTO `estado` VALUES (3795, 'Lam Dong', 'VNM');
INSERT INTO `estado` VALUES (2899, 'Lambayeque', 'PER');
INSERT INTO `estado` VALUES (954, 'Lampung', 'IDN');
INSERT INTO `estado` VALUES (2987, 'Languedoc-Roussillon', 'FRA');
INSERT INTO `estado` VALUES (944, 'Länsimaa', 'SJM');
INSERT INTO `estado` VALUES (3547, 'Lara', 'VEN');
INSERT INTO `estado` VALUES (2428, 'Las Tunas', 'CUB');
INSERT INTO `estado` VALUES (3260, 'Latakia', 'SYR');
INSERT INTO `estado` VALUES (1470, 'Latium', 'ITA');
INSERT INTO `estado` VALUES (3426, 'Lebap', 'TKM');
INSERT INTO `estado` VALUES (1453, 'Leinster', 'IRL');
INSERT INTO `estado` VALUES (2741, 'León', 'NIC');
INSERT INTO `estado` VALUES (1902, 'Liaoning', 'CHN');
INSERT INTO `estado` VALUES (184, 'Liège', 'BEL');
INSERT INTO `estado` VALUES (2442, 'Liepaja', 'LVA');
INSERT INTO `estado` VALUES (1475, 'Liguria', 'ITA');
INSERT INTO `estado` VALUES (2468, 'Lilongwe', 'MWI');
INSERT INTO `estado` VALUES (2896, 'Lima', 'PER');
INSERT INTO `estado` VALUES (2437, 'Limassol', 'CYP');
INSERT INTO `estado` VALUES (28, 'Limburg', 'NLD');
INSERT INTO `estado` VALUES (3003, 'Limousin', 'FRA');
INSERT INTO `estado` VALUES (3615, 'Lipetsk', 'RUS');
INSERT INTO `estado` VALUES (2920, 'Lisboa', 'PRT');
INSERT INTO `estado` VALUES (1809, 'Littoral', 'CMR');
INSERT INTO `estado` VALUES (2935, 'Lodzkie', 'POL');
INSERT INTO `estado` VALUES (3344, 'Logone Occidental', 'TCD');
INSERT INTO `estado` VALUES (611, 'Loja', 'ECU');
INSERT INTO `estado` VALUES (1471, 'Lombardia', 'ITA');
INSERT INTO `estado` VALUES (1407, 'Lorestan', 'IRN');
INSERT INTO `estado` VALUES (2901, 'Loreto', 'PER');
INSERT INTO `estado` VALUES (134, 'Lori', 'ARM');
INSERT INTO `estado` VALUES (3007, 'Lorraine', 'FRA');
INSERT INTO `estado` VALUES (575, 'Los Lagos', 'CHL');
INSERT INTO `estado` VALUES (609, 'Los Ríos', 'ECU');
INSERT INTO `estado` VALUES (3829, 'Louisiana', 'USA');
INSERT INTO `estado` VALUES (551, 'Lovec', 'BGR');
INSERT INTO `estado` VALUES (62, 'Luanda', 'AGO');
INSERT INTO `estado` VALUES (2942, 'Lubelskie', 'POL');
INSERT INTO `estado` VALUES (2965, 'Lubuskie', 'POL');
INSERT INTO `estado` VALUES (3442, 'Lugansk', 'UKR');
INSERT INTO `estado` VALUES (3168, 'Lusaka', 'ZMB');
INSERT INTO `estado` VALUES (2458, 'Luxembourg', 'LUX');
INSERT INTO `estado` VALUES (623, 'Luxor', 'EGY');
INSERT INTO `estado` VALUES (3438, 'Lviv', 'UKR');
INSERT INTO `estado` VALUES (2469, 'Maale', 'MDV');
INSERT INTO `estado` VALUES (2460, 'Macau', 'MAC');
INSERT INTO `estado` VALUES (1043, 'Madhya Pradesh', 'IND');
INSERT INTO `estado` VALUES (659, 'Madrid', 'ESP');
INSERT INTO `estado` VALUES (658, 'Maekel', 'ERI');
INSERT INTO `estado` VALUES (3721, 'Magadan', 'RUS');
INSERT INTO `estado` VALUES (581, 'Magallanes', 'CHL');
INSERT INTO `estado` VALUES (2272, 'Magdalena', 'COL');
INSERT INTO `estado` VALUES (2731, 'Magwe [Magway]', 'MMR');
INSERT INTO `estado` VALUES (2464, 'Mahajanga', 'MDG');
INSERT INTO `estado` VALUES (1030, 'Maharashtra', 'IND');
INSERT INTO `estado` VALUES (3212, 'Mahé', 'SYC');
INSERT INTO `estado` VALUES (2513, 'Majuro', 'MHL');
INSERT INTO `estado` VALUES (3377, 'Malatya', 'TUR');
INSERT INTO `estado` VALUES (2936, 'Malopolskie', 'POL');
INSERT INTO `estado` VALUES (2520, 'Mamoutzou', 'MYT');
INSERT INTO `estado` VALUES (604, 'Manabí', 'ECU');
INSERT INTO `estado` VALUES (2740, 'Managua', 'NIC');
INSERT INTO `estado` VALUES (2717, 'Mandalay', 'MMR');
INSERT INTO `estado` VALUES (1880, 'Mangghystau', 'KAZ');
INSERT INTO `estado` VALUES (2708, 'Manica', 'MOZ');
INSERT INTO `estado` VALUES (4078, 'Manicaland', 'ZWE');
INSERT INTO `estado` VALUES (1160, 'Manipur', 'IND');
INSERT INTO `estado` VALUES (3388, 'Manisa', 'TUR');
INSERT INTO `estado` VALUES (1820, 'Manitoba', 'CAN');
INSERT INTO `estado` VALUES (2704, 'Maputo', 'MOZ');
INSERT INTO `estado` VALUES (2746, 'Maradi', 'NER');
INSERT INTO `estado` VALUES (3040, 'Maramures', 'ROM');
INSERT INTO `estado` VALUES (228, 'Maranhão', 'BRA');
INSERT INTO `estado` VALUES (1512, 'Marche', 'ITA');
INSERT INTO `estado` VALUES (3409, 'Mardin', 'TUR');
INSERT INTO `estado` VALUES (3661, 'Marinmaa', 'RUS');
INSERT INTO `estado` VALUES (3338, 'Maritime', 'TGO');
INSERT INTO `estado` VALUES (1400, 'Markazi', 'IRN');
INSERT INTO `estado` VALUES (2493, 'Marrakech-Tensift-Al', 'MAR');
INSERT INTO `estado` VALUES (3428, 'Mary', 'TKM');
INSERT INTO `estado` VALUES (3815, 'Maryland', 'USA');
INSERT INTO `estado` VALUES (2743, 'Masaya', 'NIC');
INSERT INTO `estado` VALUES (2443, 'Maseru', 'LSO');
INSERT INTO `estado` VALUES (2823, 'Masqat', 'OMN');
INSERT INTO `estado` VALUES (3818, 'Massachusetts', 'USA');
INSERT INTO `estado` VALUES (2429, 'Matanzas', 'CUB');
INSERT INTO `estado` VALUES (246, 'Mato Grosso', 'BRA');
INSERT INTO `estado` VALUES (235, 'Mato Grosso do Sul', 'BRA');
INSERT INTO `estado` VALUES (571, 'Maule', 'CHL');
INSERT INTO `estado` VALUES (2932, 'Mayagüez', 'PRI');
INSERT INTO `estado` VALUES (1381, 'Maysan', 'IRQ');
INSERT INTO `estado` VALUES (1413, 'Mazandaran', 'IRN');
INSERT INTO `estado` VALUES (2934, 'Mazowieckie', 'POL');
INSERT INTO `estado` VALUES (3316, 'Mbeya', 'TZA');
INSERT INTO `estado` VALUES (3110, 'Mecklenburg-Vorpomme', 'DEU');
INSERT INTO `estado` VALUES (3182, 'Medina', 'SAU');
INSERT INTO `estado` VALUES (1249, 'Meghalaya', 'IND');
INSERT INTO `estado` VALUES (3047, 'Mehedinti', 'ROM');
INSERT INTO `estado` VALUES (3180, 'Mekka', 'SAU');
INSERT INTO `estado` VALUES (2497, 'Meknès-Tafilalet', 'MAR');
INSERT INTO `estado` VALUES (107, 'Mendoza', 'ARG');
INSERT INTO `estado` VALUES (3557, 'Mérida', 'VEN');
INSERT INTO `estado` VALUES (2279, 'Meta', 'COL');
INSERT INTO `estado` VALUES (2523, 'México', 'MEX');
INSERT INTO `estado` VALUES (3310, 'Miaoli', 'TWN');
INSERT INTO `estado` VALUES (3808, 'Michigan', 'USA');
INSERT INTO `estado` VALUES (2543, 'Michoacán de Ocampo', 'MEX');
INSERT INTO `estado` VALUES (2983, 'Midi-Pyrénées', 'FRA');
INSERT INTO `estado` VALUES (4079, 'Midlands', 'ZWE');
INSERT INTO `estado` VALUES (1607, 'Mie', 'JPN');
INSERT INTO `estado` VALUES (215, 'Minas Gerais', 'BRA');
INSERT INTO `estado` VALUES (153, 'Mingäçevir', 'AZE');
INSERT INTO `estado` VALUES (3843, 'Minnesota', 'USA');
INSERT INTO `estado` VALUES (3534, 'Minsk', 'BLR');
INSERT INTO `estado` VALUES (3550, 'Miranda', 'VEN');
INSERT INTO `estado` VALUES (108, 'Misiones', 'ARG');
INSERT INTO `estado` VALUES (2449, 'Misrata', 'LBY');
INSERT INTO `estado` VALUES (3907, 'Mississippi', 'USA');
INSERT INTO `estado` VALUES (3834, 'Missouri', 'USA');
INSERT INTO `estado` VALUES (1549, 'Miyagi', 'JPN');
INSERT INTO `estado` VALUES (1601, 'Miyazaki', 'JPN');
INSERT INTO `estado` VALUES (1204, 'Mizoram', 'IND');
INSERT INTO `estado` VALUES (3528, 'Mogiljov', 'BLR');
INSERT INTO `estado` VALUES (977, 'Molukit', 'IDN');
INSERT INTO `estado` VALUES (2718, 'Mon', 'MMR');
INSERT INTO `estado` VALUES (3553, 'Monagas', 'VEN');
INSERT INTO `estado` VALUES (4057, 'Montana', 'USA');
INSERT INTO `estado` VALUES (1803, 'Montenegro', 'YUG');
INSERT INTO `estado` VALUES (3498, 'Montevideo', 'URY');
INSERT INTO `estado` VALUES (2446, 'Montserrado', 'LBR');
INSERT INTO `estado` VALUES (3644, 'Mordva', 'RUS');
INSERT INTO `estado` VALUES (2567, 'Morelos', 'MEX');
INSERT INTO `estado` VALUES (3317, 'Morogoro', 'TZA');
INSERT INTO `estado` VALUES (3586, 'Moscow (City)', 'RUS');
INSERT INTO `estado` VALUES (3679, 'Moskova', 'RUS');
INSERT INTO `estado` VALUES (52, 'Mostaganem', 'DZA');
INSERT INTO `estado` VALUES (750, 'Mpumalanga', 'ZAF');
INSERT INTO `estado` VALUES (1454, 'Munster', 'IRL');
INSERT INTO `estado` VALUES (667, 'Murcia', 'ESP');
INSERT INTO `estado` VALUES (3039, 'Mures', 'ROM');
INSERT INTO `estado` VALUES (3631, 'Murmansk', 'RUS');
INSERT INTO `estado` VALUES (3313, 'Mwanza', 'TZA');
INSERT INTO `estado` VALUES (3440, 'Mykolajiv', 'UKR');
INSERT INTO `estado` VALUES (4084, 'Nablus', 'PSE');
INSERT INTO `estado` VALUES (1588, 'Nagano', 'JPN');
INSERT INTO `estado` VALUES (1573, 'Nagasaki', 'JPN');
INSERT INTO `estado` VALUES (1887, 'Nairobi', 'KEN');
INSERT INTO `estado` VALUES (3202, 'Najran', 'SAU');
INSERT INTO `estado` VALUES (3337, 'Nakhon Pathom', 'THA');
INSERT INTO `estado` VALUES (3328, 'Nakhon Ratchasima', 'THA');
INSERT INTO `estado` VALUES (3334, 'Nakhon Sawan', 'THA');
INSERT INTO `estado` VALUES (3784, 'Nam Ha', 'VNM');
INSERT INTO `estado` VALUES (3510, 'Namangan', 'UZB');
INSERT INTO `estado` VALUES (66, 'Namibe', 'AGO');
INSERT INTO `estado` VALUES (2327, 'Nampo-si', 'PRK');
INSERT INTO `estado` VALUES (2707, 'Nampula', 'MOZ');
INSERT INTO `estado` VALUES (188, 'Namur', 'BEL');
INSERT INTO `estado` VALUES (3304, 'Nantou', 'TWN');
INSERT INTO `estado` VALUES (1585, 'Nara', 'JPN');
INSERT INTO `estado` VALUES (2275, 'Nariño', 'COL');
INSERT INTO `estado` VALUES (2890, 'National Capital Dis', 'PNG');
INSERT INTO `estado` VALUES (771, 'National Capital Reg', 'PHL');
INSERT INTO `estado` VALUES (686, 'Navarra', 'ESP');
INSERT INTO `estado` VALUES (3523, 'Navoi', 'UZB');
INSERT INTO `estado` VALUES (2571, 'Nayarit', 'MEX');
INSERT INTO `estado` VALUES (3044, 'Neamt', 'ROM');
INSERT INTO `estado` VALUES (3842, 'Nebraska', 'USA');
INSERT INTO `estado` VALUES (2480, 'Negeri Sembilan', 'MYS');
INSERT INTO `estado` VALUES (113, 'Neuquén', 'ARG');
INSERT INTO `estado` VALUES (3830, 'Nevada', 'USA');
INSERT INTO `estado` VALUES (4017, 'New Hampshire', 'USA');
INSERT INTO `estado` VALUES (3861, 'New Jersey', 'USA');
INSERT INTO `estado` VALUES (3833, 'New Mexico', 'USA');
INSERT INTO `estado` VALUES (154, 'New Providence', 'BHS');
INSERT INTO `estado` VALUES (136, 'New South Wales', 'AUS');
INSERT INTO `estado` VALUES (3799, 'New York', 'USA');
INSERT INTO `estado` VALUES (1857, 'Newfoundland', 'CAN');
INSERT INTO `estado` VALUES (3242, 'Newmaa', 'FIN');
INSERT INTO `estado` VALUES (3793, 'Nghe An', 'VNM');
INSERT INTO `estado` VALUES (2744, 'Niamey', 'NER');
INSERT INTO `estado` VALUES (2436, 'Nicosia', 'CYP');
INSERT INTO `estado` VALUES (3085, 'Niedersachsen', 'DEU');
INSERT INTO `estado` VALUES (2795, 'Niger', 'NGA');
INSERT INTO `estado` VALUES (1560, 'Niigata', 'JPN');
INSERT INTO `estado` VALUES (1372, 'Ninawa', 'IRQ');
INSERT INTO `estado` VALUES (1952, 'Ningxia', 'CHN');
INSERT INTO `estado` VALUES (3589, 'Nizni Novgorod', 'RUS');
INSERT INTO `estado` VALUES (2301, 'Njazidja', 'COM');
INSERT INTO `estado` VALUES (3327, 'Nonthaburi', 'THA');
INSERT INTO `estado` VALUES (15, 'Noord-Brabant', 'NLD');
INSERT INTO `estado` VALUES (11, 'Noord-Holland', 'NLD');
INSERT INTO `estado` VALUES (938, 'Nord', 'HTI');
INSERT INTO `estado` VALUES (1813, 'Nord-Ouest', 'CMR');
INSERT INTO `estado` VALUES (2991, 'Nord-Pas-de-Calais', 'FRA');
INSERT INTO `estado` VALUES (3324, 'Nordjylland', 'DNK');
INSERT INTO `estado` VALUES (3077, 'Nordrhein-Westfalen', 'DEU');
INSERT INTO `estado` VALUES (2268, 'Norte de Santander', 'COL');
INSERT INTO `estado` VALUES (1531, 'North Austria', 'AUT');
INSERT INTO `estado` VALUES (3824, 'North Carolina', 'USA');
INSERT INTO `estado` VALUES (4083, 'North Gaza', 'PSE');
INSERT INTO `estado` VALUES (475, 'North Ireland', 'GBR');
INSERT INTO `estado` VALUES (1876, 'North Kazakstan', 'KAZ');
INSERT INTO `estado` VALUES (2319, 'North Kivu', 'COD');
INSERT INTO `estado` VALUES (3646, 'North Ossetia-Alania', 'RUS');
INSERT INTO `estado` VALUES (738, 'North West', 'ZAF');
INSERT INTO `estado` VALUES (918, 'Northern', 'GHA');
INSERT INTO `estado` VALUES (743, 'Northern Cape', 'ZAF');
INSERT INTO `estado` VALUES (782, 'Northern Mindanao', 'PHL');
INSERT INTO `estado` VALUES (2835, 'Nothwest Border Prov', 'PAK');
INSERT INTO `estado` VALUES (2515, 'Nouakchott', 'MRT');
INSERT INTO `estado` VALUES (1850, 'Nova Scotia', 'CAN');
INSERT INTO `estado` VALUES (3649, 'Novgorod', 'RUS');
INSERT INTO `estado` VALUES (3588, 'Novosibirsk', 'RUS');
INSERT INTO `estado` VALUES (2529, 'Nuevo León', 'MEX');
INSERT INTO `estado` VALUES (969, 'Nusa Tenggara Barat', 'IDN');
INSERT INTO `estado` VALUES (991, 'Nusa Tenggara Timur', 'IDN');
INSERT INTO `estado` VALUES (1889, 'Nyanza', 'KEN');
INSERT INTO `estado` VALUES (2582, 'Oaxaca', 'MEX');
INSERT INTO `estado` VALUES (3436, 'Odesa', 'UKR');
INSERT INTO `estado` VALUES (2753, 'Ogun', 'NGA');
INSERT INTO `estado` VALUES (3813, 'Ohio', 'USA');
INSERT INTO `estado` VALUES (1572, 'Oita', 'JPN');
INSERT INTO `estado` VALUES (1553, 'Okayama', 'JPN');
INSERT INTO `estado` VALUES (1603, 'Okinawa', 'JPN');
INSERT INTO `estado` VALUES (3827, 'Oklahoma', 'USA');
INSERT INTO `estado` VALUES (3592, 'Omsk', 'RUS');
INSERT INTO `estado` VALUES (2759, 'Ondo & Ekiti', 'NGA');
INSERT INTO `estado` VALUES (1818, 'Ontario', 'CAN');
INSERT INTO `estado` VALUES (2964, 'Opolskie', 'POL');
INSERT INTO `estado` VALUES (42, 'Oran', 'DZA');
INSERT INTO `estado` VALUES (3400, 'Ordu', 'TUR');
INSERT INTO `estado` VALUES (3060, 'Örebros län', 'SWE');
INSERT INTO `estado` VALUES (3826, 'Oregon', 'USA');
INSERT INTO `estado` VALUES (3614, 'Orenburg', 'RUS');
INSERT INTO `estado` VALUES (2498, 'Oriental', 'MAR');
INSERT INTO `estado` VALUES (1092, 'Orissa', 'IND');
INSERT INTO `estado` VALUES (3637, 'Orjol', 'RUS');
INSERT INTO `estado` VALUES (764, 'Oromia', 'ETH');
INSERT INTO `estado` VALUES (203, 'Oruro', 'BOL');
INSERT INTO `estado` VALUES (1540, 'Osaka', 'JPN');
INSERT INTO `estado` VALUES (2260, 'Osh', 'KGZ');
INSERT INTO `estado` VALUES (2418, 'Osijek-Baranja', 'HRV');
INSERT INTO `estado` VALUES (2813, 'Oslo', 'NOR');
INSERT INTO `estado` VALUES (3393, 'Osmaniye', 'TUR');
INSERT INTO `estado` VALUES (3218, 'Osrednjeslovenska', 'SVN');
INSERT INTO `estado` VALUES (193, 'Ouémé', 'BEN');
INSERT INTO `estado` VALUES (935, 'Ouest', 'HTI');
INSERT INTO `estado` VALUES (2489, 'Outer Harbour', 'MLT');
INSERT INTO `estado` VALUES (21, 'Overijssel', 'NLD');
INSERT INTO `estado` VALUES (2748, 'Oyo & Osun', 'NGA');
INSERT INTO `estado` VALUES (569, 'O´Higgins', 'CHL');
INSERT INTO `estado` VALUES (2478, 'Pahang', 'MYS');
INSERT INTO `estado` VALUES (3248, 'Päijät-Häme', 'FIN');
INSERT INTO `estado` VALUES (2888, 'Panamá', 'PAN');
INSERT INTO `estado` VALUES (2457, 'Panevezys', 'LTU');
INSERT INTO `estado` VALUES (222, 'Pará', 'BRA');
INSERT INTO `estado` VALUES (237, 'Paraíba', 'BRA');
INSERT INTO `estado` VALUES (3249, 'Paramaribo', 'SUR');
INSERT INTO `estado` VALUES (218, 'Paraná', 'BRA');
INSERT INTO `estado` VALUES (1872, 'Pavlodar', 'KAZ');
INSERT INTO `estado` VALUES (2985, 'Pays de la Loire', 'FRA');
INSERT INTO `estado` VALUES (2719, 'Pegu [Bago]', 'MMR');
INSERT INTO `estado` VALUES (1897, 'Peking', 'CHN');
INSERT INTO `estado` VALUES (3803, 'Pennsylvania', 'USA');
INSERT INTO `estado` VALUES (3612, 'Penza', 'RUS');
INSERT INTO `estado` VALUES (2471, 'Perak', 'MYS');
INSERT INTO `estado` VALUES (3597, 'Perm', 'RUS');
INSERT INTO `estado` VALUES (219, 'Pernambuco', 'BRA');
INSERT INTO `estado` VALUES (1806, 'Phnom Penh', 'KHM');
INSERT INTO `estado` VALUES (232, 'Piauí', 'BRA');
INSERT INTO `estado` VALUES (3001, 'Picardie', 'FRA');
INSERT INTO `estado` VALUES (600, 'Pichincha', 'ECU');
INSERT INTO `estado` VALUES (1473, 'Piemonte', 'ITA');
INSERT INTO `estado` VALUES (3587, 'Pietari', 'RUS');
INSERT INTO `estado` VALUES (3676, 'Pihkova', 'RUS');
INSERT INTO `estado` VALUES (2425, 'Pinar del Río', 'CUB');
INSERT INTO `estado` VALUES (3287, 'Pingtung', 'TWN');
INSERT INTO `estado` VALUES (3244, 'Pirkanmaa', 'FIN');
INSERT INTO `estado` VALUES (2904, 'Piura', 'PER');
INSERT INTO `estado` VALUES (2518, 'Plaines Wilhelms', 'MUS');
INSERT INTO `estado` VALUES (2774, 'Plateau & Nassarawa', 'NGA');
INSERT INTO `estado` VALUES (546, 'Plovdiv', 'BGR');
INSERT INTO `estado` VALUES (2703, 'Plymouth', 'MSR');
INSERT INTO `estado` VALUES (2956, 'Podkarpackie', 'POL');
INSERT INTO `estado` VALUES (2944, 'Podlaskie', 'POL');
INSERT INTO `estado` VALUES (3219, 'Podravska', 'SVN');
INSERT INTO `estado` VALUES (3247, 'Pohjois-Pohjanmaa', 'FIN');
INSERT INTO `estado` VALUES (2695, 'Pohnpei', 'FSM');
INSERT INTO `estado` VALUES (2939, 'Pomorskie', 'POL');
INSERT INTO `estado` VALUES (2927, 'Ponce', 'PRI');
INSERT INTO `estado` VALUES (1156, 'Pondicherry', 'IND');
INSERT INTO `estado` VALUES (618, 'Port Said', 'EGY');
INSERT INTO `estado` VALUES (2517, 'Port-Louis', 'MUS');
INSERT INTO `estado` VALUES (3342, 'Port-of-Spain', 'TTO');
INSERT INTO `estado` VALUES (2921, 'Porto', 'PRT');
INSERT INTO `estado` VALUES (3567, 'Portuguesa', 'VEN');
INSERT INTO `estado` VALUES (205, 'Potosí', 'BOL');
INSERT INTO `estado` VALUES (3032, 'Prahova', 'ROM');
INSERT INTO `estado` VALUES (3608, 'Primorje', 'RUS');
INSERT INTO `estado` VALUES (2417, 'Primorje-Gorski Kota', 'HRV');
INSERT INTO `estado` VALUES (2981, 'Provence-Alpes-Côte', 'FRA');
INSERT INTO `estado` VALUES (2524, 'Puebla', 'MEX');
INSERT INTO `estado` VALUES (598, 'Puerto Plata', 'DOM');
INSERT INTO `estado` VALUES (2476, 'Pulau Pinang', 'MYS');
INSERT INTO `estado` VALUES (3448, 'Pultava', 'UKR');
INSERT INTO `estado` VALUES (1045, 'Punjab', 'IND');
INSERT INTO `estado` VALUES (2910, 'Puno', 'PER');
INSERT INTO `estado` VALUES (2338, 'Pusan', 'KOR');
INSERT INTO `estado` VALUES (2330, 'Pyongan N', 'PRK');
INSERT INTO `estado` VALUES (2328, 'Pyongan P', 'PRK');
INSERT INTO `estado` VALUES (2324, 'Pyongyang-si', 'PRK');
INSERT INTO `estado` VALUES (8, 'Qandahar', 'AFG');
INSERT INTO `estado` VALUES (1867, 'Qaraghandy', 'KAZ');
INSERT INTO `estado` VALUES (3514, 'Qashqadaryo', 'UZB');
INSERT INTO `estado` VALUES (3201, 'Qasim', 'SAU');
INSERT INTO `estado` VALUES (1403, 'Qazvin', 'IRN');
INSERT INTO `estado` VALUES (634, 'Qina', 'EGY');
INSERT INTO `estado` VALUES (1942, 'Qinghai', 'CHN');
INSERT INTO `estado` VALUES (1393, 'Qom', 'IRN');
INSERT INTO `estado` VALUES (1875, 'Qostanay', 'KAZ');
INSERT INTO `estado` VALUES (3783, 'Quang Binh', 'VNM');
INSERT INTO `estado` VALUES (3778, 'Quang Nam-Da Nang', 'VNM');
INSERT INTO `estado` VALUES (3790, 'Quang Ninh', 'VNM');
INSERT INTO `estado` VALUES (1816, 'Québec', 'CAN');
INSERT INTO `estado` VALUES (138, 'Queensland', 'AUS');
INSERT INTO `estado` VALUES (2604, 'Querétaro', 'MEX');
INSERT INTO `estado` VALUES (2542, 'Querétaro de Arteaga', 'MEX');
INSERT INTO `estado` VALUES (931, 'Quetzaltenango', 'GTM');
INSERT INTO `estado` VALUES (2278, 'Quindío', 'COL');
INSERT INTO `estado` VALUES (2559, 'Quintana Roo', 'MEX');
INSERT INTO `estado` VALUES (1879, 'Qyzylorda', 'KAZ');
INSERT INTO `estado` VALUES (2492, 'Rabat-Salé-Zammour-Z', 'MAR');
INSERT INTO `estado` VALUES (4085, 'Rafah', 'PSE');
INSERT INTO `estado` VALUES (1042, 'Rajasthan', 'IND');
INSERT INTO `estado` VALUES (159, 'Rajshahi', 'BGD');
INSERT INTO `estado` VALUES (2722, 'Rakhine', 'MMR');
INSERT INTO `estado` VALUES (2716, 'Rangoon [Yangon]', 'MMR');
INSERT INTO `estado` VALUES (589, 'Rarotonga', 'COK');
INSERT INTO `estado` VALUES (208, 'Republika Srpska', 'BIH');
INSERT INTO `estado` VALUES (3115, 'Rheinland-Pfalz', 'DEU');
INSERT INTO `estado` VALUES (3918, 'Rhode Island', 'USA');
INSERT INTO `estado` VALUES (2982, 'Rhône-Alpes', 'FRA');
INSERT INTO `estado` VALUES (3191, 'Riad', 'SAU');
INSERT INTO `estado` VALUES (959, 'Riau', 'IDN');
INSERT INTO `estado` VALUES (1890, 'Rift Valley', 'KEN');
INSERT INTO `estado` VALUES (2440, 'Riika', 'LVA');
INSERT INTO `estado` VALUES (213, 'Rio de Janeiro', 'BRA');
INSERT INTO `estado` VALUES (233, 'Rio Grande do Norte', 'BRA');
INSERT INTO `estado` VALUES (220, 'Rio Grande do Sul', 'BRA');
INSERT INTO `estado` VALUES (2271, 'Risaralda', 'COL');
INSERT INTO `estado` VALUES (2754, 'Rivers & Bayelsa', 'NGA');
INSERT INTO `estado` VALUES (3458, 'Rivne', 'UKR');
INSERT INTO `estado` VALUES (3179, 'Riyadh', 'SAU');
INSERT INTO `estado` VALUES (3613, 'Rjazan', 'RUS');
INSERT INTO `estado` VALUES (2816, 'Rogaland', 'NOR');
INSERT INTO `estado` VALUES (270, 'Rondônia', 'BRA');
INSERT INTO `estado` VALUES (344, 'Roraima', 'BRA');
INSERT INTO `estado` VALUES (3596, 'Rostov-na-Donu', 'RUS');
INSERT INTO `estado` VALUES (549, 'Ruse', 'BGR');
INSERT INTO `estado` VALUES (3114, 'Saarland', 'DEU');
INSERT INTO `estado` VALUES (2483, 'Sabah', 'MYS');
INSERT INTO `estado` VALUES (1658, 'Saga', 'JPN');
INSERT INTO `estado` VALUES (2721, 'Sagaing', 'MMR');
INSERT INTO `estado` VALUES (3678, 'Saha (Jakutia)', 'RUS');
INSERT INTO `estado` VALUES (3687, 'Sahalin', 'RUS');
INSERT INTO `estado` VALUES (196, 'Saint George´s', 'BMU');
INSERT INTO `estado` VALUES (3069, 'Saint Helena', 'SHN');
INSERT INTO `estado` VALUES (3023, 'Saint-Denis', 'REU');
INSERT INTO `estado` VALUES (3209, 'Saint-Louis', 'SEN');
INSERT INTO `estado` VALUES (3073, 'Saint-Pierre', 'SPM');
INSERT INTO `estado` VALUES (2919, 'Saipan', 'MNP');
INSERT INTO `estado` VALUES (1564, 'Saitama', 'JPN');
INSERT INTO `estado` VALUES (3391, 'Sakarya', 'TUR');
INSERT INTO `estado` VALUES (3086, 'Saksi', 'DEU');
INSERT INTO `estado` VALUES (88, 'Salta', 'ARG');
INSERT INTO `estado` VALUES (1532, 'Salzburg', 'AUT');
INSERT INTO `estado` VALUES (3591, 'Samara', 'RUS');
INSERT INTO `estado` VALUES (3511, 'Samarkand', 'UZB');
INSERT INTO `estado` VALUES (3376, 'Samsun', 'TUR');
INSERT INTO `estado` VALUES (590, 'San José', 'CRI');
INSERT INTO `estado` VALUES (124, 'San Juan', 'ARG');
INSERT INTO `estado` VALUES (128, 'San Luis', 'ARG');
INSERT INTO `estado` VALUES (2538, 'San Luis Potosí', 'MEX');
INSERT INTO `estado` VALUES (3177, 'San Marino', 'SMR');
INSERT INTO `estado` VALUES (655, 'San Miguel', 'SLV');
INSERT INTO `estado` VALUES (2889, 'San Miguelito', 'PAN');
INSERT INTO `estado` VALUES (596, 'San Pedro de Macorís', 'DOM');
INSERT INTO `estado` VALUES (651, 'San Salvador', 'SLV');
INSERT INTO `estado` VALUES (1786, 'Sanaa', 'YEM');
INSERT INTO `estado` VALUES (2431, 'Sancti-Spíritus', 'CUB');
INSERT INTO `estado` VALUES (3375, 'Sanliurfa', 'TUR');
INSERT INTO `estado` VALUES (652, 'Santa Ana', 'SLV');
INSERT INTO `estado` VALUES (251, 'Santa Catarina', 'BRA');
INSERT INTO `estado` VALUES (199, 'Santa Cruz', 'BOL');
INSERT INTO `estado` VALUES (78, 'Santa Fé', 'ARG');
INSERT INTO `estado` VALUES (2263, 'Santafé de Bogotá', 'COL');
INSERT INTO `estado` VALUES (2269, 'Santander', 'COL');
INSERT INTO `estado` VALUES (560, 'Santiago', 'CHL');
INSERT INTO `estado` VALUES (2420, 'Santiago de Cuba', 'CUB');
INSERT INTO `estado` VALUES (110, 'Santiago del Estero', 'ARG');
INSERT INTO `estado` VALUES (212, 'São Paulo', 'BRA');
INSERT INTO `estado` VALUES (1865, 'São Tiago', 'CPV');
INSERT INTO `estado` VALUES (3601, 'Saratov', 'RUS');
INSERT INTO `estado` VALUES (2481, 'Sarawak', 'MYS');
INSERT INTO `estado` VALUES (1491, 'Sardinia', 'ITA');
INSERT INTO `estado` VALUES (1833, 'Saskatchewan', 'CAN');
INSERT INTO `estado` VALUES (3042, 'Satu Mare', 'ROM');
INSERT INTO `estado` VALUES (2439, 'Savannakhet', 'LAO');
INSERT INTO `estado` VALUES (635, 'Sawhaj', 'EGY');
INSERT INTO `estado` VALUES (2451, 'Schaan', 'LIE');
INSERT INTO `estado` VALUES (3106, 'Schleswig-Holstein', 'DEU');
INSERT INTO `estado` VALUES (464, 'Scotland', 'GBR');
INSERT INTO `estado` VALUES (2473, 'Selangor', 'MYS');
INSERT INTO `estado` VALUES (1441, 'Semnan', 'IRN');
INSERT INTO `estado` VALUES (2337, 'Seoul', 'KOR');
INSERT INTO `estado` VALUES (248, 'Sergipe', 'BRA');
INSERT INTO `estado` VALUES (3176, 'Serravalle/Dogano', 'SMR');
INSERT INTO `estado` VALUES (46, 'Sétif', 'DZA');
INSERT INTO `estado` VALUES (3350, 'Severní Cechy', 'CZE');
INSERT INTO `estado` VALUES (3347, 'Severní Morava', 'CZE');
INSERT INTO `estado` VALUES (3356, 'Sfax', 'TUN');
INSERT INTO `estado` VALUES (1907, 'Shaanxi', 'CHN');
INSERT INTO `estado` VALUES (2305, 'Shaba', 'COD');
INSERT INTO `estado` VALUES (644, 'Shamal Sina', 'EGY');
INSERT INTO `estado` VALUES (2723, 'Shan', 'MMR');
INSERT INTO `estado` VALUES (1909, 'Shandong', 'CHN');
INSERT INTO `estado` VALUES (1896, 'Shanghai', 'CHN');
INSERT INTO `estado` VALUES (1914, 'Shanxi', 'CHN');
INSERT INTO `estado` VALUES (72, 'Sharja', 'ARE');
INSERT INTO `estado` VALUES (3543, 'Shefa', 'VUT');
INSERT INTO `estado` VALUES (1612, 'Shiga', 'JPN');
INSERT INTO `estado` VALUES (1678, 'Shimane', 'JPN');
INSERT INTO `estado` VALUES (1555, 'Shizuoka', 'JPN');
INSERT INTO `estado` VALUES (2456, 'Šiauliai', 'LTU');
INSERT INTO `estado` VALUES (3038, 'Sibiu', 'ROM');
INSERT INTO `estado` VALUES (1904, 'Sichuan', 'CHN');
INSERT INTO `estado` VALUES (47, 'Sidi Bel Abbès', 'DZA');
INSERT INTO `estado` VALUES (1808, 'Siem Reap', 'KHM');
INSERT INTO `estado` VALUES (3411, 'Siirt', 'TUR');
INSERT INTO `estado` VALUES (2533, 'Sinaloa', 'MEX');
INSERT INTO `estado` VALUES (2853, 'Sind', 'PAK');
INSERT INTO `estado` VALUES (2828, 'Sindh', 'PAK');
INSERT INTO `estado` VALUES (133, 'Širak', 'ARM');
INSERT INTO `estado` VALUES (1474, 'Sisilia', 'ITA');
INSERT INTO `estado` VALUES (1396, 'Sistan va Baluchesta', 'IRN');
INSERT INTO `estado` VALUES (3380, 'Sivas', 'TUR');
INSERT INTO `estado` VALUES (3056, 'Skåne län', 'SWE');
INSERT INTO `estado` VALUES (48, 'Skikda', 'DZA');
INSERT INTO `estado` VALUES (2466, 'Skopje', 'MKD');
INSERT INTO `estado` VALUES (2943, 'Slaskie', 'POL');
INSERT INTO `estado` VALUES (3636, 'Smolensk', 'RUS');
INSERT INTO `estado` VALUES (2706, 'Sofala', 'MOZ');
INSERT INTO `estado` VALUES (2775, 'Sokoto & Kebbi & Zam', 'NGA');
INSERT INTO `estado` VALUES (3331, 'Songkhla', 'THA');
INSERT INTO `estado` VALUES (2544, 'Sonora', 'MEX');
INSERT INTO `estado` VALUES (2502, 'Souss Massa-Draâ', 'MAR');
INSERT INTO `estado` VALUES (3359, 'Sousse', 'TUN');
INSERT INTO `estado` VALUES (140, 'South Australia', 'AUS');
INSERT INTO `estado` VALUES (3993, 'South Carolina', 'USA');
INSERT INTO `estado` VALUES (3976, 'South Dakota', 'USA');
INSERT INTO `estado` VALUES (1868, 'South Kazakstan', 'KAZ');
INSERT INTO `estado` VALUES (2311, 'South Kivu', 'COD');
INSERT INTO `estado` VALUES (2261, 'South Tarawa', 'KIR');
INSERT INTO `estado` VALUES (774, 'Southern Mindanao', 'PHL');
INSERT INTO `estado` VALUES (780, 'Southern Tagalog', 'PHL');
INSERT INTO `estado` VALUES (2416, 'Split-Dalmatia', 'HRV');
INSERT INTO `estado` VALUES (592, 'St George', 'DMA');
INSERT INTO `estado` VALUES (3070, 'St George Basseterre', 'KNA');
INSERT INTO `estado` VALUES (69, 'St John', 'ATG');
INSERT INTO `estado` VALUES (180, 'St Michael', 'BRB');
INSERT INTO `estado` VALUES (4073, 'St Thomas', 'VIR');
INSERT INTO `estado` VALUES (1536, 'St. Andrew', 'JAM');
INSERT INTO `estado` VALUES (1535, 'St. Catherine', 'JAM');
INSERT INTO `estado` VALUES (3638, 'Stavropol', 'RUS');
INSERT INTO `estado` VALUES (1530, 'Steiermark', 'AUT');
INSERT INTO `estado` VALUES (907, 'Streymoyar', 'FRO');
INSERT INTO `estado` VALUES (3046, 'Suceava', 'ROM');
INSERT INTO `estado` VALUES (2287, 'Sucre', 'COL');
INSERT INTO `estado` VALUES (619, 'Suez', 'EGY');
INSERT INTO `estado` VALUES (952, 'Sulawesi Selatan', 'IDN');
INSERT INTO `estado` VALUES (989, 'Sulawesi Tengah', 'IDN');
INSERT INTO `estado` VALUES (1018, 'Sulawesi Tenggara', 'IDN');
INSERT INTO `estado` VALUES (968, 'Sulawesi Utara', 'IDN');
INSERT INTO `estado` VALUES (956, 'Sumatera Barat', 'IDN');
INSERT INTO `estado` VALUES (949, 'Sumatera Selatan', 'IDN');
INSERT INTO `estado` VALUES (948, 'Sumatera Utara', 'IDN');
INSERT INTO `estado` VALUES (152, 'Sumqayit', 'AZE');
INSERT INTO `estado` VALUES (3453, 'Sumy', 'UKR');
INSERT INTO `estado` VALUES (3525, 'Surkhondaryo', 'UZB');
INSERT INTO `estado` VALUES (3590, 'Sverdlovsk', 'RUS');
INSERT INTO `estado` VALUES (2949, 'Swietokrzyskie', 'POL');
INSERT INTO `estado` VALUES (170, 'Sylhet', 'BGD');
INSERT INTO `estado` VALUES (3495, 'Szabolcs-Szatmár-Ber', 'HUN');
INSERT INTO `estado` VALUES (2815, 'Sør-Trøndelag', 'NOR');
INSERT INTO `estado` VALUES (2547, 'Tabasco', 'MEX');
INSERT INTO `estado` VALUES (3320, 'Tabora', 'TZA');
INSERT INTO `estado` VALUES (3185, 'Tabuk', 'SAU');
INSERT INTO `estado` VALUES (3554, 'Táchira', 'VEN');
INSERT INTO `estado` VALUES (2907, 'Tacna', 'PER');
INSERT INTO `estado` VALUES (2505, 'Tadla-Azilal', 'MAR');
INSERT INTO `estado` VALUES (2340, 'Taegu', 'KOR');
INSERT INTO `estado` VALUES (2341, 'Taejon', 'KOR');
INSERT INTO `estado` VALUES (3021, 'Tahiti', 'PYF');
INSERT INTO `estado` VALUES (3271, 'Taichung', 'TWN');
INSERT INTO `estado` VALUES (3272, 'Tainan', 'TWN');
INSERT INTO `estado` VALUES (3269, 'Taipei', 'TWN');
INSERT INTO `estado` VALUES (3302, 'Taitung', 'TWN');
INSERT INTO `estado` VALUES (1788, 'Taizz', 'YEM');
INSERT INTO `estado` VALUES (3472, 'Taka-Karpatia', 'UKR');
INSERT INTO `estado` VALUES (2558, 'Tamaulipas', 'MEX');
INSERT INTO `estado` VALUES (3645, 'Tambov', 'RUS');
INSERT INTO `estado` VALUES (1033, 'Tamil Nadu', 'IND');
INSERT INTO `estado` VALUES (3315, 'Tanga', 'TZA');
INSERT INTO `estado` VALUES (2495, 'Tanger-Tétouan', 'MAR');
INSERT INTO `estado` VALUES (3279, 'Taoyuan', 'TWN');
INSERT INTO `estado` VALUES (570, 'Tarapacá', 'CHL');
INSERT INTO `estado` VALUES (1869, 'Taraz', 'KAZ');
INSERT INTO `estado` VALUES (206, 'Tarija', 'BOL');
INSERT INTO `estado` VALUES (3798, 'Tartumaa', 'EST');
INSERT INTO `estado` VALUES (146, 'Tasmania', 'AUS');
INSERT INTO `estado` VALUES (3593, 'Tatarstan', 'RUS');
INSERT INTO `estado` VALUES (2511, 'Taza-Al Hoceima-Taou', 'MAR');
INSERT INTO `estado` VALUES (911, 'Tbilisi', 'GEO');
INSERT INTO `estado` VALUES (53, 'Tébessa', 'DZA');
INSERT INTO `estado` VALUES (1386, 'Teheran', 'IRN');
INSERT INTO `estado` VALUES (3404, 'Tekirdag', 'TUR');
INSERT INTO `estado` VALUES (1457, 'Tel Aviv', 'ISR');
INSERT INTO `estado` VALUES (2725, 'Tenasserim [Tanintha', 'MMR');
INSERT INTO `estado` VALUES (3816, 'Tennessee', 'USA');
INSERT INTO `estado` VALUES (2475, 'Terengganu', 'MYS');
INSERT INTO `estado` VALUES (3461, 'Ternopil', 'UKR');
INSERT INTO `estado` VALUES (2712, 'Tete', 'MOZ');
INSERT INTO `estado` VALUES (3802, 'Texas', 'USA');
INSERT INTO `estado` VALUES (2414, 'Thessalia', 'GRC');
INSERT INTO `estado` VALUES (3205, 'Thiès', 'SEN');
INSERT INTO `estado` VALUES (198, 'Thimphu', 'BTN');
INSERT INTO `estado` VALUES (3781, 'Thua Thien-Hue', 'VNM');
INSERT INTO `estado` VALUES (3112, 'Thüringen', 'DEU');
INSERT INTO `estado` VALUES (1899, 'Tianjin', 'CHN');
INSERT INTO `estado` VALUES (56, 'Tiaret', 'DZA');
INSERT INTO `estado` VALUES (2198, 'Tibet', 'CHN');
INSERT INTO `estado` VALUES (3794, 'Tien Giang', 'VNM');
INSERT INTO `estado` VALUES (767, 'Tigray', 'ETH');
INSERT INTO `estado` VALUES (3029, 'Timis', 'ROM');
INSERT INTO `estado` VALUES (40, 'Tirana', 'ALB');
INSERT INTO `estado` VALUES (1533, 'Tiroli', 'AUT');
INSERT INTO `estado` VALUES (3618, 'Tjumen', 'RUS');
INSERT INTO `estado` VALUES (54, 'Tlemcen', 'DZA');
INSERT INTO `estado` VALUES (2933, 'Toa Baja', 'PRI');
INSERT INTO `estado` VALUES (2462, 'Toamasina', 'MDG');
INSERT INTO `estado` VALUES (385, 'Tocantins', 'BRA');
INSERT INTO `estado` VALUES (1571, 'Tochigi', 'JPN');
INSERT INTO `estado` VALUES (3421, 'Tokat', 'TUR');
INSERT INTO `estado` VALUES (1616, 'Tokushima', 'JPN');
INSERT INTO `estado` VALUES (1538, 'Tokyo-to', 'JPN');
INSERT INTO `estado` VALUES (2270, 'Tolima', 'COL');
INSERT INTO `estado` VALUES (3621, 'Tomsk', 'RUS');
INSERT INTO `estado` VALUES (3340, 'Tongatapu', 'TON');
INSERT INTO `estado` VALUES (543, 'Tortola', 'VGB');
INSERT INTO `estado` VALUES (1477, 'Toscana', 'ITA');
INSERT INTO `estado` VALUES (3518, 'Toskent', 'UZB');
INSERT INTO `estado` VALUES (3509, 'Toskent Shahri', 'UZB');
INSERT INTO `estado` VALUES (1683, 'Tottori', 'JPN');
INSERT INTO `estado` VALUES (1597, 'Toyama', 'JPN');
INSERT INTO `estado` VALUES (3399, 'Trabzon', 'TUR');
INSERT INTO `estado` VALUES (1509, 'Trentino-Alto Adige', 'ITA');
INSERT INTO `estado` VALUES (2447, 'Tripoli', 'LBY');
INSERT INTO `estado` VALUES (1200, 'Tripura', 'IND');
INSERT INTO `estado` VALUES (3571, 'Trujillo', 'VEN');
INSERT INTO `estado` VALUES (3595, 'Tšeljabinsk', 'RUS');
INSERT INTO `estado` VALUES (3450, 'Tšerkasy', 'UKR');
INSERT INTO `estado` VALUES (3449, 'Tšernigiv', 'UKR');
INSERT INTO `estado` VALUES (3457, 'Tšernivtsi', 'UKR');
INSERT INTO `estado` VALUES (3684, 'Tšetšenia', 'RUS');
INSERT INTO `estado` VALUES (3647, 'Tšita', 'RUS');
INSERT INTO `estado` VALUES (3624, 'Tšuvassia', 'RUS');
INSERT INTO `estado` VALUES (84, 'Tucumán', 'ARG');
INSERT INTO `estado` VALUES (3617, 'Tula', 'RUS');
INSERT INTO `estado` VALUES (3051, 'Tulcea', 'ROM');
INSERT INTO `estado` VALUES (605, 'Tungurahua', 'ECU');
INSERT INTO `estado` VALUES (3355, 'Tunis', 'TUN');
INSERT INTO `estado` VALUES (59, 'Tutuila', 'ASM');
INSERT INTO `estado` VALUES (3626, 'Tver', 'RUS');
INSERT INTO `estado` VALUES (3748, 'Tyva', 'RUS');
INSERT INTO `estado` VALUES (3335, 'Ubon Ratchathani', 'THA');
INSERT INTO `estado` VALUES (2906, 'Ucayali', 'PER');
INSERT INTO `estado` VALUES (3604, 'Udmurtia', 'RUS');
INSERT INTO `estado` VALUES (3330, 'Udon Thani', 'THA');
INSERT INTO `estado` VALUES (2702, 'Ulaanbaatar', 'MNG');
INSERT INTO `estado` VALUES (3603, 'Uljanovsk', 'RUS');
INSERT INTO `estado` VALUES (1493, 'Umbria', 'ITA');
INSERT INTO `estado` VALUES (3175, 'Upolu', 'WSM');
INSERT INTO `estado` VALUES (3057, 'Uppsala län', 'SWE');
INSERT INTO `estado` VALUES (3402, 'Usak', 'TUR');
INSERT INTO `estado` VALUES (3909, 'Utah', 'USA');
INSERT INTO `estado` VALUES (14, 'Utrecht', 'NLD');
INSERT INTO `estado` VALUES (1037, 'Uttar Pradesh', 'IND');
INSERT INTO `estado` VALUES (1123, 'Uttaranchal', 'IND');
INSERT INTO `estado` VALUES (2452, 'Vaduz', 'LIE');
INSERT INTO `estado` VALUES (3045, 'Vâlcea', 'ROM');
INSERT INTO `estado` VALUES (661, 'Valencia', 'ESP');
INSERT INTO `estado` VALUES (2264, 'Valle', 'COL');
INSERT INTO `estado` VALUES (562, 'Valparaíso', 'CHL');
INSERT INTO `estado` VALUES (3385, 'Van', 'TUR');
INSERT INTO `estado` VALUES (547, 'Varna', 'BGR');
INSERT INTO `estado` VALUES (3246, 'Varsinais-Suomi', 'FIN');
INSERT INTO `estado` VALUES (3064, 'Västerbottens län', 'SWE');
INSERT INTO `estado` VALUES (3067, 'Västernorrlands län', 'SWE');
INSERT INTO `estado` VALUES (3059, 'Västmanlands län', 'SWE');
INSERT INTO `estado` VALUES (3255, 'Vaud', 'CHE');
INSERT INTO `estado` VALUES (1480, 'Veneto', 'ITA');
INSERT INTO `estado` VALUES (2553, 'Veracruz', 'MEX');
INSERT INTO `estado` VALUES (2628, 'Veracruz-Llave', 'MEX');
INSERT INTO `estado` VALUES (2438, 'Viangchan', 'LAO');
INSERT INTO `estado` VALUES (137, 'Victoria', 'AUS');
INSERT INTO `estado` VALUES (2423, 'Villa Clara', 'CUB');
INSERT INTO `estado` VALUES (2453, 'Vilna', 'LTU');
INSERT INTO `estado` VALUES (3443, 'Vinnytsja', 'UKR');
INSERT INTO `estado` VALUES (3836, 'Virginia', 'USA');
INSERT INTO `estado` VALUES (3529, 'Vitebsk', 'BLR');
INSERT INTO `estado` VALUES (3641, 'Vladimir', 'RUS');
INSERT INTO `estado` VALUES (1799, 'Vojvodina', 'YUG');
INSERT INTO `estado` VALUES (3598, 'Volgograd', 'RUS');
INSERT INTO `estado` VALUES (3643, 'Vologda', 'RUS');
INSERT INTO `estado` VALUES (3462, 'Volynia', 'UKR');
INSERT INTO `estado` VALUES (3599, 'Voronez', 'RUS');
INSERT INTO `estado` VALUES (3049, 'Vrancea', 'ROM');
INSERT INTO `estado` VALUES (3216, 'Východné Slovensko', 'SVK');
INSERT INTO `estado` VALUES (3352, 'Východní Cechy', 'CZE');
INSERT INTO `estado` VALUES (1580, 'Wakayama', 'JPN');
INSERT INTO `estado` VALUES (471, 'Wales', 'GBR');
INSERT INTO `estado` VALUES (3542, 'Wallis', 'WLF');
INSERT INTO `estado` VALUES (2955, 'Warminsko-Mazurskie', 'POL');
INSERT INTO `estado` VALUES (3822, 'Washington', 'USA');
INSERT INTO `estado` VALUES (1384, 'Wasit', 'IRQ');
INSERT INTO `estado` VALUES (3505, 'Wellington', 'NZL');
INSERT INTO `estado` VALUES (139, 'West Australia', 'AUS');
INSERT INTO `estado` VALUES (1395, 'West Azerbaidzan', 'IRN');
INSERT INTO `estado` VALUES (1032, 'West Bengali', 'IND');
INSERT INTO `estado` VALUES (186, 'West Flanderi', 'BEL');
INSERT INTO `estado` VALUES (3055, 'West Götanmaan län', 'SWE');
INSERT INTO `estado` VALUES (2410, 'West Greece', 'GRC');
INSERT INTO `estado` VALUES (1019, 'West Irian', 'IDN');
INSERT INTO `estado` VALUES (2323, 'West Island', 'CCK');
INSERT INTO `estado` VALUES (947, 'West Java', 'IDN');
INSERT INTO `estado` VALUES (2309, 'West Kasai', 'COD');
INSERT INTO `estado` VALUES (1877, 'West Kazakstan', 'KAZ');
INSERT INTO `estado` VALUES (920, 'Western', 'GHA');
INSERT INTO `estado` VALUES (718, 'Western Cape', 'ZAF');
INSERT INTO `estado` VALUES (776, 'Western Mindanao', 'PHL');
INSERT INTO `estado` VALUES (785, 'Western Visayas', 'PHL');
INSERT INTO `estado` VALUES (2938, 'Wielkopolskie', 'POL');
INSERT INTO `estado` VALUES (1529, 'Wien', 'AUT');
INSERT INTO `estado` VALUES (2470, 'Wilayah Persekutuan', 'MYS');
INSERT INTO `estado` VALUES (3817, 'Wisconsin', 'USA');
INSERT INTO `estado` VALUES (3221, 'Woqooyi Galbeed', 'SOM');
INSERT INTO `estado` VALUES (1923, 'Xinxiang', 'CHN');
INSERT INTO `estado` VALUES (1621, 'Yamagata', 'JPN');
INSERT INTO `estado` VALUES (1620, 'Yamaguchi', 'JPN');
INSERT INTO `estado` VALUES (3759, 'Yamalin Nenetsia', 'RUS');
INSERT INTO `estado` VALUES (1644, 'Yamanashi', 'JPN');
INSERT INTO `estado` VALUES (2820, 'Yamoussoukro', 'CIV');
INSERT INTO `estado` VALUES (2335, 'Yanggang', 'PRK');
INSERT INTO `estado` VALUES (3584, 'Yaracuy', 'VEN');
INSERT INTO `estado` VALUES (1402, 'Yazd', 'IRN');
INSERT INTO `estado` VALUES (132, 'Yerevan', 'ARM');
INSERT INTO `estado` VALUES (961, 'Yogyakarta', 'IDN');
INSERT INTO `estado` VALUES (2536, 'Yucatán', 'MEX');
INSERT INTO `estado` VALUES (3306, 'Yünlin', 'TWN');
INSERT INTO `estado` VALUES (1915, 'Yunnan', 'CHN');
INSERT INTO `estado` VALUES (2601, 'Zacatecas', 'MEX');
INSERT INTO `estado` VALUES (2940, 'Zachodnio-Pomorskie', 'POL');
INSERT INTO `estado` VALUES (2710, 'Zambézia', 'MOZ');
INSERT INTO `estado` VALUES (1404, 'Zanjan', 'IRN');
INSERT INTO `estado` VALUES (3314, 'Zanzibar West', 'TZA');
INSERT INTO `estado` VALUES (3348, 'Zapadní Cechy', 'CZE');
INSERT INTO `estado` VALUES (3437, 'Zaporizzja', 'UKR');
INSERT INTO `estado` VALUES (1911, 'Zhejiang', 'CHN');
INSERT INTO `estado` VALUES (3207, 'Ziguinchor', 'SEN');
INSERT INTO `estado` VALUES (2745, 'Zinder', 'NER');
INSERT INTO `estado` VALUES (3410, 'Zonguldak', 'TUR');
INSERT INTO `estado` VALUES (2824, 'Zufar', 'OMN');
INSERT INTO `estado` VALUES (12, 'Zuid-Holland', 'NLD');
INSERT INTO `estado` VALUES (3546, 'Zulia', 'VEN');
INSERT INTO `estado` VALUES (3251, 'Zürich', 'CHE');
INSERT INTO `estado` VALUES (3452, 'Zytomyr', 'UKR');
INSERT INTO `estado` VALUES (67, '–', 'AIA');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `fotoperfil`
-- 

CREATE TABLE `fotoperfil` (
  `idfotoPerfil` int(11) NOT NULL auto_increment,
  `fotoPerfilcol` blob NOT NULL,
  `status` tinyint(4) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY  (`idfotoPerfil`),
  KEY `fk_fotoPerfil_usuario1_idx` (`usuario_idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `fotoperfil`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `lugartrabajo`
-- 

CREATE TABLE `lugartrabajo` (
  `idlugarTrabajo` int(11) NOT NULL,
  `lugarTrabajo` varchar(45) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`idlugarTrabajo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `lugartrabajo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `noticia`
-- 

CREATE TABLE `noticia` (
  `idnoticia` int(11) NOT NULL auto_increment,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(1000) default NULL,
  `fechaPublicacion` datetime NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `votos` int(11) default NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY  (`idnoticia`),
  KEY `fk_noticia_usuario1_idx` (`usuario_idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `noticia`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `noticiaarchivo`
-- 

CREATE TABLE `noticiaarchivo` (
  `idnoticiaArchivo` int(11) NOT NULL,
  `noticia_idnoticia` int(11) NOT NULL,
  `tipoArchivo_idtipoArchivo` int(11) NOT NULL,
  PRIMARY KEY  (`idnoticiaArchivo`),
  KEY `fk_noticiaArchivo_noticia1_idx` (`noticia_idnoticia`),
  KEY `fk_noticiaArchivo_tipoArchivo1_idx` (`tipoArchivo_idtipoArchivo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `noticiaarchivo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pais`
-- 

CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL auto_increment,
  `pais` varchar(45) NOT NULL,
  `codigoPais` varchar(3) NOT NULL,
  PRIMARY KEY  (`idpais`),
  UNIQUE KEY `pais_UNIQUE` (`pais`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

-- 
-- Volcar la base de datos para la tabla `pais`
-- 

INSERT INTO `pais` VALUES (1, 'Aruba', 'ABW');
INSERT INTO `pais` VALUES (2, 'Afghanistan', 'AFG');
INSERT INTO `pais` VALUES (3, 'Angola', 'AGO');
INSERT INTO `pais` VALUES (4, 'Anguilla', 'AIA');
INSERT INTO `pais` VALUES (5, 'Albania', 'ALB');
INSERT INTO `pais` VALUES (6, 'Andorra', 'AND');
INSERT INTO `pais` VALUES (7, 'Netherlands Antilles', 'ANT');
INSERT INTO `pais` VALUES (8, 'United Arab Emirates', 'ARE');
INSERT INTO `pais` VALUES (9, 'Argentina', 'ARG');
INSERT INTO `pais` VALUES (10, 'Armenia', 'ARM');
INSERT INTO `pais` VALUES (11, 'American Samoa', 'ASM');
INSERT INTO `pais` VALUES (12, 'Antarctica', 'ATA');
INSERT INTO `pais` VALUES (13, 'French Southern territories', 'ATF');
INSERT INTO `pais` VALUES (14, 'Antigua and Barbuda', 'ATG');
INSERT INTO `pais` VALUES (15, 'Australia', 'AUS');
INSERT INTO `pais` VALUES (16, 'Austria', 'AUT');
INSERT INTO `pais` VALUES (17, 'Azerbaijan', 'AZE');
INSERT INTO `pais` VALUES (18, 'Burundi', 'BDI');
INSERT INTO `pais` VALUES (19, 'Belgium', 'BEL');
INSERT INTO `pais` VALUES (20, 'Benin', 'BEN');
INSERT INTO `pais` VALUES (21, 'Burkina Faso', 'BFA');
INSERT INTO `pais` VALUES (22, 'Bangladesh', 'BGD');
INSERT INTO `pais` VALUES (23, 'Bulgaria', 'BGR');
INSERT INTO `pais` VALUES (24, 'Bahrain', 'BHR');
INSERT INTO `pais` VALUES (25, 'Bahamas', 'BHS');
INSERT INTO `pais` VALUES (26, 'Bosnia and Herzegovina', 'BIH');
INSERT INTO `pais` VALUES (27, 'Belarus', 'BLR');
INSERT INTO `pais` VALUES (28, 'Belize', 'BLZ');
INSERT INTO `pais` VALUES (29, 'Bermuda', 'BMU');
INSERT INTO `pais` VALUES (30, 'Bolivia', 'BOL');
INSERT INTO `pais` VALUES (31, 'Brazil', 'BRA');
INSERT INTO `pais` VALUES (32, 'Barbados', 'BRB');
INSERT INTO `pais` VALUES (33, 'Brunei', 'BRN');
INSERT INTO `pais` VALUES (34, 'Bhutan', 'BTN');
INSERT INTO `pais` VALUES (35, 'Bouvet Island', 'BVT');
INSERT INTO `pais` VALUES (36, 'Botswana', 'BWA');
INSERT INTO `pais` VALUES (37, 'Central African Republic', 'CAF');
INSERT INTO `pais` VALUES (38, 'Canada', 'CAN');
INSERT INTO `pais` VALUES (39, 'Cocos (Keeling) Islands', 'CCK');
INSERT INTO `pais` VALUES (40, 'Switzerland', 'CHE');
INSERT INTO `pais` VALUES (41, 'Chile', 'CHL');
INSERT INTO `pais` VALUES (42, 'China', 'CHN');
INSERT INTO `pais` VALUES (43, 'Côte d’Ivoire', 'CIV');
INSERT INTO `pais` VALUES (44, 'Cameroon', 'CMR');
INSERT INTO `pais` VALUES (45, 'Congo, The Democratic Republic of the', 'COD');
INSERT INTO `pais` VALUES (46, 'Congo', 'COG');
INSERT INTO `pais` VALUES (47, 'Cook Islands', 'COK');
INSERT INTO `pais` VALUES (48, 'Colombia', 'COL');
INSERT INTO `pais` VALUES (49, 'Comoros', 'COM');
INSERT INTO `pais` VALUES (50, 'Cape Verde', 'CPV');
INSERT INTO `pais` VALUES (51, 'Costa Rica', 'CRI');
INSERT INTO `pais` VALUES (52, 'Cuba', 'CUB');
INSERT INTO `pais` VALUES (53, 'Christmas Island', 'CXR');
INSERT INTO `pais` VALUES (54, 'Cayman Islands', 'CYM');
INSERT INTO `pais` VALUES (55, 'Cyprus', 'CYP');
INSERT INTO `pais` VALUES (56, 'Czech Republic', 'CZE');
INSERT INTO `pais` VALUES (57, 'Germany', 'DEU');
INSERT INTO `pais` VALUES (58, 'Djibouti', 'DJI');
INSERT INTO `pais` VALUES (59, 'Dominica', 'DMA');
INSERT INTO `pais` VALUES (60, 'Denmark', 'DNK');
INSERT INTO `pais` VALUES (61, 'Dominican Republic', 'DOM');
INSERT INTO `pais` VALUES (62, 'Algeria', 'DZA');
INSERT INTO `pais` VALUES (63, 'Ecuador', 'ECU');
INSERT INTO `pais` VALUES (64, 'Egypt', 'EGY');
INSERT INTO `pais` VALUES (65, 'Eritrea', 'ERI');
INSERT INTO `pais` VALUES (66, 'Western Sahara', 'ESH');
INSERT INTO `pais` VALUES (67, 'Spain', 'ESP');
INSERT INTO `pais` VALUES (68, 'Estonia', 'EST');
INSERT INTO `pais` VALUES (69, 'Ethiopia', 'ETH');
INSERT INTO `pais` VALUES (70, 'Finland', 'FIN');
INSERT INTO `pais` VALUES (71, 'Fiji Islands', 'FJI');
INSERT INTO `pais` VALUES (72, 'Falkland Islands', 'FLK');
INSERT INTO `pais` VALUES (73, 'France', 'FRA');
INSERT INTO `pais` VALUES (74, 'Faroe Islands', 'FRO');
INSERT INTO `pais` VALUES (75, 'Micronesia, Federated States of', 'FSM');
INSERT INTO `pais` VALUES (76, 'Gabon', 'GAB');
INSERT INTO `pais` VALUES (77, 'United Kingdom', 'GBR');
INSERT INTO `pais` VALUES (78, 'Georgia', 'GEO');
INSERT INTO `pais` VALUES (79, 'Ghana', 'GHA');
INSERT INTO `pais` VALUES (80, 'Gibraltar', 'GIB');
INSERT INTO `pais` VALUES (81, 'Guinea', 'GIN');
INSERT INTO `pais` VALUES (82, 'Guadeloupe', 'GLP');
INSERT INTO `pais` VALUES (83, 'Gambia', 'GMB');
INSERT INTO `pais` VALUES (84, 'Guinea-Bissau', 'GNB');
INSERT INTO `pais` VALUES (85, 'Equatorial Guinea', 'GNQ');
INSERT INTO `pais` VALUES (86, 'Greece', 'GRC');
INSERT INTO `pais` VALUES (87, 'Grenada', 'GRD');
INSERT INTO `pais` VALUES (88, 'Greenland', 'GRL');
INSERT INTO `pais` VALUES (89, 'Guatemala', 'GTM');
INSERT INTO `pais` VALUES (90, 'French Guiana', 'GUF');
INSERT INTO `pais` VALUES (91, 'Guam', 'GUM');
INSERT INTO `pais` VALUES (92, 'Guyana', 'GUY');
INSERT INTO `pais` VALUES (93, 'Hong Kong', 'HKG');
INSERT INTO `pais` VALUES (94, 'Heard Island and McDonald Islands', 'HMD');
INSERT INTO `pais` VALUES (95, 'Honduras', 'HND');
INSERT INTO `pais` VALUES (96, 'Croatia', 'HRV');
INSERT INTO `pais` VALUES (97, 'Haiti', 'HTI');
INSERT INTO `pais` VALUES (98, 'Hungary', 'HUN');
INSERT INTO `pais` VALUES (99, 'Indonesia', 'IDN');
INSERT INTO `pais` VALUES (100, 'India', 'IND');
INSERT INTO `pais` VALUES (101, 'British Indian Ocean Territory', 'IOT');
INSERT INTO `pais` VALUES (102, 'Ireland', 'IRL');
INSERT INTO `pais` VALUES (103, 'Iran', 'IRN');
INSERT INTO `pais` VALUES (104, 'Iraq', 'IRQ');
INSERT INTO `pais` VALUES (105, 'Iceland', 'ISL');
INSERT INTO `pais` VALUES (106, 'Israel', 'ISR');
INSERT INTO `pais` VALUES (107, 'Italy', 'ITA');
INSERT INTO `pais` VALUES (108, 'Jamaica', 'JAM');
INSERT INTO `pais` VALUES (109, 'Jordan', 'JOR');
INSERT INTO `pais` VALUES (110, 'Japan', 'JPN');
INSERT INTO `pais` VALUES (111, 'Kazakstan', 'KAZ');
INSERT INTO `pais` VALUES (112, 'Kenya', 'KEN');
INSERT INTO `pais` VALUES (113, 'Kyrgyzstan', 'KGZ');
INSERT INTO `pais` VALUES (114, 'Cambodia', 'KHM');
INSERT INTO `pais` VALUES (115, 'Kiribati', 'KIR');
INSERT INTO `pais` VALUES (116, 'Saint Kitts and Nevis', 'KNA');
INSERT INTO `pais` VALUES (117, 'South Korea', 'KOR');
INSERT INTO `pais` VALUES (118, 'Kuwait', 'KWT');
INSERT INTO `pais` VALUES (119, 'Laos', 'LAO');
INSERT INTO `pais` VALUES (120, 'Lebanon', 'LBN');
INSERT INTO `pais` VALUES (121, 'Liberia', 'LBR');
INSERT INTO `pais` VALUES (122, 'Libyan Arab Jamahiriya', 'LBY');
INSERT INTO `pais` VALUES (123, 'Saint Lucia', 'LCA');
INSERT INTO `pais` VALUES (124, 'Liechtenstein', 'LIE');
INSERT INTO `pais` VALUES (125, 'Sri Lanka', 'LKA');
INSERT INTO `pais` VALUES (126, 'Lesotho', 'LSO');
INSERT INTO `pais` VALUES (127, 'Lithuania', 'LTU');
INSERT INTO `pais` VALUES (128, 'Luxembourg', 'LUX');
INSERT INTO `pais` VALUES (129, 'Latvia', 'LVA');
INSERT INTO `pais` VALUES (130, 'Macao', 'MAC');
INSERT INTO `pais` VALUES (131, 'Morocco', 'MAR');
INSERT INTO `pais` VALUES (132, 'Monaco', 'MCO');
INSERT INTO `pais` VALUES (133, 'Moldova', 'MDA');
INSERT INTO `pais` VALUES (134, 'Madagascar', 'MDG');
INSERT INTO `pais` VALUES (135, 'Maldives', 'MDV');
INSERT INTO `pais` VALUES (136, 'Mexico', 'MEX');
INSERT INTO `pais` VALUES (137, 'Marshall Islands', 'MHL');
INSERT INTO `pais` VALUES (138, 'Macedonia', 'MKD');
INSERT INTO `pais` VALUES (139, 'Mali', 'MLI');
INSERT INTO `pais` VALUES (140, 'Malta', 'MLT');
INSERT INTO `pais` VALUES (141, 'Myanmar', 'MMR');
INSERT INTO `pais` VALUES (142, 'Mongolia', 'MNG');
INSERT INTO `pais` VALUES (143, 'Northern Mariana Islands', 'MNP');
INSERT INTO `pais` VALUES (144, 'Mozambique', 'MOZ');
INSERT INTO `pais` VALUES (145, 'Mauritania', 'MRT');
INSERT INTO `pais` VALUES (146, 'Montserrat', 'MSR');
INSERT INTO `pais` VALUES (147, 'Martinique', 'MTQ');
INSERT INTO `pais` VALUES (148, 'Mauritius', 'MUS');
INSERT INTO `pais` VALUES (149, 'Malawi', 'MWI');
INSERT INTO `pais` VALUES (150, 'Malaysia', 'MYS');
INSERT INTO `pais` VALUES (151, 'Mayotte', 'MYT');
INSERT INTO `pais` VALUES (152, 'Namibia', 'NAM');
INSERT INTO `pais` VALUES (153, 'New Caledonia', 'NCL');
INSERT INTO `pais` VALUES (154, 'Niger', 'NER');
INSERT INTO `pais` VALUES (155, 'Norfolk Island', 'NFK');
INSERT INTO `pais` VALUES (156, 'Nigeria', 'NGA');
INSERT INTO `pais` VALUES (157, 'Nicaragua', 'NIC');
INSERT INTO `pais` VALUES (158, 'Niue', 'NIU');
INSERT INTO `pais` VALUES (159, 'Netherlands', 'NLD');
INSERT INTO `pais` VALUES (160, 'Norway', 'NOR');
INSERT INTO `pais` VALUES (161, 'Nepal', 'NPL');
INSERT INTO `pais` VALUES (162, 'Nauru', 'NRU');
INSERT INTO `pais` VALUES (163, 'New Zealand', 'NZL');
INSERT INTO `pais` VALUES (164, 'Oman', 'OMN');
INSERT INTO `pais` VALUES (165, 'Pakistan', 'PAK');
INSERT INTO `pais` VALUES (166, 'Panama', 'PAN');
INSERT INTO `pais` VALUES (167, 'Pitcairn', 'PCN');
INSERT INTO `pais` VALUES (168, 'Peru', 'PER');
INSERT INTO `pais` VALUES (169, 'Philippines', 'PHL');
INSERT INTO `pais` VALUES (170, 'Palau', 'PLW');
INSERT INTO `pais` VALUES (171, 'Papua New Guinea', 'PNG');
INSERT INTO `pais` VALUES (172, 'Poland', 'POL');
INSERT INTO `pais` VALUES (173, 'Puerto Rico', 'PRI');
INSERT INTO `pais` VALUES (174, 'North Korea', 'PRK');
INSERT INTO `pais` VALUES (175, 'Portugal', 'PRT');
INSERT INTO `pais` VALUES (176, 'Paraguay', 'PRY');
INSERT INTO `pais` VALUES (177, 'Palestine', 'PSE');
INSERT INTO `pais` VALUES (178, 'French Polynesia', 'PYF');
INSERT INTO `pais` VALUES (179, 'Qatar', 'QAT');
INSERT INTO `pais` VALUES (180, 'Réunion', 'REU');
INSERT INTO `pais` VALUES (181, 'Romania', 'ROM');
INSERT INTO `pais` VALUES (182, 'Russian Federation', 'RUS');
INSERT INTO `pais` VALUES (183, 'Rwanda', 'RWA');
INSERT INTO `pais` VALUES (184, 'Saudi Arabia', 'SAU');
INSERT INTO `pais` VALUES (185, 'Sudan', 'SDN');
INSERT INTO `pais` VALUES (186, 'Senegal', 'SEN');
INSERT INTO `pais` VALUES (187, 'Singapore', 'SGP');
INSERT INTO `pais` VALUES (188, 'South Georgia and the South Sandwich Islands', 'SGS');
INSERT INTO `pais` VALUES (189, 'Saint Helena', 'SHN');
INSERT INTO `pais` VALUES (190, 'Svalbard and Jan Mayen', 'SJM');
INSERT INTO `pais` VALUES (191, 'Solomon Islands', 'SLB');
INSERT INTO `pais` VALUES (192, 'Sierra Leone', 'SLE');
INSERT INTO `pais` VALUES (193, 'El Salvador', 'SLV');
INSERT INTO `pais` VALUES (194, 'San Marino', 'SMR');
INSERT INTO `pais` VALUES (195, 'Somalia', 'SOM');
INSERT INTO `pais` VALUES (196, 'Saint Pierre and Miquelon', 'SPM');
INSERT INTO `pais` VALUES (197, 'Sao Tome and Principe', 'STP');
INSERT INTO `pais` VALUES (198, 'Suriname', 'SUR');
INSERT INTO `pais` VALUES (199, 'Slovakia', 'SVK');
INSERT INTO `pais` VALUES (200, 'Slovenia', 'SVN');
INSERT INTO `pais` VALUES (201, 'Sweden', 'SWE');
INSERT INTO `pais` VALUES (202, 'Swaziland', 'SWZ');
INSERT INTO `pais` VALUES (203, 'Seychelles', 'SYC');
INSERT INTO `pais` VALUES (204, 'Syria', 'SYR');
INSERT INTO `pais` VALUES (205, 'Turks and Caicos Islands', 'TCA');
INSERT INTO `pais` VALUES (206, 'Chad', 'TCD');
INSERT INTO `pais` VALUES (207, 'Togo', 'TGO');
INSERT INTO `pais` VALUES (208, 'Thailand', 'THA');
INSERT INTO `pais` VALUES (209, 'Tajikistan', 'TJK');
INSERT INTO `pais` VALUES (210, 'Tokelau', 'TKL');
INSERT INTO `pais` VALUES (211, 'Turkmenistan', 'TKM');
INSERT INTO `pais` VALUES (212, 'East Timor', 'TMP');
INSERT INTO `pais` VALUES (213, 'Tonga', 'TON');
INSERT INTO `pais` VALUES (214, 'Trinidad and Tobago', 'TTO');
INSERT INTO `pais` VALUES (215, 'Tunisia', 'TUN');
INSERT INTO `pais` VALUES (216, 'Turkey', 'TUR');
INSERT INTO `pais` VALUES (217, 'Tuvalu', 'TUV');
INSERT INTO `pais` VALUES (218, 'Taiwan', 'TWN');
INSERT INTO `pais` VALUES (219, 'Tanzania', 'TZA');
INSERT INTO `pais` VALUES (220, 'Uganda', 'UGA');
INSERT INTO `pais` VALUES (221, 'Ukraine', 'UKR');
INSERT INTO `pais` VALUES (222, 'United States Minor Outlying Islands', 'UMI');
INSERT INTO `pais` VALUES (223, 'Uruguay', 'URY');
INSERT INTO `pais` VALUES (224, 'United States', 'USA');
INSERT INTO `pais` VALUES (225, 'Uzbekistan', 'UZB');
INSERT INTO `pais` VALUES (226, 'Holy See (Vatican City State)', 'VAT');
INSERT INTO `pais` VALUES (227, 'Saint Vincent and the Grenadines', 'VCT');
INSERT INTO `pais` VALUES (228, 'Venezuela', 'VEN');
INSERT INTO `pais` VALUES (229, 'Virgin Islands, British', 'VGB');
INSERT INTO `pais` VALUES (230, 'Virgin Islands, U.S.', 'VIR');
INSERT INTO `pais` VALUES (231, 'Vietnam', 'VNM');
INSERT INTO `pais` VALUES (232, 'Vanuatu', 'VUT');
INSERT INTO `pais` VALUES (233, 'Wallis and Futuna', 'WLF');
INSERT INTO `pais` VALUES (234, 'Samoa', 'WSM');
INSERT INTO `pais` VALUES (235, 'Yemen', 'YEM');
INSERT INTO `pais` VALUES (236, 'Yugoslavia', 'YUG');
INSERT INTO `pais` VALUES (237, 'South Africa', 'ZAF');
INSERT INTO `pais` VALUES (238, 'Zambia', 'ZMB');
INSERT INTO `pais` VALUES (239, 'Zimbabwe', 'ZWE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `puestotrabajo`
-- 

CREATE TABLE `puestotrabajo` (
  `idpuestoTrabajo` int(11) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  PRIMARY KEY  (`idpuestoTrabajo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `puestotrabajo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `reel`
-- 

CREATE TABLE `reel` (
  `idreel` int(11) NOT NULL,
  `reel` blob,
  `status` tinyint(4) default NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY  (`idreel`),
  KEY `fk_reel_usuario1_idx` (`usuario_idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `reel`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `trabajousuario`
-- 

CREATE TABLE `trabajousuario` (
  `idtrabajoUsuario` int(11) NOT NULL auto_increment,
  `usuario_idusuario` int(11) NOT NULL,
  `lugarTrabajo_idlugarTrabajo` int(11) NOT NULL,
  `puestoTrabajo_idpuestoTrabajo` int(11) NOT NULL,
  PRIMARY KEY  (`idtrabajoUsuario`),
  KEY `fk_trabajoUsuario_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_trabajoUsuario_lugarTrabajo1_idx` (`lugarTrabajo_idlugarTrabajo`),
  KEY `fk_trabajoUsuario_puestoTrabajo1_idx` (`puestoTrabajo_idpuestoTrabajo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `trabajousuario`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `apellidoPaterno` varchar(45) NOT NULL,
  `apellimoMaterno` varchar(45) default NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `estado_idestado` int(11) NOT NULL,
  `biografia` varchar(1000) default NULL,
  `status` varchar(2) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  PRIMARY KEY  (`idusuario`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_usuario_estado1_idx` (`estado_idestado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 

