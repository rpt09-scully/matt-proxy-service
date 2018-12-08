DROP DATABASE IF EXISTS profiles_db;

CREATE DATABASE profiles_db;

USE profiles_db;

CREATE TABLE `profiles` (
	`prof_id` int NOT NULL AUTO_INCREMENT,
	`first_name` TEXT(16) NOT NULL,
	`last_name` TEXT(16) NOT NULL,
	`email` TEXT(100) NOT NULL,
	`location` TEXT(100) NOT NULL,
	`date_joined` DATE NOT NULL,
	`bio` TEXT(1000) NOT NULL,
	`photo_url` TEXT(100) NOT NULL,
	`pro` bool NOT NULL,
	PRIMARY KEY (`prof_id`)
);

CREATE TABLE `activities` (
	`act_id` int NOT NULL AUTO_INCREMENT,
	`act_name` TEXT(100) NOT NULL,
	PRIMARY KEY (`act_id`)
);

CREATE TABLE `prof_act` (
  `act_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  CONSTRAINT `prof_act_fk0` FOREIGN KEY (`act_id`) REFERENCES `activities` (`act_id`),
  CONSTRAINT `prof_act_fk1` FOREIGN KEY (`prof_id`) REFERENCES `profiles` (`prof_id`)
);

INSERT INTO `activities` (`act_id`, `act_name`) VALUES (1, 'vel');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (2, 'in');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (3, 'dolorem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (4, 'est');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (5, 'et');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (6, 'qui');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (7, 'rerum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (8, 'eius');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (9, 'aperiam');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (10, 'sed');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (11, 'illum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (12, 'dicta');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (13, 'quos');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (14, 'qui');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (15, 'rerum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (16, 'molestias');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (17, 'eligendi');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (18, 'ea');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (19, 'et');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (20, 'qui');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (21, 'nulla');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (22, 'nostrum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (23, 'molestias');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (24, 'officia');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (25, 'eos');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (26, 'aspernatur');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (27, 'architecto');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (28, 'temporibus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (29, 'dignissimos');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (30, 'et');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (31, 'ea');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (32, 'quae');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (33, 'temporibus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (34, 'sit');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (35, 'tenetur');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (36, 'nulla');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (37, 'illum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (38, 'architecto');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (39, 'repellendus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (40, 'explicabo');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (41, 'reiciendis');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (42, 'maiores');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (43, 'autem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (44, 'iure');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (45, 'nihil');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (46, 'hic');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (47, 'quas');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (48, 'occaecati');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (49, 'hic');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (50, 'laborum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (51, 'delectus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (52, 'itaque');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (53, 'quaerat');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (54, 'voluptatem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (55, 'recusandae');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (56, 'deleniti');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (57, 'ex');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (58, 'provident');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (59, 'itaque');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (60, 'ut');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (61, 'dolor');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (62, 'minima');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (63, 'officia');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (64, 'placeat');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (65, 'consequatur');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (66, 'suscipit');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (67, 'aut');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (68, 'maxime');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (69, 'optio');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (70, 'iure');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (71, 'tempore');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (72, 'repellendus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (73, 'recusandae');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (74, 'quos');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (75, 'voluptatem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (76, 'impedit');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (77, 'voluptas');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (78, 'rerum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (79, 'ut');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (80, 'exercitationem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (81, 'saepe');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (82, 'libero');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (83, 'facere');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (84, 'sunt');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (85, 'similique');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (86, 'laboriosam');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (87, 'quas');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (88, 'vel');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (89, 'rerum');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (90, 'et');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (91, 'voluptatem');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (92, 'expedita');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (93, 'magni');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (94, 'dolor');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (95, 'delectus');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (96, 'quo');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (97, 'inventore');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (98, 'quia');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (99, 'omnis');
INSERT INTO `activities` (`act_id`, `act_name`) VALUES (100, 'in');


INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (1, 'Isabella', 'Greenholt', 'kiana93@example.org', 'Sauerside, ID', '1982-08-05', 'Modi vel nulla consequatur consequatur veritatis enim tempore. Dolor architecto voluptatum tempora ut vel. Facere aut voluptatem ullam quia atque nesciunt.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (2, 'Ozella', 'Bashirian', 'liliana.labadie@example.net', 'Nienowmouth, VA', '1970-08-01', 'Veniam ipsa deleniti saepe rerum eius. Est enim exercitationem dolorum maiores molestiae. Delectus reiciendis vel nulla quasi ea quia.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (3, 'Kari', 'Fisher', 'lpagac@example.com', 'Maymiechester, MN', '2012-11-28', 'Distinctio similique quam ea quia expedita iste. Voluptatem non labore est voluptas optio. Quasi aspernatur ut earum nam sint eius enim. Eum cumque voluptatem aut necessitatibus voluptatem.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (4, 'Alexander', 'Rath', 'mason01@example.com', 'South Kaciside, MI', '2000-06-12', 'Ea ut accusantium accusamus asperiores non eos. Porro molestiae eum eligendi in consequatur error voluptatem earum. Minus nemo aut delectus explicabo deserunt culpa. Assumenda qui saepe quia vel.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (5, 'Marcella', 'Bashirian', 'pbotsford@example.com', 'East Hobartview, AK', '1972-01-27', 'Aut et et possimus autem quae optio consequuntur. Et magni adipisci cumque debitis voluptatum a voluptatem.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (6, 'Travon', 'Crist', 'akiehn@example.net', 'North Luna, LA', '2006-10-11', 'Maiores et voluptas non sapiente repellat. Quam doloribus voluptate fugit est eos non ducimus. Omnis nihil facere rerum quam quos a.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (7, 'Flossie', 'Ondricka', 'jessica73@example.org', 'Klockoside, MT', '1983-04-06', 'Quos et minus omnis rem voluptatem. Aut esse fuga dolore aut suscipit voluptas. Quae ut et corporis quod placeat. Similique quos aperiam rerum delectus quis sit.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (8, 'Trever', 'Miller', 'nicole31@example.org', 'Robertsville, CT', '1988-01-20', 'At vel qui autem cupiditate impedit quae quo. Rerum ea ad laboriosam. Est et blanditiis harum labore nostrum velit dolore.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (9, 'Sebastian', 'Bauch', 'ynienow@example.net', 'Mazieland, HI', '1973-03-12', 'Quia et et alias quidem debitis. Numquam repellendus dolorem temporibus perferendis. Ut est a in voluptatem debitis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (10, 'Francesco', 'Boyle', 'frank.cummerata@example.org', 'South Dorachester, RI', '1985-04-23', 'Non consequuntur aspernatur reiciendis sunt perspiciatis placeat. Totam velit vel molestias aut aliquid dolorum libero. Dicta impedit expedita nam maxime totam.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (11, 'Abner', 'Reichert', 'justice.runolfsdottir@example.com', 'North Rylanburgh, TN', '1970-11-01', 'Veniam sed quas et explicabo debitis. Ut error minus nihil in.\nSed quia debitis eos. Id id tenetur est magni voluptates voluptatem sit.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (12, 'Alessandra', 'Fritsch', 'jast.elise@example.com', 'North Dorris, IA', '2017-10-28', 'Ut debitis quidem similique et illo. Quis voluptatem delectus ullam. Consequatur numquam doloremque autem delectus similique quasi qui odio.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (13, 'Karli', 'Bruen', 'clinton.dubuque@example.org', 'Lake Alexandrineburgh, NV', '2011-01-09', 'Eum voluptatem rerum sunt sint eveniet velit. Expedita in ipsum earum alias voluptate perspiciatis reiciendis qui. Consequatur corporis mollitia sit aut non laboriosam iste.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (14, 'Maia', 'Botsford', 'george.gibson@example.com', 'Port Gwen, MN', '2003-01-04', 'Maiores iste inventore recusandae sit quod excepturi. Est illo maxime explicabo recusandae voluptas quasi et. Aut quis et hic.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (15, 'Harold', 'Mitchell', 'walter.kuhic@example.org', 'Kovacekside, HI', '1978-08-27', 'Voluptates eius eaque voluptas animi ratione quis. Quia sunt velit laboriosam repellat. Impedit ipsam totam et architecto nemo.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (16, 'Dejah', 'Sauer', 'murazik.dominique@example.net', 'Schmidtshire, WI', '1988-03-05', 'Illum quam aperiam sit eum repellat. Amet commodi dolores maxime excepturi dolorum natus. Qui qui omnis qui minima at molestiae.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (17, 'Nikolas', 'Adams', 'willms.nelda@example.net', 'Harafurt, MT', '1975-03-08', 'Sunt atque sint qui minima. Nihil reprehenderit qui necessitatibus laudantium deleniti eius. Et minima porro ut quisquam et. Ratione rem animi vel recusandae nisi illum ut.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (18, 'Joana', 'Williamson', 'ebins@example.org', 'Bruenfurt, MA', '1984-11-06', 'Tempora voluptas minus quia soluta voluptatum. Architecto temporibus ut sed. Aperiam eligendi beatae id est.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (19, 'Kylie', 'Wunsch', 'qgorczany@example.org', 'South Torey, IL', '1984-01-18', 'Et ea autem ratione sapiente saepe voluptatem. Rerum velit soluta vero libero eum dolores sit. Consectetur sunt expedita repellendus consectetur dolor ex.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (20, 'Enrico', 'Considine', 'amparo.nienow@example.org', 'Schultzville, AZ', '1997-12-04', 'Debitis numquam rem qui occaecati. Illo vel atque dolore incidunt et cumque alias. Voluptas ut sit voluptas.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (21, 'Luisa', 'Murphy', 'deshawn.hoeger@example.com', 'East Brenda, CO', '2007-03-27', 'Ut qui voluptas harum et mollitia ipsam. Ut voluptas eum tenetur animi harum id neque. Qui quos dolorum porro et assumenda at.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (22, 'Joel', 'Vandervort', 'tbecker@example.net', 'Fletachester, VA', '1979-02-20', 'Aut sequi dolore temporibus quia qui consequatur. Possimus non fugiat perspiciatis voluptas. Enim aut quia minus ipsam. Dolore corrupti et tenetur sit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (23, 'Shakira', 'Corkery', 'madaline51@example.org', 'Gleichnerborough, VT', '1980-10-09', 'Voluptate consequatur dolor eum. Eveniet dicta molestiae quos voluptatibus nobis. Tenetur quam tempora cum ullam voluptatum quibusdam odio minus. Repellendus omnis quam ea id cumque eum qui harum.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (24, 'Ivy', 'Lesch', 'dicki.taylor@example.com', 'Greenfelderburgh, MA', '2018-08-24', 'Rerum architecto animi voluptas deleniti et amet nesciunt. Autem et est sapiente dicta. Repellat iste vel aut. Ad dolor voluptas facilis illo fuga ut nesciunt.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (25, 'Finn', 'Pagac', 'jacobi.gunner@example.net', 'Edmundfurt, NC', '1985-06-30', 'Sit voluptatibus sed cum. Incidunt aut consequatur vel. Eos quibusdam impedit dicta.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (26, 'Zena', 'Herman', 'anita.lemke@example.net', 'Port Tre, NJ', '2009-07-03', 'Suscipit qui esse totam quaerat modi. Et voluptatem fugit illo at quae tempore asperiores. Reprehenderit tempora aliquid dolores dolor iure dicta nihil. Necessitatibus et labore quibusdam totam.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (27, 'Eddie', 'Schultz', 'amani75@example.com', 'Ritaton, WI', '1983-01-25', 'Quo deserunt beatae tempora facere voluptatem. Laborum ex incidunt doloribus esse. Nesciunt tempore provident ut ut ea nobis odit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (28, 'Linda', 'Schowalter', 'irma93@example.com', 'Kreigerville, RI', '2011-12-15', 'Voluptate facere at voluptas dicta quia. Quibusdam eaque fugiat perspiciatis ea molestias.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (29, 'Kaylee', 'Pacocha', 'earnestine.renner@example.com', 'Schmelerstad, OK', '1986-11-12', 'Qui consectetur molestias rerum aspernatur necessitatibus consequatur et. Corporis repudiandae magnam est sequi officia vel. Aut nesciunt veritatis ea ut excepturi ducimus.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (30, 'Rogelio', 'Cormier', 'nolan.damian@example.org', 'Goldaport, VT', '1980-04-30', 'Velit est veritatis exercitationem rerum dolorem. Et dolorum alias doloribus deleniti nemo amet. Culpa aliquam perferendis at consequatur. Corporis exercitationem labore cum fugiat aperiam fugiat.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (31, 'Delphia', 'Price', 'jeffertz@example.com', 'Ornfurt, MN', '1998-03-23', 'Quos non doloremque vel sed fugit voluptas. Tenetur et ea quos et distinctio voluptatem. Ut nam autem ab sapiente omnis voluptate sapiente dolorem.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (32, 'Lloyd', 'Schowalter', 'mireille.emmerich@example.org', 'Gabrielport, KY', '2015-01-21', 'Accusamus rem dolorum doloremque commodi impedit quis culpa reprehenderit. Quia mollitia atque error voluptatem.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (33, 'Velva', 'DuBuque', 'white.olaf@example.org', 'West Richmond, WY', '1979-11-03', 'Enim eum tenetur velit tempora. Illo dicta et maiores totam et magnam aut. Amet ut aut ab libero repellendus suscipit maiores.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (34, 'Gaetano', 'Hermann', 'easter.gulgowski@example.org', 'Johnstonview, WI', '1984-10-18', 'Sed temporibus aperiam qui tempore. Beatae voluptatem quia optio sunt. Recusandae aliquam velit illo odit quisquam consequatur. Libero qui quam vero illo ex aperiam expedita.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (35, 'Raoul', 'Grady', 'beahan.juston@example.com', 'Malindachester, MO', '2002-05-14', 'Id sed impedit molestiae earum. Aut saepe consequatur aut. Accusamus et in assumenda unde soluta molestiae id. Id nemo dolorum numquam.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (36, 'Anibal', 'Greenfelder', 'maymie69@example.com', 'New Harrisonland, MT', '1976-03-22', 'Sed rerum natus dolorem accusantium et consectetur. Dicta qui labore dolor vel autem officia ex. Quia maxime cum fugit et voluptates alias.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (37, 'Mercedes', 'Johnson', 'jerrell21@example.com', 'Lucasport, DE', '2018-06-13', 'Iste vitae omnis facere ab ut occaecati. Explicabo commodi a quia consequatur qui. A omnis ut nam beatae minus quidem deleniti. Aut et officia veritatis autem et dolores veritatis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (38, 'Phyllis', 'Dicki', 'ostreich@example.net', 'Larkinton, OR', '2002-05-24', 'Est quisquam illum ut esse consequuntur. Facilis inventore vel dignissimos dignissimos voluptatem. Nesciunt omnis facilis maiores est rerum perferendis. Dicta fugit rerum nobis aliquam eum.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (39, 'Pamela', 'Ortiz', 'fmann@example.com', 'West Albertahaven, NH', '1972-12-25', 'Neque occaecati ut dicta dolore. Quisquam omnis voluptatem quibusdam odit. Unde eos sunt ut non et. Corporis quidem sit et omnis delectus magni velit ipsum.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (40, 'Bridgette', 'Christiansen', 'eleonore.goyette@example.com', 'South Gladyceland, WA', '2002-09-26', 'Et reprehenderit praesentium ipsa qui ut. Id expedita est tempore illo. Fuga natus consequatur ut ullam et dolorem.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (41, 'Makayla', 'Hammes', 'augusta86@example.net', 'Port Alia, MA', '1997-07-26', 'Enim sed consectetur tempora laborum aut. Est quia animi consequatur accusantium ad. Voluptatem labore et debitis non quo veritatis ut. Enim dolor soluta sit occaecati neque suscipit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (42, 'Joel', 'Bernier', 'jaquan.oreilly@example.net', 'South Deonteborough, NV', '2017-03-20', 'Eum et dignissimos asperiores soluta eos rerum. Rem deleniti beatae est est dolore.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (43, 'Eduardo', 'Brakus', 'arnulfo24@example.org', 'Lake Pinkiefort, WV', '1998-06-02', 'Delectus facilis nihil doloremque impedit dignissimos. Voluptas magnam vitae inventore id.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (44, 'Kieran', 'Beahan', 'elna.feest@example.com', 'Herzogfort, IA', '1975-11-11', 'Laborum fugiat earum aspernatur eligendi dolore. Libero et sit ad temporibus blanditiis eos. Ut voluptatibus eveniet eaque.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (45, 'Emelia', 'Jones', 'zgutmann@example.com', 'Gloverport, SC', '2005-05-21', 'Dicta repellat facere laboriosam quas alias quaerat voluptas veritatis. Consectetur qui quas ducimus quis.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (46, 'Sunny', 'Grant', 'alvera72@example.org', 'Port Antoinette, OK', '1997-03-19', 'Non eum aut assumenda. Quo cupiditate ratione nisi repellat delectus et. Exercitationem veniam molestiae maxime dolorem libero sed sint. Et tempore enim repudiandae cum laboriosam perferendis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (47, 'Braulio', 'Kilback', 'grimes.rashawn@example.com', 'West Ayla, AK', '1983-01-27', 'Omnis qui ut natus inventore. Soluta nisi tenetur ea.\nPorro assumenda dolor voluptatem. Quia laudantium culpa omnis veniam praesentium sit suscipit a.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (48, 'Kiana', 'Parker', 'boyer.mitchell@example.com', 'Bergnaumchester, ND', '1991-05-10', 'Omnis totam maxime voluptas quia voluptatem aut quam. Velit qui dolor ipsa autem eos. Odit pariatur deleniti neque quia aperiam.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (49, 'Santino', 'Klocko', 'lawson60@example.net', 'West Nyaborough, DC', '1977-12-22', 'Et voluptas optio amet ex et laborum. Laudantium et dolores facilis dolorum. Maxime minima aut eligendi sit alias odio ea. Sit magnam consequatur rerum vitae dolore consequatur non.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (50, 'Lera', 'OConner', 'klocko.vito@example.org', 'East Nayeliton, IA', '2017-08-10', 'Nobis aut non et iste incidunt blanditiis. Inventore error sint ut ex.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (51, 'Aurelie', 'Turcotte', 'zboncak.torey@example.org', 'West Brettview, KS', '2015-06-28', 'Ipsam odit qui earum nam soluta quis rem. Voluptatem aut vero quos quod. Ut omnis aut perspiciatis voluptatum velit ad officiis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (52, 'Makayla', 'Smitham', 'troy99@example.net', 'Hassanchester, UT', '2018-09-07', 'Autem enim illum debitis animi aut. Quis deleniti distinctio aspernatur dolorem praesentium quia necessitatibus deserunt. Enim iure sunt iure. Consequatur velit dicta voluptates quidem distinctio.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (53, 'Leanne', 'Metz', 'tremblay.brandt@example.com', 'Lake Sylvesterside, NY', '1971-02-24', 'Voluptatem laboriosam rerum sed id. Facere quia harum qui nesciunt aut exercitationem et. Debitis soluta temporibus tenetur odit aut consequuntur occaecati iure.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (54, 'Murphy', 'Cassin', 'karine.grady@example.com', 'West Lilian, CA', '2017-08-17', 'Commodi libero accusantium sit. Consequuntur quidem dolores vel quia voluptatem ipsum sit. Ut ipsa sunt repellendus id. Saepe provident explicabo qui ratione ducimus enim.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (55, 'Americo', 'Rice', 'carmela24@example.net', 'Schmelerport, OK', '2018-05-20', 'At deserunt quam nemo eos numquam. Sunt voluptatem quisquam sunt hic molestiae. Quaerat voluptatem nihil quo quisquam.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (56, 'Madelyn', 'Blick', 'lenore21@example.com', 'Dachville, TX', '1984-10-22', 'Qui distinctio nobis odit cum maiores ut. Sed dignissimos eos ut minus sed qui dignissimos. Accusantium ea autem aut quo. Fuga quia saepe voluptas iure expedita excepturi.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (57, 'Crystal', 'Kuvalis', 'ahyatt@example.net', 'Watsicaland, IL', '2016-01-21', 'Eius voluptatum et consequuntur. Porro doloribus in et veritatis consectetur ut. Aliquam est voluptas iste praesentium.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (58, 'Ryan', 'Jacobs', 'jayden55@example.net', 'Hirtheville, NC', '2004-04-12', 'Magni enim quisquam dolor qui est voluptas. Perspiciatis perspiciatis perspiciatis quas. Repellendus officia quibusdam enim vitae odit.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (59, 'Derek', 'Feeney', 'grimes.agustina@example.com', 'North Noraberg, NY', '2004-06-28', 'Rerum velit nihil vel est eveniet repudiandae totam. Voluptatem id enim id odit praesentium. Aut molestias facilis harum cum inventore ipsa.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (60, 'Ayden', 'Price', 'mikayla62@example.org', 'Lake Ericafurt, WY', '1984-12-11', 'A debitis sequi reiciendis vitae voluptatem autem rerum aut. Corporis deleniti praesentium est. Similique ea accusantium consequatur. Ipsum accusantium at id assumenda qui enim quasi.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (61, 'Heber', 'Grady', 'german.huel@example.com', 'Tressiemouth, AZ', '2013-08-26', 'Voluptas eius ut numquam sunt maiores porro accusantium. Dolor accusamus earum voluptatum non qui. Omnis sed libero aliquam dolores est consectetur qui.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (62, 'Ruby', 'Thompson', 'oberbrunner.renee@example.org', 'West Pascaleland, MD', '2015-08-19', 'Atque vel qui veniam fugit blanditiis quo expedita. Quam et similique laudantium dolorem. Officia sapiente eum ipsam blanditiis nesciunt.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (63, 'Alden', 'Considine', 'lklocko@example.net', 'Einoberg, HI', '1981-02-18', 'Qui mollitia sint fugit. Quia commodi quia voluptatem ullam tempora consectetur nesciunt quos. Minus aut magni accusamus.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (64, 'Mack', 'Streich', 'owen.friesen@example.net', 'Elbertberg, NM', '1996-12-16', 'Et et aut accusantium fugit sit. Iste laudantium minima enim. Ipsa eligendi qui laboriosam et odio.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (65, 'Adella', 'Shields', 'theresa26@example.net', 'Jimmiechester, CT', '2004-01-05', 'Enim aliquid quia nostrum nulla quia. Saepe et fuga nihil a quibusdam et. Ut enim qui et ut commodi quia sit.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (66, 'Nicola', 'Kub', 'camron77@example.com', 'Howellhaven, HI', '1991-02-04', 'Qui amet sit et repudiandae non et incidunt cum. Fugiat beatae voluptatem explicabo. Aliquam soluta ut aut et sed eligendi non illo. Numquam quia tenetur voluptatem dolorum praesentium ea.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (67, 'Hayley', 'Feeney', 'jazmin07@example.com', 'South Maryjane, FL', '1983-10-22', 'Dignissimos sequi totam eum temporibus laborum aliquam cum. Dolores animi omnis nemo quas et fugiat rerum fugit. Veritatis tempora vero ea dolorum sit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (68, 'Gust', 'Cassin', 'ccremin@example.com', 'Joneshaven, DC', '2000-04-26', 'Animi ad qui tempora laudantium veritatis sed. Expedita occaecati accusantium sed voluptate molestias ullam fuga et. Dolor consequatur neque velit qui.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (69, 'Mina', 'Cronin', 'macey17@example.net', 'Lake Macey, FL', '1974-03-15', 'Assumenda ea nostrum ut minima. Autem nihil et ut vero modi.\nPariatur doloribus fugit iusto. Illo iusto accusantium reprehenderit neque molestiae. Cum enim sint facere.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (70, 'Scarlett', 'Marquardt', 'gusikowski.ari@example.com', 'Jacobiview, TX', '1984-10-03', 'Tempora velit reprehenderit et repellendus omnis quaerat porro. Vitae dolore consequatur doloribus voluptatibus id. Quam beatae aliquam qui dolorem qui.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (71, 'Ernestina', 'Wiza', 'mfahey@example.com', 'Port Scottyberg, VA', '1988-10-02', 'Sit deserunt quae libero aliquid perspiciatis. Sapiente sequi et odio sunt eius. Et vero ut iste officiis cum maiores odit. Modi tenetur tempore ipsam dolorem sit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (72, 'Jacky', 'Runte', 'stephania.cruickshank@example.com', 'South Hudson, TN', '2003-04-13', 'Eum quas voluptatem aperiam harum. Voluptatem at sapiente sunt porro dolor. Veniam molestiae itaque officia quaerat.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (73, 'Maurine', 'Robel', 'lkuhic@example.com', 'Wardfort, NV', '1976-05-23', 'Commodi et voluptate ut minima omnis vitae quam magni. Cum praesentium magni eos. Aut in et aut officiis dolor quam quas.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (74, 'Kobe', 'Steuber', 'xhilpert@example.com', 'Millsborough, IL', '1996-08-12', 'Inventore nisi nemo et doloremque similique temporibus ducimus eligendi. Amet corporis ratione esse. Ipsa velit voluptatem excepturi rerum perferendis sit.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (75, 'Isaiah', 'Bruen', 'hills.elfrieda@example.net', 'Riceview, VT', '1989-04-15', 'Cupiditate et qui impedit totam. Ea nobis suscipit deserunt. Illo atque amet odio necessitatibus quod. Consectetur nemo autem quis natus qui quasi.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (76, 'Abner', 'Torp', 'eleonore36@example.org', 'Trompmouth, NH', '1971-08-28', 'Est nostrum voluptatibus qui dolor cumque et dolores. Accusantium est ea accusantium natus est eum et. Ad sint praesentium omnis. Ipsum quo dicta quae est amet ut.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (77, 'Catherine', 'Collins', 'lilly93@example.org', 'Port Webster, OR', '2009-06-12', 'Et distinctio et hic provident autem dolorem veniam. Qui incidunt culpa consequatur dolorem. Placeat iste et ut qui corrupti.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (78, 'Terence', 'Pagac', 'larissa.lang@example.net', 'East Randalborough, VT', '1993-07-06', 'Quibusdam a sit sint nam. Ut amet ullam asperiores laborum dolorem minima delectus expedita. Velit quos eum aut ducimus distinctio.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (79, 'Sandy', 'Bergstrom', 'jschuster@example.net', 'Darylland, TN', '1979-02-24', 'Provident aut quibusdam aut nihil pariatur veniam. Perspiciatis laborum suscipit autem officiis dolor consequatur. Exercitationem sequi quaerat quos eaque.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (80, 'Armand', 'Hackett', 'lionel.little@example.com', 'Cassinborough, WA', '1995-02-28', 'Voluptas sit rerum rem distinctio. Quisquam esse delectus inventore at non. Dolor rem optio consequatur.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (81, 'Aylin', 'Stanton', 'giovanni.schaefer@example.net', 'Cristopherville, OR', '1981-11-18', 'Molestiae quia natus in qui qui. Ut ut aut dolor deleniti fugiat. Ut ut nihil quia illum itaque cum.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (82, 'Mozell', 'Wuckert', 'jkutch@example.com', 'Lake Annabelle, FL', '1970-04-08', 'Molestias eos iste eveniet at. Temporibus doloribus harum sunt sed quas. Dolor quas qui omnis modi in accusamus nulla rem.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (83, 'Ottis', 'Weimann', 'kwisozk@example.com', 'West Duncan, KY', '2007-01-08', 'Et eligendi dolores et magnam sequi. Dignissimos quis quaerat quo quam molestias sint ducimus.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (84, 'Neva', 'Dooley', 'sschulist@example.org', 'Westleyshire, MO', '2004-03-09', 'Consequuntur molestias sed nulla nemo nesciunt. Blanditiis necessitatibus qui corporis aut et eveniet. Ut et mollitia iste et. Voluptatem similique et in nihil consequatur.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (85, 'Margot', 'Kohler', 'schaden.sophie@example.net', 'West Rachaelmouth, NV', '2018-07-28', 'Doloribus esse tenetur adipisci facilis. Soluta quos voluptates similique error dignissimos corporis exercitationem.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (86, 'Derek', 'Barrows', 'hartmann.kathleen@example.net', 'Cassinshire, MT', '1992-05-08', 'Aut nobis vel quod qui magnam saepe perferendis distinctio. Ad at recusandae voluptatibus quia fugit.\nDignissimos harum accusamus ab amet sapiente laborum earum. Corrupti id nisi officia culpa porro.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (87, 'Arden', 'Lubowitz', 'dmccullough@example.com', 'Lake Kassandra, PA', '2010-05-21', 'Excepturi cumque veniam in sunt. Quos magnam illo quisquam. Suscipit quibusdam ea minima est enim dolorem sit est.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (88, 'Idella', 'Leffler', 'ytorp@example.com', 'Jordynmouth, DC', '1982-10-19', 'Aut illum rerum aut perferendis autem labore praesentium. Ullam quae soluta sed cupiditate. Deleniti quia consequatur aut laborum officiis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (89, 'Delta', 'Smitham', 'newton80@example.com', 'Homenickburgh, AR', '2005-01-06', 'Illo similique ea minus nobis animi et id. Explicabo ullam a iure assumenda temporibus sequi ratione. Ullam beatae nostrum voluptatum harum maiores voluptates consectetur.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (90, 'Leanne', 'Schamberger', 'audra35@example.com', 'East Bruce, GA', '1983-05-06', 'Adipisci quasi delectus ducimus dignissimos facere necessitatibus. Sed accusamus in iusto et ipsum repudiandae animi sunt. Et recusandae ea quis unde eos neque ut nemo.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (91, 'Kenyon', 'Ortiz', 'clair83@example.net', 'Antoniafurt, WV', '1994-12-31', 'Fugit cum expedita eligendi tenetur. Accusantium autem adipisci cupiditate. Et quidem quisquam ducimus autem consequatur libero et.\nCum aut totam id vero possimus molestias. Incidunt eos aut aut.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (92, 'Lorenz', 'Hilpert', 'marjory89@example.com', 'Farrellville, NV', '1995-12-31', 'Suscipit nemo sequi veritatis dolore totam. Qui sed doloremque nihil soluta consequuntur sunt. Mollitia natus esse assumenda eveniet cumque.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (93, 'Kamren', 'Stracke', 'elfrieda.gerhold@example.net', 'East Opheliachester, AK', '2004-10-11', 'Optio ut debitis cum explicabo blanditiis. Fuga molestiae architecto et architecto incidunt a voluptas quas.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (94, 'Justen', 'Aufderhar', 'ada60@example.com', 'South Mara, NC', '1986-09-11', 'Et porro porro necessitatibus quis qui non. Aut doloremque minima et dignissimos vero qui. Autem corrupti soluta soluta voluptatem.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (95, 'Amara', 'Abernathy', 'morar.laury@example.net', 'New Laura, TN', '1976-07-29', 'Nesciunt nostrum et vero provident culpa sunt autem. Asperiores dolorem dolorem et consequatur aliquid suscipit qui. Ea aut sapiente laboriosam nihil quis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (96, 'Stella', 'Jakubowski', 'tromp.anabel@example.org', 'Schinnertown, IL', '2001-10-25', 'Tenetur alias minima enim veritatis aspernatur qui aut. Saepe porro porro sint soluta odio ex. Atque illo velit ut soluta ut sed.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (97, 'Jakayla', 'Gerlach', 'schmidt.kaley@example.net', 'South Bertaside, IA', '1983-10-21', 'Autem et et minus autem. Quae enim voluptatibus sint amet eos quo. Dicta dolores cupiditate enim nihil saepe.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (98, 'Tre', 'Heaney', 'ypowlowski@example.com', 'Fritzport, MI', '1972-01-22', 'Nesciunt rerum totam nesciunt eum. Ut nemo temporibus quas velit et id odio. Possimus voluptatem earum delectus nulla molestiae fuga quo voluptatem.', 'http://lorempixel.com/640/480/', 1);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (99, 'Sabrina', 'Romaguera', 'qflatley@example.net', 'North Hector, RI', '1986-10-02', 'Non a et quia neque et porro adipisci. Ut adipisci dolores id corporis est perferendis.', 'http://lorempixel.com/640/480/', 0);
INSERT INTO `profiles` (`prof_id`, `first_name`, `last_name`, `email`, `location`, `date_joined`, `bio`, `photo_url`, `pro`) VALUES (100, 'Werner', 'Toy', 'bstroman@example.net', 'Lillaville, AK', '1999-06-24', 'Facilis qui autem unde nihil aut rem. Incidunt quibusdam molestiae optio sit. Aliquid nesciunt sapiente qui necessitatibus porro. Reiciendis asperiores voluptatem est ducimus.', 'http://lorempixel.com/640/480/', 1);


INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (76, 98);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (73, 62);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (21, 37);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (42, 69);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (20, 64);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (34, 26);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (21, 78);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (11, 38);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (56, 28);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (7, 100);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (93, 63);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (53, 2);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (38, 69);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (17, 40);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (47, 6);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (8, 14);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (67, 2);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (52, 48);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (12, 54);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (38, 31);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (97, 26);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (56, 91);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (80, 27);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (80, 26);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (15, 17);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (20, 68);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (80, 2);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (73, 94);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (2, 91);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (71, 75);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (73, 37);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (55, 34);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (11, 93);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (16, 92);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (25, 27);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (77, 77);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (100, 59);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (24, 7);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (31, 68);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (97, 85);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (40, 17);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (63, 56);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (25, 47);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (97, 22);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (6, 6);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (79, 40);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (36, 2);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (78, 9);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (13, 27);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (57, 58);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (34, 16);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (19, 95);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (59, 46);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (10, 30);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (17, 19);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (13, 36);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (19, 98);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (99, 30);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (93, 90);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (28, 90);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (14, 34);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (84, 41);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (80, 38);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (48, 56);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (70, 24);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (44, 68);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (41, 95);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (45, 83);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (34, 56);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (21, 19);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (77, 86);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (9, 35);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (59, 34);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (50, 3);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (51, 41);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (95, 16);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (17, 57);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (47, 69);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (7, 32);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (81, 17);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (96, 22);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (65, 46);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (16, 57);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (4, 18);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (1, 31);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (7, 45);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (45, 87);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (56, 60);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (40, 47);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (86, 35);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (67, 88);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (3, 36);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (11, 72);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (36, 72);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (100, 95);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (9, 87);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (58, 38);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (53, 42);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (3, 33);
INSERT INTO `prof_act` (`act_id`, `prof_id`) VALUES (90, 18);
/*  Execute this file from the command line by typing:
 *    mysql -u <USER> < schema.sql
 *    OR
 *    mysql -u <USER> -p < schema.sql
 *  For example, on a pairing station, it'll be 
 *    mysql -u student -p < schema.sql
 *  and then you'll have to enter the password, student
 *  On your personal computer, if you haven't set up
 *  a password, it'll be 
 *    mysql -u root < schema.sql
*/