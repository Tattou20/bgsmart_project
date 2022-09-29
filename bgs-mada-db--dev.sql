-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 24 sep. 2022 à 06:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bgs-db--dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_1DD74700BAD26311` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carousel`
--

INSERT INTO `carousel` (`id`, `tag_id`, `name`, `imageurl`, `description`) VALUES
(6, NULL, 'Image de bienvenue', '201a136695214740c639890718d53b7b91baf08c.jpg', '<div>Bienvenue chez Biogas Smart</div>'),
(7, NULL, 'Services', 'bc5b62989ad6b5468538578ea6810132902dd21e.jpg', '<div>Nos services pour vous !!!&nbsp;</div>'),
(8, NULL, 'Contacter', 'c119cec312031a3180ff6476ec864a19b6f55080.jpg', '<div>Contactez-nous pour plus d\'information.</div>');

-- --------------------------------------------------------

--
-- Structure de la table `carousel_place`
--

DROP TABLE IF EXISTS `carousel_place`;
CREATE TABLE IF NOT EXISTS `carousel_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carousel_place`
--

INSERT INTO `carousel_place` (`id`, `place_name`) VALUES
(4, 'Home'),
(5, 'Services'),
(6, 'Contact');

-- --------------------------------------------------------

--
-- Structure de la table `carousel_place_carousel`
--

DROP TABLE IF EXISTS `carousel_place_carousel`;
CREATE TABLE IF NOT EXISTS `carousel_place_carousel` (
  `carousel_place_id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL,
  PRIMARY KEY (`carousel_place_id`,`carousel_id`),
  KEY `IDX_89A55811D1120003` (`carousel_place_id`),
  KEY `IDX_89A55811C1CE5B98` (`carousel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carousel_place_carousel`
--

INSERT INTO `carousel_place_carousel` (`carousel_place_id`, `carousel_id`) VALUES
(4, 6),
(4, 8),
(5, 6),
(5, 7),
(6, 6),
(6, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C4B89032C` (`post_id`),
  KEY `IDX_9474526CF675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `author_id`, `content`, `created_at`) VALUES
(1, 16, 18, 'Aut vitae est facilis et dignissimos. Quis esse deleniti cupiditate cumque. Quia dicta quaerat placeat nihil.', '2022-09-25 00:00:00'),
(2, 7, 6, 'Accusantium tenetur rerum excepturi. Illo minima voluptatum incidunt quaerat sequi. Aut iure unde quis quam minus et.', '2022-09-25 00:00:00'),
(3, 17, 9, 'Officia aliquid error quia sed velit consectetur ullam. Saepe dolor quae dolorem esse cum et voluptas. Commodi aut recusandae aperiam reiciendis debitis. Libero libero quos velit modi.', '2022-09-25 00:00:00'),
(4, 4, 7, 'Dolorem illum natus aliquid officiis ab quo dicta. Et consequatur voluptates perferendis id asperiores veniam magnam expedita. Quidem odit ullam perferendis repellendus doloremque aut.', '2022-09-25 00:00:00'),
(5, 12, 7, 'Dolores beatae autem nihil quidem ut aut. Quam rerum et at cumque. Veritatis expedita qui accusamus iste.', '2022-09-25 00:00:00'),
(6, 19, 16, 'Quis veniam voluptatem alias nulla iusto officiis est. Rerum porro dolores commodi distinctio.', '2022-09-25 00:00:00'),
(7, 3, 9, 'Consequatur ipsa exercitationem officiis cumque. Qui recusandae vel ullam sit non omnis. Ea at sed ut.', '2022-09-25 00:00:00'),
(8, 3, 16, 'Ab explicabo pariatur perferendis placeat ut sunt omnis. Adipisci atque iste non dolor ut. Aut pariatur quae aut eius.', '2022-09-25 00:00:00'),
(9, 1, 8, 'Quo ipsum qui et temporibus atque. Quaerat illum et et aperiam.', '2022-09-25 00:00:00'),
(10, 17, 18, 'Modi voluptas cupiditate sunt iure adipisci corporis. Commodi aliquam ut velit quia voluptatem optio omnis quae.', '2022-09-25 00:00:00'),
(11, 10, 11, 'Nihil blanditiis quia earum non doloremque omnis neque. Eveniet ex sed quaerat.', '2022-09-25 00:00:00'),
(12, 10, 14, 'Et et deleniti ut ullam reiciendis. Expedita sed dolor unde qui qui. Est quisquam sequi a voluptatem nihil tempora.', '2022-09-25 00:00:00'),
(13, 11, 9, 'Sit quas tempora omnis est quidem. Omnis nobis dolorum aspernatur nobis et. Qui voluptas ut deserunt enim sed.', '2022-09-25 00:00:00'),
(14, 5, 13, 'Sit tempora alias magnam. Nemo vel et qui est. Nulla vel quia et dignissimos et sit quis.', '2022-09-25 00:00:00'),
(15, 1, 18, 'Veritatis eius accusamus consequuntur doloribus provident blanditiis nostrum. Non voluptas molestiae voluptatem consequatur. Vitae harum nesciunt eaque beatae voluptas qui.', '2022-09-25 00:00:00'),
(16, 8, 9, 'Sed facere quis ut ab et. Expedita ducimus dolorem ut debitis aut quisquam. Molestiae et nostrum earum voluptas. Non iste eum quo labore ad commodi eius.', '2022-09-25 00:00:00'),
(17, 5, 1, 'Enim id corporis aliquam. Enim quasi voluptatum eum ex facere. Libero a quam facilis iusto et ea sapiente iure. Iure quis non est. Eos voluptatem molestias eum labore nulla quis non maiores.', '2022-09-25 00:00:00'),
(18, 4, 10, 'Molestias voluptatem nemo dicta. Aut animi est est sed. Maxime doloremque aut voluptatem eum totam quos ea possimus.', '2022-09-25 00:00:00'),
(19, 3, 11, 'Cupiditate numquam facere laborum voluptate possimus quia tempora odio. Molestiae quis soluta est sed molestias voluptas fugit. Eum illo perferendis ut aut est.', '2022-09-25 00:00:00'),
(20, 16, 7, 'Iusto excepturi soluta dolorum. Iure voluptatem excepturi sed aspernatur. Placeat velit aut distinctio vitae aperiam saepe aut.', '2022-09-25 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220922073118', '2022-09-22 07:31:53', 8537);

-- --------------------------------------------------------

--
-- Structure de la table `image_tag`
--

DROP TABLE IF EXISTS `image_tag`;
CREATE TABLE IF NOT EXISTS `image_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_5A8A6C8DF675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `author_id`, `title`, `image`, `content`, `published_at`) VALUES
(1, 6, 'Doloremque ea et deserunt non non.', 'https://lorempixel.com/640/480/?84819', 'Qui alias nihil fugit dolorum nulla perferendis doloremque. Voluptas laudantium nam autem. Animi voluptas aliquam culpa. Placeat ab velit et explicabo suscipit et animi.', '2022-09-25 00:00:00'),
(2, 18, 'Mollitia sit nesciunt omnis ex harum necessitatibus.', 'https://lorempixel.com/640/480/?98156', 'Porro id nemo qui enim qui. Fuga quos reprehenderit reiciendis. Consectetur et velit nesciunt ducimus. Sint sit expedita voluptatem officiis.', '2022-09-25 00:00:00'),
(3, 11, 'Ut nemo repudiandae quo et laborum veniam.', 'https://lorempixel.com/640/480/?13571', 'Eaque possimus excepturi est doloribus in odio. Iure exercitationem sint autem vitae. Quasi et et reprehenderit voluptates.', '2022-09-25 00:00:00'),
(4, 2, 'Quo magnam ut dolores vel sit.', 'https://lorempixel.com/640/480/?76221', 'Vero eaque quia ea veniam quia voluptatibus. Maxime explicabo iste accusantium et dolorum vel. Beatae sequi illum optio qui.', '2022-09-25 00:00:00'),
(5, 9, 'Vel consectetur officiis repellat aut culpa aliquid.', 'https://lorempixel.com/640/480/?78233', 'In perferendis vel ut voluptas quam distinctio. Sint numquam impedit autem odio voluptas non et. Ut minima at temporibus iure et ut.', '2022-09-25 00:00:00'),
(6, 4, 'Sint reprehenderit sint sed hic voluptatem cupiditate qui.', 'https://lorempixel.com/640/480/?75992', 'Id dolorem omnis quia rerum voluptatem nesciunt omnis. Nisi quam quaerat commodi assumenda consectetur. Provident nostrum et quis beatae.', '2022-09-25 00:00:00'),
(7, 2, 'Fuga ipsam sequi atque unde.', 'https://lorempixel.com/640/480/?90357', 'Cum impedit tempore ut provident adipisci. Voluptatem et voluptatem ea quos cupiditate eaque harum qui. Fugit mollitia reiciendis aliquid ullam.', '2022-09-25 00:00:00'),
(8, 5, 'Magni consequatur commodi et amet architecto iste.', 'https://lorempixel.com/640/480/?79520', 'Nemo non consequatur tenetur numquam perferendis deleniti ducimus. Et harum dolore ut non doloremque aliquid. Illo vel aut nostrum.', '2022-09-25 00:00:00'),
(9, 13, 'Ea ex animi ipsam temporibus et.', 'https://lorempixel.com/640/480/?96103', 'Totam deserunt quaerat vel maiores et debitis. Cumque qui labore nihil id quasi vitae perferendis. Nihil animi consequatur reprehenderit ipsum ut assumenda sed optio.', '2022-09-25 00:00:00'),
(10, 16, 'Nemo tenetur et corporis.', 'https://lorempixel.com/640/480/?74703', 'Ea quos delectus illo soluta rem et itaque. Nisi voluptatem earum facilis maiores maiores. Dicta debitis et quia.', '2022-09-25 00:00:00'),
(11, 3, 'Sed qui natus officia et.', 'https://lorempixel.com/640/480/?19909', 'Ut voluptas officiis ut labore. Neque architecto nobis illo perspiciatis.', '2022-09-25 00:00:00'),
(12, 17, 'Esse adipisci vel eum sapiente exercitationem et ad autem.', 'https://lorempixel.com/640/480/?92462', 'Libero adipisci omnis assumenda quasi cupiditate quia non. Nobis laborum qui eaque consequatur a. Sed ut omnis porro inventore velit reprehenderit.', '2022-09-25 00:00:00'),
(13, 19, 'Sunt et quod eius.', 'https://lorempixel.com/640/480/?85591', 'Animi corporis doloribus qui quia. Molestiae dolorum alias ipsa enim est. Odio eaque voluptas laboriosam qui cupiditate fugit repellat.', '2022-09-25 00:00:00'),
(14, 7, 'Est earum quia quidem et tempore.', 'https://lorempixel.com/640/480/?71765', 'Voluptates omnis ut odio corporis voluptatem nam. Hic ut qui labore dicta et. Aut eos dignissimos est odio doloremque. Est necessitatibus sapiente qui dolores nostrum.', '2022-09-25 00:00:00'),
(15, 14, 'Architecto eum officia est quis.', 'https://lorempixel.com/640/480/?47695', 'Consequatur laboriosam sit sint quaerat aliquid praesentium. Quia repellat ea iure voluptatum rerum. Error quos earum eum nobis.', '2022-09-25 00:00:00'),
(16, 11, 'Non omnis optio placeat.', 'https://lorempixel.com/640/480/?93709', 'Velit optio asperiores qui saepe. Error blanditiis modi nihil ut.', '2022-09-25 00:00:00'),
(17, 17, 'Commodi laborum eos quis deserunt velit rerum.', 'https://lorempixel.com/640/480/?69548', 'Ipsa beatae eum eveniet similique voluptatem. Nemo cupiditate reiciendis voluptas autem sit ducimus ipsam consequuntur. Numquam impedit qui earum quae.', '2022-09-25 00:00:00'),
(18, 1, 'Quia fuga est porro voluptatum asperiores.', 'https://lorempixel.com/640/480/?47858', 'Perferendis dicta labore doloribus. Dolorem deleniti totam provident deserunt optio molestiae.', '2022-09-25 00:00:00'),
(19, 10, 'Quis sit quisquam ut earum ut aut est.', 'https://lorempixel.com/640/480/?44468', 'Vitae facere voluptatem odit eaque. Delectus voluptatem in tempora. Pariatur repellendus sint ipsum pariatur. Sed qui nisi magni dignissimos.', '2022-09-25 00:00:00'),
(20, 18, 'Ut deleniti accusamus maiores ab.', 'https://lorempixel.com/640/480/?30108', 'Culpa ab in numquam non necessitatibus. Dolores voluptatem eos officia et voluptatem praesentium laudantium in. Aut quos impedit qui laudantium.', '2022-09-25 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag_post`
--

DROP TABLE IF EXISTS `tag_post`;
CREATE TABLE IF NOT EXISTS `tag_post` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`,`post_id`),
  KEY `IDX_B485D33BBAD26311` (`tag_id`),
  KEY `IDX_B485D33B4B89032C` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `first_name`, `last_name`) VALUES
(1, 'alvena.considine@zulauf.com', '[]', 'gz\'\'_c~gz', 'carrie50', 'Dr. Emmet Reynolds', 'Prof. Tristian Brakus III'),
(2, 'tmills@hotmail.com', '[]', 'X@Jtp2ez{', 'jermey.gaylord', 'Dr. Ayden Douglas', 'Raphael Ziemann'),
(3, 'uriah.will@jacobson.com', '[]', ')_k|/PY/', 'qsteuber', 'Xavier Sporer I', 'Hobart Howe'),
(4, 'marta84@reinger.com', '[]', '#UT0TYg0b!V', 'pat.kub', 'Miss Josie Dickinson', 'Cordell Labadie'),
(5, 'van.walsh@hotmail.com', '[]', '^UF\'iCBRC\\:($A9', 'blanda.amber', 'Mireya Hauck', 'Emma Schneider'),
(6, 'carmela04@yahoo.com', '[]', 'gG`)\\E5Bl&pE;%D\"', 'eveline.streich', 'Manuela Tromp', 'Nova Carter'),
(7, 'schuppe.madilyn@haley.com', '[]', '!!xcBUbv;`[XpFtro+n=', 'lonzo.von', 'Kellie Okuneva', 'Edgar Gutmann III'),
(8, 'pbraun@hotmail.com', '[]', 'gtg-Ip=A[Y_*A9m|', 'schuster.michelle', 'Keyshawn Wehner', 'Hulda Ward'),
(9, 'christian.thompson@runolfsdottir.com', '[]', '\\cm%\\2w~&;d5Nmok9)6', 'dach.nelle', 'Sam Feeney', 'Dr. Jannie Smitham Jr.'),
(10, 'iward@lynch.biz', '[]', '+.txH2:Gm+jh}F', 'zondricka', 'Mr. Newton Stokes Sr.', 'Dr. Sherwood Hahn'),
(11, 'vicky.kuhlman@krajcik.info', '[]', 'kD{+-SsAZkf:-:', 'bkihn', 'Laron Kuhic', 'Novella Runolfsson'),
(12, 'kbruen@gmail.com', '[]', ']l}JXV6', 'zemlak.malinda', 'Dr. Leo Miller Sr.', 'Prof. Johathan Dickens I'),
(13, 'beatty.terrell@prohaska.com', '[]', ',!]y6IBHync`', 'kaley38', 'Joanie Collins', 'Alphonso Rosenbaum'),
(14, 'medhurst.velda@gmail.com', '[]', '+1uPG#{[N9_', 'armani15', 'Ms. Elva Erdman', 'Madie King'),
(15, 'iwiza@yahoo.com', '[]', '$h^r&CW^J*{.', 'adams.harmon', 'Stephon Gerlach', 'Prof. Ben Harber'),
(16, 'iward@hotmail.com', '[]', '/!wud%P9K2', 'pmiller', 'Maybelle DuBuque', 'Stephania Wolf'),
(17, 'hershel15@effertz.com', '[]', 'n&wQVJGMPv?3R', 'koby26', 'Deshaun Ledner IV', 'Lemuel Strosin'),
(18, 'emmy.zieme@conroy.biz', '[]', 'V<\"squC%H6#', 'gianni.rogahn', 'Selena Kuphal II', 'Barton Cole'),
(19, 'lreinger@yahoo.com', '[]', '{)]9f>`LR!NsT', 'quentin.spencer', 'Mr. Judah Reynolds', 'Pinkie Denesik'),
(20, 'cturcotte@gmail.com', '[]', '<N&!f.#n4-tY', 'arianna99', 'Ethel Marquardt I', 'Evans Pouros'),
(21, 'smartbiogasmada@gmail.com', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$5AX8ET9o5j0KnqSL0aYBAu4EnguaCm/XZNFXSzZ96wMQ29KikJJ9O', NULL, 'Biogas', 'Smart');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carousel`
--
ALTER TABLE `carousel`
  ADD CONSTRAINT `FK_1DD74700BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `image_tag` (`id`);

--
-- Contraintes pour la table `carousel_place_carousel`
--
ALTER TABLE `carousel_place_carousel`
  ADD CONSTRAINT `FK_89A55811C1CE5B98` FOREIGN KEY (`carousel_id`) REFERENCES `carousel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_89A55811D1120003` FOREIGN KEY (`carousel_place_id`) REFERENCES `carousel_place` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `tag_post`
--
ALTER TABLE `tag_post`
  ADD CONSTRAINT `FK_B485D33B4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B485D33BBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
