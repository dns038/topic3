#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'consequuntur', '2016-09-26 18:07:52', '2021-03-01 20:03:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'iusto', '2019-01-21 22:16:40', '2020-04-11 02:39:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'tempora', '2012-10-03 08:17:34', '2013-10-13 16:46:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'adipisci', '2016-08-10 07:27:07', '2020-12-18 13:24:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'nihil', '2015-05-21 22:54:17', '2017-10-22 03:19:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'in', '2012-12-24 09:03:55', '2012-11-24 17:16:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'doloremque', '2013-09-14 04:27:16', '2011-12-28 04:23:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptas', '2014-04-09 05:21:18', '2018-06-26 10:12:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'voluptatem', '2016-02-08 14:22:59', '2012-03-04 16:38:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'quas', '2015-03-25 19:46:36', '2014-07-24 10:55:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'dolore', '2019-01-17 04:44:05', '2019-02-05 12:14:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'fugiat', '2018-06-17 00:03:51', '2014-11-10 06:21:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'nisi', '2012-11-03 16:12:04', '2016-07-16 07:40:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'unde', '2018-10-28 00:31:36', '2015-10-25 10:15:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'amet', '2012-01-02 11:13:13', '2016-05-29 04:03:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'sint', '2017-11-01 05:38:06', '2015-10-14 21:14:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'perferendis', '2013-07-05 09:40:50', '2015-06-22 12:46:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'delectus', '2015-10-15 12:32:54', '2013-10-10 06:06:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'fugit', '2014-02-08 13:13:00', '2011-03-12 23:38:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'libero', '2013-12-30 05:42:09', '2020-11-14 18:37:38');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 8, '2015-10-03 23:07:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 16, '2016-04-22 11:06:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 65, '2011-08-27 22:10:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 76, '2019-06-28 23:49:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 80, '2020-01-22 08:37:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 38, '2016-12-28 11:44:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2019-01-11 15:21:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 53, '2016-05-15 03:23:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 55, '2021-02-10 12:11:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 96, '2013-06-15 03:09:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 28, '2012-09-04 05:10:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 46, '2015-03-23 14:50:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 67, '2011-12-11 03:14:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 70, '2020-05-03 21:53:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2020-08-18 23:14:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 22, '2020-02-29 23:20:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2020-03-20 23:35:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 35, '2018-11-25 03:32:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 56, '2016-03-14 10:52:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 97, '2013-05-25 23:10:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 17, '2018-08-15 17:03:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 49, '2020-01-16 01:53:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 68, '2020-01-08 12:17:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 89, '2020-01-28 23:03:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 100, '2019-02-09 01:18:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 12, '2015-11-16 06:39:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 13, '2012-07-09 05:39:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2014-07-09 19:23:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 47, '2011-05-12 08:47:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 85, '2011-05-25 19:28:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '2011-05-30 00:03:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2013-04-28 08:31:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 42, '2014-12-09 13:44:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 88, '2011-03-22 18:31:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 95, '2016-11-27 18:28:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 14, '2017-02-05 19:25:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 23, '2019-04-28 04:49:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 27, '2018-01-12 08:13:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 41, '2018-05-07 20:57:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 94, '2017-06-08 10:40:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 18, '2021-02-05 14:53:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 31, '2011-11-21 23:45:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2014-08-28 13:29:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 83, '2018-12-07 01:24:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 91, '2018-06-24 13:16:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 37, '2018-07-02 17:05:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 48, '2019-06-19 04:01:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 63, '2019-09-13 05:34:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 73, '2016-12-18 11:50:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 82, '2019-01-29 04:39:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 1, '2011-09-06 07:04:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 15, '2015-04-16 05:19:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 50, '2014-09-10 14:11:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 81, '2012-07-02 17:57:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 84, '2021-01-07 05:42:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 9, '2012-07-06 11:39:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 32, '2021-01-11 08:28:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 34, '2012-03-11 03:54:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 87, '2013-08-05 21:33:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 92, '2012-11-03 01:29:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 4, '2020-08-03 11:32:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 6, '2011-03-09 15:16:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 20, '2019-08-27 10:19:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 36, '2015-11-19 04:27:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 45, '2019-05-23 18:55:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 21, '2011-06-05 14:03:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 59, '2016-12-31 12:15:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 62, '2015-02-27 12:04:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 74, '2014-12-01 22:02:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 79, '2011-04-20 11:12:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 2, '2016-07-28 14:23:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 10, '2015-10-17 09:03:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 54, '2016-06-27 18:12:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 72, '2013-01-18 22:34:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 98, '2011-05-02 11:51:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 25, '2020-10-19 11:32:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 43, '2020-12-14 19:03:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 66, '2014-06-16 04:32:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 71, '2012-12-11 00:05:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 75, '2019-06-20 06:45:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 19, '2015-08-05 13:58:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 29, '2012-06-24 08:29:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 58, '2019-07-11 05:01:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 61, '2011-12-21 20:30:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 90, '2012-04-23 18:08:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 5, '2014-04-11 07:08:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 11, '2014-04-29 05:27:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 39, '2012-10-26 13:16:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 60, '2020-11-28 05:56:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 99, '2020-06-15 22:57:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 33, '2013-06-04 11:41:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 40, '2018-03-11 04:39:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 44, '2013-10-09 07:18:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 57, '2015-05-18 15:49:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 86, '2015-05-15 20:28:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 30, '2012-06-23 15:16:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 51, '2020-10-15 19:22:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 64, '2015-11-26 03:06:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 77, '2018-07-28 01:04:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 78, '2014-11-18 16:57:45');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 42, 3, '2013-04-20 14:29:31', '2020-04-07 13:23:34', '2014-03-16 09:15:43', '2014-01-11 15:05:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 54, 3, '2015-09-24 06:45:53', '2016-08-22 23:05:14', '2012-05-18 02:31:21', '2011-09-12 17:04:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 12, 2, '2020-11-07 03:14:07', '2014-01-22 02:55:26', '2016-06-15 06:32:34', '2016-01-31 17:37:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 24, 3, '2018-08-05 04:40:29', '2020-04-01 10:12:23', '2013-12-20 01:00:32', '2016-11-05 04:28:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 74, 1, '2013-01-18 09:26:43', '2011-09-05 22:09:36', '2017-08-05 00:18:52', '2014-02-18 05:31:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 78, 3, '2012-04-30 15:36:51', '2013-03-23 13:44:05', '2021-02-23 02:45:21', '2019-03-10 23:59:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 94, 2, '2013-07-21 06:15:50', '2014-08-14 19:10:02', '2019-08-19 22:41:37', '2012-12-15 13:54:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 84, 2, '2012-05-19 04:13:40', '2013-05-03 23:49:52', '2011-07-15 06:24:53', '2017-06-09 06:40:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 57, 3, '2011-10-24 15:59:07', '2019-09-23 12:12:27', '2018-03-04 19:54:28', '2011-10-13 07:58:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 19, 2, '2014-03-14 07:30:38', '2013-11-30 07:45:23', '2016-10-11 09:02:38', '2018-02-12 08:15:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 88, 3, '2015-04-04 14:19:45', '2013-06-15 00:29:07', '2013-02-14 17:43:27', '2013-05-24 14:59:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 36, 2, '2015-11-26 23:40:00', '2020-12-04 09:54:39', '2017-03-09 18:06:40', '2017-11-27 00:04:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 46, 1, '2020-12-26 16:54:20', '2012-03-19 23:43:54', '2020-02-23 03:44:56', '2011-03-22 15:15:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 56, 3, '2014-08-22 11:18:52', '2016-12-06 03:21:09', '2015-01-12 03:18:11', '2020-08-18 13:06:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 9, 1, '2018-11-11 18:38:09', '2020-10-25 06:45:30', '2019-01-12 07:55:06', '2016-03-16 06:16:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 76, 1, '2012-04-18 01:34:47', '2018-09-13 18:36:09', '2019-06-16 04:39:36', '2016-07-14 22:04:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 89, 2, '2018-06-17 21:45:23', '2011-04-17 11:12:29', '2015-12-24 14:52:51', '2019-04-22 23:25:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 80, 2, '2011-06-04 14:19:02', '2017-09-30 10:11:56', '2013-12-26 19:20:03', '2011-08-24 05:08:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 55, 2, '2013-11-14 10:47:53', '2019-03-27 20:22:29', '2020-10-08 15:12:45', '2019-09-27 10:45:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 11, 1, '2014-10-19 13:34:15', '2013-02-16 06:41:38', '2014-08-25 21:10:31', '2012-09-13 09:12:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 25, 3, '2020-11-29 15:46:36', '2020-04-12 10:16:54', '2013-07-02 12:23:25', '2020-05-02 00:17:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 53, 1, '2017-05-21 21:46:12', '2017-09-16 02:49:14', '2018-08-10 17:02:07', '2015-06-12 04:09:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 85, 1, '2011-09-12 02:29:56', '2019-02-21 20:30:44', '2017-05-28 22:27:52', '2018-01-26 08:04:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 87, 1, '2021-02-18 07:09:05', '2019-04-30 01:22:56', '2020-05-30 01:01:49', '2014-08-20 08:11:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 39, 1, '2012-11-12 08:19:01', '2015-03-19 06:59:15', '2020-04-16 02:12:27', '2013-06-27 12:31:14');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'placeat', '2020-09-26 02:42:18', '2012-05-22 17:39:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'non', '2019-01-04 10:13:30', '2016-06-26 17:04:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'omnis', '2016-08-25 12:20:39', '2021-01-16 08:47:15');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 43, 'exercitationem', 147274, NULL, 1, '2020-09-03 02:38:19', '2018-03-31 06:47:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 28, 'non', 5332535, NULL, 2, '2012-12-20 15:11:11', '2016-04-21 11:58:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 57, 'numquam', 764818332, NULL, 3, '2019-08-05 15:15:10', '2015-06-06 00:45:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 97, 'ut', 6753748, NULL, 4, '2018-05-20 08:00:49', '2018-04-29 06:13:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 50, 'blanditiis', 198054, NULL, 5, '2017-11-12 15:01:44', '2016-04-08 22:44:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 47, 'in', 341701604, NULL, 1, '2020-11-21 05:53:11', '2017-04-02 13:45:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 32, 'sit', 42, NULL, 2, '2018-03-04 21:54:10', '2015-10-14 14:09:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 62, 'numquam', 6, NULL, 3, '2020-01-13 22:53:18', '2011-03-29 22:30:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 33, 'est', 73686840, NULL, 4, '2015-01-17 15:06:01', '2012-08-05 08:16:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 8, 'sequi', 770194, NULL, 5, '2018-06-23 04:40:19', '2020-02-23 11:40:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 68, 'et', 83, NULL, 1, '2019-06-10 07:32:12', '2011-07-29 04:28:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 79, 'est', 72, NULL, 2, '2017-04-16 21:11:48', '2018-01-26 13:27:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 5, 'recusandae', 42025, NULL, 3, '2014-03-06 16:47:20', '2020-05-21 09:23:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 19, 'commodi', 59476, NULL, 4, '2020-12-31 01:21:52', '2013-09-12 07:09:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 74, 'fuga', 21, NULL, 5, '2019-08-05 10:54:39', '2019-06-03 19:59:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 43, 'molestiae', 88941948, NULL, 1, '2011-09-21 15:46:51', '2019-08-08 07:32:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 56, 'atque', 1316721, NULL, 2, '2011-12-07 15:17:43', '2018-02-12 10:20:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 52, 'cumque', 20283160, NULL, 3, '2012-09-25 19:08:06', '2011-07-02 20:57:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 32, 'autem', 9, NULL, 4, '2012-12-08 19:20:29', '2014-11-27 09:23:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 71, 'in', 6, NULL, 5, '2020-12-11 21:03:56', '2020-06-07 09:23:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 81, 'accusantium', 7232, NULL, 1, '2018-05-25 09:21:44', '2012-11-18 08:22:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 10, 'optio', 2, NULL, 2, '2019-04-29 05:17:49', '2020-03-12 14:52:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 60, 'quia', 92781, NULL, 3, '2012-09-10 03:21:21', '2020-01-07 11:24:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 67, 'eveniet', 491598937, NULL, 4, '2019-03-31 16:27:21', '2017-10-15 01:38:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 58, 'at', 457, NULL, 5, '2017-10-24 19:51:40', '2019-12-06 11:16:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 44, 'atque', 3550463, NULL, 1, '2019-05-12 09:05:39', '2014-12-15 11:38:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 17, 'qui', 687673887, NULL, 2, '2020-06-17 14:53:04', '2013-06-27 18:59:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 77, 'impedit', 655580, NULL, 3, '2013-10-17 04:08:28', '2016-02-01 07:36:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 87, 'cupiditate', 8, NULL, 4, '2018-01-25 13:56:00', '2016-03-14 21:05:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 17, 'quae', 961653, NULL, 5, '2020-08-07 03:46:05', '2016-07-04 13:47:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 60, 'magni', 30271, NULL, 1, '2011-03-30 12:47:19', '2018-12-05 04:32:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 17, 'animi', 12392, NULL, 2, '2015-02-21 22:41:02', '2014-02-15 20:01:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 61, 'numquam', 9742, NULL, 3, '2016-06-03 10:16:01', '2018-10-14 13:02:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 66, 'quaerat', 838446, NULL, 4, '2020-06-25 08:45:06', '2013-10-05 19:10:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 1, 'explicabo', 4451, NULL, 5, '2017-03-28 05:38:14', '2012-02-06 16:30:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 35, 'optio', 808640806, NULL, 1, '2018-02-19 08:54:15', '2013-05-12 02:22:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 31, 'qui', 72590615, NULL, 2, '2012-06-13 00:41:11', '2021-01-31 11:08:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 43, 'qui', 59720, NULL, 3, '2016-12-12 11:31:13', '2013-01-28 04:27:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 72, 'dolor', 5, NULL, 4, '2014-09-22 19:57:59', '2019-01-25 16:56:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 61, 'ipsam', 37076, NULL, 5, '2016-05-05 05:17:12', '2011-08-06 22:20:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 30, 'aliquam', 972919, NULL, 1, '2017-06-26 08:21:22', '2016-08-05 05:10:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 22, 'quia', 131, NULL, 2, '2016-10-03 13:33:17', '2012-02-02 02:27:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 42, 'rerum', 3, NULL, 3, '2018-07-19 11:55:25', '2013-03-07 06:10:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 87, 'debitis', 32, NULL, 4, '2011-07-10 16:02:56', '2015-08-01 00:45:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 60, 'et', 6285632, NULL, 5, '2014-04-12 00:11:23', '2015-01-11 06:41:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 31, 'beatae', 96473, NULL, 1, '2017-07-08 15:17:05', '2012-08-07 11:29:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 53, 'optio', 2, NULL, 2, '2015-04-10 10:09:17', '2020-10-11 17:39:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 43, 'tempore', 50054, NULL, 3, '2016-09-11 09:27:45', '2011-03-26 08:33:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 29, 'adipisci', 60, NULL, 4, '2016-11-01 17:10:56', '2014-11-16 06:16:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 19, 'officiis', 44, NULL, 5, '2021-02-17 06:14:32', '2019-04-22 09:48:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 71, 'deserunt', 3267246, NULL, 1, '2012-01-11 08:24:47', '2014-06-14 01:27:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 66, 'ut', 0, NULL, 2, '2017-08-02 17:49:39', '2014-12-11 12:34:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 87, 'laudantium', 85, NULL, 3, '2016-12-12 00:54:05', '2012-11-29 09:07:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 19, 'quia', 990664, NULL, 4, '2019-08-05 07:45:16', '2018-09-09 04:39:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 57, 'labore', 2, NULL, 5, '2014-03-25 11:31:48', '2015-02-13 14:27:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 48, 'totam', 512, NULL, 1, '2016-07-13 16:17:04', '2014-11-26 02:13:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 43, 'cupiditate', 5943, NULL, 2, '2015-09-11 20:39:23', '2018-08-01 11:12:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 21, 'a', 16493732, NULL, 3, '2014-12-09 01:57:03', '2013-08-06 17:09:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 10, 'eos', 36661478, NULL, 4, '2011-06-23 07:46:25', '2019-03-02 02:51:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 81, 'ut', 6410456, NULL, 5, '2019-06-12 18:25:03', '2018-04-16 18:26:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 46, 'soluta', 0, NULL, 1, '2020-01-18 02:10:21', '2020-12-02 08:10:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 21, 'illum', 275269, NULL, 2, '2015-03-28 02:47:19', '2011-11-07 14:29:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 89, 'debitis', 93, NULL, 3, '2018-01-18 19:04:24', '2015-01-29 23:58:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 3, 'odit', 3396, NULL, 4, '2019-11-18 22:48:50', '2012-11-14 09:05:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 41, 'sed', 59561799, NULL, 5, '2011-06-14 14:25:31', '2019-03-24 23:30:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 79, 'qui', 92, NULL, 1, '2013-04-09 06:54:23', '2016-08-14 22:12:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 79, 'ab', 33, NULL, 2, '2018-11-15 21:36:12', '2018-07-06 05:27:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 82, 'eveniet', 7992761, NULL, 3, '2018-11-10 08:09:18', '2016-01-10 11:19:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 78, 'sunt', 2979696, NULL, 4, '2018-03-25 22:10:47', '2014-05-05 04:57:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 55, 'at', 59845, NULL, 5, '2020-08-06 10:46:46', '2021-02-17 12:42:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 65, 'quo', 619964, NULL, 1, '2011-04-14 18:29:40', '2015-02-25 00:54:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 16, 'assumenda', 69499, NULL, 2, '2017-10-22 14:26:10', '2013-10-17 01:04:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 97, 'ratione', 2582831, NULL, 3, '2011-03-29 13:48:06', '2011-10-16 08:24:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 63, 'accusantium', 3466, NULL, 4, '2011-05-12 07:57:14', '2013-03-01 22:05:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 30, 'quia', 3762055, NULL, 5, '2019-07-22 04:20:22', '2014-01-06 07:42:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 42, 'non', 91, NULL, 1, '2018-04-23 11:35:33', '2016-03-03 12:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 54, 'ex', 76722, NULL, 2, '2013-08-16 01:38:13', '2011-08-07 07:05:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 30, 'rerum', 201, NULL, 3, '2019-01-30 15:04:28', '2017-03-04 10:59:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 71, 'ea', 65815, NULL, 4, '2020-09-28 00:30:31', '2020-07-02 06:27:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 99, 'qui', 4425, NULL, 5, '2012-09-13 04:21:26', '2019-09-03 16:47:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 13, 'dolores', 5096292, NULL, 1, '2013-08-01 05:21:59', '2011-10-27 08:17:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 36, 'et', 41312, NULL, 2, '2020-02-19 10:09:51', '2012-01-06 09:34:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 38, 'laboriosam', 1718, NULL, 3, '2018-06-08 06:41:36', '2016-06-25 03:06:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 2, 'consequatur', 5873, NULL, 4, '2012-03-01 08:02:56', '2018-08-17 08:28:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 95, 'voluptates', 4, NULL, 5, '2014-04-02 11:26:26', '2019-02-05 17:20:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'deserunt', 107628, NULL, 1, '2011-04-13 01:23:37', '2011-07-05 15:10:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 63, 'dolore', 588489247, NULL, 2, '2020-01-17 19:11:48', '2013-09-20 06:47:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 44, 'doloribus', 219389, NULL, 3, '2011-07-08 17:01:10', '2018-03-19 19:20:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 37, 'quam', 41078773, NULL, 4, '2019-06-23 02:15:56', '2011-06-26 02:25:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 48, 'neque', 89964818, NULL, 5, '2011-04-01 16:23:57', '2016-11-26 20:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 80, 'dolores', 75465294, NULL, 1, '2014-08-05 03:18:43', '2014-08-08 12:53:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 80, 'a', 680, NULL, 2, '2016-06-28 05:09:56', '2016-08-02 11:26:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 57, 'animi', 0, NULL, 3, '2017-07-13 09:53:18', '2016-03-06 22:00:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 61, 'nemo', 4580, NULL, 4, '2017-08-22 13:22:25', '2021-01-22 16:26:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 51, 'temporibus', 195829, NULL, 5, '2016-01-26 10:05:06', '2017-10-03 15:24:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 53, 'vel', 69695, NULL, 1, '2015-12-06 03:31:35', '2016-09-25 16:20:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 2, 'facilis', 106185391, NULL, 2, '2013-08-03 10:51:53', '2016-04-21 08:57:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 71, 'quod', 0, NULL, 3, '2018-08-16 23:19:13', '2013-08-31 10:54:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 30, 'commodi', 56359, NULL, 4, '2013-11-20 02:38:27', '2019-07-08 02:21:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 4, 'minus', 0, NULL, 5, '2017-07-01 22:29:28', '2020-08-06 18:31:10');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'voluptatem', '2015-02-23 06:06:43', '2015-01-30 21:19:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2018-11-06 19:14:27', '2014-03-09 09:57:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'veritatis', '2012-01-26 15:08:16', '2020-10-11 07:07:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'et', '2019-02-19 13:39:23', '2020-09-26 17:17:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'recusandae', '2019-07-06 21:42:47', '2012-11-19 13:55:00');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 38, 28, 'Tenetur facere et aut dicta. Non quaerat esse rerum facere eveniet in voluptatibus. Cupiditate corporis quod a. Quidem ad laborum totam aut.', 1, 1, '2020-08-20 23:48:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 43, 43, 'Maiores dicta dolorem porro laborum accusantium maxime. Autem placeat voluptates voluptate omnis tempore optio qui. Incidunt fugiat velit quis.', 1, 0, '2021-01-25 19:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 81, 44, 'Minima saepe maiores in porro placeat. Expedita fugiat a officia sint. Et iure quidem reprehenderit aut tenetur nulla. Velit est eum aut doloremque accusantium fuga voluptas et.', 0, 1, '2020-06-11 08:00:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 21, 24, 'Molestiae commodi porro accusamus quae. Suscipit architecto assumenda sapiente cupiditate error quam. Officia distinctio molestiae perspiciatis nesciunt earum reprehenderit et.', 0, 1, '2020-08-22 21:01:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 43, 11, 'Dolores cumque deserunt porro fuga aliquid sunt culpa. Cumque enim quia quasi placeat deserunt atque ea quis. Ea architecto omnis quam quidem.', 0, 1, '2021-02-16 09:47:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 81, 4, 'Necessitatibus earum iste sed explicabo quis quia. Id aliquid quasi nisi.', 1, 1, '2020-08-02 21:36:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 83, 84, 'Voluptatem dignissimos consequatur est eos. A est et distinctio molestias et cupiditate molestiae. Magnam sapiente cupiditate placeat et temporibus mollitia delectus vero. Vel aut rem sunt.', 1, 1, '2020-07-10 17:16:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 62, 17, 'Qui in iure in eos. Sit et deserunt rem eum magni commodi cum. Amet alias totam architecto laboriosam ut.', 1, 0, '2020-08-30 18:36:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 31, 73, 'Aut pariatur quisquam non excepturi. Non eos soluta quis enim. Quia ea perspiciatis ex molestias. Eligendi ut cumque enim sed est eos. Tempore aut voluptatem fuga sed magnam.', 0, 1, '2020-03-27 09:20:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 58, 72, 'Officiis tenetur est cupiditate aut iure ratione. Officiis et nihil at similique ut praesentium. In sequi eligendi velit sed eum vel autem. Et nobis laborum et facere ad sint omnis.', 1, 0, '2020-10-10 07:16:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 90, 8, 'Quia accusamus commodi sit perspiciatis saepe eligendi. Est error quia reiciendis suscipit. Reprehenderit est quam voluptatem quibusdam molestiae.', 1, 0, '2020-04-17 13:45:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 52, 69, 'Quod qui porro voluptas aut libero optio. Nemo est debitis nihil est voluptas nihil.', 0, 0, '2020-03-28 19:02:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 65, 66, 'Ipsa aut quis repudiandae delectus sit mollitia dolorem voluptatem. Amet pariatur ipsa asperiores totam et. Exercitationem labore enim illum eos similique consequatur quam. Et harum et suscipit sit in.', 1, 1, '2021-01-20 10:42:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 65, 30, 'Labore voluptas consequatur qui vel iusto enim atque ut. Quisquam architecto eaque natus cum. Qui officia nisi tempore quibusdam. Exercitationem eveniet aut dolorem impedit ut. Assumenda quisquam asperiores distinctio ipsam in.', 1, 0, '2021-01-19 03:52:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 66, 82, 'Modi quas accusamus sapiente dolorem enim velit cumque. Et voluptatibus numquam esse ut. Nisi magnam aut laborum rem est rerum modi aspernatur.', 0, 1, '2020-12-30 03:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 42, 34, 'Culpa dolore voluptatem sed repudiandae. Dolores et voluptas sint et et. Harum quo amet eaque. Rem tempora voluptatem quo possimus eveniet ut.', 0, 0, '2020-05-28 20:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 83, 7, 'Velit accusantium nam voluptas est voluptatibus iure. Sed accusamus aut perferendis aspernatur. Sint praesentium a quia vero et.', 1, 0, '2020-11-24 17:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 2, 64, 'Nihil illo excepturi animi dolores delectus ab eum. Corporis optio est aut eaque qui perspiciatis sed. Eius officiis reprehenderit odit culpa non corporis. Cumque animi possimus voluptate quia. Molestias tenetur molestias facilis.', 1, 0, '2020-03-12 18:04:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 61, 61, 'Quasi ad id occaecati adipisci voluptatibus voluptatem. Molestias dicta fugiat autem. Cupiditate aut laborum necessitatibus aliquam quas dolorem qui. Ut labore doloribus est consectetur id vel odit.', 0, 0, '2020-07-18 21:17:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 17, 38, 'Excepturi veniam quia commodi non qui placeat. Esse magnam velit magni qui cum dolores. Eum sed laudantium velit et veritatis dolore corporis. Ut eos voluptas itaque neque ad blanditiis.', 1, 1, '2020-04-02 15:18:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 17, 2, 'Nihil ad quis ut aliquam ipsa maxime dolor. Repellat quasi iste iure molestiae odit ut sint dignissimos. Quis placeat reiciendis vel et itaque. Sequi occaecati praesentium odio id quo consectetur nisi.', 0, 0, '2020-11-15 12:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 29, 90, 'Consectetur a corrupti recusandae. Tenetur velit aut et numquam. Dolore est suscipit cupiditate libero rerum cumque sed quam.', 1, 1, '2021-01-29 01:05:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 97, 15, 'Eveniet velit omnis aut distinctio iure quod. Occaecati ut ipsa quos beatae veniam nisi. Optio laudantium laudantium eos eos dolores. Voluptate et corporis nam occaecati sapiente voluptatum.', 1, 0, '2020-09-16 09:18:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 79, 58, 'Non velit quas illo quas et. Quos at ut consequatur corrupti quis modi. Commodi cupiditate hic temporibus tempore magni eos.', 0, 1, '2020-05-16 14:29:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 9, 45, 'A incidunt doloremque velit quam. Vel assumenda blanditiis fugit quo officiis necessitatibus quia autem. Ut provident tenetur nostrum eligendi facere animi. Qui est molestias consequatur.', 0, 1, '2020-03-11 21:18:39');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` datetime DEFAULT NULL COMMENT 'Последний вход в систему',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'P', '2018-01-26', 'Ritchiefort', 'Wallis and Futuna', '2021-02-24 02:54:29', '2019-02-08 06:55:14', '2017-05-02 05:20:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'D', '1983-05-04', 'Providencistad', 'Kiribati', '2020-11-04 02:48:19', '2019-01-02 11:22:40', '2012-12-12 02:53:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'D', '2012-10-28', 'West Treburgh', 'Rwanda', '2020-12-24 12:06:46', '2018-05-22 12:21:55', '2020-06-09 02:41:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'M', '1997-11-28', 'Lake Fosterfort', 'Germany', '2021-01-11 12:36:30', '2017-04-15 03:12:21', '2013-08-10 17:46:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, 'D', '2015-09-13', 'South Yeseniafort', 'Ukraine', '2020-07-27 02:01:30', '2018-04-23 20:04:12', '2019-06-06 22:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'M', '1979-07-13', 'Port Sylvanside', 'Guernsey', '2021-01-29 04:25:57', '2011-04-01 22:02:55', '2016-05-06 18:40:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, 'M', '1988-12-19', 'Stefanieberg', 'Tunisia', '2020-06-30 00:53:09', '2013-10-04 01:14:50', '2014-01-09 13:44:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, 'D', '1994-05-08', 'Heidenreichland', 'Isle of Man', '2020-05-18 17:34:35', '2012-03-02 21:50:28', '2016-09-09 09:11:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'D', '2006-09-04', 'Beierhaven', 'Solomon Islands', '2020-08-31 08:12:52', '2011-11-02 13:43:25', '2011-08-15 03:52:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'D', '2005-09-11', 'West Zoilatown', 'Honduras', '2020-07-08 21:43:35', '2012-12-29 06:29:37', '2018-11-21 14:34:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'M', '1998-03-01', 'North Wilsonbury', 'Peru', '2020-05-26 05:35:25', '2013-08-31 18:03:59', '2016-03-25 20:43:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'M', '2007-07-15', 'Joannyview', 'Sao Tome and Principe', '2020-08-03 09:51:03', '2012-05-09 03:49:53', '2012-03-16 23:04:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'D', '2020-07-16', 'Rauton', 'Slovenia', '2020-08-12 14:31:01', '2014-05-12 18:18:45', '2021-02-07 10:06:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, 'P', '2004-09-17', 'South Hortensestad', 'Bouvet Island (Bouvetoya)', '2020-07-11 21:58:09', '2014-07-29 10:51:58', '2018-10-14 12:26:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'M', '1972-10-22', 'North Neva', 'Grenada', '2020-09-30 03:17:58', '2019-06-13 21:22:58', '2012-06-12 05:04:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'M', '1998-06-25', 'Port Jillian', 'Iraq', '2020-10-12 13:21:41', '2021-01-29 03:34:57', '2020-07-19 14:49:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, 'P', '2003-11-28', 'Barrettside', 'Finland', '2020-11-18 11:35:01', '2011-05-30 14:12:24', '2021-01-07 19:25:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'M', '1984-03-01', 'Langhaven', 'Isle of Man', '2020-03-07 09:11:48', '2015-07-01 14:23:01', '2017-03-18 04:14:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, 'D', '2007-12-04', 'Kleinborough', 'Cameroon', '2020-06-21 08:00:58', '2012-09-06 05:35:46', '2011-04-28 04:58:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, 'P', '2010-01-11', 'Romamouth', 'Ghana', '2020-05-15 18:12:40', '2012-04-28 06:34:51', '2014-08-21 21:46:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'P', '2000-12-26', 'Jayceland', 'United States Minor Outlying Islands', '2020-06-30 09:35:41', '2020-09-02 02:44:01', '2015-01-21 19:28:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, 'D', '2004-01-06', 'New Damionton', 'Gambia', '2020-10-24 06:34:40', '2017-11-27 03:20:19', '2015-10-05 02:53:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'D', '1997-04-21', 'West Heloise', 'Bouvet Island (Bouvetoya)', '2020-04-24 16:48:35', '2017-12-19 12:38:44', '2020-02-09 20:48:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, 'D', '1980-11-08', 'Janport', 'Gambia', '2020-05-08 09:25:10', '2015-11-15 03:57:39', '2015-01-10 15:05:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, 'M', '2017-02-21', 'Faustinoberg', 'Namibia', '2021-03-02 21:49:29', '2016-10-03 00:19:18', '2012-06-26 02:23:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, 'P', '1998-04-24', 'Lake Kara', 'Romania', '2020-11-03 23:29:46', '2011-12-09 00:03:03', '2015-01-18 21:09:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, 'M', '2020-08-20', 'West Maurinemouth', 'Japan', '2020-03-15 05:03:12', '2013-07-31 03:55:12', '2019-05-14 14:24:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, 'P', '1977-08-01', 'Sawaynmouth', 'Niger', '2021-02-24 03:00:49', '2015-05-15 11:23:11', '2012-05-13 23:51:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, 'D', '2007-02-21', 'North Delphiaport', 'Saint Martin', '2021-02-07 21:33:59', '2018-07-24 21:19:36', '2014-03-25 13:04:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'P', '2020-02-04', 'Websterside', 'Turks and Caicos Islands', '2021-02-24 08:59:56', '2012-09-16 09:13:45', '2020-07-25 05:26:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'M', '1999-01-10', 'South Isabelmouth', 'Western Sahara', '2020-09-06 03:29:52', '2019-08-19 14:50:34', '2011-11-08 12:45:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'M', '1992-03-24', 'North Titoburgh', 'Bangladesh', '2020-07-21 06:54:28', '2015-06-14 00:31:30', '2012-10-23 15:30:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'M', '2006-02-10', 'South Minnie', 'Philippines', '2020-11-17 06:34:17', '2016-04-01 21:06:21', '2016-07-10 07:57:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, 'P', '2012-11-20', 'Grahamside', 'Qatar', '2021-02-28 00:14:36', '2019-10-08 20:50:48', '2015-10-30 14:42:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'P', '1998-05-29', 'West Tierraberg', 'Sweden', '2020-12-04 10:01:15', '2011-11-12 21:08:28', '2011-08-13 17:01:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'P', '2010-11-25', 'Terenceton', 'Dominica', '2021-01-28 19:17:03', '2017-09-15 13:22:41', '2017-11-26 05:25:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, 'M', '1989-03-26', 'Ginastad', 'Nauru', '2020-04-27 11:12:39', '2014-04-04 00:52:11', '2015-12-17 07:03:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, 'M', '2002-01-16', 'South Joel', 'Sweden', '2020-12-25 03:50:17', '2018-12-01 05:13:00', '2020-06-06 07:34:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'M', '1986-10-29', 'East Mariamton', 'Kyrgyz Republic', '2020-05-22 17:26:11', '2013-09-13 23:07:10', '2018-01-26 07:52:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'D', '1976-04-28', 'Kunzeville', 'Croatia', '2021-02-20 11:56:22', '2016-09-12 00:51:27', '2014-07-24 06:47:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, 'D', '2002-12-08', 'South Hellenview', 'Papua New Guinea', '2020-07-02 05:16:01', '2018-02-20 08:40:28', '2020-10-27 18:41:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'M', '2020-12-25', 'Batzbury', 'Cook Islands', '2020-06-20 04:30:54', '2016-03-23 17:57:30', '2018-12-14 06:23:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, 'M', '1984-05-22', 'Wintheiserville', 'Eritrea', '2021-03-04 17:00:47', '2016-09-04 13:36:55', '2017-12-31 21:26:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, 'P', '2004-07-09', 'North Candice', 'Lebanon', '2020-05-05 00:43:39', '2012-02-05 15:13:26', '2014-01-23 14:13:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, 'M', '1991-07-08', 'Dibbertberg', 'Morocco', '2021-02-15 08:26:41', '2011-11-13 03:09:07', '2017-01-08 16:06:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'M', '1990-03-27', 'Breanneland', 'Djibouti', '2021-02-01 05:07:58', '2018-10-29 17:02:01', '2020-12-24 06:38:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'P', '1980-10-30', 'Handport', 'Guinea-Bissau', '2021-01-14 01:07:02', '2012-04-26 23:15:53', '2012-03-05 22:40:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, 'M', '1981-04-17', 'Denesikside', 'French Guiana', '2020-07-18 18:31:44', '2020-09-17 04:25:27', '2015-09-08 08:04:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, 'M', '2009-11-15', 'West Ashtyn', 'Malawi', '2020-04-19 22:25:44', '2013-09-22 03:35:20', '2020-08-30 13:13:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'P', '2016-11-14', 'Rodrickview', 'French Southern Territories', '2020-07-17 21:15:41', '2019-09-05 11:07:31', '2016-08-25 13:25:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'M', '1993-09-25', 'Othoborough', 'Afghanistan', '2020-09-01 17:54:52', '2014-09-07 23:47:45', '2016-11-29 14:53:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, 'M', '1986-10-29', 'Myriamberg', 'New Caledonia', '2020-09-27 19:43:41', '2019-05-05 12:44:03', '2017-08-05 18:57:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'D', '2016-08-13', 'West Dougstad', 'Sudan', '2020-09-27 10:28:04', '2017-10-03 19:20:33', '2017-06-22 09:57:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, 'M', '1992-01-27', 'Rhettview', 'Bulgaria', '2021-01-18 09:37:35', '2017-01-01 15:12:37', '2020-09-07 22:22:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'M', '1998-10-11', 'Jaskolskiport', 'Dominican Republic', '2020-09-28 13:04:05', '2013-02-03 06:47:21', '2018-07-21 02:49:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, 'P', '1979-12-23', 'Lake Guadalupe', 'Lithuania', '2020-09-22 19:37:55', '2011-11-19 04:23:07', '2012-11-23 13:44:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'P', '1988-05-29', 'Lake Mayaside', 'Ukraine', '2020-04-01 12:01:51', '2011-08-26 05:16:44', '2019-07-31 03:22:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'D', '1999-10-31', 'Lake Tatechester', 'Ethiopia', '2021-01-14 01:45:17', '2018-07-29 02:43:31', '2018-08-12 19:24:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'D', '1983-12-11', 'South Stuart', 'Senegal', '2020-03-17 22:22:13', '2014-01-15 22:44:42', '2013-09-17 02:55:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'D', '1987-05-19', 'Port Billie', 'Taiwan', '2020-03-08 18:16:54', '2018-05-15 21:12:28', '2016-03-19 08:22:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'P', '1982-07-16', 'Beattytown', 'Belarus', '2020-11-23 14:43:33', '2012-05-13 15:51:35', '2013-09-13 01:10:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'M', '1990-02-22', 'Hectormouth', 'Lithuania', '2021-02-01 08:43:58', '2018-12-29 22:25:09', '2014-03-20 18:09:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, 'D', '1975-04-28', 'New Kailynview', 'French Polynesia', '2020-12-02 21:11:26', '2015-01-21 14:10:33', '2014-03-03 23:42:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'P', '1985-02-08', 'South Teaganmouth', 'Guam', '2020-11-16 03:22:04', '2016-05-28 23:33:12', '2011-10-27 13:11:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, 'M', '2003-10-26', 'West Hildegard', 'Brazil', '2020-06-26 04:51:36', '2018-10-15 23:10:11', '2016-11-25 11:41:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, 'M', '2020-10-15', 'South Jayne', 'Martinique', '2020-05-22 19:42:39', '2017-10-17 20:23:23', '2013-08-22 09:42:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, 'M', '1973-12-08', 'Frederikberg', 'Bahrain', '2021-01-15 17:39:15', '2017-02-17 10:19:38', '2018-08-15 11:26:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'P', '1984-03-16', 'Altenwerthside', 'Guernsey', '2020-10-25 09:01:47', '2015-08-16 13:22:58', '2017-07-26 10:28:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'M', '1981-11-29', 'Yostbury', 'Morocco', '2020-09-03 20:49:27', '2021-02-10 00:33:44', '2013-03-27 06:38:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'P', '1974-08-21', 'Ornton', 'Kiribati', '2020-07-28 02:52:42', '2015-04-14 08:12:04', '2018-10-26 14:32:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'M', '1972-11-03', 'Ottisview', 'Belarus', '2020-10-26 08:39:36', '2016-05-31 16:22:06', '2019-07-25 16:14:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, 'D', '1981-03-21', 'North Dale', 'United Arab Emirates', '2020-07-03 00:09:55', '2016-03-28 01:02:54', '2011-08-01 14:34:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, 'D', '1977-02-26', 'Johnsonstad', 'Afghanistan', '2020-04-20 19:29:43', '2015-05-25 06:43:15', '2018-09-23 19:15:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, 'P', '2009-10-06', 'East Alison', 'Bahrain', '2020-07-12 10:56:45', '2021-01-07 03:12:20', '2013-05-10 13:22:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, 'M', '2011-05-30', 'Jaskolskibury', 'Ukraine', '2020-11-29 02:05:42', '2012-09-21 20:06:35', '2017-09-14 13:59:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, 'D', '2010-03-06', 'Heatherchester', 'Tuvalu', '2020-04-30 06:12:02', '2017-03-08 23:42:08', '2021-02-09 12:20:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, 'M', '1978-07-28', 'Volkmanstad', 'Argentina', '2020-09-13 12:25:19', '2015-11-20 01:25:58', '2013-07-22 07:16:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'D', '2017-03-19', 'North Verlieview', 'Saint Kitts and Nevis', '2020-08-30 12:36:57', '2017-04-26 09:30:57', '2015-05-27 10:12:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'P', '1990-07-19', 'Port Joaquinmouth', 'Afghanistan', '2021-01-20 01:22:55', '2013-08-22 09:23:28', '2019-01-03 06:26:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, 'D', '2020-10-13', 'North Orphaberg', 'Iraq', '2021-01-29 10:09:32', '2019-04-14 11:25:25', '2019-08-18 19:19:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, 'M', '2010-07-30', 'South Valeriechester', 'Faroe Islands', '2020-08-10 16:05:01', '2012-12-21 00:09:37', '2021-02-13 16:50:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'P', '1991-11-28', 'Macymouth', 'South Georgia and the South Sandwich Islands', '2020-04-07 15:04:17', '2016-10-07 21:48:52', '2012-03-05 11:12:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, 'P', '1980-10-01', 'East Tyshawnville', 'Vanuatu', '2020-12-01 09:31:54', '2021-03-02 09:52:19', '2011-07-11 03:27:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, 'M', '1982-01-11', 'Cummerataport', 'Namibia', '2021-01-07 15:10:47', '2012-06-17 10:08:26', '2017-12-10 03:40:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'P', '1986-01-23', 'New Osvaldo', 'Central African Republic', '2020-03-09 23:14:34', '2020-10-17 09:41:12', '2019-06-24 09:25:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'P', '2011-05-25', 'Kautzerborough', 'Cook Islands', '2020-04-03 21:32:26', '2015-03-26 01:28:33', '2011-04-18 12:04:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'M', '2002-03-13', 'Riceborough', 'Algeria', '2021-01-09 00:31:55', '2017-08-18 23:26:32', '2020-08-29 16:37:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'D', '1988-07-20', 'Rolfsonview', 'Marshall Islands', '2020-12-02 18:49:01', '2012-07-30 20:35:24', '2015-08-14 05:02:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'P', '1973-03-22', 'East Vitamouth', 'Ukraine', '2020-06-06 01:49:45', '2015-05-05 18:32:14', '2013-08-07 15:34:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'M', '2014-06-14', 'Harrisbury', 'Bahamas', '2020-09-14 15:33:47', '2018-04-18 05:16:19', '2020-09-17 14:27:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, 'M', '1984-05-11', 'Gloverview', 'Saint Pierre and Miquelon', '2021-03-01 14:14:38', '2012-06-10 08:34:03', '2019-09-06 02:32:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'D', '2020-12-24', 'New Kyle', 'Saint Lucia', '2020-09-21 16:45:30', '2019-04-11 08:17:10', '2011-10-13 05:19:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'M', '2016-07-26', 'North Clotildeshire', 'Israel', '2020-12-07 20:02:01', '2011-08-08 13:19:26', '2019-04-24 10:44:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'D', '1998-12-14', 'Grimesmouth', 'Tajikistan', '2020-04-07 20:54:31', '2019-07-28 06:07:58', '2019-04-21 00:27:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'P', '1982-08-31', 'Bettyeton', 'Spain', '2020-09-29 00:52:28', '2017-09-02 14:00:59', '2016-10-22 18:20:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'M', '1971-09-14', 'Lake Tyra', 'Saudi Arabia', '2020-03-05 18:36:27', '2015-08-29 01:37:09', '2019-02-13 23:02:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, 'P', '1983-12-14', 'Lake Bella', 'Timor-Leste', '2020-12-10 15:24:47', '2020-05-04 13:12:27', '2018-07-20 13:49:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'P', '1988-11-15', 'North Stanland', 'Heard Island and McDonald Islands', '2020-05-14 05:06:32', '2014-11-29 09:10:25', '2013-07-17 15:39:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, 'P', '1980-03-22', 'Port Jaeden', 'Switzerland', '2020-09-11 05:00:48', '2017-08-02 15:50:45', '2016-03-19 14:21:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'P', '2010-04-12', 'Schulistville', 'El Salvador', '2020-04-13 13:21:17', '2013-10-01 20:07:10', '2017-05-09 07:18:07');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Sabina', 'Miller', 'lamont.wilderman@example.com', '(671)200-8785x6860', '2011-05-30 03:14:07', '2018-03-10 02:24:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Bernita', 'Gleichner', 'hudson.dicki@example.com', '1-812-023-4702x27924', '2020-11-16 11:26:21', '2017-03-02 22:03:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Annetta', 'Torp', 'boris.abbott@example.net', '758.278.2014x022', '2013-12-12 00:18:36', '2019-03-19 02:02:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Alberta', 'Walker', 'emmerich.blaze@example.net', '(681)694-3568x54037', '2016-06-08 04:09:07', '2011-07-09 00:44:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Prince', 'Schoen', 'sarah06@example.org', '665.540.8901x958', '2017-10-27 02:21:04', '2016-11-23 20:49:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Selmer', 'Dickens', 'damion57@example.com', '(018)801-8212x39080', '2017-05-06 13:02:04', '2015-06-19 05:07:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Mackenzie', 'Carroll', 'taya.zboncak@example.com', '(095)783-5610x4869', '2019-06-25 00:29:26', '2014-02-21 17:38:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Lurline', 'Herman', 'yundt.brielle@example.net', '387-336-9959x147', '2017-04-03 15:45:21', '2019-09-10 10:41:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Vernice', 'Wintheiser', 'garland.dickens@example.net', '764.328.3304', '2016-08-05 22:41:33', '2012-09-30 20:28:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Sister', 'Sawayn', 'dejon46@example.org', '024.965.4173x477', '2019-05-16 14:34:41', '2014-11-09 10:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Addie', 'Gutmann', 'kathryn.franecki@example.com', '781-126-2021x3080', '2015-05-27 13:41:31', '2020-03-17 14:18:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Montana', 'Tremblay', 'flatley.grady@example.net', '(819)472-5977x476', '2017-03-07 10:50:49', '2019-01-14 17:16:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Doyle', 'Willms', 'lubowitz.shaylee@example.org', '03918587186', '2011-10-10 20:44:57', '2018-07-30 01:18:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Cydney', 'McCullough', 'kevon34@example.com', '1-594-317-4562', '2013-05-15 00:30:04', '2016-01-04 05:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Wilhelmine', 'Oberbrunner', 'glennie.doyle@example.net', '1-329-722-7359x46449', '2020-10-28 09:47:15', '2016-03-31 02:56:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Adrien', 'Kulas', 'zwilderman@example.com', '1-677-418-3348x0805', '2019-11-20 10:50:33', '2019-04-05 05:27:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Gaston', 'Hagenes', 'gorczany.hugh@example.com', '963.395.2489x04162', '2014-09-07 05:19:48', '2015-01-22 09:12:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Rahul', 'Sporer', 'sschaefer@example.com', '187-554-4880', '2017-02-25 04:15:31', '2019-11-08 12:56:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Filiberto', 'Doyle', 'agustina.hermann@example.net', '396.616.1793', '2011-05-25 08:53:15', '2012-10-10 16:37:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Delia', 'Lockman', 'lorenz.lynch@example.com', '385.260.8767', '2016-04-16 19:01:09', '2017-08-25 17:23:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Aryanna', 'Anderson', 'pacocha.vincenza@example.net', '1-131-211-0245x42118', '2014-11-22 22:07:24', '2016-01-18 11:56:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Garth', 'Rice', 'gibson.annalise@example.net', '+23(5)3230391109', '2020-06-11 14:56:17', '2011-04-04 17:36:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Winston', 'Murazik', 'mertz.kayli@example.com', '(333)820-4668x509', '2016-06-24 01:42:54', '2013-04-09 14:51:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Shanna', 'Macejkovic', 'hayes.virgil@example.org', '(902)536-0696x849', '2016-05-28 05:39:21', '2012-10-06 19:19:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Adele', 'Kemmer', 'nikolas.kemmer@example.com', '557.627.4844', '2016-07-17 10:33:58', '2018-01-04 20:00:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Bruce', 'Rowe', 'mgibson@example.com', '+61(2)2154590813', '2013-03-08 02:54:43', '2014-02-20 13:18:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Tiffany', 'Denesik', 'niko42@example.org', '(981)129-9565', '2018-09-02 05:18:47', '2019-09-19 07:46:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Genoveva', 'Kihn', 'anahi96@example.org', '(051)806-1221x95237', '2018-11-14 07:45:15', '2019-09-05 19:09:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Kristian', 'Lockman', 'ferry.roderick@example.com', '(109)987-2814', '2011-12-17 09:14:12', '2018-01-11 09:19:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Stuart', 'Balistreri', 'grant.carter@example.net', '1-631-559-8648', '2011-09-01 01:56:37', '2012-09-19 11:35:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Rey', 'Huels', 'bconn@example.com', '+30(1)2490168569', '2011-03-13 05:42:44', '2011-03-15 04:04:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Neva', 'Johnson', 'witting.nash@example.com', '084.435.9975', '2017-12-29 00:25:48', '2014-04-03 14:52:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Robert', 'Lockman', 'herman.britney@example.org', '1-971-604-3101x852', '2016-10-25 01:43:23', '2014-06-09 08:25:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kenny', 'Abshire', 'jsipes@example.net', '403-572-8678x03456', '2014-05-10 19:22:10', '2015-05-25 15:52:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Hyman', 'Nitzsche', 'skassulke@example.org', '903.427.1397x07312', '2015-08-12 23:57:07', '2013-01-24 03:47:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Leanna', 'Ruecker', 'yadira.kuhn@example.org', '05429349669', '2016-06-25 14:12:32', '2017-08-06 17:31:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Howard', 'Moore', 'jfadel@example.org', '1-341-687-6033', '2020-09-13 03:30:46', '2012-12-03 22:54:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Kaela', 'Glover', 'pvonrueden@example.net', '(850)220-9317x9064', '2011-07-04 06:59:50', '2012-04-01 09:30:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Salvatore', 'Altenwerth', 'hammes.craig@example.com', '(235)326-3734x139', '2018-12-17 02:25:05', '2018-11-24 09:47:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Dawn', 'Heaney', 'april.barrows@example.net', '(955)328-4990', '2017-04-01 09:50:43', '2011-09-07 13:03:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Theresa', 'Stanton', 'jeanne87@example.com', '1-881-884-0306x090', '2018-06-23 05:15:21', '2015-05-26 14:33:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Magdalena', 'Jaskolski', 'layla36@example.org', '618.360.0367x23271', '2018-08-22 06:38:13', '2021-01-16 19:52:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Cornelius', 'Crist', 'bdoyle@example.net', '(146)485-5118', '2018-09-22 07:16:52', '2012-03-17 03:39:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Colten', 'Botsford', 'cordelia43@example.org', '00259966912', '2016-05-07 21:53:16', '2018-12-13 17:55:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Breanna', 'Botsford', 'webster69@example.com', '289.379.6823', '2012-03-12 17:42:49', '2016-01-04 05:46:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Estel', 'Grady', 'ahilpert@example.net', '657.600.9377', '2014-08-28 13:37:35', '2015-03-22 03:57:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Dalton', 'Hansen', 'travis46@example.org', '595-740-0365x3261', '2011-07-26 08:38:13', '2013-08-21 10:36:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Desmond', 'Bosco', 'candelario.gibson@example.net', '292.961.8387x88602', '2016-12-31 09:13:45', '2014-02-25 07:04:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Garfield', 'Wuckert', 'dare.devante@example.org', '520-578-0622', '2017-02-17 01:23:52', '2020-02-10 23:02:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Destiney', 'Greenholt', 'lind.otho@example.net', '+73(4)9469434532', '2013-10-21 07:01:48', '2014-07-27 01:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Amir', 'Aufderhar', 'noemie66@example.net', '840-361-0203', '2012-08-08 19:47:20', '2014-05-13 03:12:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Lafayette', 'Effertz', 'jonathon.armstrong@example.com', '477-510-4609x550', '2015-09-06 20:58:07', '2014-09-04 07:52:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Ellen', 'Larson', 'hyman99@example.net', '643-728-2397x991', '2016-04-13 09:31:11', '2020-08-28 10:40:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Kacie', 'Herman', 'cfranecki@example.net', '1-002-622-6033', '2014-01-04 17:06:26', '2019-05-03 16:17:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Dante', 'Herman', 'rlarson@example.org', '354.282.2883', '2019-04-02 20:04:58', '2012-06-30 05:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Edd', 'Marvin', 'nheidenreich@example.com', '090-594-4822x8116', '2015-01-09 22:26:24', '2012-03-28 07:20:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Tessie', 'Shanahan', 'madisyn35@example.org', '296.923.4181x089', '2012-01-02 22:41:49', '2014-08-28 20:14:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Nova', 'Schimmel', 'ashley49@example.net', '1-501-368-8321', '2014-12-19 16:34:32', '2018-12-13 20:53:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Sallie', 'Towne', 'zulauf.kelley@example.org', '(296)553-0919x91592', '2013-09-12 05:29:15', '2014-05-15 14:04:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Erin', 'Lakin', 'clifford.barrows@example.com', '862.750.2762', '2012-04-09 19:17:38', '2018-07-30 02:50:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Art', 'Ebert', 'beier.roxanne@example.org', '1-013-442-3840x60873', '2016-06-25 18:07:38', '2017-07-17 09:09:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Jammie', 'Hane', 'maiya39@example.net', '050-005-1007x00612', '2021-02-04 23:56:57', '2015-04-17 08:13:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Carleton', 'Rippin', 'glen76@example.org', '281-572-9617', '2019-03-15 08:29:37', '2014-03-11 23:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Lauren', 'Rolfson', 'gibson.michael@example.com', '571.169.2962x26113', '2019-04-24 13:30:00', '2012-05-11 20:47:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Juana', 'Durgan', 'lebsack.kory@example.net', '1-160-853-8331x944', '2015-07-02 13:53:56', '2017-01-04 23:13:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Waylon', 'Romaguera', 'clark.gibson@example.net', '817-219-1664', '2011-06-27 03:38:17', '2018-09-12 10:58:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Mattie', 'Bayer', 'mweimann@example.org', '422.464.6676x5872', '2019-09-08 10:15:58', '2019-03-14 21:53:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Zaria', 'Ondricka', 'leta45@example.com', '(346)721-0191', '2012-05-24 19:15:42', '2011-09-24 05:10:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Garry', 'Aufderhar', 'jessica.hauck@example.com', '(141)452-4653x836', '2016-12-24 16:21:50', '2016-11-01 18:07:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Jason', 'Gibson', 'sbaumbach@example.com', '659.013.7214x66643', '2014-06-19 23:00:30', '2020-03-10 10:39:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Ivy', 'Gusikowski', 'madison98@example.com', '(911)353-6867x818', '2012-01-18 07:49:41', '2018-08-29 03:53:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Darwin', 'Zemlak', 'cynthia.vonrueden@example.org', '04286819594', '2019-07-19 08:39:42', '2015-01-17 09:24:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Daryl', 'Swift', 'pbuckridge@example.com', '415-292-4410', '2016-07-17 07:34:43', '2012-05-24 07:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Nathanial', 'Romaguera', 'herta.crona@example.net', '931-731-8703', '2011-08-24 16:01:32', '2011-03-11 09:22:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Anastasia', 'Jacobson', 'emelia53@example.net', '648-262-8592x938', '2017-08-11 23:55:24', '2011-05-12 08:28:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Rey', 'Cummings', 'marianne.rowe@example.com', '1-798-881-8497x96825', '2016-12-15 23:11:54', '2018-06-26 11:07:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Daphne', 'Ortiz', 'upowlowski@example.com', '(637)618-1057x38378', '2020-01-30 10:01:49', '2018-09-09 09:59:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Darrick', 'Krajcik', 'jbotsford@example.net', '+89(0)8623160337', '2017-04-13 21:02:22', '2011-11-13 22:58:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Theodore', 'Altenwerth', 'kdavis@example.org', '642.902.6829x938', '2014-10-16 09:07:16', '2018-07-30 20:29:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Cloyd', 'Ortiz', 'nitzsche.dawn@example.org', '(275)880-2110', '2016-11-17 12:14:39', '2014-01-04 07:25:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Maximillian', 'Murray', 'mmarvin@example.net', '690.487.1862x99719', '2016-01-08 01:23:31', '2016-06-06 04:12:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Lillie', 'Romaguera', 'amaggio@example.org', '1-691-377-6421x70104', '2016-03-10 12:51:30', '2020-05-23 08:15:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Rosalind', 'Hammes', 'yankunding@example.org', '(888)153-0826x651', '2014-04-06 00:32:47', '2019-09-29 20:20:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Joanny', 'Bruen', 'frohan@example.net', '1-040-216-8073x9929', '2014-05-04 05:17:22', '2017-03-26 10:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Bryon', 'Wolff', 'javonte45@example.org', '1-242-333-5190', '2019-07-30 16:33:09', '2019-05-10 06:43:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Skyla', 'Hartmann', 'osinski.maddison@example.org', '(169)897-5905', '2018-08-26 13:01:43', '2012-02-26 21:21:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Wiley', 'Kessler', 'hassan38@example.org', '(503)748-9248', '2017-09-02 05:33:52', '2019-08-23 15:53:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Lonny', 'Tromp', 'stanton.valentin@example.net', '1-093-190-9438x69645', '2011-11-22 11:48:51', '2019-04-09 06:28:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Halle', 'Gleichner', 'frank.schulist@example.net', '1-877-273-6142', '2011-11-27 13:51:46', '2016-08-14 18:12:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Isabell', 'Ondricka', 'koss.violet@example.net', '1-391-978-5115', '2015-08-07 15:47:49', '2014-12-03 14:14:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Zaria', 'Thiel', 'schinner.elouise@example.com', '534-864-8305', '2020-05-30 11:02:15', '2020-05-24 14:16:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Delpha', 'Upton', 'bwelch@example.net', '920-265-1328', '2018-01-01 11:38:34', '2016-01-22 07:27:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Kamille', 'Labadie', 'emmet.ryan@example.net', '(336)085-8580', '2015-10-29 05:12:53', '2015-09-15 07:07:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Adonis', 'Larkin', 'della03@example.org', '+74(2)2819420680', '2020-01-16 07:14:04', '2019-02-01 09:50:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Yolanda', 'Quitzon', 'tatyana13@example.net', '120.510.6084x83409', '2017-04-08 07:08:44', '2016-09-24 16:22:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Allie', 'Corkery', 'zjerde@example.org', '+12(1)0729132277', '2020-07-18 04:21:42', '2014-10-19 13:39:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Kelsie', 'Stamm', 'nyasia.conn@example.net', '03632092323', '2014-10-14 20:40:24', '2021-01-21 01:46:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Hilbert', 'Daniel', 'ddooley@example.org', '07155489456', '2013-08-13 01:20:08', '2016-05-16 23:03:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Sherwood', 'Kuhlman', 'gkuhic@example.net', '+27(1)1626444466', '2019-02-26 06:05:10', '2015-01-10 23:19:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Velda', 'Effertz', 'abigale58@example.com', '305.240.9516x11282', '2017-05-03 09:48:13', '2012-07-18 11:40:10');


