-- Adminer 4.8.1 MySQL 8.0.33-0ubuntu0.23.04.2 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5,	'2014_10_12_000000_create_users_table',	1),
(6,	'2014_10_12_100000_create_password_resets_table',	1),
(7,	'2019_08_19_000000_create_failed_jobs_table',	1),
(8,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(9,	'2023_08_15_143621_create_stores_table',	2);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `stores` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Craft',	'Sample Description',	'2023-08-15 09:10:01',	'2023-08-15 09:10:01'),
(2,	'Fleximize PCs',	'3792 sample lang daytoy',	'2023-08-15 09:31:20',	'2023-08-15 10:06:56'),
(3,	'approvity',	'asdf asdf',	'2023-08-15 09:31:27',	'2023-08-15 09:31:27'),
(4,	'Sample Inc',	'Due Dates Addition',	'2023-08-15 09:31:35',	'2023-08-15 09:31:35'),
(5,	'Fahey, O\'Kon and Fahey',	'Quos facilis asperiores dolorum qui et.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(6,	'Moore-Zieme',	'Quas quibusdam voluptatem dolorem quidem consequatur temporibus id labore.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(7,	'Koelpin-Schmitt',	'Consectetur eum sit et.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(8,	'Orn-Lynch',	'Quia quis qui cum minima et perspiciatis.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(9,	'Mayer-Little',	'Occaecati illum quis reiciendis ullam odit sit saepe vel.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(10,	'Connelly, Christiansen and Bergnaum',	'Consequatur rerum eum doloribus est enim quis nemo.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(11,	'Wiza PLC',	'Ut quidem reprehenderit dolores sequi sint architecto voluptatem eveniet.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(12,	'Fahey PLC',	'Ut quo qui assumenda est neque.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(13,	'Frami, Feil and Koch',	'Magnam consectetur nisi voluptatem.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(14,	'Kilback, Romaguera and McLaughlin',	'Rerum at amet officia voluptas optio explicabo.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(15,	'Gutkowski Ltd',	'Eaque optio ea quos ex ut accusantium vitae tempora.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(16,	'Jaskolski, Boehm and Kunde',	'Sunt temporibus et dicta debitis.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(17,	'Fahey-Klein',	'Qui consequuntur qui assumenda id.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(18,	'Frami, Pagac and Stokes',	'Sed labore optio voluptate ea.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(19,	'Barton PLC',	'Non qui exercitationem aut sint.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(20,	'Aufderhar, Hoeger and Boyle',	'Magnam vero occaecati qui id provident quia eveniet.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(21,	'Wunsch and Sons',	'Soluta est numquam earum tempora deserunt.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(22,	'Gislason, Hand and Rowe',	'Omnis consectetur recusandae blanditiis porro.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(23,	'Murray Inc',	'Vel voluptatem voluptas dolores autem.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(24,	'Lueilwitz-Stracke',	'Natus molestiae totam sint nulla ex.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(25,	'Walter-Ebert',	'Nihil iure enim aut sit error illum omnis.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(26,	'Moore-Tremblay',	'Harum praesentium maxime et aliquam qui tempora doloremque.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(27,	'Dietrich-D\'Amore',	'Eius sed excepturi qui quasi et.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(28,	'Von, Zemlak and Considine',	'Aliquid aut vitae voluptatem consequuntur aliquid.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(29,	'Crona Ltd',	'Quo et et est.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(30,	'Schmitt, Bergnaum and Doyle',	'Quos laboriosam qui molestiae.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(31,	'D\'Amore Group',	'Et nisi eum doloribus ipsa cumque quia et.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(32,	'Satterfield-Hodkiewicz',	'Sit ipsa laborum maxime.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(33,	'Abernathy, Kassulke and Rau',	'Similique totam distinctio et quos et et a.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(34,	'Roberts Inc',	'Aut repudiandae vel aliquid deserunt saepe et pariatur.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(35,	'Lang, Reichel and Kovacek',	'At et vero occaecati tenetur.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(36,	'Rogahn Ltd',	'Asperiores omnis rem id.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(37,	'Marks-Kuphal',	'Voluptatibus maiores amet dolor.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(38,	'O\'Keefe Inc',	'Repudiandae adipisci ea magnam dolorem eligendi nobis.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(39,	'Harris, Haag and Wintheiser',	'Sunt possimus aut aut dolor reiciendis aut.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(40,	'Rolfson, Wisoky and Ward',	'Mollitia exercitationem quia mollitia est dolorem vitae ut beatae.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(41,	'Barton-Lowe',	'Voluptas eius est vero voluptatum quam.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(42,	'Hickle Ltd',	'Quo aut sit ut architecto quas voluptate ipsum.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(43,	'Kozey-Pagac',	'Voluptas illum amet sed.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(44,	'O\'Hara Ltd',	'Consectetur quidem culpa quis doloribus reprehenderit.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(45,	'Mohr, Cronin and Hill',	'Nihil commodi eum non aut.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(46,	'Little LLC',	'Omnis vitae magnam tenetur est.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(47,	'Torp-Becker',	'Odio similique magni et quibusdam.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(48,	'Altenwerth, Jacobs and VonRueden',	'Dolorum beatae sapiente praesentium laudantium.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(49,	'Hackett-Will',	'Voluptas deleniti earum velit cum et mollitia magnam.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(50,	'Dare PLC',	'Magni cum accusantium ut et.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(51,	'Dooley Ltd',	'Facilis dignissimos facilis dolorem necessitatibus. sdfg',	'2023-08-15 10:29:14',	'2023-08-15 10:31:40'),
(52,	'Schumm, Murray and Gleason',	'Debitis soluta atque dolore non tempora velit commodi.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(53,	'Dicki-Lueilwitz',	'Ut quis veniam deserunt unde quas ex cumque.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(54,	'Olson, Stoltenberg and Terry',	'Voluptate ullam corrupti facere sunt sed ut.',	'2023-08-15 10:29:14',	'2023-08-15 10:29:14'),
(55,	'Ankunding LLC',	'Reiciendis ullam id eos aut quo est et rerum.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(56,	'Pollich, Robel and Jacobs',	'Ut illo et eveniet dolor pariatur dolorem.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(57,	'Hermiston, Nicolas and Reichert',	'Ipsum sapiente rerum doloremque vel.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(58,	'Farrell Inc',	'Eum laudantium est voluptas veritatis animi ipsa et dolorum.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(59,	'O\'Reilly-Champlin',	'Tempora necessitatibus quas aut magni consectetur est.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(60,	'Tillman-Bernier',	'Earum rem saepe non quaerat est soluta.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(61,	'Kozey, Bruen and Murray',	'In fugit tempora incidunt laborum eos.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(62,	'Will-Funk',	'Minima consequatur vero officia voluptatum autem sapiente delectus.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(63,	'Hickle-Wiegand',	'Adipisci aut non animi id id.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(64,	'Ortiz, Sporer and Casper',	'Vel et accusantium eveniet voluptatibus ea veniam.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(65,	'Nikolaus Group',	'Illo sit quia autem accusantium sit.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(66,	'Douglas PLC',	'Sunt hic debitis fuga et.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(67,	'Bashirian-Olson',	'Dolorum rerum eius laboriosam quas.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(68,	'Kassulke, Abbott and Douglas',	'Fugit voluptate accusantium a itaque sunt aut.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(69,	'Spinka-Romaguera',	'Porro qui reiciendis vitae beatae suscipit fuga autem.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(70,	'Abbott-Jast',	'Ipsum quos quia rerum non nam dolore consequatur.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(71,	'Dooley Group',	'Atque doloribus dolor ducimus nostrum fugiat quo.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(72,	'Hermiston LLC',	'Dolor molestiae sunt consequatur eos.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(73,	'Jacobson Group',	'Nesciunt et ut quia quo fuga.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(74,	'Torphy, Schowalter and Casper',	'Ut et sint mollitia sit facere ut.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(75,	'Schumm, Becker and D\'Amore',	'Voluptas natus doloremque quia nisi aperiam rem.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(76,	'Connelly, Mann and Beatty',	'Est eum necessitatibus aliquam sed natus reiciendis.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(77,	'Dickens, Nicolas and Durgan',	'Sit laborum sapiente et sit asperiores.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(78,	'Botsford-Jaskolski',	'Quo quibusdam mollitia dolores.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(79,	'Weimann, Kovacek and Beer',	'Sunt consequatur molestiae modi rerum.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(80,	'Gorczany-Borer',	'Eaque accusantium quia qui eaque.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(81,	'Nader, Murphy and Franecki',	'Ipsum quaerat saepe maiores delectus omnis dolorem.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(82,	'Gorczany LLC',	'Deserunt est quibusdam distinctio.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(83,	'Jenkins, Jacobs and Cronin',	'Qui quam atque rerum consequatur quos.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(84,	'Lang LLC',	'Velit sapiente saepe quos.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(85,	'Pagac, Lemke and Watsica',	'Aliquid neque ea quaerat ut rerum.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(86,	'Harvey, Veum and Schoen',	'Blanditiis corrupti porro sunt corrupti assumenda velit.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(87,	'Nicolas-Wisoky',	'Sit tenetur et atque facere.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(88,	'Roob Ltd',	'Et possimus placeat similique dolorem ipsam accusamus.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(89,	'Gaylord, Cummerata and Kuhn',	'Labore deserunt et fugiat quidem illo.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(90,	'Corkery Ltd',	'Quam necessitatibus dolorem quas distinctio qui dolores.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(91,	'Hessel-Batz',	'Velit odio mollitia ullam placeat.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(92,	'Rippin LLC',	'Recusandae ullam sequi aut numquam voluptatem.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(93,	'Bruen Group',	'Rem eum possimus tempore mollitia.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(94,	'Cummings Group',	'Quas velit deleniti soluta molestias repudiandae quo.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(95,	'Kautzer-Kub',	'Ut labore sequi ducimus earum debitis.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(96,	'Cummerata Group',	'Praesentium hic in exercitationem porro occaecati voluptas.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(97,	'Altenwerth PLC',	'Quibusdam quia quaerat doloribus asperiores consequatur tenetur iste.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(98,	'Abshire-Swaniawski',	'Rerum autem ullam ea unde non porro quaerat.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(99,	'Prosacco, Thiel and Zieme',	'Aliquid officiis eos ipsa quis.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(100,	'Stamm-King',	'Et est praesentium magnam et officia animi blanditiis.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(101,	'Towne, Larkin and Langworth',	'Suscipit dolor eveniet voluptatibus incidunt.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(102,	'Armstrong-Lindgren',	'Quam animi aut aliquam natus est voluptate.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(103,	'Schroeder and Sons',	'Dolorem rerum nesciunt perspiciatis odit rerum.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(104,	'Veum-Turner',	'Corporis eligendi nihil eveniet sunt voluptatem veritatis.',	'2023-08-15 10:29:29',	'2023-08-15 10:29:29'),
(105,	'Craft 2',	'Sample Description',	'2023-08-15 11:18:45',	'2023-08-15 11:18:45');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2,	'kevin',	'pecdasen',	'kevinmark701@gmail.com',	NULL,	'$2y$10$JCrpjqFjrzAiZVK1NDj/beS2P2A5Mr.5MR5K1GovyuadP8VvEjpru',	'V0DOyZe8yKePbr4rbHZEWXBnDFDHjVExyxrfZOZLvfFxPD9Lu1y106LwbLEw',	'2023-08-15 07:49:47',	'2023-08-15 07:49:47'),
(3,	'kevin',	'marky',	'sample@gmail.com',	NULL,	'$2y$10$1.f.CTiyr.q6Kr/i5A.Ytu9PWupXYjVcaz3hH1Fsfu.vb9Ur87LSK',	NULL,	'2023-08-15 11:10:30',	'2023-08-15 11:10:30'),
(4,	'asdf',	'asdf',	'sample1@gmail.com',	NULL,	'$2y$10$NAITFTYWaxTJYVpJJiZBLOILDv62pzlK4M07Kh4iJfJfslt463qoa',	'p6iUzvBbyMNTu49wdbE9DJaAXROsDo5ztPFU9c1UIQBgdXLg2Aef7K5WpM7X',	'2023-08-15 11:11:54',	'2023-08-15 11:11:54');

-- 2023-08-15 19:24:13
