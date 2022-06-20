/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 100334
 Source Host           : 127.0.0.1:3306
 Source Schema         : nextcloud

 Target Server Type    : MySQL
 Target Server Version : 100334
 File Encoding         : 65001

 Date: 20/06/2022 04:29:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oc_accounts
-- ----------------------------
DROP TABLE IF EXISTS `oc_accounts`;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_accounts
-- ----------------------------
BEGIN;
INSERT INTO `oc_accounts` VALUES ('admin', '{\"displayname\":{\"value\":\"admin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}');
INSERT INTO `oc_accounts` VALUES ('user', '{\"displayname\":{\"value\":\"user\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}');
COMMIT;

-- ----------------------------
-- Table structure for oc_accounts_data
-- ----------------------------
DROP TABLE IF EXISTS `oc_accounts_data`;
CREATE TABLE `oc_accounts_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accounts_data_uid` (`uid`),
  KEY `accounts_data_name` (`name`),
  KEY `accounts_data_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_accounts_data
-- ----------------------------
BEGIN;
INSERT INTO `oc_accounts_data` VALUES (100, 'admin', 'displayname', 'admin');
INSERT INTO `oc_accounts_data` VALUES (101, 'admin', 'address', '');
INSERT INTO `oc_accounts_data` VALUES (102, 'admin', 'website', '');
INSERT INTO `oc_accounts_data` VALUES (103, 'admin', 'email', '');
INSERT INTO `oc_accounts_data` VALUES (104, 'admin', 'phone', '');
INSERT INTO `oc_accounts_data` VALUES (105, 'admin', 'twitter', '');
INSERT INTO `oc_accounts_data` VALUES (106, 'admin', 'organisation', '');
INSERT INTO `oc_accounts_data` VALUES (107, 'admin', 'role', '');
INSERT INTO `oc_accounts_data` VALUES (108, 'admin', 'headline', '');
INSERT INTO `oc_accounts_data` VALUES (109, 'admin', 'biography', '');
INSERT INTO `oc_accounts_data` VALUES (110, 'admin', 'profile_enabled', '1');
INSERT INTO `oc_accounts_data` VALUES (111, 'user', 'displayname', 'user');
INSERT INTO `oc_accounts_data` VALUES (112, 'user', 'address', '');
INSERT INTO `oc_accounts_data` VALUES (113, 'user', 'website', '');
INSERT INTO `oc_accounts_data` VALUES (114, 'user', 'email', '');
INSERT INTO `oc_accounts_data` VALUES (115, 'user', 'phone', '');
INSERT INTO `oc_accounts_data` VALUES (116, 'user', 'twitter', '');
INSERT INTO `oc_accounts_data` VALUES (117, 'user', 'organisation', '');
INSERT INTO `oc_accounts_data` VALUES (118, 'user', 'role', '');
INSERT INTO `oc_accounts_data` VALUES (119, 'user', 'headline', '');
INSERT INTO `oc_accounts_data` VALUES (120, 'user', 'biography', '');
INSERT INTO `oc_accounts_data` VALUES (121, 'user', 'profile_enabled', '1');
COMMIT;

-- ----------------------------
-- Table structure for oc_activity
-- ----------------------------
DROP TABLE IF EXISTS `oc_activity`;
CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `subjectparams` longtext COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `messageparams` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `file` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  `size` bigint(20) DEFAULT 0,
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_activity
-- ----------------------------
BEGIN;
INSERT INTO `oc_activity` VALUES (1, 1647000668, 30, 'addressbook', 'khoa', 'system', 'dav', 'addressbook_add', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (2, 1647000669, 30, 'card', 'khoa', 'system', 'dav', 'card_add', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"user\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (3, 1647000669, 30, 'calendar', 'khoa', 'system', 'dav', 'calendar_add', '{\"actor\":\"khoa\",\"calendar\":{\"id\":1,\"uri\":\"contact_birthdays\",\"name\":\"Contact birthdays\"}}', '', '[]', '', '', 'calendar', 1, NULL);
INSERT INTO `oc_activity` VALUES (5, 1647000672, 30, 'card', 'khoa', 'system', 'dav', 'card_update', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (6, 1647000673, 30, 'card', 'khoa', 'system', 'dav', 'card_update', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (3565, 1651853319, 30, 'card', 'khoa', 'system', 'dav', 'card_add', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"test\",\"name\":\"test\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (3566, 1651853320, 30, 'card', 'khoa', 'system', 'dav', 'card_update', '{\"actor\":\"khoa\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"test\",\"name\":\"test\"}}', '', '[]', '', '', 'addressbook', 1, NULL);
INSERT INTO `oc_activity` VALUES (5985, 1655388648, 30, 'card', 'system', 'system', 'dav', 'card_update_self', '{\"actor\":\"system\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (5986, 1655388665, 30, 'card', 'system', 'system', 'dav', 'card_update_self', '{\"actor\":\"system\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6020, 1655713095, 30, 'card', 'admin', 'system', 'dav', 'card_add', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"khoa\",\"name\":\"khoa\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6023, 1655713098, 30, 'card', 'admin', 'system', 'dav', 'card_delete', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"khoa\",\"name\":\"khoa\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6025, 1655713105, 30, 'card', 'admin', 'system', 'dav', 'card_delete', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"test\",\"name\":\"test\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6026, 1655713109, 30, 'card', 'admin', 'system', 'dav', 'card_update', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6029, 1655713111, 30, 'card', 'admin', 'system', 'dav', 'card_delete', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"User\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6038, 1655713140, 30, 'card', 'admin', 'system', 'dav', 'card_add', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"user\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6039, 1655713457, 30, 'shared', 'admin', 'admin', 'files_sharing', 'unshared_link_self', '[{\"1636\":\"\\/welcome.txt\"}]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6040, 1655713460, 30, 'shared', 'admin', 'admin', 'files_sharing', 'unshared_user_self', '[{\"1636\":\"\\/welcome.txt\"},\"user\"]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6041, 1655713460, 30, 'shared', 'admin', 'user', 'files_sharing', 'unshared_by', '[{\"1636\":\"\\/welcome.txt\"},\"admin\"]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6042, 1655713464, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1636\":\"\\/welcome.txt\"},\"user\"]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6043, 1655713464, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1636\":\"\\/welcome.txt\"},\"admin\"]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6044, 1655713482, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1714\":\"\\/next list (1) (2).odt\"}]', '', '[]', '/next list (1) (2).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1714, 111832);
INSERT INTO `oc_activity` VALUES (6045, 1655713673, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1733\":\"\\/next list (1) (1).odt\"}]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6046, 1655713687, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6047, 1655713687, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"admin\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
COMMIT;

-- ----------------------------
-- Table structure for oc_activity_mq
-- ----------------------------
DROP TABLE IF EXISTS `oc_activity_mq`;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT 0,
  `amq_latest_send` int(11) NOT NULL DEFAULT 0,
  `amq_type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amq_appid` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_subjectparams` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_activity_mq
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_addressbookchanges
-- ----------------------------
DROP TABLE IF EXISTS `oc_addressbookchanges`;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_addressbookchanges
-- ----------------------------
BEGIN;
INSERT INTO `oc_addressbookchanges` VALUES (1, 'Database:user.vcf', 1, 1, 1);
INSERT INTO `oc_addressbookchanges` VALUES (2, 'Database:user.vcf', 2, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (3, 'Database:user.vcf', 3, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (4, 'Database:test.vcf', 4, 1, 1);
INSERT INTO `oc_addressbookchanges` VALUES (5, 'Database:test.vcf', 5, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (6, 'Database:user.vcf', 6, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (7, 'Database:user.vcf', 7, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (8, 'Database:khoa.vcf', 8, 1, 1);
INSERT INTO `oc_addressbookchanges` VALUES (9, 'Database:khoa.vcf', 9, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (10, 'Database:root.vcf', 10, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (11, 'Database:test.vcf', 11, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (12, 'Database:user.vcf', 12, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (13, 'Database:user.vcf', 13, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (14, 'Database:root.vcf', 14, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (15, 'Database:root.vcf', 15, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (16, 'Database:root.vcf', 16, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (17, 'Database:test.vcf', 17, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (18, 'Database:test.vcf', 18, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (19, 'Database:test.vcf', 19, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (20, 'Database:user.vcf', 20, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for oc_addressbooks
-- ----------------------------
DROP TABLE IF EXISTS `oc_addressbooks`;
CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_addressbooks
-- ----------------------------
BEGIN;
INSERT INTO `oc_addressbooks` VALUES (1, 'principals/system/system', 'system', 'system', 'System addressbook which holds all users of this instance', 21);
COMMIT;

-- ----------------------------
-- Table structure for oc_appconfig
-- ----------------------------
DROP TABLE IF EXISTS `oc_appconfig`;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_appconfig
-- ----------------------------
BEGIN;
INSERT INTO `oc_appconfig` VALUES ('accessibility', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('accessibility', 'installed_version', '1.10.0');
INSERT INTO `oc_appconfig` VALUES ('accessibility', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('activity', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('activity', 'installed_version', '2.16.0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_calendar', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_calendar_event', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_calendar_todo', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_comments', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_contacts', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_file_changed', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_file_downloaded', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_group_settings', '1');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_public_links', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_remote_share', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_shared', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_email_systemtags', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_calendar', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_calendar_event', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_calendar_todo', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_comments', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_contacts', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_favorite', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_file_changed', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_file_downloaded', '1');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_file_favorite_changed', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_group_settings', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_personal_settings', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_public_links', '1');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_remote_share', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_security', '1');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_shared', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_notification_systemtags', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_setting_batchtime', '3600');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_setting_self', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'notify_setting_selfemail', '0');
INSERT INTO `oc_appconfig` VALUES ('activity', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('backgroundjob', 'lastjob', '21');
INSERT INTO `oc_appconfig` VALUES ('bruteforcesettings', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('bruteforcesettings', 'installed_version', '2.4.0');
INSERT INTO `oc_appconfig` VALUES ('bruteforcesettings', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('calendar', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('calendar', 'installed_version', '3.2.0');
INSERT INTO `oc_appconfig` VALUES ('calendar', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('cloud_federation_api', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('cloud_federation_api', 'installed_version', '1.7.0');
INSERT INTO `oc_appconfig` VALUES ('cloud_federation_api', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('comments', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('comments', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('comments', 'types', 'logging');
INSERT INTO `oc_appconfig` VALUES ('contactsinteraction', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('contactsinteraction', 'installed_version', '1.5.0');
INSERT INTO `oc_appconfig` VALUES ('contactsinteraction', 'types', 'dav');
INSERT INTO `oc_appconfig` VALUES ('core', 'default_encryption_module', 'OC_DEFAULT_MODULE');
INSERT INTO `oc_appconfig` VALUES ('core', 'encryption_enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('core', 'installed.bundles', '[\"CoreBundle\"]');
INSERT INTO `oc_appconfig` VALUES ('core', 'installedat', '1655710990.89');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastcron', '1655713727');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastupdateResult', '[]');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastupdatedat', '1655712808');
INSERT INTO `oc_appconfig` VALUES ('core', 'oc.integritycheck.checker', '[]');
INSERT INTO `oc_appconfig` VALUES ('core', 'public_files', 'files_sharing/public.php');
INSERT INTO `oc_appconfig` VALUES ('core', 'public_webdav', 'dav/appinfo/v1/publicwebdav.php');
INSERT INTO `oc_appconfig` VALUES ('core', 'theming.variables', 'b92d206521717ac032f8aa58d3c7ff2f');
INSERT INTO `oc_appconfig` VALUES ('core', 'vendor', 'nextcloud');
INSERT INTO `oc_appconfig` VALUES ('dashboard', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('dashboard', 'installed_version', '7.4.0');
INSERT INTO `oc_appconfig` VALUES ('dashboard', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('dav', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('dav', 'installed_version', '1.22.0');
INSERT INTO `oc_appconfig` VALUES ('dav', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'installed_version', '2.12.0');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'masterKeyId', 'master_99911ff1');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'publicShareKeyId', 'pubShare_99911ff1');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'recoveryKeyId', 'recoveryKey_99911ff1');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('federatedfilesharing', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('federatedfilesharing', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('federatedfilesharing', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('federation', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('federation', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('federation', 'types', 'authentication');
INSERT INTO `oc_appconfig` VALUES ('files', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('files', 'installed_version', '1.19.0');
INSERT INTO `oc_appconfig` VALUES ('files', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('files_downloadactivity', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('files_downloadactivity', 'installed_version', '1.13.0');
INSERT INTO `oc_appconfig` VALUES ('files_downloadactivity', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('files_sharing', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('files_sharing', 'installed_version', '1.16.0');
INSERT INTO `oc_appconfig` VALUES ('files_sharing', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('files_trashbin', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('files_trashbin', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('files_trashbin', 'types', 'filesystem,dav');
INSERT INTO `oc_appconfig` VALUES ('files_versions', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('files_versions', 'installed_version', '1.17.0');
INSERT INTO `oc_appconfig` VALUES ('files_versions', 'types', 'filesystem,dav');
INSERT INTO `oc_appconfig` VALUES ('firstrunwizard', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('firstrunwizard', 'installed_version', '2.13.0');
INSERT INTO `oc_appconfig` VALUES ('firstrunwizard', 'types', 'logging');
INSERT INTO `oc_appconfig` VALUES ('lookup_server_connector', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('lookup_server_connector', 'installed_version', '1.12.0');
INSERT INTO `oc_appconfig` VALUES ('lookup_server_connector', 'types', 'authentication');
INSERT INTO `oc_appconfig` VALUES ('mail', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('mail', 'installed_version', '1.11.7');
INSERT INTO `oc_appconfig` VALUES ('mail', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('oauth2', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('oauth2', 'installed_version', '1.12.0');
INSERT INTO `oc_appconfig` VALUES ('oauth2', 'types', 'authentication');
INSERT INTO `oc_appconfig` VALUES ('provisioning_api', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('provisioning_api', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('provisioning_api', 'types', 'prevent_group_restriction');
INSERT INTO `oc_appconfig` VALUES ('settings', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('settings', 'installed_version', '1.6.0');
INSERT INTO `oc_appconfig` VALUES ('settings', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('sharebymail', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('sharebymail', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('sharebymail', 'types', 'filesystem');
INSERT INTO `oc_appconfig` VALUES ('systemtags', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('systemtags', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('systemtags', 'types', 'logging');
INSERT INTO `oc_appconfig` VALUES ('theming', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('theming', 'installed_version', '1.15.0');
INSERT INTO `oc_appconfig` VALUES ('theming', 'types', 'logging');
INSERT INTO `oc_appconfig` VALUES ('twofactor_backupcodes', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('twofactor_backupcodes', 'installed_version', '1.13.0');
INSERT INTO `oc_appconfig` VALUES ('twofactor_backupcodes', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('updatenotification', 'calendar', '3.3.2');
INSERT INTO `oc_appconfig` VALUES ('updatenotification', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('updatenotification', 'installed_version', '1.14.0');
INSERT INTO `oc_appconfig` VALUES ('updatenotification', 'mail', '1.13.4');
INSERT INTO `oc_appconfig` VALUES ('updatenotification', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('user_status', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('user_status', 'installed_version', '1.4.0');
INSERT INTO `oc_appconfig` VALUES ('user_status', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('weather_status', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('weather_status', 'installed_version', '1.4.0');
INSERT INTO `oc_appconfig` VALUES ('weather_status', 'types', '');
INSERT INTO `oc_appconfig` VALUES ('workflowengine', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('workflowengine', 'installed_version', '2.6.0');
INSERT INTO `oc_appconfig` VALUES ('workflowengine', 'types', 'filesystem');
COMMIT;

-- ----------------------------
-- Table structure for oc_authorized_groups
-- ----------------------------
DROP TABLE IF EXISTS `oc_authorized_groups`;
CREATE TABLE `oc_authorized_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `class` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admindel_groupid_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_authorized_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_authtoken
-- ----------------------------
DROP TABLE IF EXISTS `oc_authtoken`;
CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `login_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(5) unsigned DEFAULT 0,
  `remember` smallint(5) unsigned DEFAULT 0,
  `last_activity` int(10) unsigned DEFAULT 0,
  `last_check` int(10) unsigned DEFAULT 0,
  `scope` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `public_key` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 1,
  `password_invalid` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_authtoken
-- ----------------------------
BEGIN;
INSERT INTO `oc_authtoken` VALUES (89, 'admin', 'admin', 'BgWKjpZUpBoNMB+Ehx1e/YUa7+NgO60R/qpMPPLWRu0QN7UfI1Uk4W21o7J+YnpcIsjKSthp6euCuzb1dK2wGszWDjAM8q79KiJLTmneYKtgU7M6PJr7D8vX898Ywk/JkuXkn4uhQRBLfi6BkAo5ceFpGWqviDGeQLwN90ECv5orBoc7owxR0kYgnHw4SiNRYOU14pMm6tAW1IExSNMAcJKtOGHtbwotTMwgaI33VIv2S8IdjfPwZ/ewRO1BNBHR0vk0WtE5riygTEyqEWbQlrO2ECdDN3RYbrcd2AjCKtYeezjmE6rNd+U8zrLKz3+LaRhgXc5b29pjTjZlXuN0gg==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '690841aa5c0d595c61b25f5a0d61bc895f25e770b238f5c020249bed4af68e25a577102b9d767b7c72f4297591c93a5305ea34be7cbeaadca04957f24c5f03b6', 0, 1, 1655713721, 1655713660, NULL, NULL, '3a78e4d73f8bdde98fb3b5381c5c052eebc0750347061b771f5e724c9ede20a292f116245e598b9295e8f2fbd2cfe06f4d70e1e4fd00f20bc76b1b8c38de07bd64d0994439cffd1d4c08506a9ad52e11da47247317416535fbd50f547fbbf6a846546813117cc454317e5ef072d391122a0b8c4010dd77901fc4750721386d74c7ba9a45f55e58b61e5e9ad816b98fea296ec485d6d4c575340f8afc2b4182773fa3d8dbe6be9c78cf1cdbc59ee45067934aa91d12e1c54953f557c322e4fdf51cea58ebc45dc258643a7f8189d2b0831ec16a1d00525557018ab95bf5008b7677194069a762d5cebe6a2fd0b84101db45d26de609b7945a2ab77835fbb05c6cab14b24f765458ba4e9fd038514e060cc190f493f3819c63a075f5c294dd09204d8711a0c50a634cbb34c8a491f5e600357ff8de4fa63e0e60b820884f8f30a3244041182a22d8616d0244febbc6b3f6c44df074d17fde49a63cbb44333832791ffab994229f914c13b30b8f205224f8c3c424e7061440729165c63af216a26b5034ca9071a7b38fc4f9f347187dd18362f67c6500de11071f00e1ba94f716b6613be75568a4222d53a7791174e49d4a328c1182b8e2c1d2f4c2ae1ea68bd3b6563ebaec5948e8df3e1768ac2d06640d3945f5e4f68b90ba538a89d482aafaa97d936b17e9aca5260c687cdd90b6019bcfc3fc04564f7d8785c97cafbaf38b369cdddfd6498c075ff7c5cc7e96729cf178cf66904bfa239bb977acbc1019d17e9c3780ea36073eb704c6ce4ad9b783d365b99d46bd9ed625ee75b07db7e0747cd02067e2af707d6ada7cdc067d011abc831dfe1518ec9f155e380c35edce6500b5760ae366591aed246021455ab0ee7838242c074b08d03dfd7db2e7fab41fc56253b597f3c9af9d1a30a835bd7bc8635acde328ae04df776c2724b91b9c01860e29d921ee74bf000dd2b8b10ff72670a1f456d81eee4ff664ba52d75d30367524d84d153925a3a0042bc93b54ae7d5c47b431756318f6f003268a516f6e7924108449fc598a402d9db33e32f56a4f5ccd01817df98bea0c4b40285d21c6df5c9a89f8bff3254343923f7df3559756f22556a86fe8570632d0bbf18efbb1a755dd6efd78435429dbed7e2425b8e94049372a847dc57a74f9bfeb787f0a17c009f72ff0d76dd417bef7849334e489487a971c8fe1cf996c733241f798d3cbb31bbf72f2848f46d25ddb8bc6fdfb82b4339bbcaa0e0656f0cd9d88dfa1eaa2162f4100cfac3494fbd63be86506650f1ae2c255d40460d9edb40bbc552b78a87485ca6d0d64dc0c367d8826b21455c7cbb42fd5b32876a179d07ac171dbb3e52177119e2a7a4bd77c164b921765a59adac18398f266c682e83232ba42aab4e69be041fd28281bd6a16b8a64a5f02f328bdc5d3090e2d14576227201f688a202c12d0ea05948ac5d17db5c23766c06a0be5534ed53df5983356616d9527564507511a3c9c779c72c39e6588be4f870e30ea6465caf93b4bd1324f6e9070b8e21b1955bc4a0e4b9a0b858c2ce18927b4829cd7bf3f6f134f0366810ab80e0758c4b19bb283ac2782383e00975c29e1175f4a5d41146a7922c2dd9d14580d71919dac1fe0def3a2c3ca8f45886db4dc4cd0e4b951f3dcc51f8c138a65cc0e221e93a2ba4040d10c08b16054b43136c75dbf1229de9e953a4bde0475655f1b307c0d7fdd10674dd3f8092d8920ebf0862d6ddfcef52ed8f53d7e9ccc022e9b4d84fc4045a87080ddffb4f39443ddb06cbe2d2bb15ba7eb6c8074533f03bf1c389e6369e0b53a6e06d56a80fc66f45cc6b0e1a8a4f5aed1b536fc9a2287f046b1ffc8f97d56e9996c7a74edc7cf29793ccf60baa7dcf2d2ec580baa78e2e000f03b7dac34a086e0b178ca38378e1ad2487b1a9da2ad640e66efd24d7d04d39a063350e56cd0663879af2fa3b652c31c43f24c9f7f94e82d841f71ac5f980c428b9fa13dd0af59d6b28b76151948e4a8db83fe06117c4d2b86b84e9ff9968c407e3277587f3e17d6781e87e098acc851d4d2b57466e44a54c53acaceb89dfff7d0586982be7c7c98aabf523ea15207d1ce05dc34b79eabb4a4c26dd619d13c86b0076dbaac4b477581af32cd3ac68b04c82445c7c9cd565bec75a5593b391838118fbffa2d15d173a2882e1a7dd944c0966613a2b010dbf2294ad420f5f0f802413dcc20c03ae9c018a8a7bed47b1318eba8326743ec197c2e0fd99d049a23ef0ef3f07eacbfbabc8f95d15efde81fa487acb9cdafff6c71942e6ea70717aaf1027a949c945d28e54a309e2cce435970519eb48e662be50936f653a079d46852a8401ec06bb55a7b1fe7000a8a00199ad32be5c40681615ca5fd04f55b4312c6ab919bbb2998eda7a55c681a7af3929e4f10358a2|8d04a8c1a5a9917d355e0fad7e484504|1f13842d797f2ae0f29fe790157b1b962fc8591d81831859b742252fa3e9e2c393dbe889585ff8fcd64c78a6763284356d387102f5ad3259cb9fbc061f340040|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo/9GppaOmtrUV6A7dga5\n0JO3AIGDTTTcnPxZB6RushtAZL25J675N4eYVm10t0vUgMZyAYxmUAs7dFo9ZQu8\nHVezg68nirYDRbeU+7QAiPzWK7Sner4tk4exGkFJhH9qFbD0JCMXLEmEVXmLv+dk\nuTzdYszBNzEcWah5oXwntw0gDcuFu2VwSeoTUpvV5YwNP84ivxw/k/6WuB07DMmW\n/rYlrGYsjxY7ZHRvzDtD7PxvPGbuS/kAQhbr+CK132BB0OI3md3nbNjgFRdqPcDh\n8yqGTDP5fYMFbdm5hSklh+AiDxJkZuul/EIOgxjGYGULT6JN9gaNI1QZAWp87nkz\nOQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for oc_bruteforce_attempts
-- ----------------------------
DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `occurred` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `metadata` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_bruteforce_attempts
-- ----------------------------
BEGIN;
INSERT INTO `oc_bruteforce_attempts` VALUES (1, 'login', 1647210746, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"khoa-dev@hotmail.com\"}');
INSERT INTO `oc_bruteforce_attempts` VALUES (2, 'login', 1650551184, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"admin\"}');
INSERT INTO `oc_bruteforce_attempts` VALUES (4, 'login', 1653614141, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"kamil\"}');
INSERT INTO `oc_bruteforce_attempts` VALUES (5, 'login', 1653614156, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"admin\"}');
INSERT INTO `oc_bruteforce_attempts` VALUES (6, 'login', 1653614166, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"admin\"}');
INSERT INTO `oc_bruteforce_attempts` VALUES (7, 'login', 1653614177, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"admin\"}');
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_appt_bookings
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_appt_bookings`;
CREATE TABLE `oc_calendar_appt_bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appt_config_id` bigint(20) unsigned NOT NULL,
  `created_at` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `timezone` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `confirmed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_bk_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_appt_bookings
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_appt_configs
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_appt_configs`;
CREATE TABLE `oc_calendar_appt_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `location` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `visibility` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `target_calendar_uri` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `calendar_freebusy_uris` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `availability` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `preparation_duration` int(11) NOT NULL DEFAULT 0,
  `followup_duration` int(11) NOT NULL DEFAULT 0,
  `time_before_next_slot` int(11) DEFAULT NULL,
  `daily_max` int(11) DEFAULT NULL,
  `future_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_appt_configs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_invitations
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_invitations`;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrenceid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attendee` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sequence` bigint(20) unsigned DEFAULT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_invitations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_reminders
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_reminders`;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `alarm_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) unsigned NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_reminders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_resources
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_resources`;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_resources_md
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_resources_md`;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_resources_md
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_rooms
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_rooms`;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_rooms
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendar_rooms_md
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendar_rooms_md
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendarchanges
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendarchanges`;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendarchanges
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendarobjects
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendarobjects`;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarid` bigint(20) unsigned NOT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `componenttype` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstoccurence` bigint(20) unsigned DEFAULT NULL,
  `lastoccurence` bigint(20) unsigned DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `classification` int(11) DEFAULT 0,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendarobjects
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendarobjects_props
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendarobjects_props`;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint(20) NOT NULL DEFAULT 0,
  `objectid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parameter` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendarobjects_props
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_calendars
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendars`;
CREATE TABLE `oc_calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `components` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`),
  KEY `cals_princ_del_idx` (`principaluri`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendars
-- ----------------------------
BEGIN;
INSERT INTO `oc_calendars` VALUES (1, 'principals/system/system', 'Contact birthdays', 'contact_birthdays', 1, NULL, 0, '#E9D859', NULL, 'VEVENT', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oc_calendarsubscriptions
-- ----------------------------
DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `source` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendarsubscriptions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_cards
-- ----------------------------
DROP TABLE IF EXISTS `oc_cards`;
CREATE TABLE `oc_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `carddata` longblob DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` bigint(20) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`),
  KEY `cards_abiduri` (`addressbookid`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_cards
-- ----------------------------
BEGIN;
INSERT INTO `oc_cards` VALUES (4, 1, 0x424547494E3A56434152440D0A56455253494F4E3A332E300D0A50524F4449443A2D2F2F53616272652F2F536162726520564F626A65637420342E342E312F2F454E0D0A5549443A757365720D0A464E3A757365720D0A4E3A757365723B3B3B3B0D0A434C4F55443A75736572406C6F63616C686F73743A343030300D0A454E443A56434152440D0A, 'Database:user.vcf', 1655713139, 'b1a2c2c8ac874ff740dc7668239ec31b', 137, 'user');
COMMIT;

-- ----------------------------
-- Table structure for oc_cards_properties
-- ----------------------------
DROP TABLE IF EXISTS `oc_cards_properties`;
CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `cardid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_cards_properties
-- ----------------------------
BEGIN;
INSERT INTO `oc_cards_properties` VALUES (42, 1, 4, 'UID', 'user', 0);
INSERT INTO `oc_cards_properties` VALUES (43, 1, 4, 'FN', 'user', 0);
INSERT INTO `oc_cards_properties` VALUES (44, 1, 4, 'N', 'user;;;;', 0);
INSERT INTO `oc_cards_properties` VALUES (45, 1, 4, 'CLOUD', 'user@localhost:4000', 0);
COMMIT;

-- ----------------------------
-- Table structure for oc_collres_accesscache
-- ----------------------------
DROP TABLE IF EXISTS `oc_collres_accesscache`;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `collection_id` bigint(20) NOT NULL DEFAULT 0,
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `access` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_collres_accesscache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_collres_collections
-- ----------------------------
DROP TABLE IF EXISTS `oc_collres_collections`;
CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_collres_collections
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_collres_resources
-- ----------------------------
DROP TABLE IF EXISTS `oc_collres_resources`;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_collres_resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_comments
-- ----------------------------
DROP TABLE IF EXISTS `oc_comments`;
CREATE TABLE `oc_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `topmost_parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `children_count` int(10) unsigned NOT NULL DEFAULT 0,
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `verb` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reference_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `reactions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_comments_read_markers
-- ----------------------------
DROP TABLE IF EXISTS `oc_comments_read_markers`;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_comments_read_markers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_dav_cal_proxy
-- ----------------------------
DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `proxy_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `permissions` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_dav_cal_proxy
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_dav_shares
-- ----------------------------
DROP TABLE IF EXISTS `oc_dav_shares`;
CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) unsigned NOT NULL,
  `publicuri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_dav_shares
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_direct_edit
-- ----------------------------
DROP TABLE IF EXISTS `oc_direct_edit`;
CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `accessed` tinyint(1) DEFAULT 0,
  `file_path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`),
  KEY `direct_edit_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_direct_edit
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_directlink
-- ----------------------------
DROP TABLE IF EXISTS `oc_directlink`;
CREATE TABLE `oc_directlink` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_directlink
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_federated_reshares
-- ----------------------------
DROP TABLE IF EXISTS `oc_federated_reshares`;
CREATE TABLE `oc_federated_reshares` (
  `share_id` bigint(20) NOT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_federated_reshares
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_file_locks
-- ----------------------------
DROP TABLE IF EXISTS `oc_file_locks`;
CREATE TABLE `oc_file_locks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT 0,
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB AUTO_INCREMENT=12231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_file_locks
-- ----------------------------
BEGIN;
INSERT INTO `oc_file_locks` VALUES (12086, 0, 'encryption-generateSharedKey', 1655714697);
INSERT INTO `oc_file_locks` VALUES (12087, 0, 'files/8c39f12270d47564bd2ea9ea9439ad53', 1655714704);
INSERT INTO `oc_file_locks` VALUES (12088, 0, 'files/4dab8fc1868cb91d8c12dffab6ad8380', 1655717322);
INSERT INTO `oc_file_locks` VALUES (12089, 0, 'encryption-generateMasterKey', 1655714704);
INSERT INTO `oc_file_locks` VALUES (12102, 0, 'files/b140b3b990556a565580577a50e60876', 1655714741);
INSERT INTO `oc_file_locks` VALUES (12103, 0, 'files/b8041299bf4edf437cd282c23dff6e75', 1655714741);
INSERT INTO `oc_file_locks` VALUES (12104, 0, 'files/1cf520301bfd6b1431a1dda00793d73b', 1655717322);
INSERT INTO `oc_file_locks` VALUES (12106, 0, 'files/b6ef755cfc70b5eb94f5d3aad8ba833d', 1655717322);
INSERT INTO `oc_file_locks` VALUES (12110, 0, 'files/5d7ce65432968502acdc5533aacaa4b7', 1655716696);
INSERT INTO `oc_file_locks` VALUES (12111, 0, 'files/c7ca43b4ba63d50ad3ea752d3b130baa', 1655716694);
INSERT INTO `oc_file_locks` VALUES (12112, 0, 'files/65c53ef8da1d746c1e6ae702ac2c84fe', 1655715768);
INSERT INTO `oc_file_locks` VALUES (12113, 0, 'files/a92cb4bf48a247412e47d6789673a651', 1655715768);
INSERT INTO `oc_file_locks` VALUES (12114, 0, 'files/802cbd0fdff123b1b00d63348eca2be7', 1655716739);
INSERT INTO `oc_file_locks` VALUES (12115, 0, 'files/1698d83dd27c7775e1cb90bad26e5567', 1655716739);
INSERT INTO `oc_file_locks` VALUES (12133, 0, 'files/421bacee5aa734532bd700a79886b384', 1655716740);
INSERT INTO `oc_file_locks` VALUES (12134, 0, 'files/1052350a88d2d1aac5009dc2ad80e5b6', 1655716740);
INSERT INTO `oc_file_locks` VALUES (12147, 0, 'files/ef126d0c6e6c6e518ba0d5cbd88f64a2', 1655717320);
INSERT INTO `oc_file_locks` VALUES (12148, 0, 'files/4baf5c020a5e1608bf7d1506f83d8fe4', 1655717081);
INSERT INTO `oc_file_locks` VALUES (12149, 0, 'files/aef894266018a34f48c5bfd4a5c1de5a', 1655717272);
INSERT INTO `oc_file_locks` VALUES (12150, 0, 'files/992d299d65c32f6c9045148c430ef1b9', 1655717272);
INSERT INTO `oc_file_locks` VALUES (12176, 0, 'files/67df3ed73bbdccfb29e55bb3072b4309', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12177, 0, 'files/25d94fc0fdd3ee14c0f767b870e1a8b9', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12178, 0, 'files/8ed6b927fff3d00c93afb89ae911e561', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12179, 0, 'files/af5a54c1a4e3dffa373886acd2ae5bd2', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12180, 0, 'files/54c64e266cb97ac45156d9495799db1c', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12181, 0, 'files/622cdef6f8af9ecd25a7b99d897bcddf', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12182, 0, 'files/582c247bd27a2b4adb1a50152c588116', 1655717082);
INSERT INTO `oc_file_locks` VALUES (12189, 0, 'files/44ed6eb6a171539648519454ef9a8fb6', 1655717314);
INSERT INTO `oc_file_locks` VALUES (12190, 0, 'files/3c4568c1d65c3083113b7e681f55ca07', 1655717272);
INSERT INTO `oc_file_locks` VALUES (12193, 0, 'files/7c2cf0be184780b45f48ab8319d3538d', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12194, 0, 'files/8373807dc7c6ef3d5dec26c6ea88b1f8', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12195, 0, 'files/04f3da1d8b7dd5b33b20893f37f79117', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12196, 0, 'files/1cd7ab36b39ff7552e728a8d08a2e40f', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12197, 0, 'files/0ea68420cef40b58bb55b922b777f523', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12198, 0, 'files/6c52bf1f7270add39ff961be5b014f71', 1655717274);
INSERT INTO `oc_file_locks` VALUES (12199, 0, 'files/9b30c21e7994766a6786f94e55186547', 1655717274);
COMMIT;

-- ----------------------------
-- Table structure for oc_filecache
-- ----------------------------
DROP TABLE IF EXISTS `oc_filecache`;
CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage` bigint(20) NOT NULL DEFAULT 0,
  `path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT 0,
  `mimepart` bigint(20) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `mtime` bigint(20) NOT NULL DEFAULT 0,
  `storage_mtime` bigint(20) NOT NULL DEFAULT 0,
  `encrypted` int(11) NOT NULL DEFAULT 0,
  `unencrypted_size` bigint(20) NOT NULL DEFAULT 0,
  `etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT 0,
  `checksum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `publish_check` tinyint(1) NOT NULL DEFAULT 0,
  `publish_checks` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_id_storage_size` (`fileid`,`storage`,`size`),
  KEY `fs_mtime` (`mtime`),
  KEY `fs_size` (`size`),
  KEY `fs_storage_path_prefix` (`storage`,`path`(64))
) ENGINE=InnoDB AUTO_INCREMENT=1742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_filecache
-- ----------------------------
BEGIN;
INSERT INTO `oc_filecache` VALUES (79, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 4702948, 1654035817, 1654035816, 0, 0, '62969569c93ab', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (80, 1, 'appdata_ocizsgb115cv', 'cbf3597e0817748521f09c24fb3e4dae', 79, 'appdata_ocizsgb115cv', 2, 1, 4702948, 1650551179, 1650551179, 0, 0, '62923ea6b338a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (81, 1, 'appdata_ocizsgb115cv/preview', '6a09aa3b104a938165fb63912dbc8513', 80, 'preview', 2, 1, 1079582, 1653751481, 1653751481, 0, 0, '62923ebd61ef5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (82, 1, 'appdata_ocizsgb115cv/preview/d', '034d5dd127c319f312f5a550bd953852', 81, 'd', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcc42883', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (83, 1, 'appdata_ocizsgb115cv/preview/b', '5f4df68a8aabb151aa74fb004ba560c0', 81, 'b', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923ede7d736', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (84, 1, 'appdata_ocizsgb115cv/preview/5', 'd29a727e5f60d92aafbbace9e945f3e7', 81, '5', 2, 1, 0, 1653651885, 1653651885, 0, 0, '62923ea6dc36f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (85, 1, 'appdata_ocizsgb115cv/preview/9', 'd2019929fb0df1a6de84ec1c46467d8c', 81, '9', 2, 1, 21030, 1653945483, 1653945483, 0, 0, '629537f0e52fe', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (86, 1, 'appdata_ocizsgb115cv/preview/e', '799d6839113f0e5af1caf2de1c14af61', 81, 'e', 2, 1, 67952, 1653947848, 1653947848, 0, 0, '62953dc90acec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (87, 1, 'appdata_ocizsgb115cv/preview/c', '31811596e86f63b70139f1ac47050505', 81, 'c', 2, 1, 21009, 1653921727, 1653921727, 0, 0, '6294d7ff88de7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (88, 1, 'appdata_ocizsgb115cv/preview/0', '5fb3f5b6c286a6429c7144b8366668cc', 81, '0', 2, 1, 265054, 1653947849, 1653947849, 0, 0, '62953dc9ac28a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (89, 1, 'appdata_ocizsgb115cv/preview/a', '8374015c75b0e6a3474387049fa94cff', 81, 'a', 2, 1, 17517, 1653751463, 1653751463, 0, 0, '62923ea89c9ab', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (90, 1, 'appdata_ocizsgb115cv/preview/2', 'ccc92865753e4347cb70290f12ab5970', 81, '2', 2, 1, 290967, 1653947850, 1653947850, 0, 0, '62953dcae20a8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (91, 1, 'appdata_ocizsgb115cv/preview/8', '1ee4c1a104a004b756ec36b97440b732', 81, '8', 2, 1, 215175, 1653742549, 1653742549, 0, 0, '62923ea6dc41f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (92, 1, 'appdata_ocizsgb115cv/preview/7', 'b39efa11c3a8f6a09a7e851d72846054', 81, '7', 2, 1, 121723, 1653947849, 1653947849, 0, 0, '62953dca5115d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (93, 1, 'appdata_ocizsgb115cv/preview/3', '8a1f743625ce3b47f0e61396444b1a04', 81, '3', 2, 1, 22045, 1653921791, 1653921791, 0, 0, '6294db301dcec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (94, 1, 'appdata_ocizsgb115cv/preview/4', '53dd396fc3324b2b13d50cb5bfa511aa', 81, '4', 2, 1, 0, 1653751520, 1653751520, 0, 0, '6294d7bf5083b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (95, 1, 'appdata_ocizsgb115cv/preview/1', '90099711c6210fb2687a031ad9e5e8e4', 81, '1', 2, 1, 37110, 1653946701, 1653946701, 0, 0, '6295394e8371f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (96, 1, 'appdata_ocizsgb115cv/preview/3/5', '21bd3eb91476c477cf9a4043768bdbf8', 93, '5', 2, 1, 0, 1653946665, 1653946665, 0, 0, '6297afebe3def', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (97, 1, 'appdata_ocizsgb115cv/preview/3/5/f', '52ab7fd70170aed426e607752546e7f5', 96, 'f', 2, 1, 0, 1653751462, 1653751462, 0, 0, '62923ea714c52', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (98, 1, 'appdata_ocizsgb115cv/preview/3/5/f/4', '8ee5d4d7071cfbd3450b006d6dda1fb3', 97, '4', 2, 1, 0, 1653751462, 1653751462, 0, 0, '62923ea70eac9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (99, 1, 'appdata_ocizsgb115cv/preview/3/5/f/4/a', '8ddaf95a961234157c68cea25eed423c', 98, 'a', 2, 1, 0, 1653751462, 1653751462, 0, 0, '62923ea7088e1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (100, 1, 'appdata_ocizsgb115cv/preview/3/5/f/4/a/8', '176076432fbb950afcdca6e3e446aebc', 99, '8', 2, 1, 0, 1653751462, 1653751462, 0, 0, '62923ea7026b3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (101, 1, 'appdata_ocizsgb115cv/preview/3/5/f/4/a/8/d', '0079b4f27783c96f803a03cde13d1668', 100, 'd', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923ea6f0719', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (103, 1, 'appdata_ocizsgb115cv/preview/a/a', '09dd4101cf4e51f82786f5c7675d6db6', 89, 'a', 2, 1, 0, 1653751463, 1653751463, 0, 0, '62923ea82df21', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (104, 1, 'appdata_ocizsgb115cv/preview/a/a/b', '5fbfb18a6ccb677e3644242a163a3744', 103, 'b', 2, 1, 0, 1653751463, 1653751463, 0, 0, '62923ea827d95', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (105, 1, 'appdata_ocizsgb115cv/preview/a/a/b/3', '292f24cb933bcb40476103bba233ef0c', 104, '3', 2, 1, 0, 1653751463, 1653751463, 0, 0, '62923ea821b7f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (106, 1, 'appdata_ocizsgb115cv/preview/a/a/b/3/2', '8dc23b6746a36e130e85abafb62890b9', 105, '2', 2, 1, 0, 1653751463, 1653751463, 0, 0, '62923ea81b7e6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (107, 1, 'appdata_ocizsgb115cv/preview/a/a/b/3/2/3', 'e24be7e81ad790db5c432b45a48ed6e1', 106, '3', 2, 1, 0, 1653751463, 1653751463, 0, 0, '62923ea815654', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (108, 1, 'appdata_ocizsgb115cv/preview/a/a/b/3/2/3/8', 'fd3c172404503e6b67167e7d6525aa22', 107, '8', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923ea7d493f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (110, 1, 'appdata_ocizsgb115cv/preview/7/0', '63ea9212fc8f8b7deefbe43f0808b9f7', 92, '0', 2, 1, 0, 1653751464, 1653751464, 0, 0, '62923ea8d7496', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (111, 1, 'appdata_ocizsgb115cv/preview/7/0/e', '78dde236892f09e2168eba59e96f39e3', 110, 'e', 2, 1, 0, 1653751464, 1653751464, 0, 0, '62923ea8d1373', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (112, 1, 'appdata_ocizsgb115cv/preview/7/0/e/f', 'da6006b83a56098489dc863548b93e5a', 111, 'f', 2, 1, 0, 1653751464, 1653751464, 0, 0, '62923ea8c8ff0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (113, 1, 'appdata_ocizsgb115cv/preview/7/0/e/f/d', 'ab0a9ca7090c2a1c29511970d0926416', 112, 'd', 2, 1, 0, 1653751464, 1653751464, 0, 0, '62923ea8c2e00', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (114, 1, 'appdata_ocizsgb115cv/preview/7/0/e/f/d/f', '307219a2ca543093b298bb2c38bd1de2', 113, 'f', 2, 1, 0, 1653751464, 1653751464, 0, 0, '62923ea8b6a3b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (115, 1, 'appdata_ocizsgb115cv/preview/7/0/e/f/d/f/2', '17bfec8a3df0c2d871fa500b42901777', 114, '2', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923ea8b0838', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (117, 1, 'appdata_ocizsgb115cv/preview/6', '6f5bb5ca2488176c6ebec2f0bd687fb2', 81, '6', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394f3aa57', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (118, 1, 'appdata_ocizsgb115cv/preview/6/f', 'ae0d9f19d96e6e111c8b04d37448245e', 117, 'f', 2, 1, 0, 1653751465, 1653751465, 0, 0, '62923eaa003be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (119, 1, 'appdata_ocizsgb115cv/preview/6/f/4', 'cac72f9f97687d91d57f1c992993b26a', 118, '4', 2, 1, 0, 1653751465, 1653751465, 0, 0, '62923ea9f04b1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (120, 1, 'appdata_ocizsgb115cv/preview/6/f/4/9', '2500d857f2caf5690184daaf9f1ab8de', 119, '9', 2, 1, 0, 1653751465, 1653751465, 0, 0, '62923ea9ec346', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (121, 1, 'appdata_ocizsgb115cv/preview/6/f/4/9/2', '177080db072c04409a1ac2d0bdcfd7b6', 120, '2', 2, 1, 0, 1653751465, 1653751465, 0, 0, '62923ea9e81ff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (122, 1, 'appdata_ocizsgb115cv/preview/6/f/4/9/2/2', 'ccd94b985065e11aab2f7842db31a804', 121, '2', 2, 1, 0, 1653751465, 1653751465, 0, 0, '62923ea9e40a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (123, 1, 'appdata_ocizsgb115cv/preview/6/f/4/9/2/2/f', '4a94981cbb56bc879c0c8e2fa26a4869', 122, 'f', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923ea9dff50', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (127, 1, 'appdata_ocizsgb115cv/preview/1/f', '8c7f0747d68f27e7f9c96a0f17825507', 95, 'f', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eab31a90', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (128, 1, 'appdata_ocizsgb115cv/preview/1/f/0', 'beba64375472c3a509e00247d9f50dab', 127, '0', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eab2b8b6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (129, 1, 'appdata_ocizsgb115cv/preview/1/f/0/e', 'db9a042299e8c95958e772b90ea709f1', 128, 'e', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eab2158e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (130, 1, 'appdata_ocizsgb115cv/preview/1/f/0/e/3', 'ecc5d4dfafcff8f4da60a6858555d1a7', 129, '3', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eab1b3cd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (131, 1, 'appdata_ocizsgb115cv/preview/1/f/0/e/3/d', '04ae11456bd8ac0d71add768cb5e51fc', 130, 'd', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eab151d2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (132, 1, 'appdata_ocizsgb115cv/preview/1/f/0/e/3/d/a', '4497a9cbae1a6fff7b13fae5b73dfa9f', 131, 'a', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923eab0f00a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (134, 1, 'appdata_ocizsgb115cv/preview/6/5', '578d3504cbd28f02a2236f0f7dfaedc2', 117, '5', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eabdf23f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (135, 1, 'appdata_ocizsgb115cv/preview/6/5/1', '8043bcb955e599beb631f90af43a094a', 134, '1', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eabc8a91', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (136, 1, 'appdata_ocizsgb115cv/preview/6/5/1/2', 'efad3a31da00e3084f86e378170152ef', 135, '2', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eabba682', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (137, 1, 'appdata_ocizsgb115cv/preview/6/5/1/2/b', '1aa754e482251d4d0f0ce405f03d98a0', 136, 'b', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eabb0360', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (138, 1, 'appdata_ocizsgb115cv/preview/6/5/1/2/b/d', '15c1136feac6360f5851191cd28078b4', 137, 'd', 2, 1, 0, 1653751467, 1653751467, 0, 0, '62923eabaa173', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (139, 1, 'appdata_ocizsgb115cv/preview/6/5/1/2/b/d/4', 'fd59359be8b706c79c4fe910fb839ff8', 138, '4', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923eaba3fa8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (141, 1, 'appdata_ocizsgb115cv/preview/c/2', '26d248151113b5fae1ff0df34cd426a7', 87, '2', 2, 1, 0, 1653643247, 1653643247, 0, 0, '62923eacaedb4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (142, 1, 'appdata_ocizsgb115cv/preview/c/2/0', 'a69360159fdc7736f895de8e3343049f', 141, '0', 2, 1, 0, 1653751468, 1653751468, 0, 0, '62923eaca29e7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (143, 1, 'appdata_ocizsgb115cv/preview/c/2/0/a', '5ed54c27226422daa1b79f53cd25e892', 142, 'a', 2, 1, 0, 1653751468, 1653751468, 0, 0, '62923eac96607', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (144, 1, 'appdata_ocizsgb115cv/preview/c/2/0/a/d', '0492f7e515f9b7bb6c8572bab0955b15', 143, 'd', 2, 1, 0, 1653751468, 1653751468, 0, 0, '62923eac90443', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (145, 1, 'appdata_ocizsgb115cv/preview/c/2/0/a/d/4', '277b1f27295bc9f49c7158a4d556893c', 144, '4', 2, 1, 0, 1653751468, 1653751468, 0, 0, '62923eac8a239', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (146, 1, 'appdata_ocizsgb115cv/preview/c/2/0/a/d/4/d', '720aae70a11d1e57ed0fae8491d5f368', 145, 'd', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923eac84171', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (148, 1, 'appdata_ocizsgb115cv/preview/9/8', 'c75eb7d2804c7d6c5bf634e4bd63296b', 85, '8', 2, 1, 21030, 1653751469, 1653751469, 0, 0, '62923eadcbd3f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (149, 1, 'appdata_ocizsgb115cv/preview/9/8/f', 'd8844aaf334500c4d265b45acb57e775', 148, 'f', 2, 1, 0, 1653751469, 1653751469, 0, 0, '62923eadc3a83', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (150, 1, 'appdata_ocizsgb115cv/preview/9/8/f/1', 'a38635cb18947da02e2a94e4795dc60f', 149, '1', 2, 1, 0, 1653751469, 1653751469, 0, 0, '62923eadbf936', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (151, 1, 'appdata_ocizsgb115cv/preview/9/8/f/1/3', 'c1a8b2adc461badcc5b7f6203906023f', 150, '3', 2, 1, 0, 1653751469, 1653751469, 0, 0, '62923eadb5618', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (152, 1, 'appdata_ocizsgb115cv/preview/9/8/f/1/3/7', '34067c0cd76851654d26d2b5fcbd21b3', 151, '7', 2, 1, 0, 1653751469, 1653751469, 0, 0, '62923eadb14ea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (153, 1, 'appdata_ocizsgb115cv/preview/9/8/f/1/3/7/0', '30ea9391d5809cf116a1e5ca447e8e45', 152, '0', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923ead9efaa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (155, 1, 'appdata_ocizsgb115cv/preview/c/5', '55acfb0830e79ba710de042799f09649', 87, '5', 2, 1, 0, 1653751470, 1653751470, 0, 0, '62923eae584ca', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (156, 1, 'appdata_ocizsgb115cv/preview/c/5/1', '6d119666207e2eeed4cd7812fc4386bf', 155, '1', 2, 1, 0, 1653751470, 1653751470, 0, 0, '62923eae4c0fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (157, 1, 'appdata_ocizsgb115cv/preview/c/5/1/c', 'cd65b55472d2da2a83bb82edfe84e6b6', 156, 'c', 2, 1, 0, 1653751470, 1653751470, 0, 0, '62923eae45f3a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (158, 1, 'appdata_ocizsgb115cv/preview/c/5/1/c/e', 'f62dc96d3fd89c10856bba2acfd7101b', 157, 'e', 2, 1, 0, 1653751470, 1653751470, 0, 0, '62923eae3dc88', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (159, 1, 'appdata_ocizsgb115cv/preview/c/5/1/c/e/4', '608f05f78c3c121561fe62c4270a2292', 158, '4', 2, 1, 0, 1653751470, 1653751470, 0, 0, '62923eae37ad2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (160, 1, 'appdata_ocizsgb115cv/preview/c/5/1/c/e/4/1', '372d796e931f8a2c8f9744332e41cccb', 159, '1', 2, 1, 0, 1654034462, 1654034462, 0, 0, '62923eae318cc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (166, 1, 'appdata_ocizsgb115cv/preview/f', 'e465a7d4541bc20d0bdd496529e34aa1', 81, 'f', 2, 1, 0, 1653946703, 1653946703, 0, 0, '62953dc85bb63', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (167, 1, 'appdata_ocizsgb115cv/preview/f/c', 'ad06bdeefdf086cb20707b143ce569db', 166, 'c', 2, 1, 0, 1653751481, 1653751481, 0, 0, '62923eba0d358', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (168, 1, 'appdata_ocizsgb115cv/preview/f/c/4', '1c1b954c0a2f3706e5e295b782f036fd', 167, '4', 2, 1, 0, 1653751481, 1653751481, 0, 0, '62923eba071a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (169, 1, 'appdata_ocizsgb115cv/preview/f/c/4/9', '8b8dfb2961f02c537854ae04bd00cda7', 168, '9', 2, 1, 0, 1653751481, 1653751481, 0, 0, '62923eba00fac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (170, 1, 'appdata_ocizsgb115cv/preview/f/c/4/9/0', '2dc370ad230cdd37acebe98acd041e78', 169, '0', 2, 1, 0, 1653751481, 1653751481, 0, 0, '62923eb9eefd9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (171, 1, 'appdata_ocizsgb115cv/preview/f/c/4/9/0/c', '907fbe8934562c541e63871b779b9a93', 170, 'c', 2, 1, 0, 1653751481, 1653751481, 0, 0, '62923eb9e8e26', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (172, 1, 'appdata_ocizsgb115cv/preview/f/c/4/9/0/c/a', 'ebe57ffb7b7b646b5ba5073b64587783', 171, 'a', 2, 1, 0, 1654034463, 1654034463, 0, 0, '62923eb9e2c4c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (176, 1, 'appdata_ocizsgb115cv/preview/9/f', 'a1061a7d05a45b4d6995a744a982bd1f', 85, 'f', 2, 1, 0, 1653751485, 1653751485, 0, 0, '62923ebda9697', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (177, 1, 'appdata_ocizsgb115cv/preview/9/f/6', 'a25828a1ac36685ff002e16c6502b51c', 176, '6', 2, 1, 0, 1653751485, 1653751485, 0, 0, '62923ebd9d29e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (178, 1, 'appdata_ocizsgb115cv/preview/9/f/6/1', '82d4533a24fe867f9731712d04c1aa4d', 177, '1', 2, 1, 0, 1653751485, 1653751485, 0, 0, '62923ebd97091', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (179, 1, 'appdata_ocizsgb115cv/preview/9/f/6/1/4', 'c456e823572e3d0d188490d116c6db07', 178, '4', 2, 1, 0, 1653751485, 1653751485, 0, 0, '62923ebd90f12', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (180, 1, 'appdata_ocizsgb115cv/preview/9/f/6/1/4/0', 'b3c30dd884ed8fa59bc19ddcf37939d5', 179, '0', 2, 1, 0, 1653751485, 1653751485, 0, 0, '62923ebd8acc2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (181, 1, 'appdata_ocizsgb115cv/preview/9/f/6/1/4/0/8', '3326042a44d952d9df9707e36f17b4c2', 180, '8', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923ebd84add', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (185, 1, 'appdata_ocizsgb115cv/preview/d/8', '9c0e9755101b45077ab5a24789807e09', 82, '8', 2, 1, 0, 1653751515, 1653751515, 0, 0, '62923edbcc51d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (186, 1, 'appdata_ocizsgb115cv/preview/d/8/2', 'c2b25ff3f091524842a9f404eb7226cf', 185, '2', 2, 1, 0, 1653751515, 1653751515, 0, 0, '62923edbc6340', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (187, 1, 'appdata_ocizsgb115cv/preview/d/8/2/c', 'f2b98cfd7dd4c6ccedc83c0079955bc0', 186, 'c', 2, 1, 0, 1653751515, 1653751515, 0, 0, '62923edbc0142', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (188, 1, 'appdata_ocizsgb115cv/preview/d/8/2/c/8', 'ac5e8ec5157214ef713bedcde3dc6e85', 187, '8', 2, 1, 0, 1653751515, 1653751515, 0, 0, '62923edbb9f1d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (189, 1, 'appdata_ocizsgb115cv/preview/d/8/2/c/8/d', '88f22166d813bf79768e3556e26de32d', 188, 'd', 2, 1, 0, 1653751515, 1653751515, 0, 0, '62923edbb3cdc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (190, 1, 'appdata_ocizsgb115cv/preview/d/8/2/c/8/d/1', '6f60f45a413ed40307d0d4b2825a8a41', 189, '1', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923edbadb0c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (192, 1, 'appdata_ocizsgb115cv/preview/0/9', '114c8db7bb5ba15f68b31adf36a4146d', 88, '9', 2, 1, 0, 1653751516, 1653751516, 0, 0, '62923edcc2ccc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (193, 1, 'appdata_ocizsgb115cv/preview/0/9/3', '497aa5cba252ccb226767957cd2cd050', 192, '3', 2, 1, 0, 1653751516, 1653751516, 0, 0, '62923edcbcad7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (194, 1, 'appdata_ocizsgb115cv/preview/0/9/3/f', '15f6550b051df3b3c949b76a8cb76e41', 193, 'f', 2, 1, 0, 1653751516, 1653751516, 0, 0, '62923edcb68ec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (195, 1, 'appdata_ocizsgb115cv/preview/0/9/3/f/6', '92b43db0075758fa188137fe337fc74b', 194, '6', 2, 1, 0, 1653751516, 1653751516, 0, 0, '62923edcb0704', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (196, 1, 'appdata_ocizsgb115cv/preview/0/9/3/f/6/5', '01af5af80c4e950f8167a6bf480ceeac', 195, '5', 2, 1, 0, 1653751516, 1653751516, 0, 0, '62923edcaa516', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (197, 1, 'appdata_ocizsgb115cv/preview/0/9/3/f/6/5/e', 'd49d556a3a529a24f1dad0e87a551b67', 196, 'e', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923edca433a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (199, 1, 'appdata_ocizsgb115cv/preview/b/5', 'fff30a81332705b4aa21e8a2fdc69960', 83, '5', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923edd5395e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (200, 1, 'appdata_ocizsgb115cv/preview/b/5/3', '80865b3f51cef5208f06241db4a2bdbe', 199, '3', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923edd4953b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (201, 1, 'appdata_ocizsgb115cv/preview/b/5/3/b', 'c6721d09e0417b5a493fbeff43541e0b', 200, 'b', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923edd453d1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (202, 1, 'appdata_ocizsgb115cv/preview/b/5/3/b/3', 'd4da33c08b35c884410a7a1ec0e36d79', 201, '3', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923edd41270', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (203, 1, 'appdata_ocizsgb115cv/preview/b/5/3/b/3/a', '60dad7e4ab5ab0eb4c25ded9173f8c6f', 202, 'a', 2, 1, 0, 1653751517, 1653751517, 0, 0, '62923edd3d0fb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (204, 1, 'appdata_ocizsgb115cv/preview/b/5/3/b/3/a/3', 'ada00114545d022f68d9a0250fdfae2f', 203, '3', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923edd38fb0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (206, 1, 'appdata_ocizsgb115cv/preview/a/6', '3bdbc70ff7c03f2a05ce749737742f84', 89, '6', 2, 1, 17517, 1653744145, 1653744145, 0, 0, '62923ede1712a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (207, 1, 'appdata_ocizsgb115cv/preview/a/6/8', 'c12951faf59c15f600c04e4da3b5527f', 206, '8', 2, 1, 0, 1653744145, 1653744145, 0, 0, '62923ede0ace5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (208, 1, 'appdata_ocizsgb115cv/preview/a/6/8/4', 'd047689e783f17547f15a759dfbbe030', 207, '4', 2, 1, 0, 1653744145, 1653744145, 0, 0, '62923eddf2b45', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (209, 1, 'appdata_ocizsgb115cv/preview/a/6/8/4/e', 'de515c5808b683bebecaeeb204f54d0c', 208, 'e', 2, 1, 0, 1653744145, 1653744145, 0, 0, '62923edde6762', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (210, 1, 'appdata_ocizsgb115cv/preview/a/6/8/4/e/c', '98187dec577476a0551531a038a09056', 209, 'c', 2, 1, 0, 1653744145, 1653744145, 0, 0, '62923eddda393', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (211, 1, 'appdata_ocizsgb115cv/preview/a/6/8/4/e/c/e', '2494d7e29d9451ceb3cc0fbf66f24180', 210, 'e', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923eddcdfcb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (215, 1, 'appdata_ocizsgb115cv/preview/e/a', 'ee45b7f0e24f42937ccd8c206a150363', 86, 'a', 2, 1, 0, 1653751518, 1653751518, 0, 0, '62923eded2d7d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (216, 1, 'appdata_ocizsgb115cv/preview/e/a/5', 'f8fb61006e4d4fe90168ffa5855f4896', 215, '5', 2, 1, 0, 1653751518, 1653751518, 0, 0, '62923edeccb94', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (217, 1, 'appdata_ocizsgb115cv/preview/e/a/5/d', '54b217d88f2fd4da68c7fb3ffd801492', 216, 'd', 2, 1, 0, 1653751518, 1653751518, 0, 0, '62923edec69a0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (218, 1, 'appdata_ocizsgb115cv/preview/e/a/5/d/2', 'c3dc9e53584b5817ff12f49bc81776b2', 217, '2', 2, 1, 0, 1653751518, 1653751518, 0, 0, '62923edec07bb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (219, 1, 'appdata_ocizsgb115cv/preview/e/a/5/d/2/f', 'e2d8fce2d9a5dbfb77640592bc63fc5e', 218, 'f', 2, 1, 0, 1653751518, 1653751518, 0, 0, '62923edeba5c8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (220, 1, 'appdata_ocizsgb115cv/preview/e/a/5/d/2/f/1', '11bd030d1c09c37e4b813fca8b79f762', 219, '1', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923edeaa109', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (222, 1, 'appdata_ocizsgb115cv/preview/7/f', 'fe3eb4ee1df11466736a915577c3b740', 92, 'f', 2, 1, 0, 1653751519, 1653751519, 0, 0, '62923edf79cb6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (223, 1, 'appdata_ocizsgb115cv/preview/7/f/3', '4a7f0ecb0665e700529e897ded66cc89', 222, '3', 2, 1, 0, 1653751519, 1653751519, 0, 0, '62923edf73ad1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (224, 1, 'appdata_ocizsgb115cv/preview/7/f/3/9', '3610081ab9355c55a8928ad15928b34d', 223, '9', 2, 1, 0, 1653751519, 1653751519, 0, 0, '62923edf6d8de', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (225, 1, 'appdata_ocizsgb115cv/preview/7/f/3/9/f', '913b1d17839114b3b1deacded050cfd6', 224, 'f', 2, 1, 0, 1653751519, 1653751519, 0, 0, '62923edf676ff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (226, 1, 'appdata_ocizsgb115cv/preview/7/f/3/9/f/8', 'eddb4dcd3575df77b8e1046d67969285', 225, '8', 2, 1, 0, 1653751519, 1653751519, 0, 0, '62923edf6153c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (227, 1, 'appdata_ocizsgb115cv/preview/7/f/3/9/f/8/3', '38b653d6a1fb6df3f1d57e03d956d401', 226, '3', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923edf5b337', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (229, 1, 'appdata_ocizsgb115cv/preview/4/4', '729b28c082d78d567ccc148c925b0aa8', 94, '4', 2, 1, 0, 1653751520, 1653751520, 0, 0, '62923ee024f76', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (230, 1, 'appdata_ocizsgb115cv/preview/4/4/f', '6cdc290eb9fde9bf81b778f744b2ad83', 229, 'f', 2, 1, 0, 1653751520, 1653751520, 0, 0, '62923ee020e2f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (231, 1, 'appdata_ocizsgb115cv/preview/4/4/f/6', 'c55258aae8f708a23849cbfdf99151cf', 230, '6', 2, 1, 0, 1653751520, 1653751520, 0, 0, '62923ee01cd17', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (232, 1, 'appdata_ocizsgb115cv/preview/4/4/f/6/8', 'bf31ec02b4f33213cea77668e5cdc431', 231, '8', 2, 1, 0, 1653751520, 1653751520, 0, 0, '62923ee017156', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (233, 1, 'appdata_ocizsgb115cv/preview/4/4/f/6/8/3', '8a96fe01518a8e57157de7e6aa31544c', 232, '3', 2, 1, 0, 1653751520, 1653751520, 0, 0, '62923ee0129a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (234, 1, 'appdata_ocizsgb115cv/preview/4/4/f/6/8/3/a', 'cb7214f88d109a98a04b436eee806ba7', 233, 'a', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923ee00e848', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (236, 1, 'appdata_ocizsgb115cv/preview/0/7', '50684c5022400804408267b2520d1a5b', 88, '7', 2, 1, 0, 1653744144, 1653744144, 0, 0, '62923ee10afef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (237, 1, 'appdata_ocizsgb115cv/preview/0/7/2', '2acd6cc49fa7981dfb72953fc558b22e', 236, '2', 2, 1, 0, 1653744144, 1653744144, 0, 0, '62923ee0ecc9c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (238, 1, 'appdata_ocizsgb115cv/preview/0/7/2/b', '6a92a2bbcb4bdf476db8842b131469e4', 237, 'b', 2, 1, 0, 1653744144, 1653744144, 0, 0, '62923ee0e08bf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (239, 1, 'appdata_ocizsgb115cv/preview/0/7/2/b/0', '3b0d4c45c01cb24e55ece3181c6428e9', 238, '0', 2, 1, 0, 1653744144, 1653744144, 0, 0, '62923ee0c406e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (240, 1, 'appdata_ocizsgb115cv/preview/0/7/2/b/0/3', '975fd860dcc64c85226deb707ab7ebbf', 239, '3', 2, 1, 0, 1653744144, 1653744144, 0, 0, '62923ee09d513', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (241, 1, 'appdata_ocizsgb115cv/preview/0/7/2/b/0/3/0', 'cc441e0ab7d7330e5d07ea4b8b50b6e1', 240, '0', 2, 1, 0, 1654087529, 1654087529, 0, 0, '62923ee08d01f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (290, 1, 'appdata_ocizsgb115cv/preview/8/3', '9242a6cead497a7ba3cce7f9948445b8', 91, '3', 2, 1, 0, 1651853670, 1651853670, 0, 0, '6292469a1f662', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (291, 1, 'appdata_ocizsgb115cv/preview/8/3/9', 'ac39d34401067b02fc2d69972e4afe28', 290, '9', 2, 1, 0, 1651853670, 1651853670, 0, 0, '6292469a19449', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (292, 1, 'appdata_ocizsgb115cv/preview/8/3/9/a', 'ce0658e031151a6af95d40dca1e91ad6', 291, 'a', 2, 1, 0, 1651853670, 1651853670, 0, 0, '6292469a13264', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (293, 1, 'appdata_ocizsgb115cv/preview/8/3/9/a/b', 'bb776e2ce505c75115a7844c5d0b429f', 292, 'b', 2, 1, 0, 1651853670, 1651853670, 0, 0, '62924699ecd17', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (294, 1, 'appdata_ocizsgb115cv/preview/8/3/9/a/b/4', '956c29399afd655e4c2b2f4cb4bf190c', 293, '4', 2, 1, 0, 1651853670, 1651853670, 0, 0, '62924699e6b14', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (295, 1, 'appdata_ocizsgb115cv/preview/8/3/9/a/b/4/6', '4298c847fade1944bb4ed10f2cf21c93', 294, '6', 2, 1, 0, 1653946703, 1653946703, 0, 0, '62924699e0b1e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (299, 1, 'appdata_ocizsgb115cv/css', '6d2e002cf3b068e3c84739ac922de9e7', 80, 'css', 2, 1, 958459, 1654035632, 1654035632, 0, 0, '6294d73437d62', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (300, 1, 'appdata_ocizsgb115cv/css/icons', '8a1e806e3935aaa86ee58b4432483a32', 299, 'icons', 2, 1, 150515, 1650551248, 1650551248, 0, 0, '6294d7342996f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (301, 1, 'appdata_ocizsgb115cv/css/icons/icons-list.template', 'aa9d65a1a878a092cb77a35588dadb80', 300, 'icons-list.template', 8, 3, 21214, 1655703055, 1655703055, 0, 0, '64c628138de310d9558e5b12743848dd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (302, 1, 'appdata_ocizsgb115cv/css/icons/icons-vars.css', '6bc58e480b44a88e6cae9a6864c82409', 300, 'icons-vars.css', 10, 5, 163001, 1655703055, 1655703055, 0, 0, '3ee8fc23f2042ffeb33c251dc5be5c3a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (303, 1, 'appdata_ocizsgb115cv/css/core', '76f2f1a87aea1258dd3f6619d468ef5b', 299, 'core', 2, 1, 526866, 1655703052, 1655703052, 0, 0, '6294d73477152', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (304, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-styles.css.deps', 'b3b9ee1281c29288415a0341fb85abda', 303, 'a86f-861b-styles.css.deps', 8, 3, 205, 1651263573, 1651263573, 0, 0, '20d9a2bced281955100af49628a29512', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (305, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-server.css.deps', '134d8c1fc716bca522040e39d024017e', 303, 'a86f-861b-server.css.deps', 8, 3, 927, 1650551248, 1650551248, 0, 0, '42a1c93aed7efe1abb6eab45631937d1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (306, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-header.css', 'd1fc47c059f77a84f9860fe15969bb06', 303, 'a86f-006d-header.css', 10, 5, 21230, 1651493560, 1651493560, 0, 0, '2b0732dd1642662a5ac9610f8c5f837b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (307, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-css-variables.css.gzip', '6e4494cb749e86e1fdee0ba678b38d2e', 303, 'a86f-006d-css-variables.css.gzip', 9, 3, 1485, 1651493505, 1651493505, 0, 0, '4c95ce910787d7ce2949b16775be5920', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (308, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-css-variables.css.gzip', '2a510dd479fdc4b0754468760f0fa449', 303, 'a86f-861b-css-variables.css.gzip', 9, 3, 692, 1650551249, 1650551249, 0, 0, '24e83a8959c5020e24f4a4d8247f4440', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (309, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-css-variables.css', 'eb69ded6ca7f25627668817050f7f3a7', 303, 'a86f-861b-css-variables.css', 10, 5, 1820, 1650551249, 1650551249, 0, 0, 'c4e5402446a6822e4e40e3e1aba4424e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (310, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-server.css', 'b45605ce2c300d19cf44bfab331d77b8', 303, 'a86f-861b-server.css', 10, 5, 139023, 1650551248, 1650551248, 0, 0, 'd0b1ffe033812daa68183bcc0b642ade', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (311, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-styles.css.gzip', '6f3f54caf77ad73fe9fb9c7c2fa2096c', 303, 'a86f-006d-styles.css.gzip', 9, 3, 6750, 1651493560, 1651493560, 0, 0, '50735b6fb5f76777a5738ba27dc502d5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (312, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-css-variables.css', '594ce04db845a2baede015cd47d652a5', 303, 'a86f-006d-css-variables.css', 10, 5, 4737, 1651493505, 1651493505, 0, 0, 'c52bc19b0487be7ce4cc94c13fb36956', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (313, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-css-variables.css.deps', 'ff36c6c24ea2e87bcefdd655864c04aa', 303, 'a86f-861b-css-variables.css.deps', 8, 3, 212, 1650551249, 1650551249, 0, 0, 'c987aea0c36131b91581a076449a24c0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (314, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-header.css.deps', '9aa4e158377e1c17ddb00dabf4006a80', 303, 'a86f-861b-header.css.deps', 8, 3, 205, 1651263573, 1651263573, 0, 0, 'c80ac81f7bcc1c9a349fcc541cf7b243', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (315, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-styles.css', '436e19f93b7ab23bbf2488c343ee7e26', 303, 'a86f-861b-styles.css', 10, 5, 31931, 1651263573, 1651263573, 0, 0, '75f9438af3960c220a3b0a92b1a6e3cc', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (316, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-css-variables.css.deps', 'bcd3b14713333849559ad6a905b08b64', 303, 'a86f-006d-css-variables.css.deps', 8, 3, 212, 1651493505, 1651493505, 0, 0, 'ab9c4bfad455f43f71b931f2c2f53f76', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (317, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-server.css.deps', '755a8563167bead4180eb4cb070d028d', 303, 'a86f-006d-server.css.deps', 8, 3, 927, 1651493505, 1651493505, 0, 0, '3a660e12f95dc715be741982013a9743', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (318, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-server.css.gzip', '176a0e0d29a7cba43626ede40d12f64e', 303, 'a86f-006d-server.css.gzip', 9, 3, 29706, 1651493505, 1651493505, 0, 0, '2a761dd698006f1cf403ed35b923c17a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (319, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-server.css', 'bce455d8e851d806a2c4c6180958f5b1', 303, 'a86f-006d-server.css', 10, 5, 196981, 1651493505, 1651493505, 0, 0, '03086d7c935faf9315217999aab11741', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (320, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-header.css.gzip', '6d6941246ecd820e1ef6b7b5204a574a', 303, 'a86f-861b-header.css.gzip', 9, 3, 4824, 1651263573, 1651263573, 0, 0, '4970a51e8989d785b4eedaa6d125eec4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (321, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-server.css.gzip', 'f9896b0004a4bdec898158b434d24897', 303, 'a86f-861b-server.css.gzip', 9, 3, 19854, 1650551248, 1650551248, 0, 0, '2fde00bd071629f9251d6802c4930d9a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (322, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-header.css.gzip', '12794856fdafdbee3c0362794d8394b5', 303, 'a86f-006d-header.css.gzip', 9, 3, 4824, 1651493560, 1651493560, 0, 0, '991d4afbc96ed25863621f8e573ea344', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (323, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-header.css', 'e6c515b87b548c2164dd52063688ec61', 303, 'a86f-861b-header.css', 10, 5, 21230, 1651263573, 1651263573, 0, 0, '2cdd3777c2e5f210589c0889028f3659', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (324, 1, 'appdata_ocizsgb115cv/css/core/a86f-861b-styles.css.gzip', '587940a4c43e0e7df33a36d50e37bf49', 303, 'a86f-861b-styles.css.gzip', 9, 3, 6750, 1651263573, 1651263573, 0, 0, '26f8a0d4013a02d87c94c51c01e4fa6b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (325, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-styles.css.deps', '085af79da7b4ec012ec90b2e767d8001', 303, 'a86f-006d-styles.css.deps', 8, 3, 205, 1651493560, 1651493560, 0, 0, '3775da85f3a3c2776287277a34f32fa2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (326, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-header.css.deps', 'd346c45d61ca0157ec6e26fd14420430', 303, 'a86f-006d-header.css.deps', 8, 3, 205, 1651493560, 1651493560, 0, 0, 'f27be5f55ff8219aab5033982069de77', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (327, 1, 'appdata_ocizsgb115cv/css/core/a86f-006d-styles.css', 'ab9ec6603adff1f6898da959a050f26a', 303, 'a86f-006d-styles.css', 10, 5, 31931, 1651493559, 1651493559, 0, 0, 'dfa6d0608cb97af524c2aa23d5989fe5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (329, 1, 'appdata_ocizsgb115cv/theming', '23abca17cd0c49afc6eff5b834a5e459', 80, 'theming', 2, 1, 5672, 1647000568, 1647000568, 0, 0, '6294d7bec1080', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (330, 1, 'appdata_ocizsgb115cv/theming/0', 'b3163f14b6b225e808339e6a6fd0f7d8', 329, '0', 2, 1, 5672, 1654724266, 1654724266, 0, 0, '6294d7beac898', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (331, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_folder-public.svg', 'c85c84114143b8f01f2ca6a76b28887e', 330, 'icon-core-filetypes_folder-public.svg', 13, 11, 1090, 1650637390, 1650637390, 0, 0, '057d2c751844a9c1f08815be942241c5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (332, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_package-x-generic.svg', '123e3b8b203958986203acba8cbc49a8', 330, 'icon-core-filetypes_package-x-generic.svg', 13, 11, 219, 1647000819, 1647000819, 0, 0, '4b329c5d37df0b753f9113d6b48ffef0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (333, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_video.svg', '27778e907bc50f0858dff8a8b5be8170', 330, 'icon-core-filetypes_video.svg', 13, 11, 277, 1650637215, 1650637215, 0, 0, '06c67e7576d5bfea3f76153a0e14e1c4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (334, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_folder.svg', '444f96e63880864fa321123ebda9f081', 330, 'icon-core-filetypes_folder.svg', 13, 11, 255, 1647000568, 1647000568, 0, 0, 'a9bb156124c8bdf04073b1e84e6ac0f8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (335, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_application-pdf.svg', 'd4e66438ca2c66d02a65779ddd06fee9', 330, 'icon-core-filetypes_application-pdf.svg', 13, 11, 1054, 1650925699, 1650925699, 0, 0, '8e73200a3bff4e638806a384c1a1bf02', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (336, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_image.svg', 'a97126b14825777d59f3b6a6e266c23a', 330, 'icon-core-filetypes_image.svg', 13, 11, 352, 1653721447, 1653721447, 0, 0, '6c3c97ec1c001ea9e737645db666506f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (337, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_text-code.svg', 'd479fbef089bb239fae1d5a1f014f681', 330, 'icon-core-filetypes_text-code.svg', 13, 11, 252, 1653630637, 1653630637, 0, 0, 'ca869f854f84626bc7a5e1bce2f7b672', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (338, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_application.svg', 'c97fae5734fa34e8eb0c0849bc0af85e', 330, 'icon-core-filetypes_application.svg', 13, 11, 1085, 1653641629, 1653641629, 0, 0, 'c56df0a2b301250a3b1a30d86a396cf6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (339, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_folder-drag-accept.svg', 'cf9b68213febccc332f6e3c929965819', 330, 'icon-core-filetypes_folder-drag-accept.svg', 13, 11, 270, 1653644242, 1653644242, 0, 0, '55647b2d0dc7db2e6363a54abc53aca5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (340, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_text.svg', 'd22e454865298ca6a083fdf334e116a2', 330, 'icon-core-filetypes_text.svg', 13, 11, 295, 1647000568, 1647000568, 0, 0, '17ba77ee152822ca28baf5893cbf97b8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (341, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_file.svg', '67a9a12b1f4b08ea41285bd1e8919dac', 330, 'icon-core-filetypes_file.svg', 13, 11, 228, 1651790567, 1651790567, 0, 0, '4bb1dcbd348aab7614ecdd81a89849be', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (342, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_x-office-document.svg', 'b8944fe3de0040a9649311530b32b0b6', 330, 'icon-core-filetypes_x-office-document.svg', 13, 11, 295, 1653640160, 1653640160, 0, 0, 'efdc65e22651d861d889024bbcf8ee54', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (343, 1, 'appdata_ocizsgb115cv/preview/c/d', '92fe2a54d609947a7b5189b9dbbe433f', 87, 'd', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf874cc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (344, 1, 'appdata_ocizsgb115cv/preview/c/d/0', 'b856ed7ca39942c41b1657cffea94bbd', 343, '0', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf83375', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (345, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0', 'b83e9fe1524ffbbf5a617a8bde06ddcb', 344, '0', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf7f231', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (346, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6', 'a7bc4c65cbfbeabb742f8dd0685dcc6e', 345, '6', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf7b0c0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (347, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6/9', '1c701b4738a0cf54524e239c92d06894', 346, '9', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf76f60', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (348, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6/9/2', 'af24e4d4f0731c6b27a63cd69b35e975', 347, '2', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf72e17', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (349, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6/9/2/328', '46d4723b5d6f0cd5749c6eefaffa6c8f', 348, '328', 2, 1, 0, 1653921727, 1653921727, 0, 0, '6294d7bf6d028', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (350, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6/9/2/328/1609-632-max.png', '181add23d6aa9e684c8ff53cbdaa2874', 349, '1609-632-max.png', 12, 11, 57860, 1653921727, 1653921727, 0, 0, 'a4d875a6dd05a04a3a03bec7f760c821', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (351, 1, 'appdata_ocizsgb115cv/preview/c/d/0/0/6/9/2/328/256-256-crop.png', 'e77c77a542f6474b2a368ab16e56c9b9', 349, '256-256-crop.png', 12, 11, 25697, 1653921727, 1653921727, 0, 0, '6d3f82dff83f06e199b2bda96541385c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (352, 1, 'appdata_ocizsgb115cv/css/files', '7b1caca337e4c3f5a05dbb4b864b6f8a', 299, 'files', 2, 1, 88269, 1651493512, 1651493512, 0, 0, '6294d7d923600', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (353, 1, 'appdata_ocizsgb115cv/css/files/f244-861b-merged.css.deps', '7f61a178485405b217cc7fda6bf098e4', 352, 'f244-861b-merged.css.deps', 8, 3, 576, 1650551266, 1650551266, 0, 0, 'c669c0a67c4f35d8a7f01a2945136b0f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (354, 1, 'appdata_ocizsgb115cv/css/files/f244-861b-merged.css', '521854a57e458384c702e671d0962f77', 352, 'f244-861b-merged.css', 10, 5, 30015, 1650551266, 1650551266, 0, 0, 'ace25935cdbd7586f44d57cb16735845', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (355, 1, 'appdata_ocizsgb115cv/css/files/f244-861b-merged.css.gzip', '39d389f7337dd62a130190b6fcca4ce3', 352, 'f244-861b-merged.css.gzip', 9, 3, 5872, 1650551266, 1650551266, 0, 0, '3dc139470c625aed4d5c1741bc81e9e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (356, 1, 'appdata_ocizsgb115cv/css/files/f244-006d-merged.css.deps', '20acd5fdcd435ba13c347eabe5f4164e', 352, 'f244-006d-merged.css.deps', 8, 3, 576, 1651493512, 1651493512, 0, 0, '5d958c5425c56142eb3802690060639f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (357, 1, 'appdata_ocizsgb115cv/css/files/f244-006d-merged.css', '50677269198777e645e07c403e1c0e3d', 352, 'f244-006d-merged.css', 10, 5, 42377, 1651493512, 1651493512, 0, 0, '3f1bcc7e239ae243702399cae3ad4aca', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (358, 1, 'appdata_ocizsgb115cv/css/files/f244-006d-merged.css.gzip', '79e41f29615c617a359a9db415d1501d', 352, 'f244-006d-merged.css.gzip', 9, 3, 8853, 1651493512, 1651493512, 0, 0, '7200250f0ed31bbcb737f0ff6f184240', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (359, 1, 'appdata_ocizsgb115cv/css/files_sharing', 'a505bcca38dfc203e8a534fdb821128f', 299, 'files_sharing', 2, 1, 20866, 1651843693, 1651843693, 0, 0, '6294d7d9504bd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (360, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-publicView.css.gzip', '0483504b6dadcab9ef8df8a07f086d96', 359, '6328-006d-publicView.css.gzip', 9, 3, 2282, 1651843693, 1651843693, 0, 0, 'e80707c5a5b035ba4d4a1b8a117de0db', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (361, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-publicView.css.deps', '3e5ac2fce4ad3b52d6019a791d831fb5', 359, '6328-861b-publicView.css.deps', 8, 3, 386, 1650637292, 1650637292, 0, 0, 'e70cb61ca7118504d8d99ae3d93d835d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (362, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-icons.css', '1292e1e07f516b11993a38c00544d164', 359, '6328-861b-icons.css', 10, 5, 174, 1650551267, 1650551267, 0, 0, '0b197ec084fbdb8702c4438ddcfcf383', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (363, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-icons.css.deps', '495e58fbf575eec480dbed9a453a9dbf', 359, '6328-006d-icons.css.deps', 8, 3, 219, 1651493512, 1651493512, 0, 0, '1ceeedc5185f1bae1b95ded350b6afb8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (364, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-publicView.css', '4730a3785e2cb98d42f501f76b287cf0', 359, '6328-861b-publicView.css', 10, 5, 3365, 1650637292, 1650637292, 0, 0, '07f7daa03be99fee01d7980a3f62c4e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (365, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-publicView.css', '6ea45194b9f23d370fbb835ec3951c94', 359, '6328-006d-publicView.css', 10, 5, 7490, 1651843693, 1651843693, 0, 0, '81e6ca49de6b5ccdeb3a04d99cd971f2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (366, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-publicView.css.deps', '0d8f5c39b2f97377963edc1989966e72', 359, '6328-006d-publicView.css.deps', 8, 3, 386, 1651843693, 1651843693, 0, 0, '3eb697d109dc0e3daf670dc3193726e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (367, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-publicView.css.gzip', '836c2af8fb5a9b1e970d80fe64917da0', 359, '6328-861b-publicView.css.gzip', 9, 3, 1150, 1650637292, 1650637292, 0, 0, '29df38206828c8f0a3a80bad87746a8a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (368, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-icons.css', '6ec3ccaa5b45e8b1ea0e5cabbde2bdcc', 359, '6328-006d-icons.css', 10, 5, 4122, 1651493512, 1651493512, 0, 0, '426515dc6ccb0e5ac137de1a6b4090b0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (369, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-006d-icons.css.gzip', 'b68612e31139f971bcb2d3703f993a03', 359, '6328-006d-icons.css.gzip', 9, 3, 971, 1651493512, 1651493512, 0, 0, '276485bbe32b43ad51ba7c805b1bd050', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (370, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-icons.css.gzip', 'fc8c880c4ffd21dd3a07e6bb8898a20e', 359, '6328-861b-icons.css.gzip', 9, 3, 102, 1650551267, 1650551267, 0, 0, 'e2b2ee5f57d49798fc9b056088e1a18e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (371, 1, 'appdata_ocizsgb115cv/css/files_sharing/6328-861b-icons.css.deps', 'be1d330b70a4792eeaeb668d677fdebe', 359, '6328-861b-icons.css.deps', 8, 3, 219, 1650551267, 1650551267, 0, 0, '22635ddab41a3ebdfa6dfc19a4bf81cd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (372, 1, 'appdata_ocizsgb115cv/css/activity', 'b1798328ad71c4dbc74db62a537663b9', 299, 'activity', 2, 1, 13937, 1655703053, 1655703053, 0, 0, '6294d7d9896fc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (373, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-style.css.deps', 'd5b3bbab61c11367270940ec0b3ca6d3', 372, '6e52-006d-style.css.deps', 8, 3, 214, 1655393105, 1655393105, 0, 0, 'f6df16941f7063544e83120c051ae352', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (374, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-style.css', 'f5834236e9c5a70e09244f26f7917a47', 372, '6e52-861b-style.css', 10, 5, 3353, 1650551249, 1650551249, 0, 0, '2cfd72a55533689633eade2b969bb163', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (375, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-style.css.gzip', 'eb6dc85eb7730157421d1e40bebd1bd7', 372, '6e52-006d-style.css.gzip', 9, 3, 2155, 1655393105, 1655393105, 0, 0, 'f989bbec14161186dce3cd55d9c57a1b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (376, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-style.css', 'd91fc410bb7a1a580a119168bf7cf1a1', 372, '6e52-006d-style.css', 10, 5, 7284, 1655393105, 1655393105, 0, 0, '6c8f7326a5957cc7c497d5753e95efc0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (377, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-style.css.gzip', '65dd1883044da06d241c0f8237da7fe3', 372, '6e52-861b-style.css.gzip', 9, 3, 1108, 1650551249, 1650551249, 0, 0, 'b209b6b16ddd9156bce9b330139b0f13', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (378, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-style.css.deps', 'f980622c8bb01d9e8a57402c179be6d0', 372, '6e52-861b-style.css.deps', 8, 3, 214, 1650551249, 1650551249, 0, 0, 'b90bc03525f6be95e63484c98dc0724f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (379, 1, 'appdata_ocizsgb115cv/css/user_status', 'e4b6baf272c363227b771a9b4102e731', 299, 'user_status', 2, 1, 7947, 1655703053, 1655703053, 0, 0, '6294d7d9ae2b0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (380, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-861b-user-status-menu.css', 'b92344db60a1af3e0252753a49e3dd7a', 379, '1bf6-861b-user-status-menu.css', 10, 5, 1039, 1650551249, 1650551249, 0, 0, 'e0e5868630e124b999837bd74e29a0c2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (381, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-006d-user-status-menu.css.gzip', '01b9d885ea27be1884337df2f26907b0', 379, '1bf6-006d-user-status-menu.css.gzip', 9, 3, 1126, 1651493506, 1651493506, 0, 0, 'c2819dfd85836ab8ffacacd49f438a9a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (382, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-006d-user-status-menu.css', 'b0c4fc8e699dde194b43e8cc852097fd', 379, '1bf6-006d-user-status-menu.css', 10, 5, 5086, 1651493506, 1651493506, 0, 0, 'c78b108bce103a8b3c01669b930b797c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (383, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-861b-user-status-menu.css.deps', '18205f791474b3e64eb9062d436e491b', 379, '1bf6-861b-user-status-menu.css.deps', 8, 3, 228, 1650551249, 1650551249, 0, 0, '7bfcc31007929eb2e6057115e26aa22f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (384, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-861b-user-status-menu.css.gzip', '023efac6418e4a074fe392140f3ead66', 379, '1bf6-861b-user-status-menu.css.gzip', 9, 3, 240, 1650551249, 1650551249, 0, 0, '35c0c4560d0d3a19fc14871d60ac9c39', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (385, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-006d-user-status-menu.css.deps', '1178ddd539e3a3abd6e57a7b3e470a58', 379, '1bf6-006d-user-status-menu.css.deps', 8, 3, 228, 1651493506, 1651493506, 0, 0, '40b78231a0f99d35854002d0b38058f2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (387, 1, 'appdata_ocizsgb115cv/preview/3/9', 'a9c5f7a1eb16dd37d7f4100ddc04f7d8', 93, '9', 2, 1, 0, 1653921791, 1653921791, 0, 0, '6294d7ffbd881', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (388, 1, 'appdata_ocizsgb115cv/preview/3/9/4', 'e954f09205f621e3d8e301646f2c1390', 387, '4', 2, 1, 0, 1653921791, 1653921791, 0, 0, '6294d7ffb76b1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (389, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6', '38487fdf88ec7b8131f084de12f676b7', 388, '6', 2, 1, 0, 1653921791, 1653921791, 0, 0, '6294d7ffaf43c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (390, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1', '63c52ad540092d07a899b1c0c296722c', 389, '1', 2, 1, 0, 1653921791, 1653921791, 0, 0, '6294d7ffa922c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (391, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1/a', '499eeb43e5cab28395bdeb83c06f39fa', 390, 'a', 2, 1, 0, 1653921791, 1653921791, 0, 0, '6294d7ffa3084', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (392, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1/a/1', '6bf9bdd01035c6b8b7d9c44610d96907', 391, '1', 2, 1, 0, 1653922609, 1653922609, 0, 0, '6294d7ff9ce55', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (401, 1, 'appdata_ocizsgb115cv/preview/1/8', '937324ad95192c9239ae72feee4eeb13', 95, '8', 2, 1, 0, 1653643283, 1653643283, 0, 0, '6294db261ca3b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (402, 1, 'appdata_ocizsgb115cv/preview/1/8/d', 'ed7f82cdb35b1fe3f714a06485357e7b', 401, 'd', 2, 1, 0, 1653643283, 1653643283, 0, 0, '6294db26147bb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (403, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8', 'cf96bde7e3bd3b23f6cce3aa1cf00933', 402, '8', 2, 1, 0, 1653643283, 1653643283, 0, 0, '6294db260c4fd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (404, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0', '378d1cee47185fa561fd24ce4e106c7e', 403, '0', 2, 1, 0, 1653643283, 1653643283, 0, 0, '6294db2604259', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (405, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0/4', '49c3765234cefd9870b3c1dc758bb7d9', 404, '4', 2, 1, 0, 1653643283, 1653643283, 0, 0, '6294db25ec084', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (406, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0/4/2', '980bb1d36aba575bdde38c7525aa0f67', 405, '2', 2, 1, 0, 1653922608, 1653922608, 0, 0, '6294db25ddbe8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (408, 1, 'appdata_ocizsgb115cv/css/theming', '7b8dadd36594412b8974ec9593926715', 299, 'theming', 2, 1, 12105, 1655703055, 1655703055, 0, 0, '6294db2d5b328', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (409, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-settings-admin.css.deps', '0a4291e2d101e11beadee5ec237ebb57', 408, 'd71e-861b-settings-admin.css.deps', 8, 3, 222, 1650552377, 1650552377, 0, 0, 'f370460fce06b930680995ededf2999a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (410, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-theming.css.gzip', 'c0f0a89238227e6d19d416f92091444e', 408, 'd71e-006d-theming.css.gzip', 9, 3, 1435, 1651493507, 1651493507, 0, 0, '106b2f70d978a94a91d0057246569818', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (411, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-theming.css.deps', '06839d4e9644d1d89562659a8dfbd8ff', 408, 'd71e-006d-theming.css.deps', 8, 3, 215, 1651493507, 1651493507, 0, 0, '79cbb1196ed47514a372c126468fef8a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (412, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-settings-admin.css', 'c500d1e489c83a8ae93a16ae34134cdf', 408, 'd71e-861b-settings-admin.css', 10, 5, 2129, 1650552376, 1650552376, 0, 0, 'c730c5467e29a00b7b2a01cbaecaf6f5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (413, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-theming.css', '3edcc4719143d0b787daba31ead547c7', 408, 'd71e-006d-theming.css', 10, 5, 4915, 1651493507, 1651493507, 0, 0, '15249c4c81d179019255fe09d1469e7e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (414, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-settings-admin.css.gzip', 'b65bd63b6f6f08a7175e59f9e1cc0647', 408, 'd71e-861b-settings-admin.css.gzip', 9, 3, 666, 1650552377, 1650552377, 0, 0, '7b3274e4f8141359b1246c5a10704d7c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (415, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-theming.css.deps', '56f22a2d7f9b31ac29fafb939718b720', 408, 'd71e-861b-theming.css.deps', 8, 3, 215, 1650551178, 1650551178, 0, 0, '0f6191da9ef01f5e21fdfab74b7195a1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (416, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-theming.css.gzip', 'a51bedd157273f5835e81fd7fbb8db8b', 408, 'd71e-861b-theming.css.gzip', 9, 3, 534, 1650551178, 1650551178, 0, 0, 'bd9cf6bbec946e41dae685dc04602250', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (417, 1, 'appdata_ocizsgb115cv/css/theming/d71e-861b-theming.css', 'ba631e04a4a3a90aff9838b11b557c1b', 408, 'd71e-861b-theming.css', 10, 5, 1774, 1650551178, 1650551178, 0, 0, 'aaab388fd7be847f13b0aad4afbffb00', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (418, 1, 'appdata_ocizsgb115cv/avatar', 'a4d30d8182cc7a25731755e49cbe29d4', 80, 'avatar', 2, 1, 43889, 1651853318, 1651853318, 0, 0, '6294db2dad277', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (419, 1, 'appdata_ocizsgb115cv/avatar/khoa', 'dcda46938d4272c1a663f5afc5dc5c9c', 418, 'khoa', 2, 1, 21929, 1647000592, 1647000592, 0, 0, '6294db2da70e2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (420, 1, 'appdata_ocizsgb115cv/avatar/khoa/avatar.png', '4a81e496b7a031132cc9b6a0fbdcb1e6', 419, 'avatar.png', 12, 11, 14818, 1646953025, 1646953025, 0, 0, '8a1a7a5906622f2903f8b5f3f5ee165a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (421, 1, 'appdata_ocizsgb115cv/avatar/khoa/avatar.512.png', '7a895e7cb77d67bf944aa9e36c7f2fff', 419, 'avatar.512.png', 12, 11, 6357, 1647000592, 1647000592, 0, 0, 'a53d0daa750152d836fb519cc48784e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (422, 1, 'appdata_ocizsgb115cv/avatar/khoa/generated', '058d5809229db3b77c9736d67591029f', 419, 'generated', 8, 3, 0, 1646953025, 1646953025, 0, 0, 'c8c1ceae0eda40da71e1cd9a96d05b99', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (423, 1, 'appdata_ocizsgb115cv/avatar/khoa/avatar.64.png', '5d74254237cfaf12d570047b5e4aa868', 419, 'avatar.64.png', 12, 11, 754, 1646953025, 1646953025, 0, 0, '05e7a32e8f0bec869827d40170a6c4a4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (424, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0/4/2/400', '6f938d863426c21ec9ff904f57caabaa', 406, '400', 2, 1, 0, 1653922609, 1653922609, 0, 0, '6294db3029c6d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (425, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0/4/2/400/4096-4096-max.png', 'e3a7989914b209f4a7f0cfb4c282fc7b', 424, '4096-4096-max.png', 12, 11, 124829, 1653922608, 1653922608, 0, 0, 'f3ccac1c9f1c7afd5aaf5c5e615679c9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (426, 1, 'appdata_ocizsgb115cv/preview/1/8/d/8/0/4/2/400/256-256-crop.png', 'd43c5326f4e04aba67eac6733829a706', 424, '256-256-crop.png', 12, 11, 21891, 1653922609, 1653922609, 0, 0, 'ac1d0eec3b668445440638a9527ffddb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (427, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1/a/1/386', 'b4b307a1de4af56d47db8df8c901db0a', 392, '386', 2, 1, 0, 1653922610, 1653922610, 0, 0, '6294db31d5533', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (428, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1/a/1/386/1616-554-max.png', 'a69ff2ad1c4c88c2cf497631c587d823', 427, '1616-554-max.png', 12, 11, 34890, 1653922610, 1653922610, 0, 0, '11124c66872f8819a088c277e5b88ab7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (429, 1, 'appdata_ocizsgb115cv/preview/3/9/4/6/1/a/1/386/256-256-crop.png', 'eb9d2438a1df10f1b6e9ebffe5cb8907', 427, '256-256-crop.png', 12, 11, 23079, 1653922610, 1653922610, 0, 0, 'c2d67ff6320a6bb654acc281b9947e14', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (441, 1, 'appdata_ocizsgb115cv/preview/a/8', '6d9209437f365b69e2bce32d388646ca', 89, '8', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294de00219ee', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (442, 1, 'appdata_ocizsgb115cv/preview/a/8/a', '92aec97e96ea76ac60e927ca67abdce1', 441, 'a', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294de0007306', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (443, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b', '45e60e667f2f56ca50fc11f44c0b4bee', 442, 'b', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294ddffe6e4c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (444, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b', '41fbeb587e2ec6dc3a4842ec752f891b', 443, 'b', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294ddffd8a4c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (445, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b/4', '4f7ed93ade62d88dad1a50ad340954cd', 444, '4', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294ddffbc25e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (446, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b/4/b', '410a75ba824ad71d0140a95a44d38104', 445, 'b', 2, 1, 0, 1653923327, 1653923327, 0, 0, '6294ddffa9d2b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (447, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b/4/b/440', '7b619a58a7364782fe5c62ddce41d88b', 446, '440', 2, 1, 0, 1653923329, 1653923329, 0, 0, '6294ddff8554c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (448, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b/4/b/440/198-256-max.png', 'dab1540fac92d4d76e5133c3bae82163', 447, '198-256-max.png', 12, 11, 5633, 1653923329, 1653923329, 0, 0, '211df7969c5718b6c1e4d69081aefad9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (449, 1, 'appdata_ocizsgb115cv/preview/a/8/a/b/b/4/b/440/198-198-crop.png', '841e1291c58e9c07f6b696f19e34455d', 447, '198-198-crop.png', 12, 11, 12894, 1653923329, 1653923329, 0, 0, '4e5b3aacd45ae5c1748de888308e5f6d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (450, 1, 'appdata_ocizsgb115cv/appstore', 'bf7f0c52e5334d1cf3cd350596e8036c', 80, 'appstore', 2, 1, 2072764, 1654035663, 1654035663, 0, 0, '6294de0d7fea5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (451, 1, 'appdata_ocizsgb115cv/appstore/apps.json', '5db29f8eba0b6b84c1f450f49cf8c737', 450, 'apps.json', 4, 3, 2087725, 1655703083, 1655703083, 0, 0, 'f4a24a21b8391a94f4fc4499ab5b1f6a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (453, 1, 'appdata_ocizsgb115cv/preview/9/4', '09bff97577d70cec271fce210bbbd6b9', 85, '4', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348bc1ed8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (454, 1, 'appdata_ocizsgb115cv/preview/9/4/3', '5a4bc9828913c175757b6625b4a564e6', 453, '3', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348bbddac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (455, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1', '8deec6667ce0081806c81bb350459200', 454, '1', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348bb7bda', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (456, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c', '8e83ed006b76b48e5019576916735ffa', 455, 'c', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348ba1540', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (457, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c/8', '3ec960a76dc1fab755cf579d185df3ad', 456, '8', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348b9b32d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (458, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c/8/7', '6e2a73b28aa7fcd57bcca64409b77414', 457, '7', 2, 1, 0, 1653945483, 1653945483, 0, 0, '6295348b95182', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (459, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c/8/7/452', 'dae26c47057ba8c23aca4d47c7698c6a', 458, '452', 2, 1, 0, 1653945484, 1653945484, 0, 0, '6295348b8f0a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (460, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c/8/7/452/198-256-max.png', 'a84927f7dec61c97b782ba0c6cc258db', 459, '198-256-max.png', 12, 11, 1229, 1653945484, 1653945484, 0, 0, '8af841e1edcd1c9612bfccfb28ba88c3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (461, 1, 'appdata_ocizsgb115cv/preview/9/4/3/1/c/8/7/452/198-198-crop.png', 'be7d857664ccc93b1a8c58b86a27b251', 459, '198-198-crop.png', 12, 11, 1933, 1653945484, 1653945484, 0, 0, 'a8f0b0e15e944b91742b896aa92dafcf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (462, 1, 'appdata_ocizsgb115cv/preview/0/3', '604ddce4ca5e405502e7c7eab57873ce', 88, '3', 2, 1, 0, 1653947852, 1653947852, 0, 0, '6297afd600616', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (463, 1, 'appdata_ocizsgb115cv/preview/0/3/5', 'dd83b611cf78c1a61553f3040ae94eed', 462, '5', 2, 1, 0, 1653643289, 1653643289, 0, 0, '6295348c549e4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (464, 1, 'appdata_ocizsgb115cv/preview/0/3/5/3', 'ba1c32265c5d8a8716cf82e7d14ca944', 463, '3', 2, 1, 0, 1653643289, 1653643289, 0, 0, '6295348c46563', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (465, 1, 'appdata_ocizsgb115cv/preview/0/3/5/3/a', '76afc02cf6a8cc237643a7f5fd4a9753', 464, 'a', 2, 1, 0, 1653643289, 1653643289, 0, 0, '6295348c3c210', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (466, 1, 'appdata_ocizsgb115cv/preview/0/3/5/3/a/b', 'b0e44b5e1816a6bf5cf92210f26a5961', 465, 'b', 2, 1, 0, 1653643289, 1653643289, 0, 0, '6295348c33f49', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (467, 1, 'appdata_ocizsgb115cv/preview/0/3/5/3/a/b/4', '0ccb7abb3a52feb63491e783a2d4bbb3', 466, '4', 2, 1, 0, 1653945484, 1653945484, 0, 0, '6295348c2bc9a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (470, 1, 'appdata_ocizsgb115cv/preview/d/c', 'b0e812df190e8dcd5ef428bedb3a0db8', 82, 'c', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f16930a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (471, 1, 'appdata_ocizsgb115cv/preview/d/c/6', '5f0af5129d40d90b8e3b90e178e3b627', 470, '6', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f14eabd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (472, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a', '42001c17cbf715a7dcec70c0eb6ad1b3', 471, 'a', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f14069d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (473, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6', 'ee3655f77d35f0bace7c36703b933b64', 472, '6', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f132179', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (474, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6/4', '06a9021b0886285179ba81aaa9988b4a', 473, '4', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f127c35', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (475, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6/4/8', 'ea67f029ac7ad9b4a5bd1a9950a7eb63', 474, '8', 2, 1, 0, 1653946353, 1653946353, 0, 0, '629537f1177cd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (476, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6/4/8/469', '92260dea8a3b0f0c1ea748f5d6f2310c', 475, '469', 2, 1, 0, 1653946354, 1653946354, 0, 0, '629537f10d975', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (477, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6/4/8/469/198-256-max.png', '7eed07739a88b418ef16f4036809f992', 476, '198-256-max.png', 12, 11, 8300, 1653946354, 1653946354, 0, 0, '0a6551ff2d98d918dfd6b4366d5883d3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (478, 1, 'appdata_ocizsgb115cv/preview/d/c/6/a/6/4/8/469/198-198-crop.png', 'cf0b05fbefafa1309d6505d355da1436', 476, '198-198-crop.png', 12, 11, 21587, 1653946354, 1653946354, 0, 0, '1b32289afc6e98762682946e2ed06939', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (480, 1, 'appdata_ocizsgb115cv/preview/d/1', 'e31d4440713a06631fdc2fb5d877fce8', 82, '1', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380db1f48', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (481, 1, 'appdata_ocizsgb115cv/preview/d/1/8', '73af9b93133bdaa955384187ab223fc6', 480, '8', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380dabd5e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (482, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f', 'db72ff21f790e6230fef5f49a404dba2', 481, 'f', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380da5b76', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (483, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6', '6ba21f438ec8253488e236dcffdb663e', 482, '6', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380d9f98a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (484, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6/5', '3bd5b0de199debd6f59c3e339417c5f3', 483, '5', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380d997a0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (485, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6/5/5', 'bc25620820da6ab86950e72b0434a799', 484, '5', 2, 1, 0, 1653946381, 1653946381, 0, 0, '6295380d935b4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (486, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6/5/5/479', 'c725120263eb5c98dd7fc104c132ce42', 485, '479', 2, 1, 0, 1653946382, 1653946382, 0, 0, '6295380d8d813', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (487, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6/5/5/479/198-256-max.png', 'bccd03cc9f817960b76b291369221eee', 486, '198-256-max.png', 12, 11, 5473, 1653946382, 1653946382, 0, 0, 'b300eabfbb621b2265937181e0b3b464', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (488, 1, 'appdata_ocizsgb115cv/preview/d/1/8/f/6/5/5/479/198-198-crop.png', 'c33cc109da259b1bd96bcb1a1ba66b22', 486, '198-198-crop.png', 12, 11, 11652, 1653946382, 1653946382, 0, 0, 'a1d0448f0024239814271b83c481f3dd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (496, 1, 'appdata_ocizsgb115cv/preview/3/5/0', '5310f99a76368e2b7468faab9a8318ee', 96, '0', 2, 1, 0, 1653946665, 1653946665, 0, 0, '6295392973342', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (497, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5', 'eed19adca76c2977bbabbc8e9b54ae11', 496, '5', 2, 1, 0, 1653946665, 1653946665, 0, 0, '629539296d163', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (498, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1', 'ae7728228e276e391914a5fd610d85a0', 497, '1', 2, 1, 0, 1653946665, 1653946665, 0, 0, '6295392966ef0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (499, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1/0', 'e89f9c467fb5c05bdacf559d2eabead7', 498, '0', 2, 1, 0, 1653946665, 1653946665, 0, 0, '6295392960d42', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (500, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1/0/7', 'c67810e03046be3d3fd7d8b177d49c1d', 499, '7', 2, 1, 0, 1653946665, 1653946665, 0, 0, '629539295ab0a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (501, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1/0/7/495', '10d98d92b8e166ab973f6d14058a5b5c', 500, '495', 2, 1, 0, 1653946666, 1653946666, 0, 0, '62953929551de', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (502, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1/0/7/495/198-256-max.png', '63a247a0acfe1100988f5a036481235c', 501, '198-256-max.png', 12, 11, 5473, 1653946665, 1653946665, 0, 0, 'dc6e11fb096c0c84e248c13225dc3da7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (503, 1, 'appdata_ocizsgb115cv/preview/3/5/0/5/1/0/7/495/198-198-crop.png', 'f9af3c0b77a9f7a5e677d8cbacb1e83c', 501, '198-198-crop.png', 12, 11, 11652, 1653946666, 1653946666, 0, 0, '0ef4ef60f345885d2ca8a919f56bc5f4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (510, 1, 'appdata_ocizsgb115cv/preview/1/b', '4b84d93ac6674176c70e0f0fbc3bfb44', 95, 'b', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394e10b22', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (511, 1, 'appdata_ocizsgb115cv/preview/1/b/e', 'dff588b84befcfb2b299031a6a7e496e', 510, 'e', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394e0a93a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (512, 1, 'appdata_ocizsgb115cv/preview/1/b/e/3', 'c4d097aab726dbdc58953e78c6dd7bf2', 511, '3', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394e026ee', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (513, 1, 'appdata_ocizsgb115cv/preview/1/b/e/3/b', '1ff27da1a9b325ddc7f2c472f3e2a095', 512, 'b', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394df0975', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (514, 1, 'appdata_ocizsgb115cv/preview/1/b/e/3/b/c', 'b053ace80624bee94644256455c16145', 513, 'c', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394de8462', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (515, 1, 'appdata_ocizsgb115cv/preview/1/b/e/3/b/c/3', 'd066b720667d678ad6bd1332bc0caa83', 514, '3', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394de024e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (516, 1, 'appdata_ocizsgb115cv/preview/1/b/e/3/b/c/3/494', '8f435223abde69e50ae4973e260e21d0', 515, '494', 2, 1, 0, 1653946701, 1653946701, 0, 0, '6295394dc66cd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (517, 1, 'appdata_ocizsgb115cv/preview/6/6', 'a576bddd6370678be61d0580e0c7843f', 117, '6', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394ebc219', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (518, 1, 'appdata_ocizsgb115cv/preview/6/6/3', '09b5ba9d0eda6ad9d7aa230bfe25f6a1', 517, '3', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394eb80be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (519, 1, 'appdata_ocizsgb115cv/preview/6/6/3/6', '56294ce5fc15ff25fa991692b5ecf301', 518, '6', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394eb3f58', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (520, 1, 'appdata_ocizsgb115cv/preview/6/6/3/6/8', '7335ea82421efd6d0061be382d5b6b72', 519, '8', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394eafe1d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (521, 1, 'appdata_ocizsgb115cv/preview/6/6/3/6/8/2', '40d649625ddedb6033b9b8cd5937ba42', 520, '2', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394eabcb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (522, 1, 'appdata_ocizsgb115cv/preview/6/6/3/6/8/2/7', '88842fc5a2a28284b788feed5b1a0733', 521, '7', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394ea7b7c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (523, 1, 'appdata_ocizsgb115cv/preview/6/6/3/6/8/2/7/431', '7022baea63f706a2313ca93816d49ea4', 522, '431', 2, 1, 0, 1653946702, 1653946702, 0, 0, '6295394ea1d51', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (524, 1, 'appdata_ocizsgb115cv/preview/8/3/9/a/b/4/6/289', 'f1b6cb22c2ff4ce4b7a30e2439c09a30', 295, '289', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394f48e42', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (525, 1, 'appdata_ocizsgb115cv/preview/f/8', '9e3313016439fa71f07c07665a18c31c', 166, '8', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394fbf0c4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (526, 1, 'appdata_ocizsgb115cv/preview/f/8/c', 'd37055183df906103035ce8ccec76fa0', 525, 'c', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394fb8ed6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (527, 1, 'appdata_ocizsgb115cv/preview/f/8/c/1', '8dadb4cc16812dd383bfa4bcb6bb9cd6', 526, '1', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394fb2d16', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (528, 1, 'appdata_ocizsgb115cv/preview/f/8/c/1/f', 'dbf3ea337daceee1e2c92f0cbd4b5cc5', 527, 'f', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394fad287', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (529, 1, 'appdata_ocizsgb115cv/preview/f/8/c/1/f/2', '71bbc5e5a5a096889ee70951ad82b902', 528, '2', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394fa4813', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (530, 1, 'appdata_ocizsgb115cv/preview/f/8/c/1/f/2/3', 'fa078779ea4ebb81e008702f18c97739', 529, '3', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394f9e5de', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (531, 1, 'appdata_ocizsgb115cv/preview/f/8/c/1/f/2/3/396', '3c67079cd75fd692aa45e0ffca0a7eeb', 530, '396', 2, 1, 0, 1653946703, 1653946703, 0, 0, '6295394f9864e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (546, 1, 'appdata_ocizsgb115cv/preview/e/e', '1d13e852249542472891ce886f583e69', 86, 'e', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc89e95e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (547, 1, 'appdata_ocizsgb115cv/preview/e/e/d', '56f6868761474a7bca4f4bd4b6add1aa', 546, 'd', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc89876b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (548, 1, 'appdata_ocizsgb115cv/preview/e/e/d/5', '2144120ed48fd9d14b5dd9ec5d816021', 547, '5', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc8925b1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (549, 1, 'appdata_ocizsgb115cv/preview/e/e/d/5/a', 'cc55e1ab7d5aeaf49e35a6ba86306c1d', 548, 'a', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc88c3ba', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (550, 1, 'appdata_ocizsgb115cv/preview/e/e/d/5/a/f', '711db83c86bcf0b4e56084e2107aa36d', 549, 'f', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc8861c6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (551, 1, 'appdata_ocizsgb115cv/preview/e/e/d/5/a/f/6', 'ee3adc193bc56f04eefb6c92b1a76d04', 550, '6', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc87fff3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (552, 1, 'appdata_ocizsgb115cv/preview/e/e/d/5/a/f/6/439', 'efee8cced81496830ba899e4571b604e', 551, '439', 2, 1, 0, 1653947848, 1653947848, 0, 0, '62953dc86f55e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (553, 1, 'appdata_ocizsgb115cv/preview/0/f', '91ae05a4be149bd9b5f7c0a8b534a21e', 88, 'f', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc95e12a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (554, 1, 'appdata_ocizsgb115cv/preview/0/f/4', '4e20701fbd23c1c988436b5e17b9baab', 553, '4', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc959fc8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (555, 1, 'appdata_ocizsgb115cv/preview/0/f/4/9', '9dddd588d27d32b70236551d5251a7f2', 554, '9', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc955ec9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (556, 1, 'appdata_ocizsgb115cv/preview/0/f/4/9/c', '6a40811c50bb5a001201a61d6b46abbe', 555, 'c', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc951d08', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (557, 1, 'appdata_ocizsgb115cv/preview/0/f/4/9/c/8', '7bb2865824b5e97a4029a7aed98b4ea8', 556, '8', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc94dbb7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (558, 1, 'appdata_ocizsgb115cv/preview/0/f/4/9/c/8/9', '8bb8d81c746d38e35962f7ee618741e3', 557, '9', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc949ac9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (559, 1, 'appdata_ocizsgb115cv/preview/0/f/4/9/c/8/9/283', 'bdc196a0df4d4bed2b99fc6609d62b97', 558, '283', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc943926', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (560, 1, 'appdata_ocizsgb115cv/preview/7/a', '7a5f66a15b6352297b7015695f0904fe', 92, 'a', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9debc0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (561, 1, 'appdata_ocizsgb115cv/preview/7/a/6', 'c9559d13a5c76fbf42769155f7b0548e', 560, '6', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9d89e8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (562, 1, 'appdata_ocizsgb115cv/preview/7/a/6/1', 'f25701d6deb7e67e722f256534ff829b', 561, '1', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9d2800', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (563, 1, 'appdata_ocizsgb115cv/preview/7/a/6/1/4', '08f0f38bca48e4409af1e0b1d454a96c', 562, '4', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9cc5ff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (564, 1, 'appdata_ocizsgb115cv/preview/7/a/6/1/4/f', 'ac618dc86b2be0beff8628ad4b18cc56', 563, 'f', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9c6463', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (565, 1, 'appdata_ocizsgb115cv/preview/7/a/6/1/4/f/d', 'b078cdea9239957cda87d19bddfb4f5a', 564, 'd', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9c02a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (566, 1, 'appdata_ocizsgb115cv/preview/7/a/6/1/4/f/d/272', '8118611e409acc06a528e2df6733c014', 565, '272', 2, 1, 0, 1653947849, 1653947849, 0, 0, '62953dc9bb764', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (567, 1, 'appdata_ocizsgb115cv/preview/2/0', '3148a514d7dd3bb889a49aff546ec77d', 90, '0', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca89d82', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (568, 1, 'appdata_ocizsgb115cv/preview/2/0/f', '14a9ec741e0ae511e6a0737fe3c6eebc', 567, 'f', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca7d944', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (569, 1, 'appdata_ocizsgb115cv/preview/2/0/f/0', 'cd8ca009ecf99478da6378b80db57856', 568, '0', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca777ae', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (570, 1, 'appdata_ocizsgb115cv/preview/2/0/f/0/7', '4859a9b6821cd350b9501a2d2a57b1de', 569, '7', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca71576', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (571, 1, 'appdata_ocizsgb115cv/preview/2/0/f/0/7/5', '1ca7e70cf6ffe92f146437d426d57130', 570, '5', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca6b3e8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (572, 1, 'appdata_ocizsgb115cv/preview/2/0/f/0/7/5/9', '31fd1727212c4432023c81b6bd2f94e9', 571, '9', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca651c8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (573, 1, 'appdata_ocizsgb115cv/preview/2/0/f/0/7/5/9/277', 'b759f4abacc9ef5777800e29fa63d0c1', 572, '277', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dca5f329', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (574, 1, 'appdata_ocizsgb115cv/preview/a/4', '8861e8592d3a20cb912464da49e7e2de', 89, '4', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb26ae9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (575, 1, 'appdata_ocizsgb115cv/preview/a/4/f', '3202302e4f4bdcc7ea84184cbee42675', 574, 'f', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb1a735', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (576, 1, 'appdata_ocizsgb115cv/preview/a/4/f/2', '7bbcfc6c1a39e31cac46b3aed1b2941a', 575, '2', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb14531', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (577, 1, 'appdata_ocizsgb115cv/preview/a/4/f/2/3', 'c535569394d45e18f18a2e06a572f2c9', 576, '3', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb0e394', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (578, 1, 'appdata_ocizsgb115cv/preview/a/4/f/2/3/6', '6e9d956d4d223715cab5f2980e6d005e', 577, '6', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb081b8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (579, 1, 'appdata_ocizsgb115cv/preview/a/4/f/2/3/6/7', 'aafe0084dbd1dd5e302f75fd3ac963da', 578, '7', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcb01fd6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (580, 1, 'appdata_ocizsgb115cv/preview/a/4/f/2/3/6/7/260', 'dd3f3abf2471dda83f82732dcc87868d', 579, '260', 2, 1, 0, 1653947850, 1653947850, 0, 0, '62953dcaf01b8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (581, 1, 'appdata_ocizsgb115cv/preview/d/6', '2807a2066b3e09821fc77da2519c4cc6', 82, '6', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbd465f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (582, 1, 'appdata_ocizsgb115cv/preview/d/6/b', 'ff8edecd76d868b60cc963f974af16df', 581, 'b', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbc414f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (583, 1, 'appdata_ocizsgb115cv/preview/d/6/b/a', 'f50c2e1031b086a71e43dbd672f6c30c', 582, 'a', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbbfff6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (584, 1, 'appdata_ocizsgb115cv/preview/d/6/b/a/f', '52774c3a1125640ed1a1cc1d87e264a8', 583, 'f', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbbbea3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (585, 1, 'appdata_ocizsgb115cv/preview/d/6/b/a/f/6', '2bd3f2d2980503d91269f2e668f3fcbe', 584, '6', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbb7d45', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (586, 1, 'appdata_ocizsgb115cv/preview/d/6/b/a/f/6/5', 'f66d9a989de33d47840558d4b561f8ed', 585, '5', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcbb3c03', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (587, 1, 'appdata_ocizsgb115cv/preview/d/6/b/a/f/6/5/264', '03cda7517a4ab1ba4695e3dd5f8c0f80', 586, '264', 2, 1, 0, 1653947851, 1653947851, 0, 0, '62953dcba77e7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (588, 1, 'appdata_ocizsgb115cv/preview/0/3/c', 'fc1ee25777b1add9bdd17051903a8cc1', 462, 'c', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc6b0b7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (589, 1, 'appdata_ocizsgb115cv/preview/0/3/c/6', '5a744381694a76a8d7a8d82c3e1c9118', 588, '6', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc64eb1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (590, 1, 'appdata_ocizsgb115cv/preview/0/3/c/6/b', '5a2c4ffea3141e432e02916274361c0c', 589, 'b', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc5ecc4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (591, 1, 'appdata_ocizsgb115cv/preview/0/3/c/6/b/0', 'c6680c52ff16935264d2c5cdf9e60593', 590, '0', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc58ac2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (592, 1, 'appdata_ocizsgb115cv/preview/0/3/c/6/b/0/6', '9e51223b38f791793fc5022657cdcfb2', 591, '6', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc528e8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (593, 1, 'appdata_ocizsgb115cv/preview/0/3/c/6/b/0/6/252', '88573e8557612cf00619b5c2ef141670', 592, '252', 2, 1, 0, 1653947852, 1653947852, 0, 0, '62953dcc4c8e9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (595, 1, 'appdata_ocizsgb115cv/css/settings', '545f29d585b24f46db1efb2786d4ad21', 299, 'settings', 2, 1, 90263, 1651853057, 1651853057, 0, 0, '6295409a23533', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (596, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-006d-settings.css.gzip', '6926431c6b3ed2e4df28a66954be5932', 595, 'ca9f-006d-settings.css.gzip', 9, 3, 7902, 1651853057, 1651853057, 0, 0, '79a1e73fbd33aa4b28167a751cbb97fa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (597, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-006d-settings.css', '37fa2580744f438e58519d25c6f9272a', 595, 'ca9f-006d-settings.css', 10, 5, 42499, 1651853057, 1651853057, 0, 0, '8a5321779d000daa3a9c05bab1a8c0ea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (598, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-006d-settings.css.deps', '597d05fecc0fd0e01b52f2c9de2639d0', 595, 'ca9f-006d-settings.css.deps', 8, 3, 217, 1651853057, 1651853057, 0, 0, 'd88724833b087fd11d6cb2b57dd4f36a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (599, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-861b-settings.css.gzip', '937892181fe3567c7adb6cd24bbdc157', 595, 'ca9f-861b-settings.css.gzip', 9, 3, 6136, 1650551926, 1650551926, 0, 0, 'e857ad4a7968d207943c7fc3034992de', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (600, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-861b-settings.css.deps', '04896386f3cdf825ff85edb8e95b005c', 595, 'ca9f-861b-settings.css.deps', 8, 3, 217, 1650551926, 1650551926, 0, 0, '1fad34d67d9c4c460bea739b0b034b75', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (601, 1, 'appdata_ocizsgb115cv/css/settings/ca9f-861b-settings.css', 'e29809cd7909e490c73a5bbaa579527f', 595, 'ca9f-861b-settings.css', 10, 5, 33292, 1650551926, 1650551926, 0, 0, '6cd39e5a2b8d96deb9a7588f39b23485', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (602, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-settings.css', '847ec2b4dbc90d16c1d1d28d2be9100b', 372, '6e52-006d-settings.css', 10, 5, 3420, 1653948590, 1653948590, 0, 0, '2755d56f799d2c3fbd97ea8b048cb3f3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (603, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-settings.css.deps', '9c5fe0efb610507021e33527703ced6c', 372, '6e52-006d-settings.css.deps', 8, 3, 217, 1653948590, 1653948590, 0, 0, '62021f98eb706ef7b2b59215bb50bba1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (604, 1, 'appdata_ocizsgb115cv/css/activity/6e52-006d-settings.css.gzip', 'f64b6197a02cfc60c72399d749c6cb08', 372, '6e52-006d-settings.css.gzip', 9, 3, 1098, 1653948590, 1653948590, 0, 0, 'e217238e087423c6659eeb22a2745f94', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (615, 1, 'appdata_ocizsgb115cv/css/dashboard', '09093fd228f1f79c460da3b5f432b5cf', 299, 'dashboard', 2, 1, 9591, 1655703052, 1655703052, 0, 0, '629540d6af6d4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (616, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-006d-dashboard.css.gzip', 'bf7b77c0fd80b0169b8cc1512dd26677', 615, '1c83-006d-dashboard.css.gzip', 9, 3, 1420, 1651493506, 1651493506, 0, 0, '2e0e1f744a01b0cee4ea51e075a117eb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (617, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-861b-dashboard.css.deps', '258ef2b2e97c05578a01f72d764be036', 615, '1c83-861b-dashboard.css.deps', 8, 3, 219, 1650551249, 1650551249, 0, 0, '917401983c2ee35ac25974790fa53726', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (618, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-861b-dashboard.css.gzip', '02e3ff8a199e40aeb8a2b4f4781aa557', 615, '1c83-861b-dashboard.css.gzip', 9, 3, 602, 1650551249, 1650551249, 0, 0, 'c228c7bb39e9f1a1cdf66e5785b6baae', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (619, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-861b-dashboard.css', '352f12873e8f13a52b636995a447e233', 615, '1c83-861b-dashboard.css', 10, 5, 2070, 1650551249, 1650551249, 0, 0, 'b8d18068b2af84e6c9840e899f62875b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (620, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-006d-dashboard.css.deps', '38f023d74a1623240320e56b0037b996', 615, '1c83-006d-dashboard.css.deps', 8, 3, 219, 1651493506, 1651493506, 0, 0, 'dea90b392225722f81b82a76acae6853', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (621, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-006d-dashboard.css', 'fc277cc5213fa8660d0e42a5289dad04', 615, '1c83-006d-dashboard.css', 10, 5, 5061, 1651493505, 1651493505, 0, 0, '84e9594ed3106aa7eb607eb6bba1e22d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (622, 1, 'appdata_ocizsgb115cv/avatar/user', 'ec4192c4d6f8af0a6dc839f585cdeabb', 418, 'user', 2, 1, 16139, 1647000778, 1647000778, 0, 0, '629540d73bfd8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (623, 1, 'appdata_ocizsgb115cv/avatar/user/avatar.png', '13a3064d8088daa473b9a7a79f436daf', 622, 'avatar.png', 12, 11, 10874, 1647000669, 1647000669, 0, 0, '8da1f1e5eb5187096436c9b056e67ee5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (624, 1, 'appdata_ocizsgb115cv/avatar/user/avatar.512.png', '6e01db15791868e5b21d339239b59f22', 622, 'avatar.512.png', 12, 11, 4685, 1647000778, 1647000778, 0, 0, 'd50695a3d0c250f17489c4f706ecbf86', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (625, 1, 'appdata_ocizsgb115cv/avatar/user/generated', '87536bbd3552bbd17304a718f48c1228', 622, 'generated', 8, 3, 0, 1647000669, 1647000669, 0, 0, 'ad93b7f4f614f258738fe5acfd72026c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (626, 1, 'appdata_ocizsgb115cv/avatar/user/avatar.64.png', '7a4ed964b5c4263d89b0bdc1e55fac52', 622, 'avatar.64.png', 12, 11, 580, 1647000674, 1647000674, 0, 0, 'c82b632a47a6f826614b9a0429778810', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (627, 1, 'appdata_ocizsgb115cv/css/firstrunwizard', 'b8f63c21afeaa5eff4299f8c12f8138e', 299, 'firstrunwizard', 2, 1, 0, 1653948677, 1653948677, 0, 0, '6295410553ec9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (628, 1, 'appdata_ocizsgb115cv/css/firstrunwizard/c25f-006d-personalsettings.css', '1f9d75c67b0f2df3437ab0b061b50461', 627, 'c25f-006d-personalsettings.css', 10, 5, 3122, 1653948677, 1653948677, 0, 0, '52f0a29ed1c320ddaa1cb6227d8fd375', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (629, 1, 'appdata_ocizsgb115cv/css/firstrunwizard/c25f-006d-personalsettings.css.deps', '4ca08710d1791b45a7acbf812c68f2d6', 627, 'c25f-006d-personalsettings.css.deps', 8, 3, 231, 1653948677, 1653948677, 0, 0, '6a6cd19ff22bc8743932c7d257ac0b67', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (630, 1, 'appdata_ocizsgb115cv/css/firstrunwizard/c25f-006d-personalsettings.css.gzip', 'de70c7d5f2ae6c83296883e6fd191f2c', 627, 'c25f-006d-personalsettings.css.gzip', 9, 3, 991, 1653948677, 1653948677, 0, 0, '01b05c3807501c6aba007d60d7afc6e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (631, 1, 'appdata_ocizsgb115cv/css/accessibility', '0eb5094451f9c8e14e2bf4f3429de38a', 299, 'accessibility', 2, 1, 1461, 1653948697, 1653948697, 0, 0, '62954117e22cf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (632, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-861b-style.css', 'a82e6fddabb5b3d94373a6646cff7889', 631, 'e8ed-861b-style.css', 10, 5, 859, 1650551947, 1650551947, 0, 0, '77950b8521608e9f7e0c08a3daf5122f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (633, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-861b-style.css.deps', '2d87f24c04118da77b013720c9d7ab74', 631, 'e8ed-861b-style.css.deps', 8, 3, 219, 1650551947, 1650551947, 0, 0, 'a3b38943e0797e5ceed120dd93619286', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (634, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-861b-style.css.gzip', 'c75cc3382207ce407d09fe2e1e9a6881', 631, 'e8ed-861b-style.css.gzip', 9, 3, 383, 1650551947, 1650551947, 0, 0, '0d74ce0197b4b8cb3c215670f63c941c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (635, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-006d-style.css', 'edeced19b6643fa071da563e7679e998', 631, 'e8ed-006d-style.css', 10, 5, 3795, 1653948696, 1653948696, 0, 0, '3dd23003440e8298394277fce07e7d25', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (636, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-006d-style.css.deps', 'ff07605f92835d17ad3bb69b6f9b3c12', 631, 'e8ed-006d-style.css.deps', 8, 3, 219, 1653948696, 1653948696, 0, 0, 'f924db54ac17ac17414536abdcc3592d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (637, 1, 'appdata_ocizsgb115cv/preview/c/5/a', 'e4572028ef9ef1b92e257f81abd1ae66', 155, 'a', 2, 1, 0, 1653742549, 1653742549, 0, 0, '629541188d66a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (638, 1, 'appdata_ocizsgb115cv/preview/c/5/a/b', '4adda0da725488b39c3f3cf97574dbdc', 637, 'b', 2, 1, 0, 1653742549, 1653742549, 0, 0, '62954118812e0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (639, 1, 'appdata_ocizsgb115cv/preview/c/5/a/b/0', '5e6fb0af87e23d6a876fd3aeda809468', 638, '0', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6295411874e32', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (640, 1, 'appdata_ocizsgb115cv/preview/c/5/a/b/0/b', '2b971e9fc80cc87c8fd6ea621e4576d4', 639, 'b', 2, 1, 0, 1653742549, 1653742549, 0, 0, '62954118627d8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (641, 1, 'appdata_ocizsgb115cv/preview/c/5/a/b/0/b/c', '32e03fd43a2841a38440a6d570460c78', 640, 'c', 2, 1, 0, 1653948696, 1653948696, 0, 0, '62954118563e2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (643, 1, 'appdata_ocizsgb115cv/css/accessibility/e8ed-006d-style.css.gzip', 'ae5a27d39cee28d1300addb914f0939b', 631, 'e8ed-006d-style.css.gzip', 9, 3, 1202, 1653948697, 1653948697, 0, 0, '15bca84bde2b295e8245cb1ecd4f997b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (644, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing', '234a14512ab80a1d770891b5a8f02ecc', 299, 'federatedfilesharing', 2, 1, 1568, 1653948833, 1653948833, 0, 0, '6295412860b99', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (645, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-personal.css', '61825c757dd59969aee3617ed407ecb1', 644, 'f5a2-861b-settings-personal.css', 10, 5, 680, 1650551951, 1650551951, 0, 0, '56dadfe2c39b086527d38cd9a4ab5a1d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (646, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-admin.css', '964132f971f11f0093a85200078f8941', 644, 'f5a2-861b-settings-admin.css', 10, 5, 45, 1650552290, 1650552290, 0, 0, '30759824ca3fbf619c70cd50b0f72279', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (647, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-personal.css.deps', 'dbb1c0eebefe0b93e53259631e904bc5', 644, 'f5a2-861b-settings-personal.css.deps', 8, 3, 238, 1650551951, 1650551951, 0, 0, '0b218777ce211f26ff070223b92d37d5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (648, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-personal.css.gzip', '7c39f9120eb84a047df360bd21933768', 644, 'f5a2-861b-settings-personal.css.gzip', 9, 3, 307, 1650551951, 1650551951, 0, 0, 'ec9bf41523ddb6354f5c75233f97d3ef', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (649, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-admin.css.deps', 'db318c937751b3306a9229295ac3fe81', 644, 'f5a2-861b-settings-admin.css.deps', 8, 3, 235, 1650552290, 1650552290, 0, 0, '3bb2d98bb3ae307d06ab17735ff47e74', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (650, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-861b-settings-admin.css.gzip', 'a46d36e08a05d42b3799de92678f5257', 644, 'f5a2-861b-settings-admin.css.gzip', 9, 3, 63, 1650552290, 1650552290, 0, 0, '8d2effae8b2120a3b490435173c4f397', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (651, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-personal.css', 'e73f48a1c054d433b01fa3f21b2a7a6a', 644, 'f5a2-006d-settings-personal.css', 10, 5, 3845, 1653948712, 1653948712, 0, 0, 'e745d01f933c8fe8311b54e49aa04575', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (652, 1, 'appdata_ocizsgb115cv/preview/5/5', 'a06fbd104cd50df92042e536c256aa28', 84, '5', 2, 1, 0, 1653651885, 1653651885, 0, 0, '62954129221f6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (653, 1, 'appdata_ocizsgb115cv/preview/5/5/7', '8e9e33c7fc8e86accd98bc66d89ceeb2', 652, '7', 2, 1, 0, 1653651885, 1653651885, 0, 0, '6295412903932', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (654, 1, 'appdata_ocizsgb115cv/preview/5/5/7/4', '265dff26ab012f23cc83a11f69d4c0b4', 653, '4', 2, 1, 0, 1653651885, 1653651885, 0, 0, '62954128df463', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (655, 1, 'appdata_ocizsgb115cv/preview/5/5/7/4/3', '4a8ed9b754873429cedab0ae8f3ef727', 654, '3', 2, 1, 0, 1653651885, 1653651885, 0, 0, '62954128d3027', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (656, 1, 'appdata_ocizsgb115cv/preview/5/5/7/4/3/c', 'a0bd48eb151bd2b6b882200ab1be70c3', 655, 'c', 2, 1, 0, 1653651885, 1653651885, 0, 0, '62954128c6c42', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (657, 1, 'appdata_ocizsgb115cv/preview/5/5/7/4/3/c/c', 'e1af9e27d31eefe3eb9b164ed902f2e8', 656, 'c', 2, 1, 0, 1653948713, 1653948713, 0, 0, '62954128b263e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (661, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-personal.css.deps', 'ad11af01743500bc7781716885d75bbb', 644, 'f5a2-006d-settings-personal.css.deps', 8, 3, 238, 1653948713, 1653948713, 0, 0, 'd81433142c83df037c0cdc63a04250aa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (662, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-personal.css.gzip', '4c5a3c484e03a942cc4cef9cbc3098ae', 644, 'f5a2-006d-settings-personal.css.gzip', 9, 3, 1160, 1653948713, 1653948713, 0, 0, '7c9f47b54a649305359b47e25b3ede0e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (663, 1, 'appdata_ocizsgb115cv/avatar/test', '240d80ede600352ca06f51863380b224', 418, 'test', 2, 1, 5821, 1651853321, 1651853321, 0, 0, '6295412b3e2b3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (664, 1, 'appdata_ocizsgb115cv/avatar/test/avatar.png', '68cc9d77685bd99ce6c078d0cfd5c1fc', 663, 'avatar.png', 12, 11, 5515, 1651853318, 1651853318, 0, 0, '52c05d325b39f34f955be94953b7e9f1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (665, 1, 'appdata_ocizsgb115cv/avatar/test/generated', '75be28b31ebe6a8ed4694c1caa2e2ee1', 663, 'generated', 8, 3, 0, 1651853318, 1651853318, 0, 0, '175c45ec32d483b76213ffe436f28d8d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (666, 1, 'appdata_ocizsgb115cv/avatar/test/avatar.64.png', 'ad8d3a1e51e869553e9bd73e37dd83ca', 663, 'avatar.64.png', 12, 11, 306, 1651853321, 1651853321, 0, 0, '98002df63ea85a183ab843faabe0c9ec', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (667, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-admin.css', '36913d3b0941e57a8238889cd20a68d1', 644, 'f5a2-006d-settings-admin.css', 10, 5, 2825, 1653948833, 1653948833, 0, 0, 'd475c6dfc5e9badebe0a5c1a2e28d978', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (668, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-admin.css.deps', '50279c0bead1530ca029d1c6997253da', 644, 'f5a2-006d-settings-admin.css.deps', 8, 3, 235, 1653948833, 1653948833, 0, 0, '8ee76690c4aa363c84a91136e0e0672e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (669, 1, 'appdata_ocizsgb115cv/css/federatedfilesharing/f5a2-006d-settings-admin.css.gzip', 'aa0cf1cc7acd46a0cc77319051522646', 644, 'f5a2-006d-settings-admin.css.gzip', 9, 3, 874, 1653948833, 1653948833, 0, 0, 'ad0af04520b5ecb53c190b3e2a3bf2fa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (670, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-settings-admin.css', '6f4ea639cf5e32446cc528c690e10f87', 408, 'd71e-006d-settings-admin.css', 10, 5, 5341, 1653948891, 1653948891, 0, 0, 'c62720026157d72a3f46fa0e761fe75a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (671, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-settings-admin.css.deps', '3b0b68c1e7a7f7cfb662607cd4733a8f', 408, 'd71e-006d-settings-admin.css.deps', 8, 3, 222, 1653948892, 1653948892, 0, 0, 'aac14f4b563863fbbeeae4976f34b41e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (672, 1, 'appdata_ocizsgb115cv/css/theming/d71e-006d-settings-admin.css.gzip', '5bb12d6c7e6bb7f0fc9e3aa68d69c834', 408, 'd71e-006d-settings-admin.css.gzip', 9, 3, 1534, 1653948892, 1653948892, 0, 0, '71ef2c88c794a294506369368ffb97ab', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (673, 1, 'appdata_ocizsgb115cv/identityproof', 'a540d59e7650c7cf9e890207b57646e2', 80, 'identityproof', 2, 1, 8078, 1653614082, 1653614082, 0, 0, '6296901e65dff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (674, 1, 'appdata_ocizsgb115cv/js', '1a930ef63e58a0436e4e991f702bdf58', 80, 'js', 2, 1, 534504, 1647000805, 1647000805, 0, 0, '6296901e65e39', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (675, 1, 'appdata_ocizsgb115cv/css/mail', 'b1322540a3c8fedfb7f14fdfaf885f70', 299, 'mail', 2, 1, 35071, 1655288884, 1655288884, 0, 0, '629694b04fcab', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (676, 1, 'appdata_ocizsgb115cv/css/calendar', '2b4920de4b44acf6e20da4a6d801a086', 299, 'calendar', 2, 1, 0, 1654035632, 1654035632, 0, 0, '629694b082537', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (677, 1, 'appdata_ocizsgb115cv/css/calendar/070a-006d-icons.css', 'b428d318b78a2b18a819660eec5cbf98', 676, '070a-006d-icons.css', 10, 5, 11526, 1654035632, 1654035632, 0, 0, 'd53dc2d0210340ebc4714f8f4eef8a1a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (678, 1, 'appdata_ocizsgb115cv/css/calendar/070a-006d-icons.css.deps', '1ade8352f4601037059c25d9977051d8', 676, '070a-006d-icons.css.deps', 8, 3, 214, 1654035632, 1654035632, 0, 0, '06294cbea1c68e8fc525be7df6a6b3bf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (679, 1, 'appdata_ocizsgb115cv/css/calendar/070a-006d-icons.css.gzip', 'b36c3d11dac32b60f39e6c937cc4b704', 676, '070a-006d-icons.css.gzip', 9, 3, 1555, 1654035632, 1654035632, 0, 0, '6f747aadd108efde085d4619a8616e39', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (680, 1, 'appdata_ocizsgb115cv/appstore/categories.json', '2b54623eaf07235651a79f49932905e6', 450, 'categories.json', 4, 3, 141893, 1655266938, 1655266938, 0, 0, 'fceb9e0dafc42c7391353f5872b17f08', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (690, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mail.css.gzip', '0a860d5e7f61c4bb1ca94cbc0361b70d', 675, '345d-006d-mail.css.gzip', 9, 3, 4139, 1651855857, 1651855857, 0, 0, '1b778f5d1d2247605623a6024bc765e4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (691, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mobile.css.deps', '8030f726e0ee13ca07177f2ed963ff6f', 675, '345d-006d-mobile.css.deps', 8, 3, 211, 1651855858, 1651855858, 0, 0, '2f334d75a3712408969ba11e805a02e0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (692, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mobile.css', 'dd901c78464cc35d6e502c3ca25de947', 675, '345d-006d-mobile.css', 10, 5, 3896, 1651855857, 1651855857, 0, 0, 'bb8d0a56b832a02541a434b20bcc7a2f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (693, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mail.css', 'a5382d024c5b0aad7b36a4ada88d0cdb', 675, '345d-006d-mail.css', 10, 5, 25340, 1651855857, 1651855857, 0, 0, '3ce335b9018ebe2cba237026eb618836', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (694, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mail.css.deps', '449ad2ab7197a9e1b3b643926f13d921', 675, '345d-006d-mail.css.deps', 8, 3, 209, 1651855857, 1651855857, 0, 0, '68a3de068e7a627852aa38939d9f4a0f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (695, 1, 'appdata_ocizsgb115cv/css/mail/345d-006d-mobile.css.gzip', 'dcfb2f56a52b22879cee5d4852f7f77f', 675, '345d-006d-mobile.css.gzip', 9, 3, 1276, 1651855858, 1651855858, 0, 0, '9ec3610d999a8d53cdd78d9f40d31ecf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (696, 1, 'appdata_ocizsgb115cv/js/core', '1507e28fdc144e91b69c6b570702d728', 674, 'core', 2, 1, 15290, 1646952983, 1646952983, 0, 0, '6297afc708dba', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (697, 1, 'appdata_ocizsgb115cv/js/files', 'c80bcbc40f1df0f8fbd1c37be1d714a5', 674, 'files', 2, 1, 519214, 1647000805, 1647000805, 0, 0, '6297afc708de7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (698, 1, 'appdata_ocizsgb115cv/js/core/merged-template-prepend.js', 'f44dd2b7e1dc5e0afecb9ee3b3eccf94', 696, 'merged-template-prepend.js', 7, 3, 11942, 1646952983, 1646952983, 0, 0, '97136d672341ae6edb2fa2e04911fd3c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (699, 1, 'appdata_ocizsgb115cv/js/core/merged-template-prepend.js.deps', 'a345b22733dea25ccf886fc13ca755ef', 696, 'merged-template-prepend.js.deps', 8, 3, 294, 1646952983, 1646952983, 0, 0, 'c5e6ca9f580ae4a47165992f54b5d58a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (700, 1, 'appdata_ocizsgb115cv/js/core/merged-template-prepend.js.gzip', 'f22bf4f4af02970956d70d05e031cfc9', 696, 'merged-template-prepend.js.gzip', 9, 3, 3054, 1646952983, 1646952983, 0, 0, 'a1a567c6d3683c9e2c7b86afeed5af6f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (701, 1, 'appdata_ocizsgb115cv/js/files/merged-index.js.deps', '89bc2e18699c5d4406cbfed572d8459b', 697, 'merged-index.js.deps', 8, 3, 2396, 1647000805, 1647000805, 0, 0, 'e8721b21fac0587f5c8e51b9b5c38663', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (702, 1, 'appdata_ocizsgb115cv/js/files/merged-index.js.gzip', '7f2ec90084b88ef8687078298931a9ec', 697, 'merged-index.js.gzip', 9, 3, 95471, 1647000805, 1647000805, 0, 0, '5d963d5fe89360c50cf25a0f9d081690', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (703, 1, 'appdata_ocizsgb115cv/js/files/merged-index.js', '9f195a9e5ba6f5f6b5bea76e39df6b8c', 697, 'merged-index.js', 7, 3, 421347, 1647000805, 1647000805, 0, 0, '05fd0a759aa219541c3cc36aa40f61cb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (704, 1, 'appdata_ocizsgb115cv/identityproof/user-user', '082d0753b27ab711afda34b4705d75de', 673, 'user-user', 2, 1, 4039, 1650551179, 1650551179, 0, 0, '6297afc74f18e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (705, 1, 'appdata_ocizsgb115cv/identityproof/user-test', '4d23d5f6c743f5543f3570a5e2ab07e7', 673, 'user-test', 2, 1, 4039, 1653614082, 1653614082, 0, 0, '6297afc74f1bd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (706, 1, 'appdata_ocizsgb115cv/identityproof/user-user/public', '26caa56ad068d619c6ef46c0f63bc403', 704, 'public', 8, 3, 451, 1650551179, 1650551179, 0, 0, 'caaa3fc3e7975fdad9ddec6f992054b6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (707, 1, 'appdata_ocizsgb115cv/identityproof/user-user/private', '59c8108d6299f0c554aa2e0af7025c69', 704, 'private', 8, 3, 3588, 1650551179, 1650551179, 0, 0, '59b25414912896570970d123f4303d01', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (708, 1, 'appdata_ocizsgb115cv/identityproof/user-test/public', '7e710167df53d935bdba8ed8a2ad07e7', 705, 'public', 8, 3, 451, 1653614082, 1653614082, 0, 0, 'b7b3f0a6d3b079e3c378172696c982b7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (709, 1, 'appdata_ocizsgb115cv/identityproof/user-test/private', '4df66fbedafcd429224672056eb91ed9', 705, 'private', 8, 3, 3588, 1653614082, 1653614082, 0, 0, 'b9071a884766f662da2516098e7a8a49', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (710, 1, 'appdata_ocizsgb115cv/preview/a/4/3', 'bd326c2796480114657a645e98f4f178', 574, '3', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccac446', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (711, 1, 'appdata_ocizsgb115cv/preview/a/4/3/0', 'e0e3e0d8f4a8703287a074e1c4222e0e', 710, '0', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccb64da', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (712, 1, 'appdata_ocizsgb115cv/preview/a/4/3/0/0', '05c7dc4e922db1aacfb437e82f521d73', 711, '0', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccbc752', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (713, 1, 'appdata_ocizsgb115cv/preview/a/4/3/0/0/b', '619c3db02e32842a381ec324892c3b17', 712, 'b', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccc2912', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (714, 1, 'appdata_ocizsgb115cv/preview/a/4/3/0/0/b/0', '31307bd4ab0381a5191d13857630247f', 713, '0', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccc8d00', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (715, 1, 'appdata_ocizsgb115cv/preview/a/4/3/0/0/b/0/909', 'ffd39df19317dda7758dc875e211404b', 714, '909', 2, 1, 0, 1653742548, 1653742548, 0, 0, '6297afccd0f50', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (716, 1, 'appdata_ocizsgb115cv/preview/d/c/5', '734678c33ae41a2f5e4e535ab90dd324', 470, '5', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd50a3cc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (717, 1, 'appdata_ocizsgb115cv/preview/d/c/5/6', 'f33c804799cfab685d8df8724a6518b8', 716, '6', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd52555b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (718, 1, 'appdata_ocizsgb115cv/preview/d/c/5/6/8', 'fadbc6dd4d20f5f7ef183af40d5f8606', 717, '8', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd52ab14', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (719, 1, 'appdata_ocizsgb115cv/preview/d/c/5/6/8/9', 'f8df4ef0bcf8e5a10190ef367a82439f', 718, '9', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd530d05', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (720, 1, 'appdata_ocizsgb115cv/preview/d/c/5/6/8/9/7', '1827124780e0da0afaeaaeb802560bf7', 719, '7', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd536f66', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (721, 1, 'appdata_ocizsgb115cv/preview/d/c/5/6/8/9/7/804', 'ca02968cb39b6b9351a2a1bf964dab8d', 720, '804', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297afd53d0c0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (722, 1, 'appdata_ocizsgb115cv/preview/a/8/c', '7839ccdc1c9a6b59f6ca36bd2a6b831e', 441, 'c', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd771ac1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (723, 1, 'appdata_ocizsgb115cv/preview/a/8/c/8', 'c8a8e946f832d3a116a94e68b5d8d71f', 722, '8', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd779b81', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (724, 1, 'appdata_ocizsgb115cv/preview/a/8/c/8/8', '9ae9119c79c57f0f35c70e840bb75190', 723, '8', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd77fd16', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (725, 1, 'appdata_ocizsgb115cv/preview/a/8/c/8/8/a', '291b9b1ecf977a4967f2799fd8d5be51', 724, 'a', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd785f8f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (726, 1, 'appdata_ocizsgb115cv/preview/a/8/c/8/8/a/0', 'f64d67d48b4b0caad3c7cab6fc6c384c', 725, '0', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd78c045', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (727, 1, 'appdata_ocizsgb115cv/preview/a/8/c/8/8/a/0/308', '77664724c68970eacaa8b77d8313541a', 726, '308', 2, 1, 0, 1653643275, 1653643275, 0, 0, '6297afd792228', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (728, 1, 'appdata_ocizsgb115cv/preview/a/6/4', 'c62a33d3dd6d2197c9e795f4aef3e1b1', 206, '4', 2, 1, 17517, 1653726023, 1653726023, 0, 0, '6297afdfa1798', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (729, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c', '7feb188ccc16555149fc025ede878000', 728, 'c', 2, 1, 17517, 1653726023, 1653726023, 0, 0, '6297afdfa7841', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (730, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9', '371b8f5d86a1329cf0410d0389aa29a3', 729, '9', 2, 1, 17517, 1653726023, 1653726023, 0, 0, '6297afdfada14', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (731, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9/4', 'f9d75877ae41f19f592caf1f6a73d039', 730, '4', 2, 1, 17517, 1653726023, 1653726023, 0, 0, '6297afdfb3c40', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (732, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9/4/b', 'd03c387815a1bf5219cbdaa8e276fd4b', 731, 'b', 2, 1, 17517, 1653726023, 1653726023, 0, 0, '6297afdfc003b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (733, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9/4/b/898', 'c631cfae05d5b1b73d13772a081665d6', 732, '898', 2, 1, 17517, 1653726026, 1653726026, 0, 0, '6297afdfc6225', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (734, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9/4/b/898/256-256-crop.png', '9955f14f9903c0da9fa3c5e04be3b7f5', 733, '256-256-crop.png', 12, 11, 2188, 1653726026, 1653726026, 0, 0, '30e8849bf5053d0c8c5155043323b1f4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (735, 1, 'appdata_ocizsgb115cv/preview/a/6/4/c/9/4/b/898/4096-4096-max.png', '34b95a7eff52628592a35ada5dc5a928', 733, '4096-4096-max.png', 12, 11, 15329, 1653726025, 1653726025, 0, 0, '367b2451b77dcc27772705e22e3f9fca', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (736, 1, 'appdata_ocizsgb115cv/preview/9/8/d', '5d38ebfefd952d62cd3cb822e3b83f0f', 148, 'd', 2, 1, 21030, 1653725614, 1653725614, 0, 0, '6297afe4b54d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (737, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6', '32388ac683209e10e0bfc5eae93ec06e', 736, '6', 2, 1, 21030, 1653725614, 1653725614, 0, 0, '6297afe4c17be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (738, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f', 'b1a3003bb3647148bdb7f82ace10f598', 737, 'f', 2, 1, 21030, 1653725614, 1653725614, 0, 0, '6297afe4c78e6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (739, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f/5', '742e33153d5fd0c34bebd708d777027b', 738, '5', 2, 1, 21030, 1653725614, 1653725614, 0, 0, '6297afe4cdc4f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (740, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f/5/8', '7e677f9b2ec6130c11579c33fb1c8ef4', 739, '8', 2, 1, 21030, 1653725913, 1653725913, 0, 0, '6297afe4d3d80', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (741, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f/5/8/873', 'c2aee97f4a207e5081bc93b66e7ca162', 740, '873', 2, 1, 21030, 1653725914, 1653725914, 0, 0, '6297afe4d9f06', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (742, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f/5/8/873/256-256-crop.png', 'ed84892e414147237c2fe8a405c2c232', 741, '256-256-crop.png', 12, 11, 2764, 1653725914, 1653725914, 0, 0, 'd43d864f8cc067c25a92b1e06c50e016', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (743, 1, 'appdata_ocizsgb115cv/preview/9/8/d/6/f/5/8/873/4096-4096-max.png', 'afda368096d0ec868afd353135ab8b6c', 741, '4096-4096-max.png', 12, 11, 18266, 1653725914, 1653725914, 0, 0, 'dbadaccb0e1cc813b7fa04c3769e0a8c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (744, 1, 'appdata_ocizsgb115cv/preview/c/2/0/3', '0990efd362e70b4b44a6726294818257', 142, '3', 2, 1, 0, 1653643247, 1653643247, 0, 0, '6297afe5b1e57', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (745, 1, 'appdata_ocizsgb115cv/preview/c/2/0/3/d', '0b1dde27a3d214b899f95566104021ba', 744, 'd', 2, 1, 0, 1653643247, 1653643247, 0, 0, '6297afe5bcb82', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (746, 1, 'appdata_ocizsgb115cv/preview/c/2/0/3/d/8', '565092c34c2226f1bf9786603aa0a257', 745, '8', 2, 1, 0, 1653643247, 1653643247, 0, 0, '6297afe5c4d2e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (747, 1, 'appdata_ocizsgb115cv/preview/c/2/0/3/d/8/a', 'd7e70cb3f6c39edc50c24098f269fee4', 746, 'a', 2, 1, 0, 1653643247, 1653643247, 0, 0, '6297afe5cc3d6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (748, 1, 'appdata_ocizsgb115cv/preview/c/2/0/3/d/8/a/442', '638594730dcd2c6ca681eb193200a942', 747, '442', 2, 1, 0, 1653643247, 1653643247, 0, 0, '6297afe5d3d5a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (749, 1, 'appdata_ocizsgb115cv/preview/3/5/2', '542d8bdc3217710fac559e4c3bbe6d2a', 96, '2', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afebea546', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (750, 1, 'appdata_ocizsgb115cv/preview/3/5/2/f', '8f492c5985a26204713e917680061df0', 749, 'f', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afebf164a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (751, 1, 'appdata_ocizsgb115cv/preview/3/5/2/f/e', 'c8a6aa0d37a8eb4e76d7d2c7fe1e3eb3', 750, 'e', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afec0279d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (752, 1, 'appdata_ocizsgb115cv/preview/3/5/2/f/e/2', 'df4d1a0a1192f1adf27d9c0f133e1d84', 751, '2', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afec0898d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (753, 1, 'appdata_ocizsgb115cv/preview/3/5/2/f/e/2/5', '09b01f8a56edffcf287882ffb1be7cf2', 752, '5', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afec0eeda', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (754, 1, 'appdata_ocizsgb115cv/preview/3/5/2/f/e/2/5/399', '99b6189354a823e3140c46b9e3a2b749', 753, '399', 2, 1, 0, 1653643282, 1653643282, 0, 0, '6297afec16dec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (755, 1, 'appdata_ocizsgb115cv/preview/1/9', 'afbafdc3da9a5873695d37092e4dbe64', 95, '9', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afec8534b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (756, 1, 'appdata_ocizsgb115cv/preview/1/e', '1cded47b5b4387451e1a0dc3a162be0c', 95, 'e', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afec85370', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (757, 1, 'appdata_ocizsgb115cv/preview/1/7', '9d3836e779aa7bc1b1afd1d13069bc1f', 95, '7', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afec853a8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (758, 1, 'appdata_ocizsgb115cv/preview/1/9/b', 'f80efd21afca10cdaa54c9e0181118de', 755, 'b', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afec9512a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (759, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6', 'e2faec462a31d974c8ff363cc944c9ac', 758, '6', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afec9b862', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (760, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5', 'd70705c7491f3ffe1360c677b947aec3', 759, '5', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afecafe48', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (761, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5/0', '2d063589f54f0e49528fc618962db498', 760, '0', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afecb823d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (762, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5/0/6', '66aca3b764d0d97aec7da381ff605445', 761, '6', 2, 1, 16101, 1653725566, 1653725566, 0, 0, '6297afecc03db', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (763, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5/0/6/863', '31f7315918f86eaa3d915eb1d4fb5d59', 762, '863', 2, 1, 16101, 1653725568, 1653725568, 0, 0, '6297afecc862b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (764, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5/0/6/863/256-256-crop.png', 'ea1beb67d89d1a581015c9c3370106ec', 763, '256-256-crop.png', 12, 11, 2140, 1653725568, 1653725568, 0, 0, 'ad14011ad17d9dc324b1f4cf1f6bcc82', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (765, 1, 'appdata_ocizsgb115cv/preview/1/9/b/6/5/0/6/863/4096-4096-max.png', '6d5a3ee07e44b4db2c8edb60f0da272a', 763, '4096-4096-max.png', 12, 11, 13961, 1653725568, 1653725568, 0, 0, 'cb07761ebd062eba74ef9e0dd624778a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (766, 1, 'appdata_ocizsgb115cv/preview/1/e/4', 'a7af0fb750fc6a6639e9557cb8ec77d0', 756, '4', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afed109e7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (767, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8', '9dc471fcc8e190a2beaffe693410f67f', 766, '8', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afed24faa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (768, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c', 'ad0effd118131ed969abb7c0609675e8', 767, 'c', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afed2bea9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (769, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c/4', '057eccedf78d91b14bd10bcf4fd09a70', 768, '4', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afed3626f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (770, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c/4/4', '2d8cca7ec974ea05eb795337991bab29', 769, '4', 2, 1, 21009, 1653744000, 1653744000, 0, 0, '6297afed4466a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (771, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c/4/4/1010', '8603a8e76e449cbabd0eb26f5b08f261', 770, '1010', 2, 1, 21009, 1653744001, 1653744001, 0, 0, '6297afed59404', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (772, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c/4/4/1010/256-256-crop.png', '554b2320ee90c4cf35dd1d51fe73a2c5', 771, '256-256-crop.png', 12, 11, 2973, 1653744001, 1653744001, 0, 0, '34d0bee5992a64de31519a525b018e4a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (773, 1, 'appdata_ocizsgb115cv/preview/1/e/4/8/c/4/4/1010/4096-4096-max.png', '26b90edbc032d7b63ab6f1abfe1f3368', 771, '4096-4096-max.png', 12, 11, 18036, 1653744001, 1653744001, 0, 0, '7d285d799544578ad045643d05a66066', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (774, 1, 'appdata_ocizsgb115cv/preview/1/7/d', 'f7c70974c0bca4ab194a7f0e2b7d4542', 757, 'd', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedac5f1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (775, 1, 'appdata_ocizsgb115cv/preview/1/7/d/6', 'a7e29de19db28ba1d6673e7732a94a7e', 774, '6', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedc0ac1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (776, 1, 'appdata_ocizsgb115cv/preview/1/7/d/6/3', '8ac634bc93013c889b21659f31522bf6', 775, '3', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedc6c7e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (777, 1, 'appdata_ocizsgb115cv/preview/1/7/d/6/3/b', '4502c25d0d7ffa4a94f1ce560a91d2b2', 776, 'b', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedccf2a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (778, 1, 'appdata_ocizsgb115cv/preview/1/7/d/6/3/b/1', 'd02de5cad302104c1d8d2f221edb1fc4', 777, '1', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedd3068', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (779, 1, 'appdata_ocizsgb115cv/preview/1/7/d/6/3/b/1/411', '357260d1e43e1466b2da0464d2b4b73f', 778, '411', 2, 1, 0, 1653643287, 1653643287, 0, 0, '6297afedd92c4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (780, 1, 'appdata_ocizsgb115cv/preview/4/9', 'eac2a9117e201d498d3a3c4d22f11984', 94, '9', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee6dacb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (781, 1, 'appdata_ocizsgb115cv/preview/4/3', '037473952e1d69a736dc6500a8bd2fa2', 94, '3', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afee6daf6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (782, 1, 'appdata_ocizsgb115cv/preview/4/1', 'f16654ec485247a1a2a8d585137e2ddf', 94, '1', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afee6db33', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (783, 1, 'appdata_ocizsgb115cv/preview/4/9/6', 'd50e64c3ef64247eb4a148dbd433d8f6', 780, '6', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee763db', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (784, 1, 'appdata_ocizsgb115cv/preview/4/9/6/e', '449135f608dec5db41f3188dee55848e', 783, 'e', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee80252', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (785, 1, 'appdata_ocizsgb115cv/preview/4/9/6/e/0', '5c071b40e3496c69f7d7758671e35625', 784, '0', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee8700d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (786, 1, 'appdata_ocizsgb115cv/preview/4/9/6/e/0/5', '287f13a2a6967fa5745e92f50b516761', 785, '5', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee8e667', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (787, 1, 'appdata_ocizsgb115cv/preview/4/9/6/e/0/5/e', '79a486a0d3339ea522b079792a35a958', 786, 'e', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afee94a48', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (788, 1, 'appdata_ocizsgb115cv/preview/4/9/6/e/0/5/e/305', 'eb5d9af703a9d368822230d9cf300e8c', 787, '305', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afeea470f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (789, 1, 'appdata_ocizsgb115cv/preview/4/3/2', '1cd94880df02f34d3c7e890c404d61dc', 781, '2', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afeed5c6d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (790, 1, 'appdata_ocizsgb115cv/preview/4/3/2/a', '9f992338eea01ca5dea4f3d31fdc4022', 789, 'a', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afeedfbc7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (791, 1, 'appdata_ocizsgb115cv/preview/4/3/2/a/c', 'a2b04029bf4f24c747d5d528359ff361', 790, 'c', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afeee6173', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (792, 1, 'appdata_ocizsgb115cv/preview/4/3/2/a/c/a', 'caddaaaa97c47fa09826985c40a43580', 791, 'a', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afeeee5fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (793, 1, 'appdata_ocizsgb115cv/preview/4/3/2/a/c/a/3', '89327fef403888b14f4b28565440c462', 792, '3', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afef02371', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (794, 1, 'appdata_ocizsgb115cv/preview/4/3/2/a/c/a/3/318', '74262924ddd5fadc1a32c4566999dd63', 793, '318', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afef06505', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (795, 1, 'appdata_ocizsgb115cv/preview/4/1/a', '7e9ef16cff22f38975770a19fecc5930', 782, 'a', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef2b28e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (796, 1, 'appdata_ocizsgb115cv/preview/4/1/a/e', '6322d3669b2462b5fff08b825d4180ee', 795, 'e', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef333dc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (797, 1, 'appdata_ocizsgb115cv/preview/4/1/a/e/3', 'ae34f87fc7ce2e4094a81cea8cbe3e0b', 796, '3', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef3d76b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (798, 1, 'appdata_ocizsgb115cv/preview/4/1/a/e/3/6', '6297a1d3c274a267512d8836920118dc', 797, '6', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef43872', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (799, 1, 'appdata_ocizsgb115cv/preview/4/1/a/e/3/6/e', 'd478ec4dc5b213df578b49592b8244ca', 798, 'e', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef479fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (800, 1, 'appdata_ocizsgb115cv/preview/4/1/a/e/3/6/e/417', 'e2756b7f79667b115c6447cc4cb496dd', 799, '417', 2, 1, 0, 1653643279, 1653643279, 0, 0, '6297afef4dca4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (801, 1, 'appdata_ocizsgb115cv/preview/3/6', 'cbe866ac5041fe8ba04c742961de8ff5', 93, '6', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297afefcc787', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (802, 1, 'appdata_ocizsgb115cv/preview/3/f', 'db9cc6f605aa4ef243095b31211b46f2', 93, 'f', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297afefcc7ce', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (803, 1, 'appdata_ocizsgb115cv/preview/3/6/2', 'c3063d6c9ce0090624172fd86aa4a1de', 801, '2', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297afefd8780', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (804, 1, 'appdata_ocizsgb115cv/preview/3/6/3', '5b8b34a5353a14896ec551f1758e498d', 801, '3', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297afefd87ac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (805, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1', '646f6356a92d06454aa4fe5ebbf4cfa0', 803, '1', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297afefe388c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (806, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f', '9e16d4ade4619d5f2acc62f197253627', 805, 'f', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297afefedb4e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (807, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f/1', '7961600a52320cb9afd79c01c50be1c5', 806, '1', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297afeff3085', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (808, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f/1/4', '0fe9a4e650c8bc524d8f9ab3f08b5840', 807, '4', 2, 1, 22045, 1653720752, 1653720752, 0, 0, '6297aff00506c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (809, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f/1/4/787', 'a8f958cf136c3764efc5b4b299890aff', 808, '787', 2, 1, 22045, 1653720753, 1653720753, 0, 0, '6297aff00b15c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (810, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f/1/4/787/198-256-max.png', '4700e026019a03f0c7feb988965f6bd7', 809, '198-256-max.png', 12, 11, 6593, 1653720752, 1653720752, 0, 0, 'bafaa25128a26dc964855f39311651d1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (811, 1, 'appdata_ocizsgb115cv/preview/3/6/2/1/f/1/4/787/198-198-crop.png', 'e3a49efa4d4b62c452c561f345fae897', 809, '198-198-crop.png', 12, 11, 15452, 1653720753, 1653720753, 0, 0, '57220e3eabc2addcf49f08441edce951', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (812, 1, 'appdata_ocizsgb115cv/preview/3/6/3/6', '46b95d9bce35ecf5cb0ad48fa7bc1e0f', 804, '6', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff0402e5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (813, 1, 'appdata_ocizsgb115cv/preview/3/6/3/6/6', 'fc40cab90d9ba073537df820e251b5c6', 812, '6', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff046428', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (814, 1, 'appdata_ocizsgb115cv/preview/3/6/3/6/6/3', '0e04b023121e115849e5250a5a3e9014', 813, '3', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff04e6be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (815, 1, 'appdata_ocizsgb115cv/preview/3/6/3/6/6/3/8', 'cad04d0a7979b846aab3b12fba9cbac5', 814, '8', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff05486f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (816, 1, 'appdata_ocizsgb115cv/preview/3/6/3/6/6/3/8/169', '57d2f9a85277b9fb5edf847a3cbcaeec', 815, '169', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff05ab16', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (817, 1, 'appdata_ocizsgb115cv/preview/3/f/e', 'fbd591ad9b9d3b031cc9ce9039de5fe0', 802, 'e', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff094553', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (818, 1, 'appdata_ocizsgb115cv/preview/3/f/e/9', '561e136535d317df321cd334b41f665b', 817, '9', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff099f20', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (819, 1, 'appdata_ocizsgb115cv/preview/3/f/e/9/4', 'b07e7adb4fda100e680975d0ce2b558f', 818, '4', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff0a0192', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (820, 1, 'appdata_ocizsgb115cv/preview/3/f/e/9/4/a', '4fb7e2aa9cabdf1240c57b02cbefac88', 819, 'a', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff0a85ac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (821, 1, 'appdata_ocizsgb115cv/preview/3/f/e/9/4/a/0', 'ab53188e3c1892e31854ab5102127b83', 820, '0', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff0b67d9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (822, 1, 'appdata_ocizsgb115cv/preview/3/f/e/9/4/a/0/316', '409ca1b307ff62b21c530be939475793', 821, '316', 2, 1, 0, 1652017029, 1652017029, 0, 0, '6297aff0bca41', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (823, 1, 'appdata_ocizsgb115cv/preview/7/5', '242cd9c94bfafeee992d5d12e3276410', 92, '5', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff13813f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (824, 1, 'appdata_ocizsgb115cv/preview/7/9', '3fdd988751dd5305b1efebf550b06615', 92, '9', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff138169', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (825, 1, 'appdata_ocizsgb115cv/preview/7/e', 'd16b1d7294de9d2efa4c2a97b59177d3', 92, 'e', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff13818c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (826, 1, 'appdata_ocizsgb115cv/preview/7/c', '510c5c49719e76449a83e2460f087783', 92, 'c', 2, 1, 74780, 1650637822, 1650637822, 0, 0, '6297aff1381ac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (827, 1, 'appdata_ocizsgb115cv/preview/7/1', '57df92d7d670767adc7fe4eeff4800ce', 92, '1', 2, 1, 0, 1653722759, 1653722759, 0, 0, '6297aff138212', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (828, 1, 'appdata_ocizsgb115cv/preview/7/5/8', '2778e34a93aaa7faaf04a49abad499b2', 823, '8', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff143c9a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (829, 1, 'appdata_ocizsgb115cv/preview/7/5/8/8', 'd05db10ada8d3a8e90b0427b379e4977', 828, '8', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff152090', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (830, 1, 'appdata_ocizsgb115cv/preview/7/5/8/8/7', 'c78ffab1ea0961873b6cd12bc4fa3c50', 829, '7', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff1593ef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (831, 1, 'appdata_ocizsgb115cv/preview/7/5/8/8/7/4', '03f7c0518858db3be988f675161f7031', 830, '4', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff15f5f6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (832, 1, 'appdata_ocizsgb115cv/preview/7/5/8/8/7/4/9', '3af2659d1d6a2c0d9de735129328cc71', 831, '9', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff16989b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (833, 1, 'appdata_ocizsgb115cv/preview/7/5/8/8/7/4/9/314', 'e420fa3aeb55b90b869cc5e640270d8e', 832, '314', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff170c86', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (834, 1, 'appdata_ocizsgb115cv/preview/7/9/5', '9e80a611a5bf63e3263d6d0c97049a98', 824, '5', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff1ad4d3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (835, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c', '6dea38520671d38e8549906f62d64509', 834, 'c', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff1bd499', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (836, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7', 'ab42f7685201c2fcfa415d8204e424db', 835, '7', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff1c36d7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (837, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7/a', 'fdc0f2f8968d3ba6a7409a14fa9cea01', 836, 'a', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff1c98b6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (838, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7/a/7', '8a32456e4ec6a9032b52448d09aee949', 837, '7', 2, 1, 46943, 1653723397, 1653723397, 0, 0, '6297aff1cfb9e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (839, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7/a/7/826', 'db7038c818ce38c18aaa0e8edd6b2185', 838, '826', 2, 1, 46943, 1653723398, 1653723398, 0, 0, '6297aff1d5e32', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (840, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7/a/7/826/256-256-crop.png', '7b48658ccd54e41147e0f3e63803ed98', 839, '256-256-crop.png', 12, 11, 7175, 1653723398, 1653723398, 0, 0, '42d6a0718080eca5c908143a65b7e723', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (841, 1, 'appdata_ocizsgb115cv/preview/7/9/5/c/7/a/7/826/4096-4096-max.png', '2829ff48a9aeb660121e5400925ff9fd', 839, '4096-4096-max.png', 12, 11, 39768, 1653723398, 1653723398, 0, 0, 'edc5477a1fcab1501af64485e3ac5e7e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (842, 1, 'appdata_ocizsgb115cv/preview/7/e/a', '651f868403425299d6645cee268cacda', 825, 'a', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff26e8b5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (843, 1, 'appdata_ocizsgb115cv/preview/7/e/a/c', 'b412779a035719ef8a040aeec789b1db', 842, 'c', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff278aa0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (844, 1, 'appdata_ocizsgb115cv/preview/7/e/a/c/b', '3a09c8cc6d0cfd50275c399141a6cfcd', 843, 'b', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff284da8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (845, 1, 'appdata_ocizsgb115cv/preview/7/e/a/c/b/5', '65b2362606515677a9833937220de658', 844, '5', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff288ecb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (846, 1, 'appdata_ocizsgb115cv/preview/7/e/a/c/b/5/3', '502f1bf6859ee27b09a25baa3a230d8b', 845, '3', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff28f943', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (847, 1, 'appdata_ocizsgb115cv/preview/7/e/a/c/b/5/3/419', '3f571e42c156d6bd917753484f760856', 846, '419', 2, 1, 0, 1653643277, 1653643277, 0, 0, '6297aff296095', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (848, 1, 'appdata_ocizsgb115cv/preview/7/c/b', 'c71f172d6eade0d58e92eb457fd7cdbd', 826, 'b', 2, 1, 74780, 1650637822, 1650637822, 0, 0, '6297aff2d06d0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (849, 1, 'appdata_ocizsgb115cv/preview/7/c/b/b', '171ed731aa6a68a205ff00678e6e9412', 848, 'b', 2, 1, 74780, 1650637822, 1650637822, 0, 0, '6297aff2d8855', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (850, 1, 'appdata_ocizsgb115cv/preview/7/c/b/b/c', '402bbc2036928249f22e26b390a8270a', 849, 'c', 2, 1, 74780, 1650637822, 1650637822, 0, 0, '6297aff2dead7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (851, 1, 'appdata_ocizsgb115cv/preview/7/c/b/b/c/4', 'c4b4c5f89da26a2c0897640162103958', 850, '4', 2, 1, 74780, 1650637822, 1650637822, 0, 0, '6297aff2eb822', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (852, 1, 'appdata_ocizsgb115cv/preview/7/c/b/b/c/4/0', '07529936eb08d846cdfcbfc778ea403a', 851, '0', 2, 1, 74780, 1654108227, 1654108227, 0, 0, '6297aff3031a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (856, 1, 'appdata_ocizsgb115cv/preview/7/1/a', '522a4fd7b9d3e693f33fc22ce000877a', 827, 'a', 2, 1, 0, 1653722759, 1653722759, 0, 0, '6297aff35adb1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (857, 1, 'appdata_ocizsgb115cv/preview/7/1/a/d', '9f47b5a2093a0972c5edb2571795d9be', 856, 'd', 2, 1, 0, 1653722759, 1653722759, 0, 0, '6297aff369011', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (858, 1, 'appdata_ocizsgb115cv/preview/7/1/a/d/1', 'e8a67613ca212c67dfd6eb06a3ba85e5', 857, '1', 2, 1, 0, 1653722759, 1653722759, 0, 0, '6297aff36f274', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (859, 1, 'appdata_ocizsgb115cv/preview/7/1/a/d/1/6', '7e5078b534c3172165eeee988632970d', 858, '6', 2, 1, 0, 1653722759, 1653722759, 0, 0, '6297aff3754e5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (860, 1, 'appdata_ocizsgb115cv/preview/7/1/a/d/1/6/a', 'b4fdeefaed9484dad0c78fc1e85523f2', 859, 'a', 2, 1, 0, 1653723348, 1653723348, 0, 0, '6297aff37b671', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (861, 1, 'appdata_ocizsgb115cv/preview/8/b', '36260cc8b6e7d7cf2872e24543c0ab79', 91, 'b', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff3d7473', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (862, 1, 'appdata_ocizsgb115cv/preview/8/f', '02f7383fe720d80524412e41554b0757', 91, 'f', 2, 1, 139904, 1653643248, 1653643248, 0, 0, '6297aff3d74b8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (863, 1, 'appdata_ocizsgb115cv/preview/8/4', 'b3cfe93e1e655d0cca08d6ad73606769', 91, '4', 2, 1, 75271, 1650637864, 1650637864, 0, 0, '6297aff3d74db', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (864, 1, 'appdata_ocizsgb115cv/preview/8/b/6', 'fa88a175c94f7b765dee09af542089e4', 861, '6', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff3e1626', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (865, 1, 'appdata_ocizsgb115cv/preview/8/b/6/d', '018455c87697dff5dfe47b37138cd910', 864, 'd', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff3eeb9f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (866, 1, 'appdata_ocizsgb115cv/preview/8/b/6/d/d', 'bfd26bfaaaa4e568ddb57156d1bfd9c2', 865, 'd', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff402b93', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (867, 1, 'appdata_ocizsgb115cv/preview/8/b/6/d/d/7', '36ce8c2487bb0c7a6f617f2827a7fbe4', 866, '7', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff407dce', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (868, 1, 'appdata_ocizsgb115cv/preview/8/b/6/d/d/7/d', '54a34d31825a54ad54de9d393835ddfc', 867, 'd', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff40dfa7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (869, 1, 'appdata_ocizsgb115cv/preview/8/b/6/d/d/7/d/908', 'a4939e5e7239ddc66c377a5d8e06f7cb', 868, '908', 2, 1, 0, 1653742549, 1653742549, 0, 0, '6297aff41414d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (870, 1, 'appdata_ocizsgb115cv/preview/8/f/e', '718c949abe80ed3d95ede4150f5004e5', 862, 'e', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff449352', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (871, 1, 'appdata_ocizsgb115cv/preview/8/f/8', '47fb993232cfc7721e6ea9e54abe34cf', 862, '8', 2, 1, 65124, 1651421025, 1651421025, 0, 0, '6297aff44937d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (872, 1, 'appdata_ocizsgb115cv/preview/8/f/1', '5d914c3f9a025f2b3e84b1971447568a', 862, '1', 2, 1, 74780, 1650637417, 1650637417, 0, 0, '6297aff4493a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (873, 1, 'appdata_ocizsgb115cv/preview/8/f/e/0', '54afef00bb3638d9b719dc370e6c1b19', 870, '0', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff44f3ea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (874, 1, 'appdata_ocizsgb115cv/preview/8/f/e/0/0', '5485962c947a15dd0bf4ab8848b4ff46', 873, '0', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff4576df', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (875, 1, 'appdata_ocizsgb115cv/preview/8/f/e/0/0/9', '40f1cedd9190fc4f1f8381f721498813', 874, '9', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff465a00', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (876, 1, 'appdata_ocizsgb115cv/preview/8/f/e/0/0/9/3', '318184162a4e0333504453a714f95352', 875, '3', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff46bc9b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (877, 1, 'appdata_ocizsgb115cv/preview/8/f/e/0/0/9/3/416', '8806e1c792cfe326807ed29d438b159c', 876, '416', 2, 1, 0, 1653643248, 1653643248, 0, 0, '6297aff471e79', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (878, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5', 'ee93c5eb7fa4b8944e9a3068978a26c5', 871, '5', 2, 1, 65124, 1651421025, 1651421025, 0, 0, '6297aff4a1b28', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (879, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5', '59df27ea1fd405501a9ec75e7b12eb2d', 878, '5', 2, 1, 65124, 1651421025, 1651421025, 0, 0, '6297aff4a900e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (880, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5/1', 'da53e4302eb195422d9411a9325a9d13', 879, '1', 2, 1, 65124, 1651421025, 1651421025, 0, 0, '6297aff4af1bb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (881, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5/1/7', '18d9f17e349829ac79c13e7a5f74b6e3', 880, '7', 2, 1, 65124, 1651421025, 1651421025, 0, 0, '6297aff4bb776', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (882, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5/1/7/178', '9fa25b077d75dddbec721f80031a6042', 881, '178', 2, 1, 65124, 1651421026, 1651421026, 0, 0, '6297aff4c2769', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (883, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5/1/7/178/64-64-crop.png', 'f855aa1ec0b1fc729c0fa5c1b656ad03', 882, '64-64-crop.png', 12, 11, 1587, 1651421026, 1651421026, 0, 0, '0541ab7eac5150ce46fcc988301905ee', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (884, 1, 'appdata_ocizsgb115cv/preview/8/f/8/5/5/1/7/178/4096-4096-max.png', 'd4cbdc323e69cea6474bd43bcb4fec5f', 882, '4096-4096-max.png', 12, 11, 63537, 1651421026, 1651421026, 0, 0, '7771547d8cc2d3e7023ad546e4e84eab', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (885, 1, 'appdata_ocizsgb115cv/preview/8/f/1/4', 'efd7a682cfe5cfdbe07b502ed286645d', 872, '4', 2, 1, 74780, 1650637417, 1650637417, 0, 0, '6297aff5065d8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (886, 1, 'appdata_ocizsgb115cv/preview/8/f/1/4/e', '38fcb4d5576a56fca7e299479bb5d0db', 885, 'e', 2, 1, 74780, 1650637417, 1650637417, 0, 0, '6297aff50c996', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (887, 1, 'appdata_ocizsgb115cv/preview/8/f/1/4/e/4', '671253c9cdbb944326d1b2ed3045c29b', 886, '4', 2, 1, 74780, 1650637417, 1650637417, 0, 0, '6297aff512b12', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (888, 1, 'appdata_ocizsgb115cv/preview/8/f/1/4/e/4/5', '04629d249eb08c98f35ca87af5850997', 887, '5', 2, 1, 74780, 1654108227, 1654108227, 0, 0, '6297aff518cd0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (892, 1, 'appdata_ocizsgb115cv/preview/8/4/d', '66ac6e4345102fae9c1e9489069cb83d', 863, 'd', 2, 1, 75271, 1650637864, 1650637864, 0, 0, '6297aff5584d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (893, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9', 'dcdbe3c9ed780db3d44de184dc2c9bfe', 892, '9', 2, 1, 75271, 1650637864, 1650637864, 0, 0, '6297aff55e519', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (894, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e', '36431b0ca63a3589b74a9999b48d5b81', 893, 'e', 2, 1, 75271, 1650637864, 1650637864, 0, 0, '6297aff5708ac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (895, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e/e', 'd60d9f47b1226e146c2e46a2e58dbcb0', 894, 'e', 2, 1, 75271, 1650637864, 1650637864, 0, 0, '6297aff576aa6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (896, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e/e/4', '3cc503c34da0a2bda5cedd34ef516715', 895, '4', 2, 1, 75271, 1650922005, 1650922005, 0, 0, '6297aff57cc98', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (897, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e/e/4/199', 'd4db171fc8ba177c54b1d8256f306d4d', 896, '199', 2, 1, 75271, 1650922007, 1650922007, 0, 0, '6297aff582e8b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (898, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e/e/4/199/256-256-crop.png', '708416828ca4b0843d2f572f737535f9', 897, '256-256-crop.png', 12, 11, 11288, 1650922007, 1650922007, 0, 0, '79fe555500bc1bcddf6efd9baa48cb96', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (899, 1, 'appdata_ocizsgb115cv/preview/8/4/d/9/e/e/4/199/4096-4096-max.png', '254b5dd75c1038de200fe5b62193b9d1', 897, '4096-4096-max.png', 12, 11, 63983, 1650922006, 1650922006, 0, 0, '2cedc4136b833a2dfe2520c8df5cc4a2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (900, 1, 'appdata_ocizsgb115cv/preview/2/b', '66306d80d676682664a7bec6b8e1c06b', 90, 'b', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff5e7039', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (901, 1, 'appdata_ocizsgb115cv/preview/2/5', 'bee568998ca3077f014e5946e8a2c7c9', 90, '5', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff5e7064', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (902, 1, 'appdata_ocizsgb115cv/preview/2/2', 'ad40afb4a7e7d84ab820e6d3f0526237', 90, '2', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff5e70b2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (903, 1, 'appdata_ocizsgb115cv/preview/2/4', '867b4cae28a2a6a22900aaf3e0c94352', 90, '4', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff5e70d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (904, 1, 'appdata_ocizsgb115cv/preview/2/b/a', 'f775f8c76d14b8540a862c6854455352', 900, 'a', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff5ecfb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (905, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5', '143afeae699dae522b4341d804c2a861', 904, '5', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff5f1229', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (906, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9', 'a5e47257463ac4d91b328dc166d5da54', 905, '9', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff602fa3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (907, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9/6', '7375c2e63e21bb18fa93b04a0f0bbd84', 906, '6', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff60712f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (908, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9/6/6', '851183c155d7e288aa9c05140937b15d', 907, '6', 2, 1, 46943, 1653742615, 1653742615, 0, 0, '6297aff60b277', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (909, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9/6/6/957', '304da272283e1d5f5872480b93489e45', 908, '957', 2, 1, 46943, 1653742617, 1653742617, 0, 0, '6297aff60f4c5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (910, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9/6/6/957/256-256-crop.png', '333b5dfb0459932ca0f78d7d2d501d6e', 909, '256-256-crop.png', 12, 11, 7175, 1653742617, 1653742617, 0, 0, '84c855a429aabecc6c5a6cbaf96c8704', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (911, 1, 'appdata_ocizsgb115cv/preview/2/b/a/5/9/6/6/957/4096-4096-max.png', '4dc6f2f2a684afbebe72555e19ca20e3', 909, '4096-4096-max.png', 12, 11, 39768, 1653742617, 1653742617, 0, 0, '2ca26629fc09732faef4713f877a9db4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (912, 1, 'appdata_ocizsgb115cv/preview/2/5/0', 'b9eac8953dcb9088a90585cb920bc10d', 901, '0', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff63a423', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (913, 1, 'appdata_ocizsgb115cv/preview/2/5/0/c', '162f2bcc509320f8f688419b9abbc26b', 912, 'c', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff640529', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (914, 1, 'appdata_ocizsgb115cv/preview/2/5/0/c/f', 'f998a9bc82843851fabf95f60f74ef47', 913, 'f', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff6468c3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (915, 1, 'appdata_ocizsgb115cv/preview/2/5/0/c/f/8', 'cb72bb31fe1d50fa8e2a32a3b6af7720', 914, '8', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff64ca82', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (916, 1, 'appdata_ocizsgb115cv/preview/2/5/0/c/f/8/b', '384d048c5f39d54786783bfd30ea0d60', 915, 'b', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff6536a4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (917, 1, 'appdata_ocizsgb115cv/preview/2/5/0/c/f/8/b/456', '41b12619b76881cd673fd8f84839ded6', 916, '456', 2, 1, 0, 1653643278, 1653643278, 0, 0, '6297aff658eb5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (918, 1, 'appdata_ocizsgb115cv/preview/2/2/a', '11c40aa076bf71dba17567b5e8f6d8ea', 902, 'a', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff6900e3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (919, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c', '486f9295a024c83ab86ac5eb3e44f8ce', 918, 'c', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff6961c2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (920, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3', '59161728b5f058a9ccf4f76976e6713f', 919, '3', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff69c506', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (921, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3/c', 'c1176014d4dfc2a6042eea6672443e33', 920, 'c', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff6a2698', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (922, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3/c/5', '9f5dd7c0ddf70e5e157c50202686afd5', 921, '5', 2, 1, 46943, 1653725430, 1653725430, 0, 0, '6297aff6aa19e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (923, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3/c/5/852', '3f684f5b6c09abd35dbcd1d6164f7300', 922, '852', 2, 1, 46943, 1653725433, 1653725433, 0, 0, '6297aff6b0b8c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (924, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3/c/5/852/256-256-crop.png', '16f845a3a198e9eec929a6f2c881a9da', 923, '256-256-crop.png', 12, 11, 7175, 1653725433, 1653725433, 0, 0, '41e707150458a16e4cef6277ad31e0cd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (925, 1, 'appdata_ocizsgb115cv/preview/2/2/a/c/3/c/5/852/4096-4096-max.png', '6dbeaa7d28c9c87c00c68fe29b2d7db3', 923, '4096-4096-max.png', 12, 11, 39768, 1653725432, 1653725432, 0, 0, 'ae7b0f40370998f64800900780465ace', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (926, 1, 'appdata_ocizsgb115cv/preview/2/4/b', '22031f5416489eb0771a32e2f114647b', 903, 'b', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff6f4127', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (927, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1', 'cc11ce08177a665ba941ec5299f9af97', 926, '1', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff706036', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (928, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6', '97b547ecf56f0af5cbcfaab5f057503a', 927, '6', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff70f2a5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (929, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6/f', '21bfa3d567def14769b00896c1c57cfe', 928, 'f', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff71443f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (930, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6/f/e', 'dd823898a25df7ffee6e764a2b8800ad', 929, 'e', 2, 1, 197081, 1653614766, 1653614766, 0, 0, '6297aff71c704', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (931, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6/f/e/372', 'b3ef7b49de33026a6a733189d7a9f9a3', 930, '372', 2, 1, 197081, 1653614831, 1653614831, 0, 0, '6297aff722919', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (932, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6/f/e/372/256-256-crop.png', '2142c596e3b0a6e68b0bd5a824cb7c0c', 931, '256-256-crop.png', 12, 11, 29026, 1653614831, 1653614831, 0, 0, '272be2b1592d0a46109c54fa7b262485', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (933, 1, 'appdata_ocizsgb115cv/preview/2/4/b/1/6/f/e/372/4096-4096-max.png', '644f356892c9ace2ddd03817cb758145', 931, '4096-4096-max.png', 12, 11, 168055, 1653614831, 1653614831, 0, 0, '62d9666d236bae85761006a329ffa022', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (934, 1, 'appdata_ocizsgb115cv/preview/a/d', '5811ce8a5fdd81bb1660212ca2daec4a', 89, 'd', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff796f79', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (935, 1, 'appdata_ocizsgb115cv/preview/a/9', '47cdddaf8a7cb407d4512794eaed46c3', 89, '9', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff796fc0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (936, 1, 'appdata_ocizsgb115cv/preview/a/7', 'da58b76543dec59a1fdcc8e35dcbdade', 89, '7', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff797012', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (937, 1, 'appdata_ocizsgb115cv/preview/a/d/1', '990bf453968013b9e846f297ad754054', 934, '1', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff79ceb6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (938, 1, 'appdata_ocizsgb115cv/preview/a/d/1/3', '5bbe935b5c2ed681cfdd79dcc36a0787', 937, '3', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff7a30ba', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (939, 1, 'appdata_ocizsgb115cv/preview/a/d/1/3/a', '9120df124dbbcddec4a472600b6245c9', 938, 'a', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff7ab410', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (940, 1, 'appdata_ocizsgb115cv/preview/a/d/1/3/a/2', 'df4fdb068799310707edeec81abf4a60', 939, '2', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff7b1511', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (941, 1, 'appdata_ocizsgb115cv/preview/a/d/1/3/a/2/a', '7748df20dc48dac1042b18ff88457401', 940, 'a', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff7b82a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (942, 1, 'appdata_ocizsgb115cv/preview/a/d/1/3/a/2/a/315', '1274efbc086f6758f05188e6462d9148', 941, '315', 2, 1, 0, 1652017030, 1652017030, 0, 0, '6297aff7bf9d6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (943, 1, 'appdata_ocizsgb115cv/preview/a/9/6', '339e378947e637279bdaf40ccda4bc4a', 935, '6', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff81903e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (944, 1, 'appdata_ocizsgb115cv/preview/a/9/6/b', 'd6699addc30a80b5cce8e3464af3d367', 943, 'b', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff81f11a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (945, 1, 'appdata_ocizsgb115cv/preview/a/9/6/b/6', '7f01c68d6c928dabb1dd569375e53615', 944, '6', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff82537c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (946, 1, 'appdata_ocizsgb115cv/preview/a/9/6/b/6/5', '4c5135db99b87760e643242873980603', 945, '5', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff82b518', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (947, 1, 'appdata_ocizsgb115cv/preview/a/9/6/b/6/5/a', '3b287aeeb161db1e8efeece3375dc98d', 946, 'a', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff83706c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (948, 1, 'appdata_ocizsgb115cv/preview/a/9/6/b/6/5/a/409', '241df250a674e2008e47448618cbb7b4', 947, '409', 2, 1, 0, 1653643280, 1653643280, 0, 0, '6297aff843d3d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (949, 1, 'appdata_ocizsgb115cv/preview/a/7/3', '12eacbac00a82aa09e011aab922c396a', 936, '3', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff874eca', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (950, 1, 'appdata_ocizsgb115cv/preview/a/7/3/3', '9950ae39ce412016754621d0d30c8c7b', 949, '3', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff87f156', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (951, 1, 'appdata_ocizsgb115cv/preview/a/7/3/3/f', '4a57a920aa0b571ce9b4e114aefc0428', 950, 'f', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff8851f2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (952, 1, 'appdata_ocizsgb115cv/preview/a/7/3/3/f/a', '9dfd1688f57a665cf2d8ba9583eaf03b', 951, 'a', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff88f550', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (953, 1, 'appdata_ocizsgb115cv/preview/a/7/3/3/f/a/9', '0f6cd5911e7740284fb4168a0fbba6e4', 952, '9', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff89b876', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (954, 1, 'appdata_ocizsgb115cv/preview/a/7/3/3/f/a/9/623', 'df75c01813d746c94a612695efef1e02', 953, '623', 2, 1, 0, 1653742550, 1653742550, 0, 0, '6297aff8a9cc6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (955, 1, 'appdata_ocizsgb115cv/preview/0/5', 'c24fbb0798329164d008aa4db7ded558', 88, '5', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff977bd0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (956, 1, 'appdata_ocizsgb115cv/preview/0/0', '987ad2a46aad7d829490e5824ae6ed0f', 88, '0', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff977c15', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (957, 1, 'appdata_ocizsgb115cv/preview/0/a', '13cc5dd9726f912c37b50ec59dccbdd0', 88, 'a', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297aff977c36', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (958, 1, 'appdata_ocizsgb115cv/preview/0/2', '115d4c03de9fa255e4bc36764b865b90', 88, '2', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297aff977c55', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (959, 1, 'appdata_ocizsgb115cv/preview/0/5/0', 'b811c7443385eae34f6786fd915b6f1b', 955, '0', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff98c765', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (960, 1, 'appdata_ocizsgb115cv/preview/0/5/0/4', '5c6ac3c264df858b12d27d647b3632d0', 959, '4', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff993cf9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (961, 1, 'appdata_ocizsgb115cv/preview/0/5/0/4/9', '89da69811ffd304a4e8f7cb6610defdd', 960, '9', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff997eea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (962, 1, 'appdata_ocizsgb115cv/preview/0/5/0/4/9/e', '24d8b503d05804abf4ad02f30c5f7e68', 961, 'e', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff99c09a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (963, 1, 'appdata_ocizsgb115cv/preview/0/5/0/4/9/e/9', '0649b3b911bb7a3ce4a8536b65c30a12', 962, '9', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff9a0182', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (964, 1, 'appdata_ocizsgb115cv/preview/0/5/0/4/9/e/9/367', 'b0794e1d3eee9017c61094fd1c441fc6', 963, '367', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297aff9a4357', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (965, 1, 'appdata_ocizsgb115cv/preview/0/0/e', 'f1a1b3e484871869c526c43f953e685e', 956, 'e', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff9c6f7d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (966, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c', '44b3050c310f5bff6fed9688e4543e71', 965, 'c', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff9cd146', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (967, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5', '848a062e72d329a9474dd13cc789a3da', 966, '5', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff9d32e5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (968, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5/3', 'e363c2d00347dace35f93aebde4710e0', 967, '3', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff9d9828', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (969, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5/3/c', '57daa1e6c0c31a44e5cc74df6d9fb705', 968, 'c', 2, 1, 197081, 1653614842, 1653614842, 0, 0, '6297aff9df837', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (970, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5/3/c/381', '2002f9c7cb4cd49cfea93ceb3d48b095', 969, '381', 2, 1, 197081, 1653614844, 1653614844, 0, 0, '6297aff9e9bed', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (971, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5/3/c/381/256-256-crop.png', '7ec07819819e5d2c25ef6d0d6a43411c', 970, '256-256-crop.png', 12, 11, 29026, 1653614844, 1653614844, 0, 0, 'c3c6f9d1a84f86ac35bc6e4630ad5c91', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (972, 1, 'appdata_ocizsgb115cv/preview/0/0/e/c/5/3/c/381/4096-4096-max.png', 'fc8522fe02d1b3da4e9721f077336db7', 970, '4096-4096-max.png', 12, 11, 168055, 1653614843, 1653614843, 0, 0, 'd37db0f2a1407f7a6725b047be84efda', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (973, 1, 'appdata_ocizsgb115cv/preview/0/a/1', '98c019cb5b0d98f1563e928ee1d96476', 957, '1', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297affa3f1f6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (974, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1', '372d5f7b86dfb6f6506f9d83644ff905', 973, '1', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297affa453c0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (975, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3', '03dcabce89abebe723990c972c19b6aa', 974, '3', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297affa4b44c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (976, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3/e', '2b475225caf967401cd7b9afb7b126e1', 975, 'e', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297affa515d2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (977, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3/e/f', '223813dbe497915e93fa3d27d8da9daf', 976, 'f', 2, 1, 21030, 1653725944, 1653725944, 0, 0, '6297affa578a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (978, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3/e/f/888', '9882748bd081886e242afdae71736eb3', 977, '888', 2, 1, 21030, 1653725946, 1653725946, 0, 0, '6297affa5da31', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (979, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3/e/f/888/256-256-crop.png', '576fa1cfb01e9018f77d35a2c5494568', 978, '256-256-crop.png', 12, 11, 2764, 1653725946, 1653725946, 0, 0, '4b0af374069a74521d01086e03e8078c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (980, 1, 'appdata_ocizsgb115cv/preview/0/a/1/1/3/e/f/888/4096-4096-max.png', 'ab25a2bce984a41646f69a602bf17202', 978, '4096-4096-max.png', 12, 11, 18266, 1653725945, 1653725945, 0, 0, 'f3fd469bfa5edd37f6605d55488a9a4a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (981, 1, 'appdata_ocizsgb115cv/preview/0/2/a', 'd3dfad38ad73ef14fecbf26740c8fcf2', 958, 'a', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297affaab2ee', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (982, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3', 'bab2d27e193809d9905fa09ead3900cc', 981, '3', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297affab145a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (983, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2', '259734163c231c479be9eb490cd605f4', 982, '2', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297affabdb47', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (984, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2/a', '86e7a28d7c0da895b3837d8408579cb9', 983, 'a', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297affac7a7f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (985, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2/a/d', '6ced1bc6aae6b47bb0743fd33bf968e6', 984, 'd', 2, 1, 46943, 1653723963, 1653723963, 0, 0, '6297affacdcdd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (986, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2/a/d/841', '0747e7cc357a54e76a40c69d21e1dc99', 985, '841', 2, 1, 46943, 1653723965, 1653723965, 0, 0, '6297affad3ed4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (987, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2/a/d/841/256-256-crop.png', 'ee06f59e18c8a4af1d1f56acae80abfc', 986, '256-256-crop.png', 12, 11, 7175, 1653723965, 1653723965, 0, 0, '4c403d0e948f462e8544ccb9e8c953a3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (988, 1, 'appdata_ocizsgb115cv/preview/0/2/a/3/2/a/d/841/4096-4096-max.png', '8bb187eabc6683f886a8b32c06d80ab2', 986, '4096-4096-max.png', 12, 11, 39768, 1653723964, 1653723964, 0, 0, 'dfb22889442f18393c6b2f61b2f50584', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (989, 1, 'appdata_ocizsgb115cv/preview/c/0', 'e97c24d546efa4ad872deaa4221a055f', 87, '0', 2, 1, 0, 1651263434, 1651263434, 0, 0, '6297affb6269f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (990, 1, 'appdata_ocizsgb115cv/preview/c/a', '77c599e54f3b10411eb4e0295feef608', 87, 'a', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affb626c8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (991, 1, 'appdata_ocizsgb115cv/preview/c/0/e', 'e38016adf984eabe4bbc9a3e8e13e923', 989, 'e', 2, 1, 0, 1651263434, 1651263434, 0, 0, '6297affb69259', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (992, 1, 'appdata_ocizsgb115cv/preview/c/0/e/1', '0789685ca236cc014b1db162bd060fc7', 991, '1', 2, 1, 0, 1651263434, 1651263434, 0, 0, '6297affb70875', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (993, 1, 'appdata_ocizsgb115cv/preview/c/0/e/1/9', '13e143e333a413f3b62b65dfa0573248', 992, '9', 2, 1, 0, 1651263434, 1651263434, 0, 0, '6297affb76a8d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (994, 1, 'appdata_ocizsgb115cv/preview/c/0/e/1/9/0', 'e2f42e2be8732418c3220808ede5fee3', 993, '0', 2, 1, 0, 1651263434, 1651263434, 0, 0, '6297affb7cc77', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (995, 1, 'appdata_ocizsgb115cv/preview/c/0/e/1/9/0/d', '3918ecefafbad8070269407341ba818e', 994, 'd', 2, 1, 0, 1653652581, 1653652581, 0, 0, '6297affb82e75', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (996, 1, 'appdata_ocizsgb115cv/preview/c/a/7', '578cf01bb5dc09fa3cf09233d3983b00', 990, '7', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affbce707', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (997, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5', '86dd810c61c2e31f83031784d3d237ff', 996, '5', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affbd7190', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (998, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9', 'e837e3623d78780b5973df8ce5b9db8f', 997, '9', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affbe38ec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (999, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9/1', 'eca6e3d00eb2129d91b4443a7d97e9e8', 998, '1', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affbeaf7a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1000, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9/1/0', '5f084dc894fbba00bdd71ad650ab78e1', 999, '0', 2, 1, 21009, 1653743254, 1653743254, 0, 0, '6297affbf1185', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1001, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9/1/0/973', '4175edcbb86247989a0ac7d7aadc5674', 1000, '973', 2, 1, 21009, 1653743256, 1653743256, 0, 0, '6297affc03108', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1002, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9/1/0/973/256-256-crop.png', 'd47a4f4e326372c6ff9f1b760181fab0', 1001, '256-256-crop.png', 12, 11, 2973, 1653743256, 1653743256, 0, 0, '45670a5c348944db04d6c746900a3554', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1003, 1, 'appdata_ocizsgb115cv/preview/c/a/7/5/9/1/0/973/4096-4096-max.png', 'fa4848d7418b9e84afb5f69d79e6a82f', 1001, '4096-4096-max.png', 12, 11, 18036, 1653743255, 1653743255, 0, 0, '300345b213451f838fa45a8bcf0f4861', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1004, 1, 'appdata_ocizsgb115cv/preview/e/d', '2769bc0aa378009bd65c1bf16a564831', 86, 'd', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affc715dd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1005, 1, 'appdata_ocizsgb115cv/preview/e/5', '1203b47f6722a294c727f8e522ca89ed', 86, '5', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affc71608', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1006, 1, 'appdata_ocizsgb115cv/preview/e/2', 'fc857d523fe9a2d85627da0715d0233d', 86, '2', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affc7165d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1007, 1, 'appdata_ocizsgb115cv/preview/e/d/d', 'fad3130e77fea3bf3e7acb79e8a69a90', 1004, 'd', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affcc0ea6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1008, 1, 'appdata_ocizsgb115cv/preview/e/d/d/e', '99269ccd7e121467fee08ddafd0a63d6', 1007, 'e', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affccb135', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1009, 1, 'appdata_ocizsgb115cv/preview/e/d/d/e/a', '095406b929f1e338c60d22375e719bf3', 1008, 'a', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affcd5074', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1010, 1, 'appdata_ocizsgb115cv/preview/e/d/d/e/a/8', 'e75ab37ebedded83811a988af900db7d', 1009, '8', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affcdf280', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1011, 1, 'appdata_ocizsgb115cv/preview/e/d/d/e/a/8/2', '6584ca5c8a97382686d2c18a2edcf569', 1010, '2', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affce559b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1012, 1, 'appdata_ocizsgb115cv/preview/e/d/d/e/a/8/2/309', '3f31d2d4217b7a2d57556e68d4e172ea', 1011, '309', 2, 1, 0, 1652017031, 1652017031, 0, 0, '6297affceca86', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1013, 1, 'appdata_ocizsgb115cv/preview/e/5/7', '8e113d6ac8ed4136e0073bf4c9e85ecb', 1005, '7', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affd4bc9e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1014, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c', 'b9ea0a4279c0847eafa457404ea95e46', 1013, 'c', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affd531cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1015, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6', '45a865b9c35a63acf870ccfa17b2d788', 1014, '6', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affd655f1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1016, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6/b', 'ff2e1c7aa0d64c3e9f1a27adbe9e3cbc', 1015, 'b', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affd6f9d2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1017, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6/b/9', '14f4e17d4d24a511c0bdf77e068d127f', 1016, '9', 2, 1, 21009, 1653653836, 1653653836, 0, 0, '6297affd75baf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1018, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6/b/9/772', '9b1b818e62246381c613e14f90b6e124', 1017, '772', 2, 1, 21009, 1653653838, 1653653838, 0, 0, '6297affd79d7c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1019, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6/b/9/772/256-256-crop.png', 'd9a12eb364587a64b2c2bc74523ed040', 1018, '256-256-crop.png', 12, 11, 2973, 1653653838, 1653653838, 0, 0, 'ba8457ccd3344f38ed2686c9b36f2c78', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1020, 1, 'appdata_ocizsgb115cv/preview/e/5/7/c/6/b/9/772/4096-4096-max.png', '8c39ac149ca58c730fbe3daf2020189b', 1018, '4096-4096-max.png', 12, 11, 18036, 1653653837, 1653653837, 0, 0, '376a5e85b4d09955f6a1bc89ee1f899a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1021, 1, 'appdata_ocizsgb115cv/preview/e/2/0', 'b5d3fb2a0aa7d4b886801c8f9a9c0f0c', 1006, '0', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affda2bde', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1022, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5', '2868d00d7fe03ecf5de73fe5f16ee77d', 1021, '5', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affda8d22', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1023, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e', '40dd8162c4094f8ac35b117f8eb7e51d', 1022, 'e', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affdaef0d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1024, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e/e', '48472ef78067e1d578b0e5430606fc00', 1023, 'e', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affdb525b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1025, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e/e/2', '7a861aec3a9e54fc5da7d7bbb417cc7a', 1024, '2', 2, 1, 46943, 1653742464, 1653742464, 0, 0, '6297affdbb5b0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1026, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e/e/2/910', 'cfae375543be7362cd0d67694f49a477', 1025, '910', 2, 1, 46943, 1653742466, 1653742466, 0, 0, '6297affdc1688', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1027, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e/e/2/910/256-256-crop.png', 'bd24a680bf0363558c736f3d8b99d1d5', 1026, '256-256-crop.png', 12, 11, 7175, 1653742466, 1653742466, 0, 0, '30a4320ef7378263366f70e6ca8e3044', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1028, 1, 'appdata_ocizsgb115cv/preview/e/2/0/5/e/e/2/910/4096-4096-max.png', '1dc787457a13f782fd00c8e75565aa9b', 1026, '4096-4096-max.png', 12, 11, 39768, 1653742465, 1653742465, 0, 0, '2e584313fc4a56a564ecca58bc22bba4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1029, 1, 'appdata_ocizsgb115cv/preview/9/a', '70c2582d486d81ad57683a58c2d61bfd', 85, 'a', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe3167e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1030, 1, 'appdata_ocizsgb115cv/preview/9/a/9', '3c2ec00de9da79b7d1118df7cc384321', 1029, '9', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe3b6eb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1031, 1, 'appdata_ocizsgb115cv/preview/9/a/9/6', 'c6f9f3336954afb9e0d98c64bbe304c6', 1030, '6', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe64254', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1032, 1, 'appdata_ocizsgb115cv/preview/9/a/9/6/8', 'f1a03b426023ec88633d4358f37392b5', 1031, '8', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe6a4dc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1033, 1, 'appdata_ocizsgb115cv/preview/9/a/9/6/8/7', 'f669a83f0b43b9d9a495cbd85c66f008', 1032, '7', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe70620', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1034, 1, 'appdata_ocizsgb115cv/preview/9/a/9/6/8/7/6', '4873ba9764fe44acc376c30e36f0011b', 1033, '6', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe7680d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1035, 1, 'appdata_ocizsgb115cv/preview/9/a/9/6/8/7/6/447', 'b86d668cae823e0a265299144de96f2c', 1034, '447', 2, 1, 0, 1653643246, 1653643246, 0, 0, '6297affe7ca6a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1036, 1, 'appdata_ocizsgb115cv/preview/5/b', '046c5d9e8e288fcd286b350053391aff', 84, 'b', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297affecc60d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1037, 1, 'appdata_ocizsgb115cv/preview/5/b/8', 'a167ba3679903e1fa32172437b1bfcbf', 1036, '8', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297affede0ef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1038, 1, 'appdata_ocizsgb115cv/preview/5/b/8/a', '21622467f04ee9f12f64702af02377b3', 1037, 'a', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297affee6c42', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1039, 1, 'appdata_ocizsgb115cv/preview/5/b/8/a/d', '4e8600245fc68d829117f4dd9ab7c0d8', 1038, 'd', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297affeece1a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1040, 1, 'appdata_ocizsgb115cv/preview/5/b/8/a/d/d', '1ca6eab786358526b02a9f38c9f0f114', 1039, 'd', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297affef303d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1041, 1, 'appdata_ocizsgb115cv/preview/5/b/8/a/d/d/2', 'f16718dac7e477603865f6412f2265de', 1040, '2', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afff05001', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1042, 1, 'appdata_ocizsgb115cv/preview/5/b/8/a/d/d/2/317', '8c139b6ac5a87e8f1745de9c157ab0b2', 1041, '317', 2, 1, 0, 1653643276, 1653643276, 0, 0, '6297afff0b258', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1043, 1, 'appdata_ocizsgb115cv/preview/b/2', '73037b5b34a6d787232730d7cc3753ee', 83, '2', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff6d3a3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1044, 1, 'appdata_ocizsgb115cv/preview/b/2/e', '13b8ec852355738760bf9ad375e93b2b', 1043, 'e', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff733ef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1045, 1, 'appdata_ocizsgb115cv/preview/b/2/e/b', '73c33ba688a84cd87fef7a86221b3d86', 1044, 'b', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff7955c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1046, 1, 'appdata_ocizsgb115cv/preview/b/2/e/b/7', 'cb87f3e6f75a241608cce156c7f798a5', 1045, '7', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff7f818', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1047, 1, 'appdata_ocizsgb115cv/preview/b/2/e/b/7/3', '19f768c84e8938caa518da7a3e863f07', 1046, '3', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff8dd0d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1048, 1, 'appdata_ocizsgb115cv/preview/b/2/e/b/7/3/4', 'd9c5adf67028bc31d9e574b2daf8eee1', 1047, '4', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afff95e36', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1049, 1, 'appdata_ocizsgb115cv/preview/b/2/e/b/7/3/4/306', '455b221d7f2885bd76b46e9358873cd2', 1048, '306', 2, 1, 0, 1652017028, 1652017028, 0, 0, '6297afffa020f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1050, 1, 'appdata_ocizsgb115cv/preview/d/9', '14bb1c4923d631e987130d05ada0158c', 82, '9', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297affff1d7c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1051, 1, 'appdata_ocizsgb115cv/preview/d/9/4', '99ad68d8d215ab659c7b26259749b9ad', 1050, '4', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297b00003be6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1052, 1, 'appdata_ocizsgb115cv/preview/d/9/4/7', '10c8b747be4782d3b9bb63e21506f78b', 1051, '7', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297b00009dcf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1053, 1, 'appdata_ocizsgb115cv/preview/d/9/4/7/b', 'cbd3b8fc925539e5372386d100a0509f', 1052, 'b', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297b0000fd78', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1054, 1, 'appdata_ocizsgb115cv/preview/d/9/4/7/b/f', '52a6088ba4a46e30d840e7c0a1218762', 1053, 'f', 2, 1, 0, 1653643288, 1653643288, 0, 0, '6297b0001610c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1055, 1, 'appdata_ocizsgb115cv/preview/d/9/4/7/b/f/0', '0f6630fac78f3fe7af20cd89744994d3', 1054, '0', 2, 1, 0, 1654108227, 1654108227, 0, 0, '6297b0001e988', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1061, 1, 'appdata_ocizsgb115cv/preview/8/5', '131bdf59340faba56c1f0a8284959dd7', 91, '5', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742f06df4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1062, 1, 'appdata_ocizsgb115cv/preview/8/5/1', '1ab7ceafa8debaaa037e93683661016b', 1061, '1', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742f00bec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1063, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d', 'b1c764c177abc29e54ff9400b86cb29a', 1062, 'd', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742eeec63', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1064, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d', 'baf2bed8a109617c9d795d35f4142cf1', 1063, 'd', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742ee8a99', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1065, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d/f', '62131aabc22311fb9588bdb800f7a1f7', 1064, 'f', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742ee289c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1066, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d/f/5', 'cb4878aeb3ffbbe54b11275b6ec30e96', 1065, '5', 2, 1, 0, 1654289454, 1654289454, 0, 0, '629a742edc69a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1067, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d/f/5/614', 'e4f1f61051fb19b73fffc3c1d3df4cfc', 1066, '614', 2, 1, 0, 1654289456, 1654289456, 0, 0, '629a742ed6d39', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1068, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d/f/5/614/4096-4096-max.png', 'a906d35aecdb9e362057b7b4f0f7b46a', 1067, '4096-4096-max.png', 12, 11, 63537, 1654289455, 1654289455, 0, 0, '357e3386a1e2947da142e69ebc6adaf2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1069, 1, 'appdata_ocizsgb115cv/preview/8/5/1/d/d/f/5/614/256-256-crop.png', '3e71e7570a6f07d694d88e7012b8d751', 1067, '256-256-crop.png', 12, 11, 11243, 1654289456, 1654289456, 0, 0, 'ca9572632eac360535c55a5356c60754', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1083, 1, 'appdata_ocizsgb115cv/preview/6/5/6', '4b45f3cb7d345f7acc866457b8c1640e', 134, '6', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b296297', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1084, 1, 'appdata_ocizsgb115cv/preview/6/5/6/5', '8e02ac94199a4da0f891647831a97ecd', 1083, '5', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b16b52f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1085, 1, 'appdata_ocizsgb115cv/preview/6/5/6/5/8', 'c38756b1a6a76256f264165ddaeab942', 1084, '8', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b1652e1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1086, 1, 'appdata_ocizsgb115cv/preview/6/5/6/5/8/f', 'e9d00f669176f838ca110bf19dcda32e', 1085, 'f', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b15f122', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1087, 1, 'appdata_ocizsgb115cv/preview/6/5/6/5/8/f/d', 'd676277c615cf9cf2eed781d92a05c38', 1086, 'd', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b138635', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1088, 1, 'appdata_ocizsgb115cv/preview/6/5/6/5/8/f/d/536', '895552ba7bbccddb997800d479325cba', 1087, '536', 2, 1, 0, 1654433968, 1654433968, 0, 0, '629ca8b0d6211', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1089, 1, 'appdata_ocizsgb115cv/preview/7/d', '4228cf5fb53742104251157c04581114', 92, 'd', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8bb021a1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1090, 1, 'appdata_ocizsgb115cv/preview/7/d/c', 'e14a910cd117cb4f1c9cb30e71a9a6d8', 1089, 'c', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8babf40c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1091, 1, 'appdata_ocizsgb115cv/preview/7/d/c/d', '04325da13e21df9a3bb14ea7c35e588e', 1090, 'd', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8ba98944', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1092, 1, 'appdata_ocizsgb115cv/preview/7/d/c/d/3', 'cf523136d48a75cdc9bb9b911ba6ccfd', 1091, '3', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8ba22634', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1093, 1, 'appdata_ocizsgb115cv/preview/7/d/c/d/3/4', 'd41937cb3a6ceeacb102b2055b62e038', 1092, '4', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8ba1009b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1094, 1, 'appdata_ocizsgb115cv/preview/7/d/c/d/3/4/0', 'd3d43cbaa223fdd7cd9cde1aefafc3d7', 1093, '0', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8ba09f2f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1095, 1, 'appdata_ocizsgb115cv/preview/7/d/c/d/3/4/0/542', 'b3424ad0741dea798b39ffa5cc8cc2db', 1094, '542', 2, 1, 0, 1654433977, 1654433977, 0, 0, '629ca8b9b0bbb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1102, 1, 'appdata_ocizsgb115cv/preview/0/7/6', '68a97ccfce03754571ce921d5427c49d', 236, '6', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e6fdd2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1103, 1, 'appdata_ocizsgb115cv/preview/0/7/6/a', '4e3ac949baf814bbb5353928a6881f70', 1102, 'a', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e6bc5f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1104, 1, 'appdata_ocizsgb115cv/preview/0/7/6/a/0', 'c7d406229d77b0d0177c5941e7554a91', 1103, '0', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e67b45', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1105, 1, 'appdata_ocizsgb115cv/preview/0/7/6/a/0/c', 'bd328505e6f0c840e172d2adf345269a', 1104, 'c', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e5daae', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1106, 1, 'appdata_ocizsgb115cv/preview/0/7/6/a/0/c/9', '71d34da6ba5e12fc9c15d92c82c9e8bb', 1105, '9', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e2053d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1107, 1, 'appdata_ocizsgb115cv/preview/0/7/6/a/0/c/9/594', '047d47a9ff1a9b776c12074bfb4e8eba', 1106, '594', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34e154f2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1108, 1, 'appdata_ocizsgb115cv/preview/6/4', '2aed7dd235ed1b49c149b1b836837eb4', 117, '4', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34ec7c86', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1109, 1, 'appdata_ocizsgb115cv/preview/6/4/7', '5b50371d4d60ba9b0e7d9fcbf2acb40e', 1108, '7', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34ec1a67', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1110, 1, 'appdata_ocizsgb115cv/preview/6/4/7/b', 'fd9664ff30d581e9139aeaadaf1e4902', 1109, 'b', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34ebb862', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1111, 1, 'appdata_ocizsgb115cv/preview/6/4/7/b/b', '42df78a6ee2be1ef2806f8ee7cefab4a', 1110, 'b', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34eb5658', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1112, 1, 'appdata_ocizsgb115cv/preview/6/4/7/b/b/a', '57d6846df558c77a8fce50009f5f4c8c', 1111, 'a', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34eaf3df', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1113, 1, 'appdata_ocizsgb115cv/preview/6/4/7/b/b/a/3', '22447748a70498baf028dd8b2a26bfcc', 1112, '3', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34ea91cf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1114, 1, 'appdata_ocizsgb115cv/preview/6/4/7/b/b/a/3/545', '84bcfb635ff9b2fd3e61ab1aaf5433a7', 1113, '545', 2, 1, 0, 1654436686, 1654436686, 0, 0, '629cb34ea3a4f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1115, 1, 'appdata_ocizsgb115cv/preview/e/2/2', '0013aaf2f71de0634c148e5ffdca0f62', 1006, '2', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f8da25', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1116, 1, 'appdata_ocizsgb115cv/preview/e/2/2/3', '334912f2da8e86820ee4916554dc721a', 1115, '3', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f877b2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1117, 1, 'appdata_ocizsgb115cv/preview/e/2/2/3/0', 'e2e618c782247ec65e025b2cf00b3fce', 1116, '0', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f815c8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1118, 1, 'appdata_ocizsgb115cv/preview/e/2/2/3/0/b', '19a680403ece0ca2ca482f1a4358de78', 1117, 'b', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f7b3f2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1119, 1, 'appdata_ocizsgb115cv/preview/e/2/2/3/0/b/8', 'cb3d273365b614d0beeb95042bde8a2c', 1118, '8', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f70fc5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1120, 1, 'appdata_ocizsgb115cv/preview/e/2/2/3/0/b/8/509', 'ac5d1f1ef809e0b8181722b4391ae91e', 1119, '509', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34f62372', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1121, 1, 'appdata_ocizsgb115cv/preview/7/b', 'fef0f9c48e3f2bdaf053fbde40241bf3', 92, 'b', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb35003d67', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1122, 1, 'appdata_ocizsgb115cv/preview/7/b/c', 'ef6b6308895b76d0d09e63a6c3cab4d9', 1121, 'c', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34ff1db9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1123, 1, 'appdata_ocizsgb115cv/preview/7/b/c/d', '4d142492d16d3cf35616d0ca280a1307', 1122, 'd', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34febbbf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1124, 1, 'appdata_ocizsgb115cv/preview/7/b/c/d/f', '7e3edf7511ab296d4e174dd97ce1ffc8', 1123, 'f', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34fe59a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1125, 1, 'appdata_ocizsgb115cv/preview/7/b/c/d/f/7', '941ac8b177823d2fc5312312c5e3ec73', 1124, '7', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34fdf793', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1126, 1, 'appdata_ocizsgb115cv/preview/7/b/c/d/f/7/5', 'aea0ca9a47ffcc1d5d457b7c0d7bd0d6', 1125, '5', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34fd9603', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1127, 1, 'appdata_ocizsgb115cv/preview/7/b/c/d/f/7/5/538', '47ce734d414db6124f4c63296bd4de99', 1126, '538', 2, 1, 0, 1654436687, 1654436687, 0, 0, '629cb34fd22f7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1128, 1, 'appdata_ocizsgb115cv/preview/9/b', '7fa69d12d1093f4d13bc3036fb52c1f6', 85, 'b', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb3505bc45', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1129, 1, 'appdata_ocizsgb115cv/preview/9/b/7', '314a79ecd7913639bcdf11659b4d7513', 1128, '7', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb35057ac0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1130, 1, 'appdata_ocizsgb115cv/preview/9/b/7/2', '25d46c2fe10848e96bff59f803423fa9', 1129, '2', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb3505396e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1131, 1, 'appdata_ocizsgb115cv/preview/9/b/7/2/e', '9c70983b6d7b1117bd770d5a46333373', 1130, 'e', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb3504f81b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1132, 1, 'appdata_ocizsgb115cv/preview/9/b/7/2/e/3', '4e708fda2d9f1ce1dfdb3505110143b8', 1131, '3', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb3504b6d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1133, 1, 'appdata_ocizsgb115cv/preview/9/b/7/2/e/3/1', 'a05ebd362f386a6f45eef2a702ff68d0', 1132, '1', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb3504756f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1134, 1, 'appdata_ocizsgb115cv/preview/9/b/7/2/e/3/1/540', '2d8ea787f8ae3d7708dd194fce4d78f5', 1133, '540', 2, 1, 0, 1654436688, 1654436688, 0, 0, '629cb35041e53', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1137, 1, 'appdata_ocizsgb115cv/preview/3/3', 'c3f2d1ceb6476d511b304722673104a8', 93, '3', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f48f694', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1138, 1, 'appdata_ocizsgb115cv/preview/3/3/e', '65cf6300c5e6a9cd2961d3fa733e0acc', 1137, 'e', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f485321', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1139, 1, 'appdata_ocizsgb115cv/preview/3/3/e/8', 'f5b8e5452f973b2227b531a8399330e4', 1138, '8', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f472dd1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1140, 1, 'appdata_ocizsgb115cv/preview/3/3/e/8/0', '6142625d20e58ea3e69c17c7a6cf1728', 1139, '0', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f468ab1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1141, 1, 'appdata_ocizsgb115cv/preview/3/3/e/8/0/7', '3c4762718714623b8af7a344cc28d427', 1140, '7', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f458602', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1142, 1, 'appdata_ocizsgb115cv/preview/3/3/e/8/0/7/5', '09c5b78fd912c67c3592cb9214b16d0b', 1141, '5', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f445f02', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1143, 1, 'appdata_ocizsgb115cv/preview/3/3/e/8/0/7/5/535', '0c111f8e67f6571e886ff69d5429cb64', 1142, '535', 2, 1, 0, 1654437876, 1654437876, 0, 0, '629cb7f437bc4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1144, 1, 'appdata_ocizsgb115cv/preview/c/6', 'd93c9091f52ed2d3741dc89c7dd2a391', 87, '6', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f5c70e8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1145, 1, 'appdata_ocizsgb115cv/preview/c/6/b', 'b9f8229b5fa1f46086f73ce87cdada53', 1144, 'b', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f5b2af9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1146, 1, 'appdata_ocizsgb115cv/preview/c/6/b/f', '2f6cb23523de4a96916cdf748800217f', 1145, 'f', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f5a8804', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1147, 1, 'appdata_ocizsgb115cv/preview/c/6/b/f/f', '0aacaec2351085583532dd145aeb5716', 1146, 'f', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f589f63', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1148, 1, 'appdata_ocizsgb115cv/preview/c/6/b/f/f/6', 'acbb3557d1dc1cbcd73ed8a8303610eb', 1147, '6', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f579abf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1149, 1, 'appdata_ocizsgb115cv/preview/c/6/b/f/f/6/2', 'dcd44b637e533c156f045910f8070188', 1148, '2', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f532518', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1150, 1, 'appdata_ocizsgb115cv/preview/c/6/b/f/f/6/2/1101', '407c24f4cd233b60b98b3f9387665faf', 1149, '1101', 2, 1, 0, 1654437877, 1654437877, 0, 0, '629cb7f52a172', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1166, 1, 'appdata_ocizsgb115cv/preview/1/6', '02d9e513e638de543493d8b0565ea17e', 95, '6', 2, 1, 0, 1654446864, 1654446864, 0, 0, '629cdb112a7a9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1167, 1, 'appdata_ocizsgb115cv/preview/1/6/e', '7aff9c87eed973dbc13965eecd83cab2', 1166, 'e', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb11245dd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1168, 1, 'appdata_ocizsgb115cv/preview/1/6/e/6', 'c424eadd591dc64f9104994eac5f695a', 1167, '6', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb111e3e3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1169, 1, 'appdata_ocizsgb115cv/preview/1/6/e/6/a', '0cc9a917153ea575671a4cb2f1c4d62c', 1168, 'a', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb1118201', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1170, 1, 'appdata_ocizsgb115cv/preview/1/6/e/6/a/3', 'eabcfa41d25727a8c20d6bbb28b443a6', 1169, '3', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb1112055', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1171, 1, 'appdata_ocizsgb115cv/preview/1/6/e/6/a/3/3', '3b04074e4ecf76c6b657a3d7a2e1376d', 1170, '3', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb110be33', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1172, 1, 'appdata_ocizsgb115cv/preview/1/6/e/6/a/3/3/1159', 'e828474561bad8c936ef7316c68d8edf', 1171, '1159', 2, 1, 0, 1654446865, 1654446865, 0, 0, '629cdb1105d8c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1173, 1, 'appdata_ocizsgb115cv/preview/1/0', '6e3c3a610a14403fd4f69bc21c27e7d8', 95, '0', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6dd0ce7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1174, 1, 'appdata_ocizsgb115cv/preview/1/0/9', '94a75f858d9217acc712f31c332a090f', 1173, '9', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6dcab16', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1175, 1, 'appdata_ocizsgb115cv/preview/1/0/9/a', 'b22b334b0339bcf7d521b02033e8a028', 1174, 'a', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6dc4911', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1176, 1, 'appdata_ocizsgb115cv/preview/1/0/9/a/0', 'b710a42ba9db997679e5481a0c5c6e59', 1175, '0', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6dbe748', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1177, 1, 'appdata_ocizsgb115cv/preview/1/0/9/a/0/c', '1a1b041a384e06f636172ae6224d71b1', 1176, 'c', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6db64db', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1178, 1, 'appdata_ocizsgb115cv/preview/1/0/9/a/0/c/a', '9d963da5dd2118d3559816ff871694c6', 1177, 'a', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6daa0ff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1179, 1, 'appdata_ocizsgb115cv/preview/1/0/9/a/0/c/a/686', '8ff23f7689ed7b766c71da621e5ebefa', 1178, '686', 2, 1, 0, 1654467693, 1654467693, 0, 0, '629d2c6d8be10', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1184, 1, 'appdata_ocizsgb115cv/theming/0/icon-core-filetypes_folder-shared.svg', 'd7aeb20b1bfb45a16d9f7ce183044c73', 330, 'icon-core-filetypes_folder-shared.svg', 13, 11, 784, 1654724266, 1654724266, 0, 0, '92b8c2c4b61337302ee215ec4cefb3a9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1204, 1, 'appdata_ocizsgb115cv/preview/4/9/1', '2e3b233faa13f6e66ecbdc57ead6a159', 780, '1', 2, 1, 0, 1655071539, 1655071539, 0, 0, '62a663337f449', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1205, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4', '61a5d31c0ceae8f670e03f2a192715c1', 1204, '4', 2, 1, 0, 1655071539, 1655071539, 0, 0, '62a663336ae01', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1206, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4', '351d35decc109841975205d217c4f2cd', 1205, '4', 2, 1, 0, 1655071539, 1655071539, 0, 0, '62a663335c9f2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1207, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2', '150ce8dc99882187a29649e069489584', 1206, '2', 2, 1, 0, 1655071539, 1655071539, 0, 0, '62a663334c529', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1208, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d', '4824c3c0de87e27b015ee0777b638c3b', 1207, 'd', 2, 1, 0, 1655071539, 1655071539, 0, 0, '62a6633331dfd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1209, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d/1203', '6bd0dbfc70f1fcc5dab4ed5fc4ede770', 1208, '1203', 2, 1, 0, 1655391007, 1655391007, 0, 0, '62a6633310bd2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1210, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d/1203/4096-4096-max.png', 'e1701414539529e5868f1f929ca9d248', 1209, '4096-4096-max.png', 12, 11, 168055, 1655071540, 1655071540, 0, 0, 'ded98550161016fb68b1821c6d36774e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1211, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d/1203/256-256-crop.png', 'dfd53cd930b31c1a4f6a098bc4f7768f', 1209, '256-256-crop.png', 12, 11, 29026, 1655071540, 1655071540, 0, 0, 'f9afe2a690b4b222c694ccf0689c6ebc', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1212, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d/1203/1024-1024.png', 'b6d19687acf552e7cd92b54a4f41a977', 1209, '1024-1024.png', 12, 11, 128158, 1655071541, 1655071541, 0, 0, '10374eabee31a62c6edf9dcc02e01a80', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1223, 1, 'appdata_ocizsgb115cv/preview/3/a', '6d3b2a785e055cedd29625077b01b3f6', 93, 'a', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f97abba', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1224, 1, 'appdata_ocizsgb115cv/preview/3/a/0', 'efd93de84de5e1c1d941e7b8cb243f1c', 1223, '0', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f9749e2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1225, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2', '3fe22acc2eeb379c5fadf6fa30eeee49', 1224, '2', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f96e808', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1226, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9', '445e1bd33029009c597163779803807d', 1225, '9', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f96860f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1227, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f', '497286d604d98061c3a0bdcad72d951f', 1226, 'f', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f96241f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1228, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0', 'df8664a53896359d0748d73bfb2a626a', 1227, '0', 2, 1, 0, 1655220217, 1655220217, 0, 0, '62a8a7f95c250', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1229, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0/1222', '5543d9e5298ced6463ab14d16df018fd', 1228, '1222', 2, 1, 0, 1655391008, 1655391008, 0, 0, '62a8a7f956239', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1230, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0/1222/4096-4096-max.png', 'ab500850a43b9bcb06af668c08877251', 1229, '4096-4096-max.png', 12, 11, 182835, 1655220218, 1655220218, 0, 0, 'b293411c658282a5ae555cd8c590e8ca', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1231, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0/1222/256-256-crop.png', 'a77355b98ebca2d4d201a4bc7d3bd116', 1229, '256-256-crop.png', 12, 11, 30764, 1655220219, 1655220219, 0, 0, 'ddc16ff61e21f062c090ae399481398c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1241, 1, 'appdata_ocizsgb115cv/preview/a/9/0', '6bed304ba624152c50fc23ceaba09948', 935, '0', 2, 1, 0, 1655220314, 1655220314, 0, 0, '62a8a85a9ee8a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1242, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7', 'cfdcf76c52ed2515526f519ace703ec4', 1241, '7', 2, 1, 0, 1655220314, 1655220314, 0, 0, '62a8a85a98d08', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1243, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8', '07fd9ebfcb1323ce24a0f83cca7ecaf6', 1242, '8', 2, 1, 0, 1655220314, 1655220314, 0, 0, '62a8a85a9288b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1244, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8/e', 'b0762eb9f396df846ed6f93bd6769a69', 1243, 'e', 2, 1, 0, 1655220314, 1655220314, 0, 0, '62a8a85a8c6a3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1245, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8/e/8', '9d22f5b2c8aa8f6775244df7b7e84561', 1244, '8', 2, 1, 0, 1655220314, 1655220314, 0, 0, '62a8a85a884f9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1246, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8/e/8/1240', 'fd3b1da17bd6042edd2bedb4184dff09', 1245, '1240', 2, 1, 0, 1655220315, 1655220315, 0, 0, '62a8a85a79e41', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1247, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8/e/8/1240/198-256-max.png', '4243a4cfccb46f588d229640f34c8c61', 1246, '198-256-max.png', 12, 11, 1229, 1655220315, 1655220315, 0, 0, 'a9de79918de305ff9f193f311d0f3c09', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1248, 1, 'appdata_ocizsgb115cv/preview/a/9/0/7/8/e/8/1240/198-198-crop.png', '6cfaf3a512e2791f12f578da9af96f73', 1246, '198-198-crop.png', 12, 11, 1933, 1655220315, 1655220315, 0, 0, '7b6488fdc1e2d474d3fcf36ec34f805e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1258, 1, 'appdata_ocizsgb115cv/preview/c/d/7', '71e0a963e9898a598b2b20bcc7a5f165', 343, '7', 2, 1, 0, 1655222728, 1655222728, 0, 0, '62a8b1c8a9c83', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1259, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5', '5982fd4091576a1a0b68a142f6c61e38', 1258, '5', 2, 1, 0, 1655222728, 1655222728, 0, 0, '62a8b1c8a19ae', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1260, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8', 'c1081c5966fe7cfb95a449fbbfa4c51c', 1259, '8', 2, 1, 0, 1655222728, 1655222728, 0, 0, '62a8b1c89968c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1261, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e', '61fae3b15fbf1feb52f779d95f818af4', 1260, 'e', 2, 1, 0, 1655222728, 1655222728, 0, 0, '62a8b1c891525', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1262, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e/8', 'e40296700d4329c9480a7ba3fdc2f049', 1261, '8', 2, 1, 0, 1655222728, 1655222728, 0, 0, '62a8b1c876bd9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1263, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e/8/1257', '9305179d893974edc334da0dff0053ba', 1262, '1257', 2, 1, 0, 1655391001, 1655391001, 0, 0, '62a8b1c84dd08', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1264, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e/8/1257/4096-4096-max.png', '65c9a9c898a0b1e98f98913a07f81e8d', 1263, '4096-4096-max.png', 12, 11, 63983, 1655222729, 1655222729, 0, 0, '4b399406d66ca9b8645becf248bfb248', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1265, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e/8/1257/256-256-crop.png', '123bc4698b1617341d152c2f813c4aa1', 1263, '256-256-crop.png', 12, 11, 11288, 1655222729, 1655222729, 0, 0, '3df6e53d7c9b93e6a49b0a7eebb635d7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1269, 1, 'appdata_ocizsgb115cv/preview/1/9/3', '687654a277f1ad86135dc6eb4d34779c', 755, '3', 2, 1, 0, 1655222760, 1655222760, 0, 0, '62a8b1e842ff0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1270, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0', '97b2aebf4356d882aab4546306e64961', 1269, '0', 2, 1, 0, 1655222760, 1655222760, 0, 0, '62a8b1e83ce43', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1271, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0', 'e2e1599c63e662f02151bcb6956b324a', 1270, '0', 2, 1, 0, 1655222760, 1655222760, 0, 0, '62a8b1e836c4c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1272, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2', '10be5ff8a704fdfed498cc7fea466484', 1271, '2', 2, 1, 0, 1655222760, 1655222760, 0, 0, '62a8b1e830a1d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1273, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2/e', 'ca53749cded0ffd201549f1ff083fd55', 1272, 'e', 2, 1, 0, 1655222760, 1655222760, 0, 0, '62a8b1e82aa1c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1274, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2/e/1268', 'e5852fdf9bbf9db52a0c14d03fa18b2c', 1273, '1268', 2, 1, 0, 1655391000, 1655391000, 0, 0, '62a8b1e823045', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1275, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2/e/1268/4096-4096-max.png', 'bc16775cf52d71612590f05f33008c79', 1274, '4096-4096-max.png', 12, 11, 63983, 1655222760, 1655222760, 0, 0, 'bd0e994ec8e9e301e2031a170148eb2d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1276, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2/e/1268/256-256-crop.png', 'ce582c8ab2affd3fb816d38cf7a7a3e6', 1274, '256-256-crop.png', 12, 11, 11288, 1655222761, 1655222761, 0, 0, 'b1b0afccddb48874d197a237330c7f62', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1305, 1, 'appdata_ocizsgb115cv/preview/9/9', '26512e0383ea780f0f9bb504cf4c1382', 85, '9', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c11111c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1306, 1, 'appdata_ocizsgb115cv/preview/9/9/5', '89f0e6d8655db97a3176fb9a6bfd7935', 1305, '5', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c106e37', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1307, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6', '1af1fac613d54692c7aa280a2a5eca91', 1306, '6', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c102d30', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1308, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6', '1a525c85c1ea828f29105972afc1d78a', 1307, '6', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c0f2da7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1309, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5', '05b57d8d45014d471468519464030056', 1308, '5', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c0eec79', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1310, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5/6', '5f9f556a6f354a18fd1d0be0aac37e82', 1309, '6', 2, 1, 0, 1655224000, 1655224000, 0, 0, '62a8b6c0e8a80', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1311, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5/6/1279', '5a0d62b948d116aa1d4ce63cc2127e3b', 1310, '1279', 2, 1, 0, 1655391003, 1655391003, 0, 0, '62a8b6c0e041a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1312, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5/6/1279/4096-4096-max.png', 'fa55d132d3fc1c902bfe75d1e1d8c979', 1311, '4096-4096-max.png', 12, 11, 63983, 1655224001, 1655224001, 0, 0, '618590587966d0914896c22fd808ac3e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1313, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5/6/1279/256-256-crop.png', '0d3cc83eeeec638ca9364795521aad0e', 1311, '256-256-crop.png', 12, 11, 11288, 1655224001, 1655224001, 0, 0, 'cd60f5d5b6edeb88d7f21cf26af28157', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1314, 1, 'appdata_ocizsgb115cv/preview/d/7', '8ced2c1325b874bab01e6aaabea697b9', 82, '7', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b895c4fb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1315, 1, 'appdata_ocizsgb115cv/preview/d/7/a', 'ad5f56bee50aa4682f65711c87158c51', 1314, 'a', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b895b78c6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1316, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7', '23962678e96d2918e80189a47c919657', 1315, '7', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b895b0890', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1317, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2', '855e0c3af36c065d77b0f607f8d5720d', 1316, '2', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b895aa6c1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1318, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2/8', '8f1fee7e8f390431653c20ca62d39262', 1317, '8', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b895a4450', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1319, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2/8/a', '6e6ea1749f011b91165ce810a54dce67', 1318, 'a', 2, 1, 0, 1655224469, 1655224469, 0, 0, '62a8b89591efc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1320, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2/8/a/609', '5d821706ed8a0ce71c97661b22dab3ee', 1319, '609', 2, 1, 0, 1655224470, 1655224470, 0, 0, '62a8b8958a892', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1321, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2/8/a/609/4096-4096-max.png', '17587e6dbdf142cf04dc29f62fa8d69a', 1320, '4096-4096-max.png', 12, 11, 63537, 1655224470, 1655224470, 0, 0, '4430b98464328b7d2a2fb763fb597c90', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1322, 1, 'appdata_ocizsgb115cv/preview/d/7/a/7/2/8/a/609/64-64-crop.png', '6fe4d2639a9e8b170eabf54f91f0f227', 1320, '64-64-crop.png', 12, 11, 1587, 1655224470, 1655224470, 0, 0, 'ffaaf04bf117eaf06bae81abf7190a5d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1326, 1, 'appdata_ocizsgb115cv/preview/3/5/4', '9d93eb884b23c8988c3c61b9b8ad3196', 96, '4', 2, 1, 0, 1655225020, 1655225020, 0, 0, '62a8babd12606', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1327, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6', '2658884ea703bcf5e4d02598fa98706e', 1326, '6', 2, 1, 0, 1655225020, 1655225020, 0, 0, '62a8babd0c44b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1328, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a', 'f5378027c35c49470bd72144076c3590', 1327, 'a', 2, 1, 0, 1655225020, 1655225020, 0, 0, '62a8babd06231', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1329, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a/b', '9caf5a3750635d04415718f013a472fe', 1328, 'b', 2, 1, 0, 1655225020, 1655225020, 0, 0, '62a8babd00031', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1330, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a/b/4', 'dc3e16e204869a610cb7716b2e226497', 1329, '4', 2, 1, 0, 1655225020, 1655225020, 0, 0, '62a8babce5e53', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1331, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a/b/4/1325', '9b0c3e9ac79e60f8e61da7ec504b944e', 1330, '1325', 2, 1, 0, 1655225021, 1655225021, 0, 0, '62a8babcd8fc5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1332, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a/b/4/1325/175-65-max.png', '5d84df5569ae1efeff9e93373c63e87b', 1331, '175-65-max.png', 12, 11, 5328, 1655225021, 1655225021, 0, 0, '5a5ae695cda457ca20844c0d24101284', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1333, 1, 'appdata_ocizsgb115cv/preview/3/5/4/6/a/b/4/1325/65-65-crop.png', '11801f9f01922d310a48f2efdaa4c274', 1331, '65-65-crop.png', 12, 11, 2574, 1655225021, 1655225021, 0, 0, 'a33c3040091977430af3ad423d4210bb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1352, 1, 'appdata_ocizsgb115cv/preview/3/e', '28e6056731ed0d91153b5b1dd02e892d', 93, 'e', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6e44bb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1353, 1, 'appdata_ocizsgb115cv/preview/3/e/3', '7f3b4c01c4a66efec87d278d8b6750eb', 1352, '3', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6e36788', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1354, 1, 'appdata_ocizsgb115cv/preview/3/e/3/1', 'a6607b71f8c22ab22006df15698e9ee7', 1353, '1', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6e24259', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1355, 1, 'appdata_ocizsgb115cv/preview/3/e/3/1/3', '22487fc507106635b8e7afcf2dadcada', 1354, '3', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6e0fc91', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1356, 1, 'appdata_ocizsgb115cv/preview/3/e/3/1/3/b', '70343c645ebc5b09bc3315685b76cf6f', 1355, 'b', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6ddb35d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1357, 1, 'appdata_ocizsgb115cv/preview/3/e/3/1/3/b/9', '4271d1f1d0b4d4a1614d5bb58d802ef1', 1356, '9', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6dcaed6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1358, 1, 'appdata_ocizsgb115cv/preview/3/e/3/1/3/b/9/1351', '00be3904f70f5ab536655d820afc0d6b', 1357, '1351', 2, 1, 0, 1655226221, 1655226221, 0, 0, '62a8bf6dbc62b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1359, 1, 'appdata_ocizsgb115cv/preview/c/7', 'ce2dd454bef37e5074662cad4637d559', 87, '7', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc71722', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1360, 1, 'appdata_ocizsgb115cv/preview/c/7/3', '28bccd770c827923c5254870f3dd94c3', 1359, '3', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc63263', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1361, 1, 'appdata_ocizsgb115cv/preview/c/7/3/d', 'fd84eeb95f63b43f67d72b51820285bc', 1360, 'd', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc5d080', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1362, 1, 'appdata_ocizsgb115cv/preview/c/7/3/d/f', '9dcd0f3253ec15fea7ed10aa03b0d4f7', 1361, 'f', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc56e7d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1363, 1, 'appdata_ocizsgb115cv/preview/c/7/3/d/f/e', '92dd3440525a9eb6779207a4603aa21e', 1362, 'e', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc50c7d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1364, 1, 'appdata_ocizsgb115cv/preview/c/7/3/d/f/e/6', 'eddeda91e4dc11bc781134f9106ae3d3', 1363, '6', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc4ab25', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1365, 1, 'appdata_ocizsgb115cv/preview/c/7/3/d/f/e/6/1348', '03c6c809be46cba8341fc5869cc1942e', 1364, '1348', 2, 1, 0, 1655226332, 1655226332, 0, 0, '62a8bfdc421f8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1380, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-settings.css', '97cd6be4de5423ba7a3a1d1882fc2e02', 372, '6e52-861b-settings.css', 10, 5, 3420, 1655275687, 1655275687, 0, 0, '81bfa4fd7cc319692f5deb3fc1722d52', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1381, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-settings.css.deps', 'f753fd26e317e22a25d8cc6229597ace', 372, '6e52-861b-settings.css.deps', 8, 3, 217, 1655275687, 1655275687, 0, 0, '8d04844215b393bed18ca634cbab5ab4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1382, 1, 'appdata_ocizsgb115cv/css/activity/6e52-861b-settings.css.gzip', 'c4ffdbb597c3c91041b328a728b2b6d3', 372, '6e52-861b-settings.css.gzip', 9, 3, 1098, 1655275687, 1655275687, 0, 0, '7d5b64ac6f7a49f667b743518f63f7cf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1383, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mail.css', 'e02ffa8eb7f5b578ad25f3177da579f5', 675, '345d-861b-mail.css', 10, 5, 25340, 1655288883, 1655288883, 0, 0, 'b0689ce05536366c01be762d4c16e95d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1384, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mail.css.deps', 'bd772598dc0ad19488c8e7d71e96d947', 675, '345d-861b-mail.css.deps', 8, 3, 209, 1655288883, 1655288883, 0, 0, 'c550ddcef02a92529d53aed27efc0aab', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1385, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mail.css.gzip', '26e3aa7290638c9114dc07e5c623991b', 675, '345d-861b-mail.css.gzip', 9, 3, 4139, 1655288883, 1655288883, 0, 0, '5f470734192d4708d2a986bf82f78bee', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1386, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mobile.css', 'a6d12d3a284c100f3408567586ad40d8', 675, '345d-861b-mobile.css', 10, 5, 3896, 1655288883, 1655288883, 0, 0, '21225bfb3640d11a71d06b9db93e2dd7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1387, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mobile.css.deps', '91e74864f92e78039ffa985e7c9770fe', 675, '345d-861b-mobile.css.deps', 8, 3, 211, 1655288883, 1655288883, 0, 0, '6c9b9a90d502c89945fba872999aec30', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1388, 1, 'appdata_ocizsgb115cv/css/mail/345d-861b-mobile.css.gzip', 'f73d6d2fd7b35f9bbbbf7306f194d3c5', 675, '345d-861b-mobile.css.gzip', 9, 3, 1276, 1655288884, 1655288884, 0, 0, 'e2e772d3f0a87bd3fc009f9bfa97be10', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1389, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0/1222/64-64-crop.png', '04123dc3c1faad19fc504bcb1eb91eae', 1229, '64-64-crop.png', 12, 11, 3844, 1655290068, 1655290068, 0, 0, '86c3c70ad8ae55d707cac5494c7fb944', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1390, 1, 'appdata_ocizsgb115cv/preview/8/3/8', 'd55f3b66f491c4381e126da707d54bf5', 290, '8', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f490817', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1391, 1, 'appdata_ocizsgb115cv/preview/8/3/8/e', 'f4c5c68f62f95409fac0adf710935c9e', 1390, 'e', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f4830ce', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1392, 1, 'appdata_ocizsgb115cv/preview/8/3/8/e/8', '04fbf6f10d60bf003132803d0b2f12ea', 1391, '8', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f4780d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1393, 1, 'appdata_ocizsgb115cv/preview/8/3/8/e/8/a', 'b5f4c707abd3f00802ab90cd98041d30', 1392, 'a', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f471f05', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1394, 1, 'appdata_ocizsgb115cv/preview/8/3/8/e/8/a/f', 'd56affa251dd640704c20f0be065d315', 1393, 'f', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f46bcbf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1395, 1, 'appdata_ocizsgb115cv/preview/8/3/8/e/8/a/f/1251', '84b2d47ce3dec505ccc95719d5516997', 1394, '1251', 2, 1, 0, 1655297268, 1655297268, 0, 0, '62a9d4f464fbc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1396, 1, 'appdata_ocizsgb115cv/preview/4/f', '07fd8f56a5ba523e422526843d473cfd', 94, 'f', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f617032', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1397, 1, 'appdata_ocizsgb115cv/preview/4/f/2', '1b9e64ef637fc43c75b5d22b3cbb5b1c', 1396, '2', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f5f0a6b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1398, 1, 'appdata_ocizsgb115cv/preview/4/f/2/8', '477569681a115282707cac4fc3a4095e', 1397, '8', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f5e881d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1399, 1, 'appdata_ocizsgb115cv/preview/4/f/2/8/4', 'dafe7c4818bd091cd45d9a5eb9826ec4', 1398, '4', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f5e058e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1400, 1, 'appdata_ocizsgb115cv/preview/4/f/2/8/4/8', 'd98017dd915545437c70587d6d570df8', 1399, '8', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f5d8339', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1401, 1, 'appdata_ocizsgb115cv/preview/4/f/2/8/4/8/0', 'e4e63b1d9b18304fdc0bbb5ab30917ee', 1400, '0', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f5a75bf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1402, 1, 'appdata_ocizsgb115cv/preview/4/f/2/8/4/8/0/1187', 'cb542f9fe50c6b109ed8c5ba76fce611', 1401, '1187', 2, 1, 0, 1655297269, 1655297269, 0, 0, '62a9d4f58f063', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1424, 1, 'appdata_ocizsgb115cv/preview/9/a/1', '7e74ef1252524048fffc7460c015c8cd', 1029, '1', 2, 1, 0, 1655390947, 1655390947, 0, 0, '62ab42e486503', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1425, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7', 'a9615335ba1c65e7fb5e8a6ec1217e61', 1424, '7', 2, 1, 0, 1655390947, 1655390947, 0, 0, '62ab42e47c3ec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1426, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5', '788d38cc1319d4622e1304abf9e31d97', 1425, '5', 2, 1, 0, 1655390947, 1655390947, 0, 0, '62ab42e470335', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1427, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6', 'ebbda3c1a602bac0e2123771245d5ae5', 1426, '6', 2, 1, 0, 1655390947, 1655390947, 0, 0, '62ab42e459852', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1428, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6/f', '082b80e9c676e94081c6a79076e6f6fd', 1427, 'f', 2, 1, 0, 1655390947, 1655390947, 0, 0, '62ab42e438d5b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1429, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6/f/1417', 'cee289e72e033739a7cee1b39e3884d5', 1428, '1417', 2, 1, 0, 1655391005, 1655391005, 0, 0, '62ab42e3ee802', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1430, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6/f/1417/4096-4096-max.png', '6ce31f668f20bdaa3e4a5238b7487155', 1429, '4096-4096-max.png', 12, 11, 124829, 1655390949, 1655390949, 0, 0, 'afdc2e7897266bd06208663554567639', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1431, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6/f/1417/256-256-crop.png', '46de34bc06e1fcd7adb8a0e1b8df7734', 1429, '256-256-crop.png', 12, 11, 21891, 1655390950, 1655390950, 0, 0, '5f60d7016c53313c5bfa05cbc8e308e3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1432, 1, 'appdata_ocizsgb115cv/preview/9/0', '02d87927752b4dffb6e4c98624e72aef', 85, '0', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42ea5f08a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1433, 1, 'appdata_ocizsgb115cv/preview/9/0/d', '5752eec116add411a5a5d9c7bdc78208', 1432, 'd', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42ea447ce', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1434, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b', '2524ceb014d449012b58e6cd13f0da16', 1433, 'b', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42e9e32cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1435, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9', '0ab5baa43f6c5de33f5498e14fd04867', 1434, '9', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42e9c6a3e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1436, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d', '754abef7857050581c924908ed29d52f', 1435, 'd', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42e9ba75c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1437, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d/a', '68bc9d3554ab71435be323600151a8ad', 1436, 'a', 2, 1, 0, 1655390953, 1655390953, 0, 0, '62ab42e9a60bf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1438, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d/a/1420', 'c3f1878b8dc4f1f9e34996d79be2f93b', 1437, '1420', 2, 1, 0, 1655391009, 1655391009, 0, 0, '62ab42e93c802', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1439, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d/a/1420/4096-4096-max.png', 'a27889a6b3b3fbb48a1e03550e4e152e', 1438, '4096-4096-max.png', 12, 11, 230169, 1655390955, 1655390955, 0, 0, '2393f44fe6a84ed747666618551a9e63', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1440, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d/a/1420/256-256-crop.png', 'd1c0895702d890e0ddf5a5d7713e27b5', 1438, '256-256-crop.png', 12, 11, 41220, 1655390956, 1655390956, 0, 0, '9726e7447411b1e967f3db894ec531bc', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1462, 1, 'appdata_ocizsgb115cv/preview/1/9/3/0/0/2/e/1268/1024-1024-crop.png', 'f15bbab9e8123dce859ccaca3f26e86d', 1274, '1024-1024-crop.png', 12, 11, 47666, 1655391000, 1655391000, 0, 0, '64353c0d0f0109530411552f89e689f7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1463, 1, 'appdata_ocizsgb115cv/preview/c/d/7/5/8/e/8/1257/1024-1024-crop.png', 'ec7181a6998c625896df3daf868c98c8', 1263, '1024-1024-crop.png', 12, 11, 47666, 1655391001, 1655391001, 0, 0, 'ae6a2786548e32ea82b84c65911ff2b2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1464, 1, 'appdata_ocizsgb115cv/preview/9/9/5/6/6/5/6/1279/1024-1024-crop.png', 'fb9c4a813fe1a557dd3e55fd0b8dd5a8', 1311, '1024-1024-crop.png', 12, 11, 47666, 1655391003, 1655391003, 0, 0, '2886b46c8d2e7eff22793b117130b97f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1465, 1, 'appdata_ocizsgb115cv/preview/9/a/1/7/5/6/f/1417/1024-1024-crop.png', '7298ae2bf74f222fe54bea31130095c0', 1429, '1024-1024-crop.png', 12, 11, 97220, 1655391005, 1655391005, 0, 0, 'c5988aef2ae90efec825eb360cc80605', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1466, 1, 'appdata_ocizsgb115cv/preview/4/9/1/4/4/2/d/1203/1024-1024-crop.png', 'a87a1762ef9466d366c5cb7d8d5d5b4f', 1209, '1024-1024-crop.png', 12, 11, 128158, 1655391007, 1655391007, 0, 0, '6dcfe3d911472a48d05ac69ce40edd69', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1467, 1, 'appdata_ocizsgb115cv/preview/3/a/0/2/9/f/0/1222/1024-1024-crop.png', '2621666c7a31f9367e0e0a4ea0d57448', 1229, '1024-1024-crop.png', 12, 11, 151140, 1655391008, 1655391008, 0, 0, 'b41ecfdf20344375bb3c65b14938a60d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1468, 1, 'appdata_ocizsgb115cv/preview/9/0/d/b/9/d/a/1420/1024-1024-crop.png', '4d23eab245651f578bea8b85beefa1b3', 1438, '1024-1024-crop.png', 12, 11, 194229, 1655391009, 1655391009, 0, 0, '24e3938d4100f1d89baa3550b2643b0a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1478, 1, 'appdata_ocizsgb115cv/preview/7/8', '8b3f170eec3c9cefd3019128d5f40d9e', 92, '8', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444d2be3d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1479, 1, 'appdata_ocizsgb115cv/preview/7/8/b', 'f3b3be4a7d58fcd6077a8a20cb10afa1', 1478, 'b', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444d116dd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1480, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9', 'bd523726b4d5b0604ce060f857577ec5', 1479, '9', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444ce4fd2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1481, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c', 'd5a172cd741a07fe8612e1b603333652', 1480, 'c', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444cd6b54', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1482, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c/a', '0b5d42f5879cafad6e1b6da0a88ea9c1', 1481, 'a', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444cc04c3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1483, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c/a/b', '54eac4faf730f456d30ea16eaded930d', 1482, 'b', 2, 1, 0, 1655391308, 1655391308, 0, 0, '62ab444cb6285', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1484, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c/a/b/1477', 'a9f1d174a6952da99b2766e8823956fe', 1483, '1477', 2, 1, 0, 1655391311, 1655391311, 0, 0, '62ab444ca1f6a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1485, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c/a/b/1477/4096-4096-max.png', '54096bd15d992de9df5aa4f612c3563b', 1484, '4096-4096-max.png', 12, 11, 163406, 1655391310, 1655391310, 0, 0, 'daa56ff7a3c42ed4d71a28af5086b190', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1486, 1, 'appdata_ocizsgb115cv/preview/7/8/b/9/c/a/b/1477/256-256-crop.png', '50dcb41ce27adb518f262b80701e9ded', 1484, '256-256-crop.png', 12, 11, 30291, 1655391311, 1655391311, 0, 0, '1edb2c2cc914fa6a185106879dd77aea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1531, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-server.css', '0dd7f02cf36183147da0335ce0e9f9fe', 303, 'a86f-7d44-server.css', 10, 5, 196981, 1655703052, 1655703052, 0, 0, '519ebe65828b16cccb747b0687951f3d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1532, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-server.css.deps', '4a683486dd9906099e3656ed75cd7199', 303, 'a86f-7d44-server.css.deps', 8, 3, 927, 1655703052, 1655703052, 0, 0, '66a094a17b3df56c5d5f7d6a0f775aea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1533, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-server.css.gzip', '5c8437617ad3c0a2d9d09cd93df6870b', 303, 'a86f-7d44-server.css.gzip', 9, 3, 29706, 1655703052, 1655703052, 0, 0, '429b657adfabc5ec50fbe81093f4db8c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1534, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-css-variables.css', 'd109759667b863cb00929dce35ef8de3', 303, 'a86f-7d44-css-variables.css', 10, 5, 4737, 1655703052, 1655703052, 0, 0, '76c3df55812b997793df787bf722f654', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1535, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-css-variables.css.deps', '40a2b9c1b36be660dd638ec590865ac2', 303, 'a86f-7d44-css-variables.css.deps', 8, 3, 212, 1655703052, 1655703052, 0, 0, '38593dc26f3c7d2c07dd2b9fc0bdaa65', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1536, 1, 'appdata_ocizsgb115cv/css/core/a86f-7d44-css-variables.css.gzip', '76c9ca2705692543befbc2c7d45066a7', 303, 'a86f-7d44-css-variables.css.gzip', 9, 3, 1485, 1655703052, 1655703052, 0, 0, 'ff7f066058ffeaaab3f5c485019f5310', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1537, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-7d44-dashboard.css', '570d06ed95af26e19d9fa1c791109ccc', 615, '1c83-7d44-dashboard.css', 10, 5, 5061, 1655703052, 1655703052, 0, 0, '42cbb6f9f38544229b6e4f7ecbb79c0f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1538, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-7d44-dashboard.css.deps', '814798d05b01f53c7e70fb027ebf7e77', 615, '1c83-7d44-dashboard.css.deps', 8, 3, 219, 1655703052, 1655703052, 0, 0, '0624839c7e60ec56d2d181cbd252747a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1539, 1, 'appdata_ocizsgb115cv/css/dashboard/1c83-7d44-dashboard.css.gzip', 'ad20940bf919ea8d4d561d516e5b039c', 615, '1c83-7d44-dashboard.css.gzip', 9, 3, 1420, 1655703052, 1655703052, 0, 0, 'bb1eb409284a589900cd2b30b46b275b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1540, 1, 'appdata_ocizsgb115cv/css/activity/6e52-7d44-style.css', '67c2bec7800f222bd9aa8ee9eb888431', 372, '6e52-7d44-style.css', 10, 5, 7284, 1655703053, 1655703053, 0, 0, '972a5afaa4c4e585cb377c2a30ae7d69', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1541, 1, 'appdata_ocizsgb115cv/css/activity/6e52-7d44-style.css.deps', '10b54bc36132f9c1f418ac43a0822a64', 372, '6e52-7d44-style.css.deps', 8, 3, 214, 1655703053, 1655703053, 0, 0, '07f9f064ee027d2862e829e8e59c2c0d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1542, 1, 'appdata_ocizsgb115cv/css/activity/6e52-7d44-style.css.gzip', '7114de5bc3ed95834b5381f18d3f3327', 372, '6e52-7d44-style.css.gzip', 9, 3, 2155, 1655703053, 1655703053, 0, 0, '0847cd59636f5f54727b05f7d406513d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1543, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-7d44-user-status-menu.css', '0d54b80fcc5ee66f7e687a37572f2e01', 379, '1bf6-7d44-user-status-menu.css', 10, 5, 5086, 1655703053, 1655703053, 0, 0, 'fe101a520372b3e44bcaba354d2b3813', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1544, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-7d44-user-status-menu.css.deps', '4d846225e86a734fee23dc05875d653e', 379, '1bf6-7d44-user-status-menu.css.deps', 8, 3, 228, 1655703053, 1655703053, 0, 0, 'f25e75277b7a8cea05bfc801a0232e35', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1545, 1, 'appdata_ocizsgb115cv/css/user_status/1bf6-7d44-user-status-menu.css.gzip', '5a3881fed0c730f15133ce6626293775', 379, '1bf6-7d44-user-status-menu.css.gzip', 9, 3, 1126, 1655703053, 1655703053, 0, 0, 'f1755adde8d5f94d57e55159752dfdce', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1546, 1, 'appdata_ocizsgb115cv/css/theming/d71e-7d44-theming.css', 'b30c93a6066031a3b9de939ba64f18bb', 408, 'd71e-7d44-theming.css', 10, 5, 4915, 1655703055, 1655703055, 0, 0, '22d3458213c49570a955f27b1cf36321', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1547, 1, 'appdata_ocizsgb115cv/css/theming/d71e-7d44-theming.css.deps', '41ba393e288d749e98803cfcb200b414', 408, 'd71e-7d44-theming.css.deps', 8, 3, 215, 1655703055, 1655703055, 0, 0, '48a0ecbc8437ddabec1f910c367d8978', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1548, 1, 'appdata_ocizsgb115cv/css/theming/d71e-7d44-theming.css.gzip', '571fdd3bc11c9c1896c15f2a70f24017', 408, 'd71e-7d44-theming.css.gzip', 9, 3, 1435, 1655703055, 1655703055, 0, 0, '6d092f97f94c788aecbfc470c3502248', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1549, 5, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 0, 1655711107, 1655711103, 0, 0, '62b02583898f5', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1550, 5, 'appdata_ocwy2xd3cmrn', '78ea5c2c29c44dbb4f08cf7817f3ca23', 1549, 'appdata_ocwy2xd3cmrn', 2, 1, 0, 1655709631, 1655709631, 0, 0, '62b01ec7b4cb3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1551, 5, 'appdata_ocwy2xd3cmrn/appstore', 'c9937e9eba1189f26291fae93c8a6d74', 1550, 'appstore', 2, 1, 0, 1655709415, 1655709415, 0, 0, '62b01ec7eaf0b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1552, 5, 'appdata_ocwy2xd3cmrn/appstore/apps.json', '86ba90b6fdfdc27dd07f5c15d17ba3ff', 1551, 'apps.json', 4, 3, 2087725, 1655709415, 1655709415, 0, 0, 'b6d3a457bccaf2673ea99978760f94bd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1556, 5, 'appdata_ocwy2xd3cmrn/js', '76cad2f3f1c6024a05fb173dab8225a3', 1550, 'js', 2, 1, 0, 1655709474, 1655709474, 0, 0, '62b01f21eaf65', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1557, 5, 'appdata_ocwy2xd3cmrn/js/core', '595ea395d4260aa8db73c54aaa84bb3d', 1556, 'core', 2, 1, 0, 1655709474, 1655709474, 0, 0, '62b01f2230131', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1558, 5, 'appdata_ocwy2xd3cmrn/js/core/merged-template-prepend.js', '957bf6077bad382101fbcc17f1d37092', 1557, 'merged-template-prepend.js', 7, 3, 11942, 1655709474, 1655709474, 0, 0, 'ea7be5751c9e63183755bc3d5bd326a1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1559, 5, 'appdata_ocwy2xd3cmrn/js/core/merged-template-prepend.js.deps', 'c5bca54d92d1ec5c131b75fcf7f1c535', 1557, 'merged-template-prepend.js.deps', 8, 3, 418, 1655709474, 1655709474, 0, 0, 'c9bfb97c6aee21a683c45fda8bd29a92', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1560, 5, 'appdata_ocwy2xd3cmrn/js/core/merged-template-prepend.js.gzip', 'bc519e4fcc1964524e0b773c56b2c510', 1557, 'merged-template-prepend.js.gzip', 9, 3, 3054, 1655709474, 1655709474, 0, 0, 'ab40cfe59ae07d94b5d012ff3baeebd5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1561, 5, 'appdata_ocwy2xd3cmrn/css', 'ad2bc174799bf8a9d8510e74c055ab34', 1550, 'css', 2, 1, 0, 1655710628, 1655710628, 0, 0, '62b01f70173fd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1562, 5, 'appdata_ocwy2xd3cmrn/css/icons', 'a24549b81038967b434c0622127ba004', 1561, 'icons', 2, 1, 0, 1655709580, 1655709580, 0, 0, '62b01f702af04', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1564, 5, 'appdata_ocwy2xd3cmrn/css/core', '4001b2eccb408b9878b3b373ebe9a7dd', 1561, 'core', 2, 1, 0, 1655710331, 1655710331, 0, 0, '62b01f8c1604a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1565, 5, 'appdata_ocwy2xd3cmrn/css/icons/icons-vars.css', '1b096c2ac52325b24f7ed31b5fa60709', 1562, 'icons-vars.css', 10, 5, 116000, 1655710628, 1655710628, 0, 0, 'ee7cde6891278d3403fe2bf092652c26', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1566, 5, 'appdata_ocwy2xd3cmrn/css/icons/icons-list.template', '4d5299ffc5346b55553f21d9291cad20', 1562, 'icons-list.template', 8, 3, 15160, 1655710628, 1655710628, 0, 0, '18deca17081ba46e65a57d1d2ca9b9e2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1567, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-server.css', '5dd24146596822e1007a73a85153195e', 1564, 'a86f-006d-server.css', 10, 5, 139023, 1655709581, 1655709581, 0, 0, '578e2007832d7140bb2a1b2ea2a7788f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1568, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-server.css.deps', '3a42e9bed6b7df46d118608904088199', 1564, 'a86f-006d-server.css.deps', 8, 3, 1361, 1655709581, 1655709581, 0, 0, '1d4ae4a75a20059846059e73726ae4cb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1569, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-server.css.gzip', '31e6a8f3efa0ac57ab76acad72c0a19d', 1564, 'a86f-006d-server.css.gzip', 9, 3, 19854, 1655709581, 1655709581, 0, 0, '646a649daca422dc348afce305dfcf32', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1570, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-css-variables.css', '66b4c8e7ace52fc532459c3d3b2e1a8e', 1564, 'a86f-006d-css-variables.css', 10, 5, 1820, 1655709581, 1655709581, 0, 0, '5465eb0a9bc29607c9fc2177077d8f56', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1571, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-css-variables.css.deps', '1e1fc942f10195dceb0e82caf9892b90', 1564, 'a86f-006d-css-variables.css.deps', 8, 3, 305, 1655709581, 1655709581, 0, 0, 'bd26d17f6b819302042f8231de7c132d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1572, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-006d-css-variables.css.gzip', 'fc83c40f8eb85308186d1f50a75e9b29', 1564, 'a86f-006d-css-variables.css.gzip', 9, 3, 692, 1655709581, 1655709581, 0, 0, '70e5b99b8990fed308ee23ada6c9ffc5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1573, 5, 'appdata_ocwy2xd3cmrn/css/dashboard', 'f14b8047f0e5fb2116c5ecf42865d9aa', 1561, 'dashboard', 2, 1, 0, 1655710331, 1655710331, 0, 0, '62b01f8dafe68', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1574, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-006d-dashboard.css', '0befaeafd5aa640ca6c77ad765472248', 1573, '1c83-006d-dashboard.css', 10, 5, 2070, 1655709581, 1655709581, 0, 0, '86f4b0aa8ed0990b1395dbfc063c6791', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1575, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-006d-dashboard.css.deps', '56b2d79261e56c2bc0d4c3b0895ba23e', 1573, '1c83-006d-dashboard.css.deps', 8, 3, 312, 1655709581, 1655709581, 0, 0, 'a6259fbe20e6c5f66699cca50f732d9b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1576, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-006d-dashboard.css.gzip', '451f6386ba947992e07976c61ebc24d8', 1573, '1c83-006d-dashboard.css.gzip', 9, 3, 602, 1655709582, 1655709582, 0, 0, 'e21dc2498327eecfe992d5d6c5240644', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1577, 5, 'appdata_ocwy2xd3cmrn/css/user_status', '87866f5a2264128af3ba79f7a91bbda8', 1561, 'user_status', 2, 1, 0, 1655710332, 1655710332, 0, 0, '62b01f8f2a03b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1578, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-006d-user-status-menu.css', '95897d646121361d4035c98fdd45aa94', 1577, '1bf6-006d-user-status-menu.css', 10, 5, 1039, 1655709583, 1655709583, 0, 0, '8fd4dd6814563fe584ff3ad7019db7c0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1579, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-006d-user-status-menu.css.deps', '81be18d1bf490eb3a1df460fb3554021', 1577, '1bf6-006d-user-status-menu.css.deps', 8, 3, 321, 1655709583, 1655709583, 0, 0, '879bcddedba385e697a0d2a4b6a2fb21', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1580, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-006d-user-status-menu.css.gzip', '9284675d83a6499bc0c57db88693296c', 1577, '1bf6-006d-user-status-menu.css.gzip', 9, 3, 240, 1655709583, 1655709583, 0, 0, '3d60f53cc528eb4fe1dd26416551dd66', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1581, 5, 'appdata_ocwy2xd3cmrn/css/theming', '3e2ce9a99fed99f790aec470bc59ec7d', 1561, 'theming', 2, 1, 0, 1655710334, 1655710334, 0, 0, '62b01fbedf826', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1582, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-006d-theming.css', '1c88c04c44d53bc0e015cc5040848f79', 1581, 'd71e-006d-theming.css', 10, 5, 1774, 1655709631, 1655709631, 0, 0, 'b2c4ca7cb9fcd4697ffe8eb7623fa656', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1583, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-006d-theming.css.deps', 'f3759caf8648773262edb029997e6faf', 1581, 'd71e-006d-theming.css.deps', 8, 3, 308, 1655709631, 1655709631, 0, 0, '344e2d0ac5d74fdf760840106fb84fc0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1584, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-006d-theming.css.gzip', '9bb8bc0ccbacee2b16c9e6e9f4b819ec', 1581, 'd71e-006d-theming.css.gzip', 9, 3, 534, 1655709631, 1655709631, 0, 0, '9b26e78a9e762e14eefbe4cf88ee7c11', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1585, 5, 'appdata_ocwy2xd3cmrn/avatar', '27a20c730749dd0ca05f3b8db0bb6f53', 1550, 'avatar', 2, 1, 0, 1655709739, 1655709739, 0, 0, '62b01fbf642e9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1586, 5, 'appdata_ocwy2xd3cmrn/avatar/root', '623ae5cf19488159ce90e7c2bab9167c', 1585, 'root', 2, 1, 0, 1655709632, 1655709632, 0, 0, '62b01fbf84813', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1587, 5, 'appdata_ocwy2xd3cmrn/avatar/root/avatar.png', '183a079f76c4ef32f6b1696a87b9275f', 1586, 'avatar.png', 12, 11, 13638, 1655709631, 1655709631, 0, 0, '8de247ee89ea4853f4bfdc98137122f6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1588, 5, 'appdata_ocwy2xd3cmrn/avatar/root/generated', '3dd2d5c1b0c88afd7e9fef5c3c8e790b', 1586, 'generated', 8, 3, 0, 1655709631, 1655709631, 0, 0, '76e89219817330218e0da1cadcf1453e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1589, 5, 'appdata_ocwy2xd3cmrn/avatar/root/avatar.64.png', 'c89c9c4c90ebb3a727f421e2eea279b7', 1586, 'avatar.64.png', 12, 11, 751, 1655709632, 1655709632, 0, 0, '420b1404d46087b67d55d840b19acdca', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1590, 5, 'appdata_ocwy2xd3cmrn/css/settings', '112785ea3cec6aa34e9f66e1e58dcd71', 1561, 'settings', 2, 1, 0, 1655710345, 1655710345, 0, 0, '62b01fc9495e7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1591, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-006d-settings.css', 'f2193b6a338090645e6e19fdb531720d', 1590, 'ca9f-006d-settings.css', 10, 5, 33292, 1655709641, 1655709641, 0, 0, '8eb811115c5c009e959b1517873763fe', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1592, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-006d-settings.css.deps', '0c9d22875b9ec2562e5fcae881d7c47f', 1590, 'ca9f-006d-settings.css.deps', 8, 3, 310, 1655709641, 1655709641, 0, 0, '77b9a397f63bd67e731f50ab9d862def', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1593, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-006d-settings.css.gzip', 'c9cf3668d973267113029ab1e95ea739', 1590, 'ca9f-006d-settings.css.gzip', 9, 3, 6136, 1655709641, 1655709641, 0, 0, '8640205cabbf78c8238aac60492a7ff6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1594, 5, 'appdata_ocwy2xd3cmrn/css/federatedfilesharing', '4141116b16fd38a6e5aa82e93a0191ab', 1561, 'federatedfilesharing', 2, 1, 0, 1655709734, 1655709734, 0, 0, '62b02025275e9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1595, 5, 'appdata_ocwy2xd3cmrn/css/federatedfilesharing/f5a2-006d-settings-personal.css', '18a35f0621196bc4d1997e3289404132', 1594, 'f5a2-006d-settings-personal.css', 10, 5, 680, 1655709734, 1655709734, 0, 0, '434dfd9094f4e8a9599aa1778a822445', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1596, 5, 'appdata_ocwy2xd3cmrn/css/federatedfilesharing/f5a2-006d-settings-personal.css.deps', '9b30aefdb7275f6d2cf12bb55fc92fc1', 1594, 'f5a2-006d-settings-personal.css.deps', 8, 3, 331, 1655709734, 1655709734, 0, 0, '5f8c504e991185796e3379291bfcad05', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1597, 5, 'appdata_ocwy2xd3cmrn/css/federatedfilesharing/f5a2-006d-settings-personal.css.gzip', '5354b85147b79c542b55c9c29fdd6985', 1594, 'f5a2-006d-settings-personal.css.gzip', 9, 3, 307, 1655709734, 1655709734, 0, 0, '4b417342a7d972daaf286559242da512', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1598, 5, 'appdata_ocwy2xd3cmrn/avatar/khoa', 'df53c706453b6defd28c352076346efa', 1585, 'khoa', 2, 1, 0, 1655709738, 1655709738, 0, 0, '62b02029da14e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1599, 5, 'appdata_ocwy2xd3cmrn/avatar/khoa/avatar.png', '3136da9fa06a585a4506ee8cd7484f2e', 1598, 'avatar.png', 12, 11, 14818, 1655709738, 1655709738, 0, 0, '7bc63fbbcf8699e8b936e80474044be1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1600, 5, 'appdata_ocwy2xd3cmrn/avatar/khoa/generated', '1c4b299e16234b02a9495e7896929d45', 1598, 'generated', 8, 3, 0, 1655709738, 1655709738, 0, 0, '799fe30fe1b574f22e5efd06f9ec754f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1601, 5, 'appdata_ocwy2xd3cmrn/avatar/khoa/avatar.64.png', '4d0082f0c01a087d05458308527ff7a5', 1598, 'avatar.64.png', 12, 11, 754, 1655709738, 1655709738, 0, 0, '3eaaa3d50c4693bed229db3e4c760420', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1602, 5, 'appdata_ocwy2xd3cmrn/avatar/test', '996cb6d7a4f4086a87b215f0bb159c5f', 1585, 'test', 2, 1, 0, 1655709739, 1655709739, 0, 0, '62b0202adf796', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1603, 5, 'appdata_ocwy2xd3cmrn/avatar/test/avatar.png', '3cbd320f1bcf9ca7a8723dd2e47f5420', 1602, 'avatar.png', 12, 11, 5515, 1655709739, 1655709739, 0, 0, 'd9a5d12fa1caec68f5134cb43fae2ac7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1604, 5, 'appdata_ocwy2xd3cmrn/avatar/test/generated', '0fe563e80a395093d2b8559cb9c83f88', 1602, 'generated', 8, 3, 0, 1655709739, 1655709739, 0, 0, '22e29f7b65af3d5c8b2c09c4219ffda1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1605, 5, 'appdata_ocwy2xd3cmrn/avatar/test/avatar.64.png', 'd2db624b5470cfee54d71a2ea8ae0b39', 1602, 'avatar.64.png', 12, 11, 306, 1655709739, 1655709739, 0, 0, '5911fdbd21f5ee82d7fc4bd20508f8e6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1606, 5, 'appdata_ocwy2xd3cmrn/avatar/user', '7e4d46dab5c95a61ed590a55a6cbbf85', 1585, 'user', 2, 1, 0, 1655709740, 1655709740, 0, 0, '62b0202bd07ae', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1607, 5, 'appdata_ocwy2xd3cmrn/avatar/user/avatar.png', '242291a748915d327d16a099ac909f7d', 1606, 'avatar.png', 12, 11, 10874, 1655709740, 1655709740, 0, 0, 'c297a94a959e4cfd3a2dbb23d3f14286', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1608, 5, 'appdata_ocwy2xd3cmrn/avatar/user/generated', 'c1dd04035a84d72a18d0996fb3db6966', 1606, 'generated', 8, 3, 0, 1655709740, 1655709740, 0, 0, '702a2b802078e5dd794678dbc40c682a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1609, 5, 'appdata_ocwy2xd3cmrn/avatar/user/avatar.64.png', 'd503189a56aedb66227217f68eb3a1e6', 1606, 'avatar.64.png', 12, 11, 580, 1655709740, 1655709740, 0, 0, 'a5e72a125e12ff35f8e27cda7fc119ce', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1610, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-server.css', '300dcf37ed292c46dcced96ff505e913', 1564, 'a86f-15f3-server.css', 10, 5, 139023, 1655710330, 1655710330, 0, 0, '922ddfe79bb4f3e30a5e0553d476879d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1611, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-server.css.deps', '703b20d4f25da38b7ed5f5f7e654bc83', 1564, 'a86f-15f3-server.css.deps', 8, 3, 1361, 1655710331, 1655710331, 0, 0, 'b4870904b7e53004350f86e10d259d63', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1612, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-server.css.gzip', '04d8ab0cf19aa2794627ef97db15846d', 1564, 'a86f-15f3-server.css.gzip', 9, 3, 19854, 1655710331, 1655710331, 0, 0, '9ec32a996aabddaf57b9020764cdf1f3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1613, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-css-variables.css', '473e2fc61d053b055853e10594bd1507', 1564, 'a86f-15f3-css-variables.css', 10, 5, 1820, 1655710331, 1655710331, 0, 0, '27bc398c7853b5d9621f2d2848e4a5e6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1614, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-css-variables.css.deps', 'a4788fafcc4375f2c0aa2399a81dcc52', 1564, 'a86f-15f3-css-variables.css.deps', 8, 3, 305, 1655710331, 1655710331, 0, 0, '46357db69c5028cc4ff9ebd9809545a4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1615, 5, 'appdata_ocwy2xd3cmrn/css/core/a86f-15f3-css-variables.css.gzip', '7dbadeb735e18a676033780f7c2ebd0f', 1564, 'a86f-15f3-css-variables.css.gzip', 9, 3, 692, 1655710331, 1655710331, 0, 0, '8abdd7b25a9fd242fbd89334402be7af', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1616, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-15f3-dashboard.css', '059fd5d6ecb751955949764cf4d38035', 1573, '1c83-15f3-dashboard.css', 10, 5, 2070, 1655710331, 1655710331, 0, 0, '3752c48f61ffb82e5dd257467c0abe96', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1617, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-15f3-dashboard.css.deps', '4c376c79a57b9305c84f6316c747f589', 1573, '1c83-15f3-dashboard.css.deps', 8, 3, 312, 1655710331, 1655710331, 0, 0, 'f89f313df6d17a475503f0afba4e6c1c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1618, 5, 'appdata_ocwy2xd3cmrn/css/dashboard/1c83-15f3-dashboard.css.gzip', '413c72288dae7ffb2875d8f0fe574566', 1573, '1c83-15f3-dashboard.css.gzip', 9, 3, 602, 1655710331, 1655710331, 0, 0, '60fb13867f36ab76f62390a5cf9a5c62', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1619, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-15f3-user-status-menu.css', '240c52cda85447951883449b53f2d8d0', 1577, '1bf6-15f3-user-status-menu.css', 10, 5, 1039, 1655710331, 1655710331, 0, 0, 'a7abcdec800bbe4ebbcd889b8ab25727', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1620, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-15f3-user-status-menu.css.deps', '230c6ec85185d080333376f00b9eb538', 1577, '1bf6-15f3-user-status-menu.css.deps', 8, 3, 321, 1655710332, 1655710332, 0, 0, '1d4d5597399e6ba8a68cc1926fc165cd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1621, 5, 'appdata_ocwy2xd3cmrn/css/user_status/1bf6-15f3-user-status-menu.css.gzip', 'c67f80cf93f3bfd7dabda158f8412ef5', 1577, '1bf6-15f3-user-status-menu.css.gzip', 9, 3, 240, 1655710332, 1655710332, 0, 0, '989c0303b3b58405b5727595eeffd8d8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1622, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-15f3-theming.css', '691f5b502cfba0ebf8869d72e0cc220e', 1581, 'd71e-15f3-theming.css', 10, 5, 1774, 1655710333, 1655710333, 0, 0, '2bd8ee7626e129e5b86e8b9eddfec580', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1623, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-15f3-theming.css.deps', 'a7a174e2343130720602937e8121a3d8', 1581, 'd71e-15f3-theming.css.deps', 8, 3, 308, 1655710334, 1655710334, 0, 0, 'd23846db6ef4e10238c005fdb8bda763', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1624, 5, 'appdata_ocwy2xd3cmrn/css/theming/d71e-15f3-theming.css.gzip', 'c81fd0a69000a1999e3556f7001f03b2', 1581, 'd71e-15f3-theming.css.gzip', 9, 3, 534, 1655710334, 1655710334, 0, 0, 'baac1c6d67559c06e0aee94d5283dfb1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1625, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-15f3-settings.css', 'e72472d346ea79214c0a243eb0bc308a', 1590, 'ca9f-15f3-settings.css', 10, 5, 33292, 1655710345, 1655710345, 0, 0, '5e64274fbd8aa8fb0bd5872fb25a1edc', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1626, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-15f3-settings.css.deps', '8b8ba6ca90155f32ed9069e885a5a795', 1590, 'ca9f-15f3-settings.css.deps', 8, 3, 310, 1655710345, 1655710345, 0, 0, '96650333318102ae1fb8e70087aec43a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1627, 5, 'appdata_ocwy2xd3cmrn/css/settings/ca9f-15f3-settings.css.gzip', 'a3814ac108c3b1d2f92801c67261e114', 1590, 'ca9f-15f3-settings.css.gzip', 9, 3, 6136, 1655710345, 1655710345, 0, 0, 'dbe61a34ebc1428616ff80dd41abc5f7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1628, 5, 'appdata_ocwy2xd3cmrn/css/activity', '9ea9ed4ce169bab5abddaa0f1867bdf0', 1561, 'activity', 2, 1, 0, 1655710629, 1655710629, 0, 0, '62b023a4865aa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1629, 5, 'appdata_ocwy2xd3cmrn/css/activity/6e52-15f3-style.css', '5915a75d7172e0cd29c516cd4d9287b4', 1628, '6e52-15f3-style.css', 10, 5, 3610, 1655710629, 1655710629, 0, 0, '1a389e760cd7c5bb1371d3d8ea824556', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1630, 5, 'appdata_ocwy2xd3cmrn/css/activity/6e52-15f3-style.css.deps', '6247c4bee2c61f909d81faf083140ca0', 1628, '6e52-15f3-style.css.deps', 8, 3, 307, 1655710629, 1655710629, 0, 0, '3eb2bedb90f04eeccc691ef52d2ec3ea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1631, 5, 'appdata_ocwy2xd3cmrn/css/activity/6e52-15f3-style.css.gzip', 'ae26bcca1326e0c58392a756395e8d70', 1628, '6e52-15f3-style.css.gzip', 9, 3, 1192, 1655710629, 1655710629, 0, 0, '9fe1b1b937df181f188e36e4553ba00e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1632, 5, 'appdata_oc9qmek4lhg9', '4bfdc5364e7dfb6d25b25e9a740ee9a2', 1549, 'appdata_oc9qmek4lhg9', 2, 1, 0, 1655713483, 1655713483, 0, 0, '62b02510a97be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1633, 5, 'appdata_oc9qmek4lhg9/appstore', '0c182a58c83c80d6bb757733284f9df2', 1632, 'appstore', 2, 1, 0, 1655713570, 1655713570, 0, 0, '62b025118761f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1634, 7, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 111832, 1655713673, 1655713672, 0, 0, '62b02f8964569', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1635, 7, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1634, 'files', 2, 1, 223664, 1655713673, 1655713673, 0, 0, '62b02f8964569', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1636, 7, 'files/welcome.txt', 'c49a144e772727f51b75705170e88a43', 1635, 'welcome.txt', 6, 5, 0, 1655711000, 1655711000, 0, 0, '2e0bafb415632876cc3abbe7e6729892', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1637, 5, 'appdata_oc9qmek4lhg9/js', 'cab4bca83e8d017afd448a329e7fbd09', 1632, 'js', 2, 1, 0, 1655712151, 1655712151, 0, 0, '62b02519aa8b9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1638, 5, 'appdata_oc9qmek4lhg9/js/core', '4a47537158570058c5b417bde00f33fd', 1637, 'core', 2, 1, 0, 1655711002, 1655711002, 0, 0, '62b02519db02d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1639, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js', 'a6dcd6b46bb2b7c309d25f113295cb31', 1638, 'merged-template-prepend.js', 7, 3, 11942, 1655711002, 1655711002, 0, 0, '6a27cd0b7fdf6487d837c15d92331218', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1640, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js.deps', '81983c0fc9b4a4f6e14e78eba17f4705', 1638, 'merged-template-prepend.js.deps', 8, 3, 418, 1655711002, 1655711002, 0, 0, 'b93f01e8b6bdbd71e570da267915f399', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1641, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js.gzip', '44542213933979e1597b20932d321222', 1638, 'merged-template-prepend.js.gzip', 9, 3, 3054, 1655711002, 1655711002, 0, 0, '60b6bcc0fbca811d529ac17d78411a98', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1642, 5, 'appdata_oc9qmek4lhg9/css', '629e75d81f195aab916e0c205108be97', 1632, 'css', 2, 1, 0, 1655712151, 1655712151, 0, 0, '62b025859aca7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1643, 5, 'appdata_oc9qmek4lhg9/css/icons', 'cb6d9ea15b13fda1bad5619695cc8073', 1642, 'icons', 2, 1, 0, 1655711128, 1655711128, 0, 0, '62b02585d5e8a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1644, 7, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 1634, 'cache', 2, 1, 0, 1655711116, 1655711116, 0, 0, '62b0258ce985f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1645, 5, 'appdata_oc9qmek4lhg9/css/core', 'e7dd2651c4000e7b85666bc4fde0eae4', 1642, 'core', 2, 1, 0, 1655711129, 1655711129, 0, 0, '62b025976347a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1646, 5, 'appdata_oc9qmek4lhg9/css/icons/icons-vars.css', '86729f00b5eaeb30e15e8f8009cfa904', 1643, 'icons-vars.css', 10, 5, 118983, 1655712152, 1655712152, 0, 0, 'e6b6299d9dc357e03dbdb8f00e2d31be', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1647, 5, 'appdata_oc9qmek4lhg9/css/icons/icons-list.template', '4f709ce19665e79ed79ac863ffa7ab39', 1643, 'icons-list.template', 8, 3, 15618, 1655712152, 1655712152, 0, 0, 'c420d16e2469d7b6e0c11b27fc3a1d1e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1648, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css', '3246a727ac112ac3998a6f7af01f30a6', 1645, 'a86f-006d-server.css', 10, 5, 139023, 1655711128, 1655711128, 0, 0, '0901ac164c27972b21ec9695b5996bc8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1649, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css.deps', 'debfeaedab9cf2d0d95d657fa5327853', 1645, 'a86f-006d-server.css.deps', 8, 3, 1361, 1655711128, 1655711128, 0, 0, 'f2f90276dcd08a16759dca5e20c0af2b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1650, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css.gzip', '2ae4a37fb6d457432aad4a3bebed0e63', 1645, 'a86f-006d-server.css.gzip', 9, 3, 19854, 1655711128, 1655711128, 0, 0, 'fc7974b6c5395ff19632ffa14e78c7e0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1651, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css', '17be9874d8e73b7b324d3394cd39b8d3', 1645, 'a86f-006d-css-variables.css', 10, 5, 1820, 1655711129, 1655711129, 0, 0, '7f603438f71c0ab20724944d701eb2e1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1652, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css.deps', 'bbc7783b191e68664a449153e54b5b3a', 1645, 'a86f-006d-css-variables.css.deps', 8, 3, 305, 1655711129, 1655711129, 0, 0, '2a0d84cbb45dd4d8657fe0bd60cb54b5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1653, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css.gzip', 'ea447a15480deb3fdcd3e5e09e65e0e3', 1645, 'a86f-006d-css-variables.css.gzip', 9, 3, 692, 1655711129, 1655711129, 0, 0, 'f41a81ab7de225b1e7a322bb297127bf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1654, 5, 'appdata_oc9qmek4lhg9/css/dashboard', '690b5e89585089c02188a012f3903891', 1642, 'dashboard', 2, 1, 0, 1655711130, 1655711130, 0, 0, '62b025999e4e1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1655, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css', 'ada3e833c4a6645710817485a55f58e5', 1654, '1c83-006d-dashboard.css', 10, 5, 2070, 1655711129, 1655711129, 0, 0, '4f2d02303fe26f6f00b53a046777cc80', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1656, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css.deps', '24d119802670921be42d7f4223ec45e9', 1654, '1c83-006d-dashboard.css.deps', 8, 3, 312, 1655711129, 1655711129, 0, 0, '709c97e5b3ecebf62fdf8b8c4dcda274', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1657, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css.gzip', 'e548733472031ffe34a7e302cef44f74', 1654, '1c83-006d-dashboard.css.gzip', 9, 3, 602, 1655711130, 1655711130, 0, 0, '0b1fd0621395d714c1c0a588a4e4c470', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1658, 5, 'appdata_oc9qmek4lhg9/css/activity', '12973f6b0a0925acde8442ce4cb2f29e', 1642, 'activity', 2, 1, 0, 1655711134, 1655711134, 0, 0, '62b0259a3ee36', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1659, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css', '6c0d98af625514cc1c91de223b8e19f9', 1658, '6e52-006d-style.css', 10, 5, 3610, 1655711132, 1655711132, 0, 0, '1dca959e8016815a3db8e8aff10cd05d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1660, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css.deps', 'f3281e91543ebe254efa8386f4feb5b1', 1658, '6e52-006d-style.css.deps', 8, 3, 307, 1655711134, 1655711134, 0, 0, '3c7443cc1378dfe1425c7730caa8b0b1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1661, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css.gzip', '41d2b9981f2b804c77938b12c40dfddc', 1658, '6e52-006d-style.css.gzip', 9, 3, 1192, 1655711134, 1655711134, 0, 0, 'aa8e2b5978cb6422c35bfd420a5f264d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1662, 5, 'appdata_oc9qmek4lhg9/css/user_status', 'defd30c4d6251c0b68df81d144b4626c', 1642, 'user_status', 2, 1, 0, 1655711136, 1655711136, 0, 0, '62b0259f8757c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1663, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css', '7c9d3189d6792980a61531eb711f8a59', 1662, '1bf6-006d-user-status-menu.css', 10, 5, 1039, 1655711136, 1655711136, 0, 0, '742df6bc56eebe368ce3e324d18f9a3c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1664, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css.deps', 'e8be7c1fc0d4d97f41a79d810a539c6c', 1662, '1bf6-006d-user-status-menu.css.deps', 8, 3, 321, 1655711136, 1655711136, 0, 0, '26ed1dca52d72ad0cfd091554c133b17', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1665, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css.gzip', 'cc1ac6d35eb284caa8fc3202b6fb206e', 1662, '1bf6-006d-user-status-menu.css.gzip', 9, 3, 240, 1655711136, 1655711136, 0, 0, '665861f70b201d04d0acff92125f1865', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1666, 5, 'appdata_oc9qmek4lhg9/avatar', '2a2df8da5204dfb0ff61e8fb486bdf59', 1632, 'avatar', 2, 1, 0, 1655713138, 1655713138, 0, 0, '62b025a3b33b1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1667, 5, 'appdata_oc9qmek4lhg9/avatar/admin', 'dad4e234ff497cc01416aee6a8750d50', 1666, 'admin', 2, 1, 0, 1655711188, 1655711188, 0, 0, '62b025a408c1e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1668, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.png', '67486ff38163ededa48ab15b869dc724', 1667, 'avatar.png', 12, 11, 15671, 1655711140, 1655711140, 0, 0, 'fb6693772d0efb2f602cf29a07b108e2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1669, 5, 'appdata_oc9qmek4lhg9/avatar/admin/generated', 'a16828c2da991d156e85506cee669e0c', 1667, 'generated', 8, 3, 0, 1655711141, 1655711141, 0, 0, 'a352fe90ea019d53fe00276542a79a88', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1670, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.64.png', 'd9cd23ea7dcd9dcfaff105562f2621bd', 1667, 'avatar.64.png', 12, 11, 809, 1655711141, 1655711141, 0, 0, 'ddac9dac3db07b99f97e92fedd311f21', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1671, 5, 'appdata_oc9qmek4lhg9/css/settings', 'a7c6343c61e9caa86efdcef7f0522e4d', 1642, 'settings', 2, 1, 0, 1655711163, 1655711163, 0, 0, '62b025b77c092', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1672, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css', 'c0a220e225cff561309bc47fac0d8749', 1671, 'ca9f-006d-settings.css', 10, 5, 33292, 1655711162, 1655711162, 0, 0, 'cddc44eaa661ea77e2b88f8c0db9d43c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1673, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css.deps', '2a09c2ad11491700a5f0272d8b7133df', 1671, 'ca9f-006d-settings.css.deps', 8, 3, 310, 1655711162, 1655711162, 0, 0, '544e612c4d6635d493d9d12ff6140075', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1674, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css.gzip', '8278c9be837689f80403b5d786eb4c84', 1671, 'ca9f-006d-settings.css.gzip', 9, 3, 6136, 1655711163, 1655711163, 0, 0, '5bfe143bdcaecbf37c5b8b183e3ff46e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1675, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.512.png', '9352ad353f841e869b2b2d3e979cbe69', 1667, 'avatar.512.png', 12, 11, 6550, 1655711188, 1655711188, 0, 0, '664e839b051166a7523a2fd3b4964960', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1676, 5, 'appdata_oc9qmek4lhg9/js/files', 'b65733760d4bb03659edcb9adc350c69', 1637, 'files', 2, 1, 0, 1655712151, 1655712151, 0, 0, '62b029972c6cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1677, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js', '134fc99518cbfb4c6ccae53e62d3b9c4', 1676, 'merged-index.js', 7, 3, 421387, 1655712151, 1655712151, 0, 0, '846b8d9f60fce0633857e402eb8c3fdc', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1678, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js.deps', 'f4cd040ffeba2026c906826d5177e08a', 1676, 'merged-index.js.deps', 8, 3, 3357, 1655712151, 1655712151, 0, 0, '06726c727b861fd8fa64764a567b0708', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1679, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js.gzip', 'da4549a507c3eac3d7293b523ef5177e', 1676, 'merged-index.js.gzip', 9, 3, 95488, 1655712151, 1655712151, 0, 0, '41b67cab28948a91ca2fbfdf07f264c6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1680, 5, 'appdata_oc9qmek4lhg9/css/files', '26009f37b84cc337cff6168fc446ca72', 1642, 'files', 2, 1, 0, 1655712151, 1655712151, 0, 0, '62b0299776cbc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1681, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css', '161f2c58e30ced8c9f4f9edb088a4744', 1680, 'f244-006d-merged.css', 10, 5, 30015, 1655712151, 1655712151, 0, 0, '272ff9b98b109debe4f0b9ad0c5f931b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1682, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css.deps', '6633109c60f86ea4d47fb0be2ace4748', 1680, 'f244-006d-merged.css.deps', 8, 3, 824, 1655712151, 1655712151, 0, 0, '161144629a19362c0f04ee88ccd6c392', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1683, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css.gzip', 'c6a25d4ba21e43fc6cae311cf3f62e77', 1680, 'f244-006d-merged.css.gzip', 9, 3, 5872, 1655712151, 1655712151, 0, 0, '10f7829d86615c8a740181c2b0cca6f6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1684, 5, 'appdata_oc9qmek4lhg9/css/files_sharing', '4c1dbfd7fe39de7f30ee6f1d94d3c568', 1642, 'files_sharing', 2, 1, 0, 1655712152, 1655712152, 0, 0, '62b02997e791c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1685, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css', '4c2a59ff673f8a8604f4e7fc1d5dea55', 1684, '6328-006d-icons.css', 10, 5, 174, 1655712152, 1655712152, 0, 0, '97bc9446789e40cf1cf70fb1f3f7ac1f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1686, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css.deps', '1650daef03c336f01791b5416b27c0b0', 1684, '6328-006d-icons.css.deps', 8, 3, 312, 1655712152, 1655712152, 0, 0, 'd7ee24d95f238ec605ba99eb7b4dd803', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1687, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css.gzip', '5f0b6f6d87a50687d320036f46c8f842', 1684, '6328-006d-icons.css.gzip', 9, 3, 102, 1655712152, 1655712152, 0, 0, '6e9aee10f71d980dd1983ff6acec3f85', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1700, 5, 'appdata_oc9qmek4lhg9/preview', 'bc0414ac4c3d1d6516b9293cd29b1588', 1632, 'preview', 2, 1, 0, 1655713035, 1655713035, 0, 0, '62b02d0b12d43', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1710, 5, 'appdata_oc9qmek4lhg9/avatar/user', '2e82293b400085a3e39a74b9f39a6696', 1666, 'user', 2, 1, 0, 1655713139, 1655713139, 0, 0, '62b02d72cb8e1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1711, 5, 'appdata_oc9qmek4lhg9/avatar/user/avatar.png', 'ec1aa28c6c3c26367b29074c7587c059', 1710, 'avatar.png', 12, 11, 10874, 1655713139, 1655713139, 0, 0, '7ed9cc5ca11bdf6ea7f3511bb9764ed9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1712, 5, 'appdata_oc9qmek4lhg9/avatar/user/generated', 'df435c825eba39601b65a0d868a8e50a', 1710, 'generated', 8, 3, 0, 1655713139, 1655713139, 0, 0, 'e0a0864fa4036de39a66c52bc30b9b0f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1713, 8, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 0, 1655713140, 1655713140, 0, 0, '62b02d74a167a', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1714, 7, 'files/next list (1) (2).odt', 'c5359d64a860576cdb38fe56c0f580a6', 1635, 'next list (1) (2).odt', 23, 3, 111832, 1655226348, 1655226348, 0, 0, '3a706da0e4f9e07ef00e3c8ace01ab64', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1715, 5, 'appdata_oc9qmek4lhg9/preview/7', '9de36673ced022f71a5bea577cf6f0fa', 1700, '7', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecae984f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1716, 5, 'appdata_oc9qmek4lhg9/preview/7/9', '58d61dc293edc107715d10ef188e3ccd', 1715, '9', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecae3686', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1717, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8', '96a5dfc3db4ceacce306498a0ee87b2f', 1716, '8', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecadd47e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1718, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8/e', '358ab8ea5797fac9f5567c98f1c13850', 1717, 'e', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecad734f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1719, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8/e/d', '051739f3de3dbf348b1050be8d19c34c', 1718, 'd', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecacf0be', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1720, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8/e/d/7', '814ca7c064a5e52d77a5e9376843f7fc', 1719, '7', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecac8e6a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1721, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8/e/d/7/d', '370b81f38713a88b17ccea79ad732526', 1720, 'd', 2, 1, -1, 1655713482, 1655713482, 0, 0, '62b02ecaa02ab', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1722, 5, 'appdata_oc9qmek4lhg9/preview/7/9/8/e/d/7/d/1714', '15d596f7425f21dc55ee6b4cbf52b081', 1721, '1714', 2, 1, 0, 1655713482, 1655713482, 0, 0, '62b02eca99423', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1723, 5, 'appdata_oc9qmek4lhg9/theming', '0b114a336a9c69996de35c3ab9602164', 1632, 'theming', 2, 1, 0, 1655713483, 1655713483, 0, 0, '62b02ecbbfb39', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1724, 5, 'appdata_oc9qmek4lhg9/theming/0', 'ab575e572fe410705fdcd4725400042e', 1723, '0', 2, 1, 0, 1655713483, 1655713483, 0, 0, '62b02ecbd26fe', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1725, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_x-office-document.svg', '758b3b9aeccb275a2894bbb02d0abb60', 1724, 'icon-core-filetypes_x-office-document.svg', 13, 11, 295, 1655713483, 1655713483, 0, 0, '11a2bf62a220c5eda3fd0ccb6ae2d47d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1726, 5, 'appdata_oc9qmek4lhg9/appstore/apps.json', 'cd93ccd4b1eaae560da1f739f0dcbcad', 1633, 'apps.json', 4, 3, 2087725, 1655713541, 1655713541, 0, 0, 'dc0519655286f1b9095f5abbc3526d13', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1727, 5, 'appdata_oc9qmek4lhg9/appstore/categories.json', '824a0389738e20d77a751f751e6baa1d', 1633, 'categories.json', 4, 3, 141893, 1655713570, 1655713570, 0, 0, '88e9796350b33be502e9acfe9ac91d78', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1728, 7, 'files_encryption', '171a8829416be21834bef1b79079dde8', 1634, 'files_encryption', 2, 1, 0, 1655713673, 1655713673, 0, 0, '62b02f88d2122', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1729, 7, 'files_encryption/keys', 'c2d6b95afad8b0ebffae4702fceab715', 1728, 'keys', 2, 1, 0, 1655713673, 1655713673, 0, 0, '62b02f890bb3b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1730, 7, 'files_encryption/keys/files', '9b2997f0595af58997b37b050b6966a7', 1729, 'files', 2, 1, 0, 1655713673, 1655713673, 0, 0, '62b02f89202e6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1731, 7, 'files_encryption/keys/files/next list (1) (1).odt', '4eee2edc5fb6c3549f81a5ff8ad4a277', 1730, 'next list (1) (1).odt', 2, 1, -1, 1655713673, 1655713673, 0, 0, '62b02f8934f55', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1732, 7, 'files_encryption/keys/files/next list (1) (1).odt/OC_DEFAULT_MODULE', 'd49553db90d3b777a2135de006166a9d', 1731, 'OC_DEFAULT_MODULE', 2, 1, -1, 1655713673, 1655713673, 0, 0, '62b02f893af61', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1733, 7, 'files/next list (1) (1).odt', 'c81ae0a760777d970deb01697633e0f4', 1635, 'next list (1) (1).odt', 23, 3, 111832, 1655226319, 1655226319, 1, 0, 'bbef7ab250810a67e5f4f69c708770be', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1734, 5, 'appdata_oc9qmek4lhg9/preview/4', '6d386a7941433451c36137e8b42737cd', 1700, '4', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8ab5967', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1735, 5, 'appdata_oc9qmek4lhg9/preview/4/f', '218fa69032752086f94767142ccf879f', 1734, 'f', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8aa54ad', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1736, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a', '65d8295acd84865017e73866cd36e353', 1735, 'a', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8a94ff8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1737, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a/5', '097061690bdaf0b4b76437029590c97f', 1736, '5', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8a88c6c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1738, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a/5/3', '4adcbf41691529f2fad70191a529ff58', 1737, '3', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8a76724', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1739, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a/5/3/b', '87e0f78c3b44915fc3811f52fc684dc5', 1738, 'b', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8a6a371', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1740, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a/5/3/b/e', '91b550996462828b1c130b35bc7e6c44', 1739, 'e', 2, 1, -1, 1655713674, 1655713674, 0, 0, '62b02f8a24f7c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1741, 5, 'appdata_oc9qmek4lhg9/preview/4/f/a/5/3/b/e/1733', '4bdcd472c0d8ea306a94f63e9352f51e', 1740, '1733', 2, 1, 0, 1655713674, 1655713674, 0, 0, '62b02f8a1527b', 31, '', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for oc_filecache_extended
-- ----------------------------
DROP TABLE IF EXISTS `oc_filecache_extended`;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) unsigned NOT NULL,
  `metadata_etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT 0,
  `upload_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_filecache_extended
-- ----------------------------
BEGIN;
INSERT INTO `oc_filecache_extended` VALUES (110, NULL, 0, 1647000819);
INSERT INTO `oc_filecache_extended` VALUES (199, NULL, 0, 1650922005);
INSERT INTO `oc_filecache_extended` VALUES (217, NULL, 0, 1650925699);
INSERT INTO `oc_filecache_extended` VALUES (252, NULL, 0, 1653751553);
INSERT INTO `oc_filecache_extended` VALUES (260, NULL, 0, 1653751900);
INSERT INTO `oc_filecache_extended` VALUES (264, NULL, 0, 1653752022);
INSERT INTO `oc_filecache_extended` VALUES (272, NULL, 0, 1653752075);
INSERT INTO `oc_filecache_extended` VALUES (277, NULL, 0, 1653752166);
INSERT INTO `oc_filecache_extended` VALUES (283, NULL, 0, 1653753449);
INSERT INTO `oc_filecache_extended` VALUES (289, NULL, 0, 1653753497);
INSERT INTO `oc_filecache_extended` VALUES (328, NULL, 0, 1653921703);
INSERT INTO `oc_filecache_extended` VALUES (386, NULL, 0, 1653922492);
INSERT INTO `oc_filecache_extended` VALUES (396, NULL, 0, 1653922578);
INSERT INTO `oc_filecache_extended` VALUES (400, NULL, 0, 1653922597);
INSERT INTO `oc_filecache_extended` VALUES (431, NULL, 0, 1653922960);
INSERT INTO `oc_filecache_extended` VALUES (432, NULL, 0, 1653923067);
INSERT INTO `oc_filecache_extended` VALUES (433, NULL, 0, 1653923109);
INSERT INTO `oc_filecache_extended` VALUES (439, NULL, 0, 1653923140);
INSERT INTO `oc_filecache_extended` VALUES (440, NULL, 0, 1653923242);
INSERT INTO `oc_filecache_extended` VALUES (452, NULL, 0, 1653945445);
INSERT INTO `oc_filecache_extended` VALUES (469, NULL, 0, 1653945677);
INSERT INTO `oc_filecache_extended` VALUES (479, NULL, 0, 1653946380);
INSERT INTO `oc_filecache_extended` VALUES (494, NULL, 0, 1653946413);
INSERT INTO `oc_filecache_extended` VALUES (495, NULL, 0, 1653946664);
INSERT INTO `oc_filecache_extended` VALUES (509, NULL, 0, 1653946684);
INSERT INTO `oc_filecache_extended` VALUES (534, NULL, 0, 1653946754);
INSERT INTO `oc_filecache_extended` VALUES (535, NULL, 0, 1653946755);
INSERT INTO `oc_filecache_extended` VALUES (536, NULL, 0, 1653946756);
INSERT INTO `oc_filecache_extended` VALUES (537, NULL, 0, 1653946756);
INSERT INTO `oc_filecache_extended` VALUES (538, NULL, 0, 1653946757);
INSERT INTO `oc_filecache_extended` VALUES (539, NULL, 0, 1653946758);
INSERT INTO `oc_filecache_extended` VALUES (540, NULL, 0, 1653946758);
INSERT INTO `oc_filecache_extended` VALUES (541, NULL, 0, 1653946759);
INSERT INTO `oc_filecache_extended` VALUES (542, NULL, 0, 1653946760);
INSERT INTO `oc_filecache_extended` VALUES (545, NULL, 0, 1653946761);
INSERT INTO `oc_filecache_extended` VALUES (607, NULL, 0, 1653643439);
INSERT INTO `oc_filecache_extended` VALUES (608, NULL, 0, 1653643440);
INSERT INTO `oc_filecache_extended` VALUES (609, NULL, 0, 1653643440);
INSERT INTO `oc_filecache_extended` VALUES (610, NULL, 0, 1653643441);
INSERT INTO `oc_filecache_extended` VALUES (612, NULL, 0, 1653643573);
INSERT INTO `oc_filecache_extended` VALUES (613, NULL, 0, 1653643574);
INSERT INTO `oc_filecache_extended` VALUES (614, NULL, 0, 1653643574);
INSERT INTO `oc_filecache_extended` VALUES (615, NULL, 0, 1653643574);
INSERT INTO `oc_filecache_extended` VALUES (619, NULL, 0, 1653644243);
INSERT INTO `oc_filecache_extended` VALUES (620, NULL, 0, 1653644244);
INSERT INTO `oc_filecache_extended` VALUES (621, NULL, 0, 1653644244);
INSERT INTO `oc_filecache_extended` VALUES (622, NULL, 0, 1653644245);
INSERT INTO `oc_filecache_extended` VALUES (630, NULL, 0, 1653646301);
INSERT INTO `oc_filecache_extended` VALUES (638, NULL, 0, 1653646818);
INSERT INTO `oc_filecache_extended` VALUES (643, NULL, 0, 1653647210);
INSERT INTO `oc_filecache_extended` VALUES (644, NULL, 0, 1653647211);
INSERT INTO `oc_filecache_extended` VALUES (645, NULL, 0, 1653647211);
INSERT INTO `oc_filecache_extended` VALUES (647, NULL, 0, 1653647227);
INSERT INTO `oc_filecache_extended` VALUES (648, NULL, 0, 1653647228);
INSERT INTO `oc_filecache_extended` VALUES (649, NULL, 0, 1653647228);
INSERT INTO `oc_filecache_extended` VALUES (650, NULL, 0, 1653647229);
INSERT INTO `oc_filecache_extended` VALUES (686, NULL, 0, 1654035865);
INSERT INTO `oc_filecache_extended` VALUES (689, NULL, 0, 1654108088);
INSERT INTO `oc_filecache_extended` VALUES (772, NULL, 0, 1653653817);
INSERT INTO `oc_filecache_extended` VALUES (777, NULL, 0, 1653653821);
INSERT INTO `oc_filecache_extended` VALUES (787, NULL, 0, 1653720751);
INSERT INTO `oc_filecache_extended` VALUES (796, NULL, 0, 1653720805);
INSERT INTO `oc_filecache_extended` VALUES (797, NULL, 0, 1653720899);
INSERT INTO `oc_filecache_extended` VALUES (798, NULL, 0, 1653720966);
INSERT INTO `oc_filecache_extended` VALUES (799, NULL, 0, 1653721446);
INSERT INTO `oc_filecache_extended` VALUES (806, NULL, 0, 1653723527);
INSERT INTO `oc_filecache_extended` VALUES (807, NULL, 0, 1653723528);
INSERT INTO `oc_filecache_extended` VALUES (810, NULL, 0, 1653721562);
INSERT INTO `oc_filecache_extended` VALUES (811, NULL, 0, 1653721563);
INSERT INTO `oc_filecache_extended` VALUES (814, NULL, 0, 1653721565);
INSERT INTO `oc_filecache_extended` VALUES (836, NULL, 0, 1653723465);
INSERT INTO `oc_filecache_extended` VALUES (837, NULL, 0, 1653723515);
INSERT INTO `oc_filecache_extended` VALUES (852, NULL, 0, 1653725430);
INSERT INTO `oc_filecache_extended` VALUES (862, NULL, 0, 1653725545);
INSERT INTO `oc_filecache_extended` VALUES (863, NULL, 0, 1653725566);
INSERT INTO `oc_filecache_extended` VALUES (957, NULL, 0, 1653742615);
INSERT INTO `oc_filecache_extended` VALUES (972, NULL, 0, 1653743163);
INSERT INTO `oc_filecache_extended` VALUES (973, NULL, 0, 1653743254);
INSERT INTO `oc_filecache_extended` VALUES (990, NULL, 0, 1653743574);
INSERT INTO `oc_filecache_extended` VALUES (991, NULL, 0, 1653743629);
INSERT INTO `oc_filecache_extended` VALUES (997, NULL, 0, 1653743723);
INSERT INTO `oc_filecache_extended` VALUES (1003, NULL, 0, 1653743790);
INSERT INTO `oc_filecache_extended` VALUES (1009, NULL, 0, 1653743987);
INSERT INTO `oc_filecache_extended` VALUES (1010, NULL, 0, 1653743999);
INSERT INTO `oc_filecache_extended` VALUES (1025, NULL, 0, 1653744049);
INSERT INTO `oc_filecache_extended` VALUES (1031, NULL, 0, 1653744078);
INSERT INTO `oc_filecache_extended` VALUES (1072, NULL, 0, 1654294224);
INSERT INTO `oc_filecache_extended` VALUES (1078, NULL, 0, 1654295257);
INSERT INTO `oc_filecache_extended` VALUES (1101, NULL, 0, 1654435961);
INSERT INTO `oc_filecache_extended` VALUES (1153, NULL, 0, 1654438331);
INSERT INTO `oc_filecache_extended` VALUES (1156, NULL, 0, 1654445472);
INSERT INTO `oc_filecache_extended` VALUES (1159, NULL, 0, 1654445754);
INSERT INTO `oc_filecache_extended` VALUES (1187, NULL, 0, 1655069790);
INSERT INTO `oc_filecache_extended` VALUES (1192, NULL, 0, 1655071122);
INSERT INTO `oc_filecache_extended` VALUES (1203, NULL, 0, 1655071538);
INSERT INTO `oc_filecache_extended` VALUES (1219, NULL, 0, 1655219597);
INSERT INTO `oc_filecache_extended` VALUES (1222, NULL, 0, 1655220216);
INSERT INTO `oc_filecache_extended` VALUES (1234, NULL, 0, 1655220262);
INSERT INTO `oc_filecache_extended` VALUES (1237, NULL, 0, 1655220286);
INSERT INTO `oc_filecache_extended` VALUES (1240, NULL, 0, 1655220313);
INSERT INTO `oc_filecache_extended` VALUES (1251, NULL, 0, 1655222034);
INSERT INTO `oc_filecache_extended` VALUES (1254, NULL, 0, 1655222217);
INSERT INTO `oc_filecache_extended` VALUES (1257, NULL, 0, 1655222727);
INSERT INTO `oc_filecache_extended` VALUES (1268, NULL, 0, 1655222759);
INSERT INTO `oc_filecache_extended` VALUES (1279, NULL, 0, 1655223274);
INSERT INTO `oc_filecache_extended` VALUES (1282, NULL, 0, 1655223332);
INSERT INTO `oc_filecache_extended` VALUES (1325, NULL, 0, 1655224992);
INSERT INTO `oc_filecache_extended` VALUES (1336, NULL, 0, 1655225087);
INSERT INTO `oc_filecache_extended` VALUES (1339, NULL, 0, 1655225193);
INSERT INTO `oc_filecache_extended` VALUES (1342, NULL, 0, 1655225696);
INSERT INTO `oc_filecache_extended` VALUES (1345, NULL, 0, 1655225797);
INSERT INTO `oc_filecache_extended` VALUES (1348, NULL, 0, 1655226026);
INSERT INTO `oc_filecache_extended` VALUES (1351, NULL, 0, 1655226198);
INSERT INTO `oc_filecache_extended` VALUES (1405, NULL, 0, 1655390921);
INSERT INTO `oc_filecache_extended` VALUES (1408, NULL, 0, 1655390928);
INSERT INTO `oc_filecache_extended` VALUES (1411, NULL, 0, 1655390931);
INSERT INTO `oc_filecache_extended` VALUES (1414, NULL, 0, 1655390933);
INSERT INTO `oc_filecache_extended` VALUES (1417, NULL, 0, 1655390938);
INSERT INTO `oc_filecache_extended` VALUES (1420, NULL, 0, 1655390944);
INSERT INTO `oc_filecache_extended` VALUES (1423, NULL, 0, 1655390946);
INSERT INTO `oc_filecache_extended` VALUES (1443, NULL, 0, 1655390959);
INSERT INTO `oc_filecache_extended` VALUES (1446, NULL, 0, 1655390975);
INSERT INTO `oc_filecache_extended` VALUES (1449, NULL, 0, 1655390976);
INSERT INTO `oc_filecache_extended` VALUES (1452, NULL, 0, 1655390978);
INSERT INTO `oc_filecache_extended` VALUES (1455, NULL, 0, 1655390981);
INSERT INTO `oc_filecache_extended` VALUES (1458, NULL, 0, 1655390984);
INSERT INTO `oc_filecache_extended` VALUES (1461, NULL, 0, 1655390988);
INSERT INTO `oc_filecache_extended` VALUES (1471, NULL, 0, 1655391168);
INSERT INTO `oc_filecache_extended` VALUES (1474, NULL, 0, 1655391197);
INSERT INTO `oc_filecache_extended` VALUES (1477, NULL, 0, 1655391307);
INSERT INTO `oc_filecache_extended` VALUES (1523, NULL, 0, 1655391403);
INSERT INTO `oc_filecache_extended` VALUES (1526, NULL, 0, 1655391406);
INSERT INTO `oc_filecache_extended` VALUES (1714, NULL, 0, 1655713482);
INSERT INTO `oc_filecache_extended` VALUES (1733, NULL, 0, 1655713673);
COMMIT;

-- ----------------------------
-- Table structure for oc_files_trash
-- ----------------------------
DROP TABLE IF EXISTS `oc_files_trash`;
CREATE TABLE `oc_files_trash` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_files_trash
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_flow_checks
-- ----------------------------
DROP TABLE IF EXISTS `oc_flow_checks`;
CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `operator` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_flow_checks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_flow_operations
-- ----------------------------
DROP TABLE IF EXISTS `oc_flow_operations`;
CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_bin DEFAULT '',
  `checks` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `entity` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT 'OCA\\WorkflowEngine\\Entity\\File',
  `events` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_flow_operations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_flow_operations_scope
-- ----------------------------
DROP TABLE IF EXISTS `oc_flow_operations_scope`;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `value` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_flow_operations_scope
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_group_admin
-- ----------------------------
DROP TABLE IF EXISTS `oc_group_admin`;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_group_admin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_group_user
-- ----------------------------
DROP TABLE IF EXISTS `oc_group_user`;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_group_user
-- ----------------------------
BEGIN;
INSERT INTO `oc_group_user` VALUES ('admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for oc_groups
-- ----------------------------
DROP TABLE IF EXISTS `oc_groups`;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_groups
-- ----------------------------
BEGIN;
INSERT INTO `oc_groups` VALUES ('admin', 'admin');
INSERT INTO `oc_groups` VALUES ('user', 'user');
COMMIT;

-- ----------------------------
-- Table structure for oc_jobs
-- ----------------------------
DROP TABLE IF EXISTS `oc_jobs`;
CREATE TABLE `oc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT 0,
  `last_checked` int(11) DEFAULT 0,
  `reserved_at` int(11) DEFAULT 0,
  `execution_duration` int(11) DEFAULT 0,
  `argument_hash` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `time_sensitive` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`),
  KEY `job_lastcheck_reserved` (`last_checked`,`reserved_at`),
  KEY `job_argument_hash` (`class`,`argument_hash`),
  KEY `jobs_time_sensitive` (`time_sensitive`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_jobs
-- ----------------------------
BEGIN;
INSERT INTO `oc_jobs` VALUES (1, 'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob', 'null', 1646952985, 1646952985, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (2, 'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob', 'null', 1655710347, 1655713429, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (3, 'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob', 'null', 1647000106, 1647000106, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (4, 'OCA\\DAV\\BackgroundJob\\EventReminderJob', 'null', 1655713441, 1655713441, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (5, 'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob', 'null', 1655710572, 1655713446, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (6, 'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash', 'null', 1655713469, 1655713469, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (7, 'OCA\\UpdateNotification\\Notification\\BackgroundJob', 'null', 1655703059, 1655713479, 0, 25, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (8, 'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions', 'null', 1655713080, 1655713612, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (9, 'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate', 'null', 1655709588, 1655713640, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (10, 'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob', 'null', 1647000607, 1647000607, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (11, 'OCA\\Files_Sharing\\DeleteOrphanedSharesJob', 'null', 1655713205, 1655713653, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (12, 'OCA\\Files_Sharing\\ExpireSharesJob', 'null', 1647000723, 1647000723, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (13, 'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob', 'null', 1655709643, 1655713657, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (14, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1655398527, 1655752915, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (15, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 1647000741, 1647000741, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (16, 'OCA\\Activity\\BackgroundJob\\DigestMail', 'null', 1655399339, 1655752916, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (17, 'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob', 'null', 1655713662, 1655713662, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (18, 'OCA\\Files\\BackgroundJob\\ScanFiles', 'null', 1655713245, 1655713665, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (19, 'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems', 'null', 1655713677, 1655713677, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (20, 'OCA\\Files\\BackgroundJob\\CleanupFileLocks', 'null', 1655713699, 1655713699, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (21, 'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens', 'null', 1655713411, 1655713726, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (22, 'OCA\\Federation\\SyncJob', 'null', 1655710336, 1655713423, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (23, 'OC\\Log\\Rotate', 'null', 1655713543, 1655713543, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (24, 'OC\\Preview\\BackgroundCleanupJob', 'null', 1655713035, 1655713544, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (25, 'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob', 'null', 1647000806, 1647000806, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (26, 'OCA\\Mail\\BackgroundJob\\CleanupJob', 'null', 1655364475, 1655753547, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (184, 'OCA\\FirstRunWizard\\Notification\\BackgroundJob', '{\"uid\":\"user\"}', 0, 1655754347, 0, 0, 'f5fc75cc9ac39e4bbb52155f37c24a15', 1);
COMMIT;

-- ----------------------------
-- Table structure for oc_known_users
-- ----------------------------
DROP TABLE IF EXISTS `oc_known_users`;
CREATE TABLE `oc_known_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `known_to` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `known_user` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ku_known_to` (`known_to`),
  KEY `ku_known_user` (`known_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_known_users
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_login_flow_v2
-- ----------------------------
DROP TABLE IF EXISTS `oc_login_flow_v2`;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) unsigned NOT NULL,
  `started` smallint(5) unsigned NOT NULL DEFAULT 0,
  `poll_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `public_key` text COLLATE utf8mb4_bin NOT NULL,
  `private_key` text COLLATE utf8mb4_bin NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `server` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `app_password` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_login_flow_v2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_accounts
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_accounts`;
CREATE TABLE `oc_mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_host` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_port` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_host` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_port` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `signature` text COLLATE utf8mb4_bin DEFAULT NULL,
  `last_mailbox_sync` int(11) NOT NULL DEFAULT 0,
  `editor_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT 'plaintext',
  `order` int(11) NOT NULL DEFAULT 1,
  `show_subscribed_only` tinyint(1) DEFAULT 0,
  `personal_namespace` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `drafts_mailbox_id` int(11) DEFAULT NULL,
  `sent_mailbox_id` int(11) DEFAULT NULL,
  `trash_mailbox_id` int(11) DEFAULT NULL,
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_host` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_port` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_ssl_mode` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `provisioning_id` int(11) DEFAULT NULL,
  `signature_above_quote` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_accounts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_aliases
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_aliases`;
CREATE TABLE `oc_mail_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `signature` text COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_aliases
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_attachments
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_attachments`;
CREATE TABLE `oc_mail_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `file_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_attachments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_classifiers
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_classifiers`;
CREATE TABLE `oc_mail_classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `estimator` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `app_version` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `training_set_size` int(11) NOT NULL,
  `validation_set_size` int(11) NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_classifiers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_coll_addresses
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_coll_addresses
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_mailboxes
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_mailboxes`;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `account_id` int(11) NOT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `messages` int(11) NOT NULL,
  `unseen` int(11) NOT NULL,
  `selectable` tinyint(1) DEFAULT 0,
  `special_use` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `sync_new_lock` int(11) DEFAULT NULL,
  `sync_changed_lock` int(11) DEFAULT NULL,
  `sync_vanished_lock` int(11) DEFAULT NULL,
  `sync_new_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_changed_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_vanished_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_in_background` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_22DEBD839B6B5FBA5E237E06` (`account_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_mailboxes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_message_tags
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_message_tags`;
CREATE TABLE `oc_mail_message_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imap_message_id` varchar(1023) COLLATE utf8mb4_bin NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_msg_imap_id_idx` (`imap_message_id`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_message_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_messages
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_messages`;
CREATE TABLE `oc_mail_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL,
  `flag_answered` tinyint(1) DEFAULT 0,
  `flag_deleted` tinyint(1) DEFAULT 0,
  `flag_draft` tinyint(1) DEFAULT 0,
  `flag_flagged` tinyint(1) DEFAULT 0,
  `flag_seen` tinyint(1) DEFAULT 0,
  `flag_forwarded` tinyint(1) DEFAULT 0,
  `flag_junk` tinyint(1) DEFAULT 0,
  `flag_notjunk` tinyint(1) DEFAULT 0,
  `flag_attachments` tinyint(1) DEFAULT 0,
  `flag_important` tinyint(1) DEFAULT 0,
  `structure_analyzed` tinyint(1) DEFAULT 0,
  `preview_text` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `references` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `in_reply_to` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `thread_root_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `flag_mdnsent` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_mb_uid_idx` (`uid`,`mailbox_id`),
  KEY `mail_msg_sent_idx` (`sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_messages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_provisionings
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_provisionings`;
CREATE TABLE `oc_mail_provisionings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provisioning_domain` varchar(63) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email_template` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_user` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_host` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_port` smallint(5) unsigned NOT NULL,
  `imap_ssl_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_user` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_host` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_port` smallint(5) unsigned NOT NULL,
  `smtp_ssl_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_user` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_port` smallint(5) unsigned DEFAULT NULL,
  `sieve_ssl_mode` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `ldap_aliases_provisioning` tinyint(1) DEFAULT 0,
  `ldap_aliases_attribute` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_provsng_dm_idx` (`provisioning_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_provisionings
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_recipients
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_recipients`;
CREATE TABLE `oc_mail_recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_recipients
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_tags
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_tags`;
CREATE TABLE `oc_mail_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `imap_label` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `color` varchar(9) COLLATE utf8mb4_bin DEFAULT '#fff',
  `is_default_tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_tags_usr_lbl_idx` (`user_id`,`imap_label`),
  KEY `mail_msg_tags_usr_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_mail_trusted_senders
-- ----------------------------
DROP TABLE IF EXISTS `oc_mail_trusted_senders`;
CREATE TABLE `oc_mail_trusted_senders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'individual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_trusted_sender_uniq` (`email`,`user_id`),
  KEY `mail_trusted_senders_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mail_trusted_senders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_migrations
-- ----------------------------
DROP TABLE IF EXISTS `oc_migrations`;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_migrations
-- ----------------------------
BEGIN;
INSERT INTO `oc_migrations` VALUES ('activity', '2006Date20170808154933');
INSERT INTO `oc_migrations` VALUES ('activity', '2006Date20170808155040');
INSERT INTO `oc_migrations` VALUES ('activity', '2006Date20170919095939');
INSERT INTO `oc_migrations` VALUES ('activity', '2007Date20181107114613');
INSERT INTO `oc_migrations` VALUES ('activity', '2008Date20181011095117');
INSERT INTO `oc_migrations` VALUES ('activity', '2010Date20190416112817');
INSERT INTO `oc_migrations` VALUES ('activity', '2011Date20201006132544');
INSERT INTO `oc_migrations` VALUES ('activity', '2011Date20201006132545');
INSERT INTO `oc_migrations` VALUES ('activity', '2011Date20201006132546');
INSERT INTO `oc_migrations` VALUES ('activity', '2011Date20201006132547');
INSERT INTO `oc_migrations` VALUES ('activity', '2011Date20201207091915');
INSERT INTO `oc_migrations` VALUES ('calendar', '2040Date20210908101001');
INSERT INTO `oc_migrations` VALUES ('calendar', '3000Date20211109132439');
INSERT INTO `oc_migrations` VALUES ('calendar', '3010Date20220111090252');
INSERT INTO `oc_migrations` VALUES ('contactsinteraction', '010000Date20200304152605');
INSERT INTO `oc_migrations` VALUES ('core', '13000Date20170705121758');
INSERT INTO `oc_migrations` VALUES ('core', '13000Date20170718121200');
INSERT INTO `oc_migrations` VALUES ('core', '13000Date20170814074715');
INSERT INTO `oc_migrations` VALUES ('core', '13000Date20170919121250');
INSERT INTO `oc_migrations` VALUES ('core', '13000Date20170926101637');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180129121024');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180404140050');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180516101403');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180518120534');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180522074438');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180626223656');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180710092004');
INSERT INTO `oc_migrations` VALUES ('core', '14000Date20180712153140');
INSERT INTO `oc_migrations` VALUES ('core', '15000Date20180926101451');
INSERT INTO `oc_migrations` VALUES ('core', '15000Date20181015062942');
INSERT INTO `oc_migrations` VALUES ('core', '15000Date20181029084625');
INSERT INTO `oc_migrations` VALUES ('core', '16000Date20190207141427');
INSERT INTO `oc_migrations` VALUES ('core', '16000Date20190212081545');
INSERT INTO `oc_migrations` VALUES ('core', '16000Date20190427105638');
INSERT INTO `oc_migrations` VALUES ('core', '16000Date20190428150708');
INSERT INTO `oc_migrations` VALUES ('core', '17000Date20190514105811');
INSERT INTO `oc_migrations` VALUES ('core', '18000Date20190920085628');
INSERT INTO `oc_migrations` VALUES ('core', '18000Date20191014105105');
INSERT INTO `oc_migrations` VALUES ('core', '18000Date20191204114856');
INSERT INTO `oc_migrations` VALUES ('core', '19000Date20200211083441');
INSERT INTO `oc_migrations` VALUES ('core', '20000Date20201109081915');
INSERT INTO `oc_migrations` VALUES ('core', '20000Date20201109081918');
INSERT INTO `oc_migrations` VALUES ('core', '20000Date20201109081919');
INSERT INTO `oc_migrations` VALUES ('core', '20000Date20201111081915');
INSERT INTO `oc_migrations` VALUES ('core', '21000Date20201120141228');
INSERT INTO `oc_migrations` VALUES ('core', '21000Date20201202095923');
INSERT INTO `oc_migrations` VALUES ('core', '21000Date20210119195004');
INSERT INTO `oc_migrations` VALUES ('core', '21000Date20210309185126');
INSERT INTO `oc_migrations` VALUES ('core', '21000Date20210309185127');
INSERT INTO `oc_migrations` VALUES ('core', '22000Date20210216080825');
INSERT INTO `oc_migrations` VALUES ('core', '23000Date20210721100600');
INSERT INTO `oc_migrations` VALUES ('core', '23000Date20210906132259');
INSERT INTO `oc_migrations` VALUES ('core', '23000Date20210930122352');
INSERT INTO `oc_migrations` VALUES ('core', '23000Date20211203110726');
INSERT INTO `oc_migrations` VALUES ('core', '23000Date20211213203940');
INSERT INTO `oc_migrations` VALUES ('core', '240000Date20220202150027');
INSERT INTO `oc_migrations` VALUES ('core', '240000Date20220608000100');
INSERT INTO `oc_migrations` VALUES ('core', '240000Date20220608010111');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20211210141942');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20211213081506');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20211213081604');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20211222112246');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20211230140012');
INSERT INTO `oc_migrations` VALUES ('core', '24000Date20220131153041');
INSERT INTO `oc_migrations` VALUES ('dav', '1004Date20170825134824');
INSERT INTO `oc_migrations` VALUES ('dav', '1004Date20170919104507');
INSERT INTO `oc_migrations` VALUES ('dav', '1004Date20170924124212');
INSERT INTO `oc_migrations` VALUES ('dav', '1004Date20170926103422');
INSERT INTO `oc_migrations` VALUES ('dav', '1005Date20180413093149');
INSERT INTO `oc_migrations` VALUES ('dav', '1005Date20180530124431');
INSERT INTO `oc_migrations` VALUES ('dav', '1006Date20180619154313');
INSERT INTO `oc_migrations` VALUES ('dav', '1006Date20180628111625');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181030113700');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181105104826');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181105104833');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181105110300');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181105112049');
INSERT INTO `oc_migrations` VALUES ('dav', '1008Date20181114084440');
INSERT INTO `oc_migrations` VALUES ('dav', '1011Date20190725113607');
INSERT INTO `oc_migrations` VALUES ('dav', '1011Date20190806104428');
INSERT INTO `oc_migrations` VALUES ('dav', '1012Date20190808122342');
INSERT INTO `oc_migrations` VALUES ('dav', '1016Date20201109085907');
INSERT INTO `oc_migrations` VALUES ('dav', '1017Date20210216083742');
INSERT INTO `oc_migrations` VALUES ('dav', '1018Date20210312100735');
INSERT INTO `oc_migrations` VALUES ('federatedfilesharing', '1010Date20200630191755');
INSERT INTO `oc_migrations` VALUES ('federatedfilesharing', '1011Date20201120125158');
INSERT INTO `oc_migrations` VALUES ('federation', '1010Date20200630191302');
INSERT INTO `oc_migrations` VALUES ('files', '11301Date20191205150729');
INSERT INTO `oc_migrations` VALUES ('files_sharing', '11300Date20201120141438');
INSERT INTO `oc_migrations` VALUES ('files_sharing', '21000Date20201223143245');
INSERT INTO `oc_migrations` VALUES ('files_sharing', '22000Date20210216084241');
INSERT INTO `oc_migrations` VALUES ('files_trashbin', '1010Date20200630192639');
INSERT INTO `oc_migrations` VALUES ('mail', '0100Date20180825194217');
INSERT INTO `oc_migrations` VALUES ('mail', '0110Date20180825195812');
INSERT INTO `oc_migrations` VALUES ('mail', '0110Date20180825201241');
INSERT INTO `oc_migrations` VALUES ('mail', '0130Date20190408134101');
INSERT INTO `oc_migrations` VALUES ('mail', '0156Date20190828140357');
INSERT INTO `oc_migrations` VALUES ('mail', '0161Date20190902103559');
INSERT INTO `oc_migrations` VALUES ('mail', '0161Date20190902103701');
INSERT INTO `oc_migrations` VALUES ('mail', '0161Date20190902114635');
INSERT INTO `oc_migrations` VALUES ('mail', '0180Date20190927124207');
INSERT INTO `oc_migrations` VALUES ('mail', '0190Date20191118160843');
INSERT INTO `oc_migrations` VALUES ('mail', '0210Date20191212144925');
INSERT INTO `oc_migrations` VALUES ('mail', '1020Date20191002091034');
INSERT INTO `oc_migrations` VALUES ('mail', '1020Date20191002091035');
INSERT INTO `oc_migrations` VALUES ('mail', '1020Date20200206134751');
INSERT INTO `oc_migrations` VALUES ('mail', '1030Date20200228105714');
INSERT INTO `oc_migrations` VALUES ('mail', '1040Date20200422130220');
INSERT INTO `oc_migrations` VALUES ('mail', '1040Date20200422142920');
INSERT INTO `oc_migrations` VALUES ('mail', '1040Date20200506111214');
INSERT INTO `oc_migrations` VALUES ('mail', '1040Date20200515080614');
INSERT INTO `oc_migrations` VALUES ('mail', '1040Date20200529124657');
INSERT INTO `oc_migrations` VALUES ('mail', '1050Date20200624101359');
INSERT INTO `oc_migrations` VALUES ('mail', '1050Date20200831124954');
INSERT INTO `oc_migrations` VALUES ('mail', '1050Date20200921141700');
INSERT INTO `oc_migrations` VALUES ('mail', '1050Date20200923180030');
INSERT INTO `oc_migrations` VALUES ('mail', '1060Date20201015084952');
INSERT INTO `oc_migrations` VALUES ('mail', '1080Date20201119084820');
INSERT INTO `oc_migrations` VALUES ('mail', '1080Date20210108093802');
INSERT INTO `oc_migrations` VALUES ('mail', '1090Date20210127160127');
INSERT INTO `oc_migrations` VALUES ('mail', '1090Date20210216154409');
INSERT INTO `oc_migrations` VALUES ('mail', '1096Date20210407150016');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210304143008');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210317164707');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210326103929');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210409091311');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210419080523');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210419121734');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210421113423');
INSERT INTO `oc_migrations` VALUES ('mail', '1100Date20210512142306');
INSERT INTO `oc_migrations` VALUES ('mail', '1101Date20210616141806');
INSERT INTO `oc_migrations` VALUES ('mail', '1105Date20210922104324');
INSERT INTO `oc_migrations` VALUES ('mail', '1110Date20210908114229');
INSERT INTO `oc_migrations` VALUES ('mail', '1115Date20211216144446');
INSERT INTO `oc_migrations` VALUES ('oauth2', '010401Date20181207190718');
INSERT INTO `oc_migrations` VALUES ('oauth2', '010402Date20190107124745');
INSERT INTO `oc_migrations` VALUES ('twofactor_backupcodes', '1002Date20170607104347');
INSERT INTO `oc_migrations` VALUES ('twofactor_backupcodes', '1002Date20170607113030');
INSERT INTO `oc_migrations` VALUES ('twofactor_backupcodes', '1002Date20170919123342');
INSERT INTO `oc_migrations` VALUES ('twofactor_backupcodes', '1002Date20170926101419');
INSERT INTO `oc_migrations` VALUES ('twofactor_backupcodes', '1002Date20180821043638');
INSERT INTO `oc_migrations` VALUES ('user_status', '0001Date20200602134824');
INSERT INTO `oc_migrations` VALUES ('user_status', '0002Date20200902144824');
INSERT INTO `oc_migrations` VALUES ('user_status', '1000Date20201111130204');
INSERT INTO `oc_migrations` VALUES ('user_status', '2301Date20210809144824');
INSERT INTO `oc_migrations` VALUES ('workflowengine', '2000Date20190808074233');
INSERT INTO `oc_migrations` VALUES ('workflowengine', '2200Date20210805101925');
COMMIT;

-- ----------------------------
-- Table structure for oc_mimetypes
-- ----------------------------
DROP TABLE IF EXISTS `oc_mimetypes`;
CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mimetypes
-- ----------------------------
BEGIN;
INSERT INTO `oc_mimetypes` VALUES (3, 'application');
INSERT INTO `oc_mimetypes` VALUES (7, 'application/javascript');
INSERT INTO `oc_mimetypes` VALUES (4, 'application/json');
INSERT INTO `oc_mimetypes` VALUES (21, 'application/msword');
INSERT INTO `oc_mimetypes` VALUES (8, 'application/octet-stream');
INSERT INTO `oc_mimetypes` VALUES (18, 'application/pdf');
INSERT INTO `oc_mimetypes` VALUES (20, 'application/vnd.android.package-archive');
INSERT INTO `oc_mimetypes` VALUES (23, 'application/vnd.oasis.opendocument.text');
INSERT INTO `oc_mimetypes` VALUES (27, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
INSERT INTO `oc_mimetypes` VALUES (22, 'application/x-deb');
INSERT INTO `oc_mimetypes` VALUES (9, 'application/x-gzip');
INSERT INTO `oc_mimetypes` VALUES (26, 'application/x-php');
INSERT INTO `oc_mimetypes` VALUES (28, 'application/xml');
INSERT INTO `oc_mimetypes` VALUES (30, 'application/yaml');
INSERT INTO `oc_mimetypes` VALUES (14, 'application/zip');
INSERT INTO `oc_mimetypes` VALUES (1, 'httpd');
INSERT INTO `oc_mimetypes` VALUES (2, 'httpd/unix-directory');
INSERT INTO `oc_mimetypes` VALUES (11, 'image');
INSERT INTO `oc_mimetypes` VALUES (12, 'image/png');
INSERT INTO `oc_mimetypes` VALUES (13, 'image/svg+xml');
INSERT INTO `oc_mimetypes` VALUES (5, 'text');
INSERT INTO `oc_mimetypes` VALUES (10, 'text/css');
INSERT INTO `oc_mimetypes` VALUES (19, 'text/html');
INSERT INTO `oc_mimetypes` VALUES (25, 'text/markdown');
INSERT INTO `oc_mimetypes` VALUES (6, 'text/plain');
INSERT INTO `oc_mimetypes` VALUES (24, 'text/x-h');
INSERT INTO `oc_mimetypes` VALUES (29, 'text/x-shellscript');
INSERT INTO `oc_mimetypes` VALUES (15, 'video');
INSERT INTO `oc_mimetypes` VALUES (16, 'video/mp4');
INSERT INTO `oc_mimetypes` VALUES (17, 'video/x-matroska');
COMMIT;

-- ----------------------------
-- Table structure for oc_mounts
-- ----------------------------
DROP TABLE IF EXISTS `oc_mounts`;
CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage_id` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mount_id` bigint(20) DEFAULT NULL,
  `mount_provider_class` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mounts
-- ----------------------------
BEGIN;
INSERT INTO `oc_mounts` VALUES (22, 7, 1634, 'admin', '/admin/', NULL, 'OC\\Files\\Mount\\LocalHomeMountProvider');
INSERT INTO `oc_mounts` VALUES (25, 8, 1713, 'user', '/user/', NULL, 'OC\\Files\\Mount\\LocalHomeMountProvider');
COMMIT;

-- ----------------------------
-- Table structure for oc_oauth2_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `encrypted_token` varchar(786) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_oauth2_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_oauth2_clients
-- ----------------------------
DROP TABLE IF EXISTS `oc_oauth2_clients`;
CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `client_identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `secret` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_oauth2_clients
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_preferences
-- ----------------------------
DROP TABLE IF EXISTS `oc_preferences`;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`userid`,`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_preferences
-- ----------------------------
BEGIN;
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'configured', 'yes');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_calendar', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_calendar_event', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_calendar_todo', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_comments', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_contacts', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_file_changed', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_file_downloaded', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_group_settings', '1');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_public_links', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_remote_share', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_shared', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_email_systemtags', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_calendar', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_calendar_event', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_calendar_todo', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_comments', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_contacts', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_favorite', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_file_changed', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_file_downloaded', '1');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_file_favorite_changed', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_group_settings', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_personal_settings', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_public_links', '1');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_remote_share', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_security', '1');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_shared', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_notification_systemtags', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_setting_batchtime', '3600');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_setting_self', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'activity', 'notify_setting_selfemail', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'avatar', 'generated', 'true');
INSERT INTO `oc_preferences` VALUES ('admin', 'core', 'lang', 'en');
INSERT INTO `oc_preferences` VALUES ('admin', 'core', 'timezone', 'America/New_York');
INSERT INTO `oc_preferences` VALUES ('admin', 'dashboard', 'firstRun', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'files', 'show_grid', '0');
INSERT INTO `oc_preferences` VALUES ('admin', 'login', 'lastLogin', '1655713660');
INSERT INTO `oc_preferences` VALUES ('admin', 'login_token', 'YCSV4+H4Ih6k8Yib6euHVn2gEYB/G0DP', '1655713660');
INSERT INTO `oc_preferences` VALUES ('user', 'avatar', 'generated', 'true');
INSERT INTO `oc_preferences` VALUES ('user', 'core', 'lang', 'en');
INSERT INTO `oc_preferences` VALUES ('user', 'files', 'quota', 'default');
COMMIT;

-- ----------------------------
-- Table structure for oc_profile_config
-- ----------------------------
DROP TABLE IF EXISTS `oc_profile_config`;
CREATE TABLE `oc_profile_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `config` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_config_user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_profile_config
-- ----------------------------
BEGIN;
INSERT INTO `oc_profile_config` VALUES (1, 'khoa', '{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
INSERT INTO `oc_profile_config` VALUES (2, 'user', '{\"email\":{\"visibility\":\"show_users_only\"},\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
INSERT INTO `oc_profile_config` VALUES (3, 'root', '{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
INSERT INTO `oc_profile_config` VALUES (4, 'admin', '{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
COMMIT;

-- ----------------------------
-- Table structure for oc_properties
-- ----------------------------
DROP TABLE IF EXISTS `oc_properties`;
CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`),
  KEY `properties_pathonly_index` (`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_properties
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_ratelimit_entries
-- ----------------------------
DROP TABLE IF EXISTS `oc_ratelimit_entries`;
CREATE TABLE `oc_ratelimit_entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `delete_after` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratelimit_hash` (`hash`),
  KEY `ratelimit_delete_after` (`delete_after`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_ratelimit_entries
-- ----------------------------
BEGIN;
INSERT INTO `oc_ratelimit_entries` VALUES (1, 'd384abb5635418d0678473ae30415daef3256b8ad68512a12e707a2ae29627dc4049b0b1dff154e9f16aa46e47ab8bb08581f2dea4c4e80d6479e1c9107a3dd1', '2022-05-31 22:03:18');
INSERT INTO `oc_ratelimit_entries` VALUES (2, 'd384abb5635418d0678473ae30415daef3256b8ad68512a12e707a2ae29627dc4049b0b1dff154e9f16aa46e47ab8bb08581f2dea4c4e80d6479e1c9107a3dd1', '2022-05-31 22:03:37');
INSERT INTO `oc_ratelimit_entries` VALUES (3, 'd384abb5635418d0678473ae30415daef3256b8ad68512a12e707a2ae29627dc4049b0b1dff154e9f16aa46e47ab8bb08581f2dea4c4e80d6479e1c9107a3dd1', '2022-05-31 22:04:00');
INSERT INTO `oc_ratelimit_entries` VALUES (4, 'd384abb5635418d0678473ae30415daef3256b8ad68512a12e707a2ae29627dc4049b0b1dff154e9f16aa46e47ab8bb08581f2dea4c4e80d6479e1c9107a3dd1', '2022-05-31 22:04:14');
INSERT INTO `oc_ratelimit_entries` VALUES (5, 'd384abb5635418d0678473ae30415daef3256b8ad68512a12e707a2ae29627dc4049b0b1dff154e9f16aa46e47ab8bb08581f2dea4c4e80d6479e1c9107a3dd1', '2022-05-31 22:04:23');
COMMIT;

-- ----------------------------
-- Table structure for oc_reactions
-- ----------------------------
DROP TABLE IF EXISTS `oc_reactions`;
CREATE TABLE `oc_reactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reaction` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_reaction_unique` (`parent_id`,`actor_type`,`actor_id`,`reaction`),
  KEY `comment_reaction` (`reaction`),
  KEY `comment_reaction_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_reactions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_recent_contact
-- ----------------------------
DROP TABLE IF EXISTS `oc_recent_contact`;
CREATE TABLE `oc_recent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `federated_cloud_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_recent_contact
-- ----------------------------
BEGIN;
INSERT INTO `oc_recent_contact` VALUES (1, 'khoa', 'user', NULL, 'user@localhost:4000', 0x424547494E3A56434152440D0A56455253494F4E3A342E300D0A50524F4449443A2D2F2F53616272652F2F536162726520564F626A65637420342E342E312F2F454E0D0A5549443A73616272652D766F626A6563742D31663562313334392D633930302D343463632D626437362D3864363932333366643836660D0A5552493A62613366373563652D383465342D343362362D396463622D6235326264656230333135360D0A464E3A557365720D0A43415445474F524945533A526563656E746C7920636F6E7461637465640D0A434C4F55443A75736572406C6F63616C686F73743A343030300D0A454E443A56434152440D0A, 1654634742);
INSERT INTO `oc_recent_contact` VALUES (2, 'user', 'khoa', NULL, 'khoa@localhost:4000', 0x424547494E3A56434152440D0A56455253494F4E3A342E300D0A50524F4449443A2D2F2F53616272652F2F536162726520564F626A65637420342E342E312F2F454E0D0A5549443A73616272652D766F626A6563742D35613865346538652D626561312D343636392D393638662D3766666164353764616536650D0A5552493A62626630373932322D643139612D343534322D393536332D3866663430373433613731370D0A464E3A6B686F610D0A43415445474F524945533A526563656E746C7920636F6E7461637465640D0A434C4F55443A6B686F61406C6F63616C686F73743A343030300D0A454E443A56434152440D0A, 1655226283);
INSERT INTO `oc_recent_contact` VALUES (3, 'admin', 'user', NULL, 'user@localhost:4000', 0x424547494E3A56434152440D0A56455253494F4E3A342E300D0A50524F4449443A2D2F2F53616272652F2F536162726520564F626A65637420342E342E312F2F454E0D0A5549443A73616272652D766F626A6563742D32346263306563302D373435352D346337622D616661612D6665656335336633616638650D0A5552493A35396161323365322D636537332D346437312D396639322D3839623637363963353039350D0A464E3A757365720D0A43415445474F524945533A526563656E746C7920636F6E7461637465640D0A434C4F55443A75736572406C6F63616C686F73743A343030300D0A454E443A56434152440D0A, 1655713687);
COMMIT;

-- ----------------------------
-- Table structure for oc_schedulingobjects
-- ----------------------------
DROP TABLE IF EXISTS `oc_schedulingobjects`;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_schedulingobjects
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_share
-- ----------------------------
DROP TABLE IF EXISTS `oc_share`;
CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT 0,
  `share_with` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT 0,
  `stime` bigint(20) NOT NULL DEFAULT 0,
  `accepted` smallint(6) NOT NULL DEFAULT 0,
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT 0,
  `share_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password_by_talk` tinyint(1) DEFAULT 0,
  `note` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `hide_download` smallint(6) DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_share
-- ----------------------------
BEGIN;
INSERT INTO `oc_share` VALUES (51, 0, 'user', NULL, 'admin', 'admin', NULL, 'file', '1636', NULL, 1636, '/welcome.txt', 19, 1655713464, 1, NULL, NULL, 0, NULL, 0, NULL, 0, NULL);
INSERT INTO `oc_share` VALUES (52, 0, 'user', NULL, 'admin', 'admin', NULL, 'file', '1733', NULL, 1733, '/next list (1) (1).odt', 19, 1655713687, 1, NULL, NULL, 0, NULL, 0, NULL, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oc_share_external
-- ----------------------------
DROP TABLE IF EXISTS `oc_share_external`;
CREATE TABLE `oc_share_external` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) DEFAULT -1,
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `share_token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mountpoint` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mountpoint_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_share_external
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_storages
-- ----------------------------
DROP TABLE IF EXISTS `oc_storages`;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_storages
-- ----------------------------
BEGIN;
INSERT INTO `oc_storages` VALUES (1, 'local::/home/khoa/mobile/server/data/', 1, NULL);
INSERT INTO `oc_storages` VALUES (5, '488da2e8df88da76efbc8b2816797b1c', 1, NULL);
INSERT INTO `oc_storages` VALUES (7, 'home::admin', 1, NULL);
INSERT INTO `oc_storages` VALUES (8, 'home::user', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oc_storages_credentials
-- ----------------------------
DROP TABLE IF EXISTS `oc_storages_credentials`;
CREATE TABLE `oc_storages_credentials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `credentials` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocred_ui` (`user`,`identifier`),
  KEY `stocred_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_storages_credentials
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_systemtag
-- ----------------------------
DROP TABLE IF EXISTS `oc_systemtag`;
CREATE TABLE `oc_systemtag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT 1,
  `editable` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_systemtag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_systemtag_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_systemtag_group`;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `gid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_systemtag_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_systemtag_object_mapping
-- ----------------------------
DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`objecttype`,`objectid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_systemtag_object_mapping
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_trusted_servers
-- ----------------------------
DROP TABLE IF EXISTS `oc_trusted_servers`;
CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `url_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `shared_secret` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `sync_token` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_trusted_servers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_twofactor_backupcodes
-- ----------------------------
DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_twofactor_backupcodes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_twofactor_providers
-- ----------------------------
DROP TABLE IF EXISTS `oc_twofactor_providers`;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_twofactor_providers
-- ----------------------------
BEGIN;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes', 'admin', 0);
COMMIT;

-- ----------------------------
-- Table structure for oc_user_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_status`;
CREATE TABLE `oc_user_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status_timestamp` int(10) unsigned NOT NULL,
  `is_user_defined` tinyint(1) DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_message` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `clear_at` int(10) unsigned DEFAULT NULL,
  `is_backup` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_user_status
-- ----------------------------
BEGIN;
INSERT INTO `oc_user_status` VALUES (5, 'admin', 'online', 1655713079, 0, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for oc_user_transfer_owner
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_transfer_owner`;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `target_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_user_transfer_owner
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_users
-- ----------------------------
DROP TABLE IF EXISTS `oc_users`;
CREATE TABLE `oc_users` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_lower` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_users
-- ----------------------------
BEGIN;
INSERT INTO `oc_users` VALUES ('admin', NULL, '3|$argon2id$v=19$m=65536,t=4,p=1$YzNOYmR5cjNRT2pmb0xWSA$7FV9IxNcSBbP9+rlPigAzxfEkmFpjn1Ds+UplgHwuEQ', 'admin');
INSERT INTO `oc_users` VALUES ('user', NULL, '3|$argon2id$v=19$m=65536,t=4,p=1$YzBUL3J6clFVdEs3ZkVOcg$jgU/1Jmsy7YWJMM8PKvhoFbWoP5gDt5SQQ5ikrMkAgc', 'user');
COMMIT;

-- ----------------------------
-- Table structure for oc_vcategory
-- ----------------------------
DROP TABLE IF EXISTS `oc_vcategory`;
CREATE TABLE `oc_vcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_vcategory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_vcategory_to_object
-- ----------------------------
DROP TABLE IF EXISTS `oc_vcategory_to_object`;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `categoryid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_vcategory_to_object
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_webauthn
-- ----------------------------
DROP TABLE IF EXISTS `oc_webauthn`;
CREATE TABLE `oc_webauthn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `public_key_credential_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_webauthn
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oc_whats_new
-- ----------------------------
DROP TABLE IF EXISTS `oc_whats_new`;
CREATE TABLE `oc_whats_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '11',
  `etag` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_check` int(10) unsigned NOT NULL DEFAULT 0,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_whats_new
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
