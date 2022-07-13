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

 Date: 13/07/2022 17:42:29
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_accounts_data` VALUES (122, 'user', 'displayname', 'user');
INSERT INTO `oc_accounts_data` VALUES (123, 'user', 'address', '');
INSERT INTO `oc_accounts_data` VALUES (124, 'user', 'website', '');
INSERT INTO `oc_accounts_data` VALUES (125, 'user', 'email', '');
INSERT INTO `oc_accounts_data` VALUES (126, 'user', 'phone', '');
INSERT INTO `oc_accounts_data` VALUES (127, 'user', 'twitter', '');
INSERT INTO `oc_accounts_data` VALUES (128, 'user', 'organisation', '');
INSERT INTO `oc_accounts_data` VALUES (129, 'user', 'role', '');
INSERT INTO `oc_accounts_data` VALUES (130, 'user', 'headline', '');
INSERT INTO `oc_accounts_data` VALUES (131, 'user', 'biography', '');
INSERT INTO `oc_accounts_data` VALUES (132, 'user', 'profile_enabled', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=6355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_activity` VALUES (6042, 1655713464, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1636\":\"\\/welcome.txt\"},\"user\"]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6044, 1655713482, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1714\":\"\\/next list (1) (2).odt\"}]', '', '[]', '/next list (1) (2).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1714, 111832);
INSERT INTO `oc_activity` VALUES (6045, 1655713673, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1733\":\"\\/next list (1) (1).odt\"}]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6046, 1655713687, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6048, 1655915333, 30, 'card', 'admin', 'system', 'dav', 'card_update', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"user\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6049, 1655915334, 30, 'card', 'admin', 'system', 'dav', 'card_delete', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"user\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6050, 1655915377, 30, 'card', 'admin', 'system', 'dav', 'card_add', '{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"user\",\"name\":\"user\"}}', '', '[]', '', '', 'addressbook', 1, 0);
INSERT INTO `oc_activity` VALUES (6051, 1655916662, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1762\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1762, 0);
INSERT INTO `oc_activity` VALUES (6052, 1655916670, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1768\":\"\\/New folder\\/launch.json\"}]', '', '[]', '/New folder/launch.json', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 1768, 1508);
INSERT INTO `oc_activity` VALUES (6053, 1655924181, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1774\":\"\\/welcome.txt\"}]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1774, 0);
INSERT INTO `oc_activity` VALUES (6054, 1655924182, 30, 'calendar', 'user', 'user', 'dav', 'calendar_add_self', '{\"actor\":\"user\",\"calendar\":{\"id\":5,\"uri\":\"personal\",\"name\":\"Personal\"}}', '', '[]', '', '', 'calendar', 5, 0);
INSERT INTO `oc_activity` VALUES (6055, 1655924182, 30, 'addressbook', 'user', 'user', 'dav', 'addressbook_add_self', '{\"actor\":\"user\",\"addressbook\":{\"id\":4,\"uri\":\"contacts\",\"name\":\"Contacts\"}}', '', '[]', '', '', 'addressbook', 4, 0);
INSERT INTO `oc_activity` VALUES (6056, 1655924498, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1795\":\"\\/CHANGELOG.md\"}]', '', '[]', '/CHANGELOG.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1795, 111);
INSERT INTO `oc_activity` VALUES (6057, 1655924593, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1806\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1806, 0);
INSERT INTO `oc_activity` VALUES (6058, 1656369865, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6059, 1656369865, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"admin\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6060, 1656369880, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6061, 1656369880, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6062, 1656369892, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6063, 1656369901, 30, 'shared', 'admin', 'admin', 'files_sharing', 'unshared_user_self', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6064, 1656369901, 30, 'shared', 'admin', 'user', 'files_sharing', 'unshared_by', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"admin\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6065, 1656369949, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6066, 1656369949, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"admin\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6067, 1656369959, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6068, 1656369959, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6069, 1656369962, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6070, 1656369969, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6071, 1656369974, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6072, 1656369978, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6073, 1656369979, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6074, 1656369983, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6075, 1656369984, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6076, 1656369990, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6077, 1656369992, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6078, 1656369996, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6079, 1656369996, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6080, 1656369998, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6081, 1656414592, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6082, 1656414592, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6083, 1656622826, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6084, 1656622827, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6085, 1656623810, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6086, 1656623811, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6087, 1656624027, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6088, 1656624028, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6089, 1656624055, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1821\":\"\\/New folder\\/babel.config.js\"}]', '', '[]', '/New folder/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 1821, 207);
INSERT INTO `oc_activity` VALUES (6090, 1656624083, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1821\":\"\\/New folder\\/babel.config.js\"},\"user\"]', '', '[]', '/New folder/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 1821, 207);
INSERT INTO `oc_activity` VALUES (6091, 1656624139, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6092, 1656624139, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6093, 1656624146, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6094, 1656624146, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6095, 1656624165, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6096, 1656624165, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"user\",\"web\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=next%20list%20%281%29%20%281%29.odt', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6097, 1656624182, 30, 'shared', 'admin', 'admin', 'files_sharing', 'unshared_user_self', '[{\"1821\":\"\\/New folder\\/babel.config.js\"},\"user\"]', '', '[]', '/New folder/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 1821, 207);
INSERT INTO `oc_activity` VALUES (6098, 1656624182, 30, 'shared', 'admin', 'admin', 'files_sharing', 'unshared_user_self', '[{\"1821\":\"\\/New folder\\/babel.config.js\"},\"user\"]', '', '[]', '/New folder/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 1821, 207);
INSERT INTO `oc_activity` VALUES (6099, 1656624400, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1762\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1762, 1715);
INSERT INTO `oc_activity` VALUES (6100, 1656624402, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1733\":\"\\/next list (1) (1).odt\"}]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6101, 1656624402, 30, 'file_deleted', 'admin', 'user', 'files', 'deleted_by', '[{\"1733\":\"\\/next list (1) (1).odt\"},\"admin\"]', '', '[]', '/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1733, 111832);
INSERT INTO `oc_activity` VALUES (6102, 1656624404, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1714\":\"\\/next list (1) (2).odt\"}]', '', '[]', '/next list (1) (2).odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1714, 111832);
INSERT INTO `oc_activity` VALUES (6103, 1656624405, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1636\":\"\\/welcome.txt\"}]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1636, 0);
INSERT INTO `oc_activity` VALUES (6104, 1656624428, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1842\":\"\\/babel.config.js\"}]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1842, 207);
INSERT INTO `oc_activity` VALUES (6105, 1656624429, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1845\":\"\\/COPYING-README\"}]', '', '[]', '/COPYING-README', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1845, 607);
INSERT INTO `oc_activity` VALUES (6106, 1656624430, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1848\":\"\\/readme.txt\"}]', '', '[]', '/readme.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1848, 441);
INSERT INTO `oc_activity` VALUES (6107, 1656624434, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1861\":\"\\/nextcloud.sql\"}]', '', '[]', '/nextcloud.sql', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1861, 416471);
INSERT INTO `oc_activity` VALUES (6108, 1656624486, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1806\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1806, 0);
INSERT INTO `oc_activity` VALUES (6109, 1656624488, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1795\":\"\\/CHANGELOG.md\"}]', '', '[]', '/CHANGELOG.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1795, 111);
INSERT INTO `oc_activity` VALUES (6110, 1656624489, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1774\":\"\\/welcome.txt\"}]', '', '[]', '/welcome.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1774, 164);
INSERT INTO `oc_activity` VALUES (6111, 1656624518, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1872\":\"\\/occ\"}]', '', '[]', '/occ', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1872, 283);
INSERT INTO `oc_activity` VALUES (6112, 1656624521, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1875\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1875, 7461);
INSERT INTO `oc_activity` VALUES (6113, 1656624522, 30, 'file_created', 'user', 'user', 'files', 'created_self', '[{\"1878\":\"\\/webpack.common.js\"}]', '', '[]', '/webpack.common.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1878, 4205);
INSERT INTO `oc_activity` VALUES (6114, 1656624572, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1842\":\"\\/babel.config.js\"},\"user\"]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1842, 207);
INSERT INTO `oc_activity` VALUES (6115, 1656624572, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1842\":\"\\/babel.config.js\"},\"admin\"]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1842, 207);
INSERT INTO `oc_activity` VALUES (6116, 1656711248, 30, 'file_changed', 'admin', 'admin', 'files', 'renamed_self', '[{\"1848\":\"\\/\\/readme1.txt\"},{\"1848\":\"\\/\\/readme.txt\"}]', '', '[]', '//readme1.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1848, 441);
INSERT INTO `oc_activity` VALUES (6117, 1656713115, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_link_self', '[{\"1861\":\"\\/nextcloud.sql\"}]', '', '[]', '/nextcloud.sql', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1861, 416471);
INSERT INTO `oc_activity` VALUES (6118, 1656713126, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_link_self', '[{\"1848\":\"\\/readme1.txt\"}]', '', '[]', '/readme1.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1848, 441);
INSERT INTO `oc_activity` VALUES (6119, 1656713139, 30, 'public_links', 'admin', 'admin', 'files_sharing', 'public_shared_file_downloaded', '[\"\\/readme1.txt\",\"0aa27f0bf79b0a6940ca2be3956b2475\"]', '', '[]', '/readme1.txt', '', 'files', 1848, 0);
INSERT INTO `oc_activity` VALUES (6120, 1656713516, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"1908\":\"\\/11.txt\"}]', '', '[]', '/11.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1908, 699);
INSERT INTO `oc_activity` VALUES (6121, 1656713528, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1908\":\"\\/11.txt\"},\"user\"]', '', '[]', '/11.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1908, 699);
INSERT INTO `oc_activity` VALUES (6122, 1656713528, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1908\":\"\\/11.txt\"},\"admin\"]', '', '[]', '/11.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1908, 699);
INSERT INTO `oc_activity` VALUES (6123, 1656713643, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1953\":\"\\/222.txt\"}]', '', '[]', '/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1953, 6);
INSERT INTO `oc_activity` VALUES (6124, 1656713651, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"1953\":\"\\/222.txt\"},\"user\"]', '', '[]', '/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1953, 6);
INSERT INTO `oc_activity` VALUES (6125, 1656713651, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"1953\":\"\\/222.txt\"},\"admin\"]', '', '[]', '/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1953, 6);
INSERT INTO `oc_activity` VALUES (6126, 1656713896, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"1966\":\"\\/autotest-js.sh\"}]', '', '[]', '/autotest-js.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1966, 617);
INSERT INTO `oc_activity` VALUES (6127, 1656864777, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1947\":\"\\/1.php\"}]', '', '[]', '/1.php', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1947, 14461);
INSERT INTO `oc_activity` VALUES (6128, 1656864778, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1946\":\"\\/11.txt.dec\"}]', '', '[]', '/11.txt.dec', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1946, 683);
INSERT INTO `oc_activity` VALUES (6129, 1656864778, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1949\":\"\\/11.txt.enc\"}]', '', '[]', '/11.txt.enc', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1949, 22);
INSERT INTO `oc_activity` VALUES (6130, 1656864779, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1953\":\"\\/222.txt\"}]', '', '[]', '/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1953, 6);
INSERT INTO `oc_activity` VALUES (6131, 1656864779, 30, 'file_deleted', 'admin', 'user', 'files', 'deleted_by', '[{\"1953\":\"\\/222.txt\"},\"admin\"]', '', '[]', '/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1953, 6);
INSERT INTO `oc_activity` VALUES (6132, 1656864780, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1966\":\"\\/autotest-js.sh\"}]', '', '[]', '/autotest-js.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1966, 617);
INSERT INTO `oc_activity` VALUES (6133, 1656864781, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1842\":\"\\/babel.config.js\"}]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1842, 207);
INSERT INTO `oc_activity` VALUES (6134, 1656864781, 30, 'file_deleted', 'admin', 'user', 'files', 'deleted_by', '[{\"1842\":\"\\/babel.config.js\"},\"admin\"]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1842, 207);
INSERT INTO `oc_activity` VALUES (6135, 1656864781, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1845\":\"\\/COPYING-README\"}]', '', '[]', '/COPYING-README', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1845, 607);
INSERT INTO `oc_activity` VALUES (6136, 1656864784, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1861\":\"\\/nextcloud.sql\"}]', '', '[]', '/nextcloud.sql', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1861, 416471);
INSERT INTO `oc_activity` VALUES (6137, 1656864784, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1950\":\"\\/readme.txt.dec\"}]', '', '[]', '/readme.txt.dec', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1950, 8860);
INSERT INTO `oc_activity` VALUES (6138, 1656864786, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1848\":\"\\/readme1.txt\"}]', '', '[]', '/readme1.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1848, 441);
INSERT INTO `oc_activity` VALUES (6139, 1656864787, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"1948\":\"\\/readme1.txt.dec\"}]', '', '[]', '/readme1.txt.dec', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1948, 8860);
INSERT INTO `oc_activity` VALUES (6140, 1656864849, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1872\":\"\\/occ\"}]', '', '[]', '/occ', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1872, 283);
INSERT INTO `oc_activity` VALUES (6141, 1656864851, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1875\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1875, 7461);
INSERT INTO `oc_activity` VALUES (6142, 1656864852, 30, 'file_deleted', 'user', 'user', 'files', 'deleted_self', '[{\"1878\":\"\\/webpack.common.js\"}]', '', '[]', '/webpack.common.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 1878, 4205);
INSERT INTO `oc_activity` VALUES (6143, 1656867906, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2109\":\"\\/a.txt\"}]', '', '[]', '/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2109, 0);
INSERT INTO `oc_activity` VALUES (6144, 1656883167, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2110\":\"\\/.gitconfig\"}]', '', '[]', '/.gitconfig', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2110, 59);
INSERT INTO `oc_activity` VALUES (6145, 1656884318, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2111\":\"\\/babel.config.js\"}]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2111, 207);
INSERT INTO `oc_activity` VALUES (6146, 1656885331, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2118\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2118, 41663551);
INSERT INTO `oc_activity` VALUES (6147, 1656972614, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2124\":\"\\/autotest-external.sh\"}]', '', '[]', '/autotest-external.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2124, 8396);
INSERT INTO `oc_activity` VALUES (6148, 1656973115, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2132\":\"\\/autotest-checkers.sh\"}]', '', '[]', '/autotest-checkers.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2132, 442);
INSERT INTO `oc_activity` VALUES (6149, 1656973922, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2133\":\"\\/autotest-js.sh\"}]', '', '[]', '/autotest-js.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2133, 617);
INSERT INTO `oc_activity` VALUES (6150, 1656974053, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2134\":\"\\/composer.lock\"}]', '', '[]', '/composer.lock', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2134, 2689);
INSERT INTO `oc_activity` VALUES (6151, 1656974461, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2140\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2140, 29955280);
INSERT INTO `oc_activity` VALUES (6152, 1656974509, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2140\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2140, 29955280);
INSERT INTO `oc_activity` VALUES (6153, 1656974541, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2147\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2147, 29955280);
INSERT INTO `oc_activity` VALUES (6154, 1656974607, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2147\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2147, 29955280);
INSERT INTO `oc_activity` VALUES (6155, 1656974656, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2152\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2152, 29955280);
INSERT INTO `oc_activity` VALUES (6156, 1656974708, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2152\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2152, 29955280);
INSERT INTO `oc_activity` VALUES (6157, 1656974769, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2157\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2157, 29955280);
INSERT INTO `oc_activity` VALUES (6158, 1657045411, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2159\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2159, 7642);
INSERT INTO `oc_activity` VALUES (6159, 1657045516, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2159\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2159, 7642);
INSERT INTO `oc_activity` VALUES (6160, 1657045635, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2159\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2159, 4);
INSERT INTO `oc_activity` VALUES (6161, 1657045702, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2118\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2118, 41663551);
INSERT INTO `oc_activity` VALUES (6162, 1657045728, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2110\":\"\\/.gitconfig\"}]', '', '[]', '/.gitconfig', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2110, 59);
INSERT INTO `oc_activity` VALUES (6163, 1657045729, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2109\":\"\\/a.txt\"}]', '', '[]', '/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2109, 0);
INSERT INTO `oc_activity` VALUES (6164, 1657045730, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2132\":\"\\/autotest-checkers.sh\"}]', '', '[]', '/autotest-checkers.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2132, 442);
INSERT INTO `oc_activity` VALUES (6165, 1657045732, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2124\":\"\\/autotest-external.sh\"}]', '', '[]', '/autotest-external.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2124, 8396);
INSERT INTO `oc_activity` VALUES (6166, 1657045733, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2133\":\"\\/autotest-js.sh\"}]', '', '[]', '/autotest-js.sh', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2133, 617);
INSERT INTO `oc_activity` VALUES (6167, 1657045734, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2111\":\"\\/babel.config.js\"}]', '', '[]', '/babel.config.js', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2111, 207);
INSERT INTO `oc_activity` VALUES (6168, 1657045736, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2134\":\"\\/composer.lock\"}]', '', '[]', '/composer.lock', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2134, 2689);
INSERT INTO `oc_activity` VALUES (6169, 1657045737, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2157\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2157, 29955280);
INSERT INTO `oc_activity` VALUES (6170, 1657045737, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2159\":\"\\/README.md\"}]', '', '[]', '/README.md', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2159, 4);
INSERT INTO `oc_activity` VALUES (6171, 1657045738, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2118\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2118, 41663551);
INSERT INTO `oc_activity` VALUES (6172, 1657045789, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2185\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2185, 29955280);
INSERT INTO `oc_activity` VALUES (6173, 1657045975, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2185\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2185, 29955280);
INSERT INTO `oc_activity` VALUES (6174, 1657046154, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2185\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2185, 21764999);
INSERT INTO `oc_activity` VALUES (6175, 1657046329, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2185\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2185, 29955280);
INSERT INTO `oc_activity` VALUES (6176, 1657046598, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2200\":\"\\/fix list.odt\"}]', '', '[]', '/fix list.odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2200, 3041428);
INSERT INTO `oc_activity` VALUES (6177, 1657046616, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2200\":\"\\/fix list.odt\"}]', '', '[]', '/fix list.odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2200, 3041428);
INSERT INTO `oc_activity` VALUES (6178, 1657046670, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2218\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2218, 41663551);
INSERT INTO `oc_activity` VALUES (6179, 1657046704, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2185\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2185, 29955280);
INSERT INTO `oc_activity` VALUES (6180, 1657046706, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2218\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2218, 41663551);
INSERT INTO `oc_activity` VALUES (6181, 1657046742, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2223\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2223, 29955280);
INSERT INTO `oc_activity` VALUES (6182, 1657046803, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2223\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2223, 29955280);
INSERT INTO `oc_activity` VALUES (6183, 1657046863, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 29955280);
INSERT INTO `oc_activity` VALUES (6184, 1657046919, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 21764999);
INSERT INTO `oc_activity` VALUES (6185, 1657047029, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 29955280);
INSERT INTO `oc_activity` VALUES (6186, 1657048107, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6187, 1657048211, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6188, 1657048330, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6189, 1657048411, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6190, 1657048719, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 21764999);
INSERT INTO `oc_activity` VALUES (6191, 1657048778, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 21764999);
INSERT INTO `oc_activity` VALUES (6192, 1657049308, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 21764999);
INSERT INTO `oc_activity` VALUES (6193, 1657049423, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2273\":\"\\/apps-files_downloadactivity.zip\"}]', '', '[]', '/apps-files_downloadactivity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2273, 109899);
INSERT INTO `oc_activity` VALUES (6194, 1657049444, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6195, 1657049543, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6196, 1657049662, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2228\":\"\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2228, 21764999);
INSERT INTO `oc_activity` VALUES (6197, 1657049725, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2244\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2244, 41663551);
INSERT INTO `oc_activity` VALUES (6198, 1657049741, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6199, 1657049788, 30, 'shared', 'admin', 'admin', 'files_sharing', 'shared_user_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"user\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6200, 1657049788, 30, 'shared', 'admin', 'user', 'files_sharing', 'shared_with_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6201, 1657049811, 30, 'file_downloaded', 'user', 'admin', 'files_downloadactivity', 'shared_file_downloaded', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"user\",\"web\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/&scrollto=robo3t-1.4.4-linux-x86_64-e6ac9ec%20%281%29.tar.gz', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6202, 1657049871, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2300\":\"\\/a.txt\"}]', '', '[]', '/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2300, 0);
INSERT INTO `oc_activity` VALUES (6203, 1657050284, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2200\":\"\\/fix list.odt\"}]', '', '[]', '/fix list.odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2200, 3041428);
INSERT INTO `oc_activity` VALUES (6204, 1657050318, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6205, 1657050318, 30, 'file_created', 'admin', 'user', 'files', 'created_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6206, 1657050449, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6207, 1657050449, 30, 'file_created', 'admin', 'user', 'files', 'created_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6208, 1657055655, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2311\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2311, 0);
INSERT INTO `oc_activity` VALUES (6209, 1657055671, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2312\":\"\\/New folder\\/apps-files_downloadactivity.zip\"}]', '', '[]', '/New folder/apps-files_downloadactivity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2312, 109899);
INSERT INTO `oc_activity` VALUES (6210, 1657055751, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6211, 1657055954, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6212, 1657056017, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6213, 1657056017, 30, 'file_created', 'admin', 'user', 'files', 'created_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6214, 1657056100, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6215, 1657056100, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6216, 1657056158, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6217, 1657056158, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6218, 1657056231, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6219, 1657056231, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6220, 1657056296, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6221, 1657056296, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6222, 1657056643, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6223, 1657056643, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6224, 1657056828, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6225, 1657056828, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6226, 1657057065, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6227, 1657057065, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6228, 1657057199, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6229, 1657057199, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6230, 1657057279, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6231, 1657057279, 30, 'file_changed', 'admin', 'user', 'files', 'changed_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6232, 1657057386, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6233, 1657057472, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6234, 1657057522, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6235, 1657057840, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2312\":\"\\/New folder\\/apps-files_downloadactivity.zip\"}]', '', '[]', '/New folder/apps-files_downloadactivity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2312, 109899);
INSERT INTO `oc_activity` VALUES (6236, 1657059208, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2318\":\"\\/New folder\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2318, 41663551);
INSERT INTO `oc_activity` VALUES (6237, 1657059301, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2273\":\"\\/apps-files_downloadactivity.zip\"}]', '', '[]', '/apps-files_downloadactivity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2273, 109899);
INSERT INTO `oc_activity` VALUES (6238, 1657059338, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2300\":\"\\/a.txt\"}]', '', '[]', '/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2300, 0);
INSERT INTO `oc_activity` VALUES (6239, 1657059383, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2311\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2311, 41773450);
INSERT INTO `oc_activity` VALUES (6240, 1657059399, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2399\":\"\\/New folder\"}]', '', '[]', '/New folder', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2399, 0);
INSERT INTO `oc_activity` VALUES (6241, 1657059407, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2400\":\"\\/New folder\\/a.txt\"}]', '', '[]', '/New folder/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2400, 0);
INSERT INTO `oc_activity` VALUES (6242, 1657059446, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2406\":\"\\/New folder\\/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2406, 41663551);
INSERT INTO `oc_activity` VALUES (6243, 1657059478, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2406\":\"\\/New folder\\/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2406, 41663551);
INSERT INTO `oc_activity` VALUES (6244, 1657059527, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2406\":\"\\/New folder\\/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2406, 41663551);
INSERT INTO `oc_activity` VALUES (6245, 1657059546, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2422\":\"\\/New folder\\/3rdparty.zip\"}]', '', '[]', '/New folder/3rdparty.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2422, 13677241);
INSERT INTO `oc_activity` VALUES (6246, 1657059576, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2423\":\"\\/New folder\\/activity.zip\"}]', '', '[]', '/New folder/activity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2423, 3234204);
INSERT INTO `oc_activity` VALUES (6247, 1657059618, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2427\":\"\\/New folder\\/DE_Outlook2019_x64_x32Bit.iso\"}]', '', '[]', '/New folder/DE_Outlook2019_x64_x32Bit.iso', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2427, 10747904);
INSERT INTO `oc_activity` VALUES (6248, 1657060039, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2400\":\"\\/New folder\\/a.txt\"}]', '', '[]', '/New folder/a.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2400, 0);
INSERT INTO `oc_activity` VALUES (6249, 1657060040, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2423\":\"\\/New folder\\/activity.zip\"}]', '', '[]', '/New folder/activity.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2423, 3234204);
INSERT INTO `oc_activity` VALUES (6250, 1657060040, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2406\":\"\\/New folder\\/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2406, 41663551);
INSERT INTO `oc_activity` VALUES (6251, 1657060047, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2427\":\"\\/New folder\\/DE_Outlook2019_x64_x32Bit.iso\"}]', '', '[]', '/New folder/DE_Outlook2019_x64_x32Bit.iso', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2427, 10747904);
INSERT INTO `oc_activity` VALUES (6252, 1657060077, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2436\":\"\\/New folder\\/QrCodeScanner.zip\"}]', '', '[]', '/New folder/QrCodeScanner.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2436, 26791575);
INSERT INTO `oc_activity` VALUES (6253, 1657060379, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2436\":\"\\/New folder\\/QrCodeScanner.zip\"}]', '', '[]', '/New folder/QrCodeScanner.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2436, 26791575);
INSERT INTO `oc_activity` VALUES (6254, 1657060410, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2446\":\"\\/New folder\\/Skigit_Aakash_8_14.apk\"}]', '', '[]', '/New folder/Skigit_Aakash_8_14.apk', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2446, 26044392);
INSERT INTO `oc_activity` VALUES (6255, 1657060571, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2446\":\"\\/New folder\\/Skigit_Aakash_8_14.apk\"}]', '', '[]', '/New folder/Skigit_Aakash_8_14.apk', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2446, 26044392);
INSERT INTO `oc_activity` VALUES (6256, 1657060605, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2456\":\"\\/New folder\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2456, 29955280);
INSERT INTO `oc_activity` VALUES (6257, 1657230120, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2458\":\"\\/git.odt\"}]', '', '[]', '/git.odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2458, 14823);
INSERT INTO `oc_activity` VALUES (6258, 1657230188, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2466\":\"\\/git merge.odt\"}]', '', '[]', '/git merge.odt', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2466, 11939);
INSERT INTO `oc_activity` VALUES (6259, 1657230449, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2475\":\"\\/New folder\\/ReadMe.txt\"}]', '', '[]', '/New folder/ReadMe.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2475, 281);
INSERT INTO `oc_activity` VALUES (6260, 1657477467, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2484\":\"\\/package.json\"}]', '', '[]', '/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2484, 2356);
INSERT INTO `oc_activity` VALUES (6261, 1657479175, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2484\":\"\\/package.json\"}]', '', '[]', '/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2484, 2356);
INSERT INTO `oc_activity` VALUES (6262, 1657479235, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2484\":\"\\/package.json\"}]', '', '[]', '/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2484, 2356);
INSERT INTO `oc_activity` VALUES (6263, 1657479346, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2484\":\"\\/package.json\"}]', '', '[]', '/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2484, 2356);
INSERT INTO `oc_activity` VALUES (6264, 1657479562, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2607\":\"\\/package.json\"}]', '', '[]', '/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2607, 2356);
INSERT INTO `oc_activity` VALUES (6265, 1657489820, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6266, 1657489820, 30, 'file_deleted', 'admin', 'user', 'files', 'deleted_by', '[{\"2299\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"},\"admin\"]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2299, 41663551);
INSERT INTO `oc_activity` VALUES (6267, 1657489879, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2614\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2614, 41663551);
INSERT INTO `oc_activity` VALUES (6268, 1657490020, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2614\":\"\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/', 'files', 2614, 41663551);
INSERT INTO `oc_activity` VALUES (6269, 1657490068, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2422\":\"\\/New folder\\/3rdparty.zip\"}]', '', '[]', '/New folder/3rdparty.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2422, 13677241);
INSERT INTO `oc_activity` VALUES (6270, 1657490069, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2427\":\"\\/New folder\\/DE_Outlook2019_x64_x32Bit.iso\"}]', '', '[]', '/New folder/DE_Outlook2019_x64_x32Bit.iso', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2427, 10747904);
INSERT INTO `oc_activity` VALUES (6271, 1657490072, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2456\":\"\\/New folder\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2456, 29955280);
INSERT INTO `oc_activity` VALUES (6272, 1657490073, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2436\":\"\\/New folder\\/QrCodeScanner.zip\"}]', '', '[]', '/New folder/QrCodeScanner.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2436, 26791575);
INSERT INTO `oc_activity` VALUES (6273, 1657490075, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2475\":\"\\/New folder\\/ReadMe.txt\"}]', '', '[]', '/New folder/ReadMe.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2475, 281);
INSERT INTO `oc_activity` VALUES (6274, 1657490076, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2446\":\"\\/New folder\\/Skigit_Aakash_8_14.apk\"}]', '', '[]', '/New folder/Skigit_Aakash_8_14.apk', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2446, 26044392);
INSERT INTO `oc_activity` VALUES (6275, 1657490086, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2620\":\"\\/New folder\\/kjh\"}]', '', '[]', '/New folder/kjh', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2620, 0);
INSERT INTO `oc_activity` VALUES (6276, 1657490102, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2626\":\"\\/New folder\\/kjh\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/kjh/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2626, 41663551);
INSERT INTO `oc_activity` VALUES (6277, 1657575079, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2627\":\"\\/New folder\\/kjh\\/ReadMe.txt\"}]', '', '[]', '/New folder/kjh/ReadMe.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2627, 281);
INSERT INTO `oc_activity` VALUES (6278, 1657575567, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2636\":\"\\/New folder\\/kjh\\/RegPrivateKey.pem\"}]', '', '[]', '/New folder/kjh/RegPrivateKey.pem', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2636, 1679);
INSERT INTO `oc_activity` VALUES (6279, 1657575627, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2637\":\"\\/New folder\\/kjh\\/Navicat_Keygen_Patch_v6.3.2_By_DFoX.exe\"}]', '', '[]', '/New folder/kjh/Navicat_Keygen_Patch_v6.3.2_By_DFoX.exe', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2637, 8912896);
INSERT INTO `oc_activity` VALUES (6280, 1657576028, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2637\":\"\\/New folder\\/kjh\\/Navicat_Keygen_Patch_v6.3.2_By_DFoX.exe\"}]', '', '[]', '/New folder/kjh/Navicat_Keygen_Patch_v6.3.2_By_DFoX.exe', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2637, 8912896);
INSERT INTO `oc_activity` VALUES (6281, 1657576031, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2627\":\"\\/New folder\\/kjh\\/ReadMe.txt\"}]', '', '[]', '/New folder/kjh/ReadMe.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2627, 281);
INSERT INTO `oc_activity` VALUES (6282, 1657576034, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2636\":\"\\/New folder\\/kjh\\/RegPrivateKey.pem\"}]', '', '[]', '/New folder/kjh/RegPrivateKey.pem', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2636, 1679);
INSERT INTO `oc_activity` VALUES (6283, 1657576041, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2626\":\"\\/New folder\\/kjh\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/kjh/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2626, 41663551);
INSERT INTO `oc_activity` VALUES (6284, 1657634718, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2638\":\"\\/New folder\\/kjh\\/package.json\"}]', '', '[]', '/New folder/kjh/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2638, 2356);
INSERT INTO `oc_activity` VALUES (6285, 1657634755, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2638\":\"\\/New folder\\/kjh\\/package.json\"}]', '', '[]', '/New folder/kjh/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2638, 2356);
INSERT INTO `oc_activity` VALUES (6286, 1657634756, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2626\":\"\\/New folder\\/kjh\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/kjh/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2626, 41663551);
INSERT INTO `oc_activity` VALUES (6287, 1657634812, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2639\":\"\\/New folder\\/kjh\\/package.json\"}]', '', '[]', '/New folder/kjh/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2639, 2356);
INSERT INTO `oc_activity` VALUES (6288, 1657655207, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2639\":\"\\/New folder\\/kjh\\/package.json\"}]', '', '[]', '/New folder/kjh/package.json', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2639, 1750);
INSERT INTO `oc_activity` VALUES (6289, 1657655343, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2646\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2646, 21764999);
INSERT INTO `oc_activity` VALUES (6290, 1657656189, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2646\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2646, 21764999);
INSERT INTO `oc_activity` VALUES (6291, 1657656199, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2651\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2651, 21764999);
INSERT INTO `oc_activity` VALUES (6292, 1657656260, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2651\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2651, 21764999);
INSERT INTO `oc_activity` VALUES (6293, 1657656269, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2656\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2656, 21764999);
INSERT INTO `oc_activity` VALUES (6294, 1657656707, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2656\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2656, 21764999);
INSERT INTO `oc_activity` VALUES (6295, 1657656721, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2661\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2661, 21764999);
INSERT INTO `oc_activity` VALUES (6296, 1657657313, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2661\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2661, 21764999);
INSERT INTO `oc_activity` VALUES (6297, 1657657322, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2666\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2666, 21764999);
INSERT INTO `oc_activity` VALUES (6298, 1657657600, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2666\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2666, 21764999);
INSERT INTO `oc_activity` VALUES (6299, 1657657609, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2671\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2671, 21764999);
INSERT INTO `oc_activity` VALUES (6300, 1657657731, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2671\":\"\\/New folder\\/kjh\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/kjh/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kjh', 'files', 2671, 21764999);
INSERT INTO `oc_activity` VALUES (6301, 1657658043, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2696\":\"\\/New folder\\/sadf\"}]', '', '[]', '/New folder/sadf', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2696, 0);
INSERT INTO `oc_activity` VALUES (6302, 1657658056, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2701\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2701, 29955280);
INSERT INTO `oc_activity` VALUES (6303, 1657658128, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2701\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2701, 29955280);
INSERT INTO `oc_activity` VALUES (6304, 1657658199, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2701\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2701, 29955280);
INSERT INTO `oc_activity` VALUES (6305, 1657662277, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2701\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_And.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_And.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2701, 29955280);
INSERT INTO `oc_activity` VALUES (6306, 1657662294, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2714\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2714, 21764999);
INSERT INTO `oc_activity` VALUES (6307, 1657662341, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2714\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2714, 21764999);
INSERT INTO `oc_activity` VALUES (6308, 1657662517, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2719\":\"\\/New folder\\/sadf\\/222.txt\"}]', '', '[]', '/New folder/sadf/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2719, 6);
INSERT INTO `oc_activity` VALUES (6309, 1657662862, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2719\":\"\\/New folder\\/sadf\\/222.txt\"}]', '', '[]', '/New folder/sadf/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2719, 6);
INSERT INTO `oc_activity` VALUES (6310, 1657662865, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2714\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2714, 21764999);
INSERT INTO `oc_activity` VALUES (6311, 1657663137, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2731\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2731, 21764999);
INSERT INTO `oc_activity` VALUES (6312, 1657663392, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2731\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2731, 21764999);
INSERT INTO `oc_activity` VALUES (6313, 1657664131, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2740\":\"\\/New folder\\/sadf\\/outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2740, 21764999);
INSERT INTO `oc_activity` VALUES (6314, 1657664285, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2745\":\"\\/New folder\\/sadf\\/outgoing_1657664192_outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/outgoing_1657664192_outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2745, 21764999);
INSERT INTO `oc_activity` VALUES (6315, 1657664317, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2731\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2731, 21764999);
INSERT INTO `oc_activity` VALUES (6316, 1657664322, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2740\":\"\\/New folder\\/sadf\\/outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2740, 21764999);
INSERT INTO `oc_activity` VALUES (6317, 1657664330, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2745\":\"\\/New folder\\/sadf\\/outgoing_1657664192_outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/outgoing_1657664192_outgoing_1657663532_Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2745, 21764999);
INSERT INTO `oc_activity` VALUES (6318, 1657665135, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2750\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2750, 21764999);
INSERT INTO `oc_activity` VALUES (6319, 1657665236, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2756\":\"\\/New folder\\/sadf\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/sadf/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2756, 41663551);
INSERT INTO `oc_activity` VALUES (6320, 1657665568, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2756\":\"\\/New folder\\/sadf\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/sadf/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2756, 41663551);
INSERT INTO `oc_activity` VALUES (6321, 1657665639, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2750\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2750, 21764999);
INSERT INTO `oc_activity` VALUES (6322, 1657665641, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2756\":\"\\/New folder\\/sadf\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/sadf/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2756, 41663551);
INSERT INTO `oc_activity` VALUES (6323, 1657665658, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2766\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2766, 21764999);
INSERT INTO `oc_activity` VALUES (6324, 1657665833, 30, 'file_changed', 'admin', 'admin', 'files', 'changed_self', '[{\"2766\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2766, 21764999);
INSERT INTO `oc_activity` VALUES (6325, 1657665928, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2766\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2766, 21764999);
INSERT INTO `oc_activity` VALUES (6326, 1657665938, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2777\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2777, 21764999);
INSERT INTO `oc_activity` VALUES (6327, 1657665978, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2777\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2777, 21764999);
INSERT INTO `oc_activity` VALUES (6328, 1657665988, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2782\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2782, 21764999);
INSERT INTO `oc_activity` VALUES (6329, 1657666011, 30, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', '[{\"2782\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2782, 21764999);
INSERT INTO `oc_activity` VALUES (6330, 1657666025, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2787\":\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\"}]', '', '[]', '/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2787, 21764999);
INSERT INTO `oc_activity` VALUES (6331, 1657666069, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2793\":\"\\/New folder\\/sadf\\/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/sadf/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2793, 41663551);
INSERT INTO `oc_activity` VALUES (6332, 1657666155, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2794\":\"\\/New folder\\/sadf\\/222.txt\"}]', '', '[]', '/New folder/sadf/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2794, 6);
INSERT INTO `oc_activity` VALUES (6333, 1657738386, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2802\":\"\\/New folder\\/sadf\\/next list (1) (2).odt\"}]', '', '[]', '/New folder/sadf/next list (1) (2).odt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2802, 111832);
INSERT INTO `oc_activity` VALUES (6334, 1657738592, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2810\":\"\\/New folder\\/sadf\\/next list (1) (1).odt\"}]', '', '[]', '/New folder/sadf/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2810, 111832);
INSERT INTO `oc_activity` VALUES (6335, 1657739828, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2811\":\"\\/New folder\\/sadf\\/Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx\"}]', '', '[]', '/New folder/sadf/Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2811, 112047);
INSERT INTO `oc_activity` VALUES (6336, 1657739962, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2812\":\"\\/New folder\\/sadf\\/outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx\"}]', '', '[]', '/New folder/sadf/outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2812, 112047);
INSERT INTO `oc_activity` VALUES (6337, 1657740004, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2813\":\"\\/New folder\\/sadf\\/outgoing_1657739964_outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx\"}]', '', '[]', '/New folder/sadf/outgoing_1657739964_outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2813, 112047);
INSERT INTO `oc_activity` VALUES (6338, 1657740666, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2819\":\"\\/New folder\\/sadf\\/outgoing_1657666106_robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz\"}]', '', '[]', '/New folder/sadf/outgoing_1657666106_robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2819, 41663551);
INSERT INTO `oc_activity` VALUES (6339, 1657740746, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2820\":\"\\/New folder\\/sadf\\/admin\"}]', '', '[]', '/New folder/sadf/admin', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2820, 862);
INSERT INTO `oc_activity` VALUES (6340, 1657740793, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2821\":\"\\/New folder\\/sadf\\/outgoing_1657666161_222.txt\"}]', '', '[]', '/New folder/sadf/outgoing_1657666161_222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2821, 6);
INSERT INTO `oc_activity` VALUES (6341, 1657742790, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2829\":\"\\/New folder\\/sadf\\/occ\"}]', '', '[]', '/New folder/sadf/occ', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2829, 283);
INSERT INTO `oc_activity` VALUES (6342, 1657742836, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2830\":\"\\/New folder\\/sadf\\/index.html\"}]', '', '[]', '/New folder/sadf/index.html', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2830, 156);
INSERT INTO `oc_activity` VALUES (6343, 1657743066, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2831\":\"\\/New folder\\/sadf\\/index.php\"}]', '', '[]', '/New folder/sadf/index.php', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2831, 3456);
INSERT INTO `oc_activity` VALUES (6344, 1657743274, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2832\":\"\\/New folder\\/sadf\\/webpack.common.js\"}]', '', '[]', '/New folder/sadf/webpack.common.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2832, 4205);
INSERT INTO `oc_activity` VALUES (6345, 1657743428, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2833\":\"\\/New folder\\/sadf\\/webpack.prod.js\"}]', '', '[]', '/New folder/sadf/webpack.prod.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2833, 171);
INSERT INTO `oc_activity` VALUES (6346, 1657744321, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2834\":\"\\/New folder\\/sadf\\/webpack.modules.js\"}]', '', '[]', '/New folder/sadf/webpack.modules.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2834, 4981);
INSERT INTO `oc_activity` VALUES (6347, 1657744442, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2835\":\"\\/New folder\\/sadf\\/version.php\"}]', '', '[]', '/New folder/sadf/version.php', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2835, 1706);
INSERT INTO `oc_activity` VALUES (6348, 1657744466, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2836\":\"\\/New folder\\/sadf\\/drone-run-php-tests.sh\"}]', '', '[]', '/New folder/sadf/drone-run-php-tests.sh', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2836, 1477);
INSERT INTO `oc_activity` VALUES (6349, 1657744596, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2837\":\"\\/New folder\\/sadf\\/drone-wait-objectstore.sh\"}]', '', '[]', '/New folder/sadf/drone-wait-objectstore.sh', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2837, 2249);
INSERT INTO `oc_activity` VALUES (6350, 1657744865, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2838\":\"\\/New folder\\/sadf\\/jestSetup.js\"}]', '', '[]', '/New folder/sadf/jestSetup.js', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2838, 854);
INSERT INTO `oc_activity` VALUES (6351, 1657745006, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2839\":\"\\/New folder\\/sadf\\/bootstrap.php\"}]', '', '[]', '/New folder/sadf/bootstrap.php', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/sadf', 'files', 2839, 483);
INSERT INTO `oc_activity` VALUES (6352, 1657746877, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2848\":\"\\/New folder\\/kkdkdkdkdkdkd\"}]', '', '[]', '/New folder/kkdkdkdkdkdkd', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder', 'files', 2848, 0);
INSERT INTO `oc_activity` VALUES (6353, 1657746892, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2849\":\"\\/New folder\\/kkdkdkdkdkdkd\\/222.txt\"}]', '', '[]', '/New folder/kkdkdkdkdkdkd/222.txt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kkdkdkdkdkdkd', 'files', 2849, 6);
INSERT INTO `oc_activity` VALUES (6354, 1657747369, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"2861\":\"\\/New folder\\/kkdkdkdkdkdkd\\/next list (1) (1).odt\"}]', '', '[]', '/New folder/kkdkdkdkdkdkd/next list (1) (1).odt', 'http://localhost:4000/index.php/apps/files/?dir=/New%20folder/kkdkdkdkdkdkd', 'files', 2861, 111832);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_addressbookchanges` VALUES (21, 'Database:user.vcf', 21, 1, 2);
INSERT INTO `oc_addressbookchanges` VALUES (22, 'Database:user.vcf', 22, 1, 3);
INSERT INTO `oc_addressbookchanges` VALUES (23, 'Database:user.vcf', 23, 1, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_addressbooks
-- ----------------------------
BEGIN;
INSERT INTO `oc_addressbooks` VALUES (1, 'principals/system/system', 'system', 'system', 'System addressbook which holds all users of this instance', 24);
INSERT INTO `oc_addressbooks` VALUES (4, 'principals/users/user', 'Contacts', 'contacts', NULL, 1);
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
INSERT INTO `oc_appconfig` VALUES ('backgroundjob', 'lastjob', '263');
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
INSERT INTO `oc_appconfig` VALUES ('core', 'backgroundjobs_mode', 'cron');
INSERT INTO `oc_appconfig` VALUES ('core', 'default_encryption_module', 'OC_DEFAULT_MODULE');
INSERT INTO `oc_appconfig` VALUES ('core', 'encryption_enabled', 'no');
INSERT INTO `oc_appconfig` VALUES ('core', 'installed.bundles', '[\"CoreBundle\"]');
INSERT INTO `oc_appconfig` VALUES ('core', 'installedat', '1655710990.89');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastcron', '1657747587');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastupdateResult', '[]');
INSERT INTO `oc_appconfig` VALUES ('core', 'lastupdatedat', '1657748512');
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
INSERT INTO `oc_appconfig` VALUES ('encryption', 'enabled', 'no');
INSERT INTO `oc_appconfig` VALUES ('encryption', 'encryptHomeStorage', '0');
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
INSERT INTO `oc_appconfig` VALUES ('file_upload_notification', 'admin#since', '1656973112');
INSERT INTO `oc_appconfig` VALUES ('file_upload_notification', 'enabled', 'yes');
INSERT INTO `oc_appconfig` VALUES ('file_upload_notification', 'installed_version', '0.1.2');
INSERT INTO `oc_appconfig` VALUES ('file_upload_notification', 'types', 'filesystem');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_authtoken
-- ----------------------------
BEGIN;
INSERT INTO `oc_authtoken` VALUES (92, 'user', 'user', 'EdO+SuqaUyeNKzYrcereDWdj0QOgf3RlvHlc/EMrnvQrVzLyHD6Vbt0cc2M7r/sXEbAReilJrrYah3UPUpAfVuCrYk57G7kMA3++7rWnJf8vwdlCb+ahvbwuv2drBQSpS5+DQLPOs/0yQ3M3umfWu6mXC3gzinIRaV75i/gaA9MVekINI2G+n/NwnORQzS8vVEW8aC4xdDxUoKNMjo3B73Q2+cOU/dUdizQESOuA9lvFmc6ujkCpDj5Q/XYXQ7IRmti84LmAUfmJBiJJjEyW9Usd5iyIynnmrSk53KWxDFDxzHwksg2Sk9oMVSFsDxjEemZomdE1bDS/umJAF1jihA==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '9cf028b685aef3f4380d2b22392475627bcb1e79a370075100dbfb31589a028fccdf10c6d1ca7f0199ddcac9ac6a7c9116bb7ef35db83e3a404e447389788f2c', 0, 1, 1655987494, 1655987493, NULL, NULL, 'cead6d207ce4c757e6737d17b03288bb19fd2dbd925b4974a7d6c3097f5037b919cb4189ea4f3522a0de46e4cdb7ee69c168c831a492e6e935015ad3ebf57e6fdcaad8a1aa6b9c4eac8e76d6252a2550fbae27d3d7e7077d0ec4f4ffac1ef65ec7795ad6b20a576e0ec44db6d5997e7a3354d5b64965f01d31404418b6aaed8e889b2010fa0b9beb9869d0c84970ce14b36dae3ba5f8829bc793e3f8adc17409e7e07da28fe2df56ee2192bc8100d92da78af3d9e6ada137ae2a9aeb131992a18802ddb2ca8b01b6a0573a0618ec259e0b06ea9539eecebe0252c490e8b2430965b427ccd2f6837d50744fd8a8434cf6f085be756c4487fd974bfea42e7910317b70a58dd147f426f4197f6d079a564a9a4b4c114f6ab493f78885b729e76ab0ff66fe90b45f9e816eb7ff891f7774009778336b74bb9870698b8c32cc62dc0a4d502ef71a73fbe729501840913667a5db5698a49ba1d0a11f8a12644ae312202e7fd69e496fc71562802ab7c8c3eb95896a2bff477f993cae355d219838ede439f68915acbed736694721024fc1d21a4c03a2a74b4d4a143237c757dcc73d8da2f87e734144e898c02e6a8c184e93ad636be1570f9ea10e18b32d957421b1e68af5745df4e7f15d8f0ce4221847d47fd459b194238625975e00e5a9addbf5e4b97596074e755cfb0ec0ba15475b0dc0fb5fd7868550093b12778515f6468b1ad2a7c0275fc012579257d600174c69f0e8595bc8700fdc0b53fbc885ef1e18dbc2d961de67aec3a10b29206c256e455d9badb97c9861097e3e18505801c2a9aeee0e43d6b85af1755a4b124ef7457411da22c1f5c8053e49071027abfe27c5be593d8adf43c7375ec0a8619825dc94e9e8f0ad5400dd6abe6c3b27cd9695ae7aec5c4bca0a7e3e72863a199db0d64acfbb2c5a279c4a643f812d1122decb8b3ed5eabb7bd80b13aed92313cb267ba32ff534453fe684f704c41d6b101ed1230c071b1f42b97b67f78f2da6c2465d2a464e3bef69ae30ec66b0b24280bc2be0afe30d6602e30dce70d8d5aad78eb9eb03f1e74229c9476c7a5971eb7860e25a600c16e4b87aded63041284729ec2edc2fa26f30a963cfd9d0283e4699915956e8d178e0abde8508aff7f619334f77c4fbe5df4c086e2336077d0332b4fe1ff1a26b5f0154520deeb58613566bfb2fcb7de6e336c822d2290ee88a62ebe36eaedb1f0d1d94108c3fd20caabeb82924d5752f73a3fb620f911c0b548ecdf134e2f77ad1d2faec6e91813a3356c71810368878baf0129889d3ca34e05bedc92f55ff7bd9a0f7c9eeb6b00f38208ec6df52dde9f7f9e718716972d7d3b1eb389d499666beb9d13f371f47a3c8ba962e7917fabbce5ab92ebc84782f39883fb230726d35713374bb51577e855c22ece43283c2c0ace2c1e5ffd10b4431c0e77756da7810e970f7cdf095d188b85a09a04032f8c23b99af082269581692fdbb2aa841503fc77cfde4fdfc7cb7aed3918d4f083a6472f04da46ac10badca071bab86dad2038ce6a542897cefa50bc74610bf9c325342adf76a8d488ea14da0b6530aad80ffd739e9bac09bb3ebb3313d07c4ad44a4081e0591942fa1f7390bb15d488c985a26553a24bb73e47feae767d243ee10ced4949096506dbf575f6b9b95457e4ecbd194287a8056869d50bec803731b69fedfcbd53c9d1d89bb8d2f194129838b9390ede733b7c38d69f3cf9ed2e854f04acad678a3a869056ff5dd63d39c93dfc97cea27431bb400ada493954c3a40d85605fdeed6badcfdb2e88eee43f3e6ff7cb6e7ad1b7b6411779c4058b8d57a7a471180fc7313784f67796670e2bedba26a5d0a962943ee0fc674e96adf3a7047345db43a8d763c173c4aa5c7d3d5ca4ff3996fc00cf5e7b647c9272e51e08880fb9fd2953c0be0ec4b09d0d5308723c6026f399ff9be277c57dc019f3f1908584865741836df5b2972476ac545b40737aa9c50cb244e2df978478bb546bb56c6a18b702236bcc1a10bfe16ec0fd352d550b58ab3cd1a73190566c7b2e4ff5063f9ceabc3225ce278c0cf37fd37cc423329c800cbeddefbb8dba4b930800c3410552ea173634980dda7168dae80488a498fc6d326abda459948621fbf03a9bf79fc13fb9c35e0dda9364f1370eb26e6c1e019e39254107445a8f1a37aaefd7d17447e0ba7ae4e62c30f6e5974ad04fa3f041a8b827240bde78d2be3ea3b475caa5ce5a3a9ff934849c1f6d425148205444e40479d3c05a825bdce0b81bd5f4dc220a9264d2247548f06579ca9dfcd3a2104fddfbd381f120631cb595ce07dfed21db61689505f0ce400b5bcf0046c1d0c5d038e25a23f259a8690acced4e73da6d5328b3221c91dba08fcd041963009112743ac2e18490a337421a9f2d104b932|da733b04d4f4a1da8b7c384ce89022f4|1fe9e19f24ed88a53d554208878757f7a95537e7491044f4c39b4b01591fbc7528e5a17b37ad3729883a4ecb88d43639bd93781b3bb39d609d55e4db83203fec|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+DcjRPtF2hpJMqMQ4Hm\nm5GeNG/yUic3oH+p0o5m/IbsbwDQBbJKPozNhwS4sMphw4MSrKROLei5GPXnroHS\nxW+kL+zKjafpRr48hBTmJQ0XE7ISFBlp3IwVvXoph+1ZQVSaRVvcINAgqODgOxT3\nxULpYg+AQrxK07ebKioMzh7b2WCTcwmNPxhd3NtREQOJFCDGZG8/4buutrybbVff\nS+sdjO9qaPsjyMvV8QMLynx57zLgr6FwF5RP/46stQOOybX1da3ua3L8pEAmnqwG\nN6GpQpXZ9rHt1Vk65Hy1SxXygNMoglKDtk5mim0XPzDTGDQIeM6x0CnEAs1kvuMZ\nnwIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (93, 'admin', 'admin', 'eTzzh6c6kLHP7MQlpmJ9XsFoQR8gfHv+yJ4GjMfUnG/BNbICLQwm2eP6OCPnM6DwmlnekF3v8ajT0nGz9sGjNbuHJqyeH7/vw3OF1eErmoS0zpikqs/s9AsQAHzZ7RzrH/qVaFcVDvwGCwnk2ZIJZEPYSAAE26bx4jzuz7lMTiEaiqxgwK53loJnzSYJXGEfPHwhSaTOptKb0mFdyfVN6TZYrvCV/g9IUPOD9L4MWguw5phDguvBHAdJvP2PaH7RBkt7Tv6hTYywF3xLLfN8UcVl0L1qcGtvmo5Spu2/qvp2iyKZt8mPpv3SOHJ9Nj1RqZOa1GwqbyaPplH0hDCemQ==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '3a4a3720423328da8cb816064f74652e63773e0c04db60931d262d1854f66840a4573bcdf2b436fee7e7cdcebd6015dc575cf0ccf81e96c770121d9c7ee0ca80', 0, 1, 1655987434, 1655987433, NULL, NULL, 'e4a3e772233e4cb47af745d76ab0430e8e0e67e06a53e23bda5e13c2a7738f4217db0235922da657cdbf555d54f6c4f467f85c1943fefb56eac7ba53aaea584c7b5a60611b7dc75a751e8fa811b61cdd5a0620a0c4bed8a5adb67b41f1b0ec8c51e3cac046787b12fc0adcf32d6a8396203e41bbc6bd3fa35d606f01bc5e5c9b57c1a0ac79fa10dea0bd051822eb3169deda34d4ab0bf2c32082434366c63c734e1ec28b32e0ac3100e36a82cfce9a46c85243da0ec37c8765be186e1819672783babe87711326b63db260cecf0085c6bd5a43cd40b1348f4c983ced463661c2f79e5a58ca19dc011aef6c453af2293fa81f9fe29cd9e8b110eca497f9f65853903dc7437466da6880706df837d838b3f189a2ea14bd01417fd6c930ae3471399eafde92a7bce293723853458d5136431406715fd0e41ee0a592a917f13fe450b54b29c2b9563d3949eeceaa3f14ea1b382e33936a400af8b23f2fa42b75914f441fdfb0c476a5e275da7efb9517d2a6f40944fe01ae8781376e0c3e75ec3b597c3753c6f9873d91ddd464e37ae82a6cb5fdf591d5d6fdd0b180d52c18c02704d760feda1a6a74dc120af0886d5405bd0eac2ffa626b7862ac5b8b9dcf9b7147ea22900f94a5b7df82aad2a0e1b6b326c372276cb7794b769d741ac7f6e3915d6efd45aca16bd0dd8c30024a7da3607cf37b943bef5d35798c5969bf4fb6d5b16bca4b069613b33718f052834bf8b4319468c591a0571a8ae70b9a668e5dd42f87231b6fbdd75092bafc8b64cc701c1ba69a68263a41d9fb590a2621fc337651c079e80225caaccc009265867d1b3b0eb1a37f46b0c8f6d05517368beac3bc984a4304bc169b083b6cba6c900d1e2eff4147785a90ced97c309b8f339ccd8bd7bb852d1bda3764da222b511aeee43a989c77645ddd73da19198c94851fd0de8de68b2e31b5b5615fec90e8936fd37c98dfd1dcc36d3b95ce9de0b2c7fbe36d564b03551debbe492c4a709146e37c8a7322e1304843c49fcee4c882994ddc475741bb247a0d17a372846d643db5e9fa4482ae3a6ffe071fb9b13fb4c413579f8a2418bef9f732e7012aade8e2b363f3b463a0c3c69cd947ee7a5021cec6a0c9b5d9e441b7e6e40ad4f4b3f3d5972483f15e6e0380d25ec57ce1dd4e6107f50876a0d02b160df2b9ffc533aeaa182fc86d582b9efb7429f2a43c62ea1dcd9b01866328adc3336a32bd18181cd7ce1ac959eb7c4152f731621c6a7802515286d0b34a87db6429a1dffb0000a7caefcbf8aaa6c0ea859bb901566316b89b3708da13a4112602c6c6555822b9a95c8982497c6cca8577e6b963666258c1d363f2eb1fe1f9863ada61d2c6859031c959fc98d429ec09ce2565c6f5fa7937415014025394ef4bec1cf0895d3730889bd8aef351d674ad0657d63044e7172e92e8d1a12dd5ae12930c18f609364d294eee582915b9067b1e46616ecb87ab71d96871fcce85d3ab2badd9266df957d9e27e4af07670951eb94fcc6b1bfb5cd6e18b725bc617c866032c9210161f3c0ca7840c8e3b094106eb8aa48ef896e900e4d23227ba6f21907ec2965ae7605ccf9eda73f6f580fe706e6b350a1a8d03bb1eaa96625568140d78a5c3848615f87c315c0944ed7ccc5c6ee3605ad9dd98af74b81d68c3d4313b30a4c352b2128ae5d433acd3663641c6c0739af61841a876aa56d349b8b7704f1fa9291ca08cfa15797ab9b1574a290cd85ffaa59fcdb0e3f12f2b57f8d4f648ddedebbcc485520e6dc2b2384bfe4b6a3da5c9d996d26cff7c09da2a611137f16b312627dbdf567cbe6f183fcbe7b468bb03c27bebfa4839a6ebe515713f952a5f1403e58413e9fc01bc31a60283964c0702466e1fb02de69dcff515c32d0bbd33fb5110d905bd0945dd861eede8f365fa10bc66ff045168cd30bd7fbb9cc831dcf780d83ab40a0a3d74f063fa84e35fcc0eef0ff132518ec9cf2af608426ecd1923a0753b4434d88795744a3b4a05db5f715563f7d56de67fdabf4588bf8cc4d6822ab921bddf4b8360be801402de499a0495d686a410b060edb61fb72031be3588b7ebdf9a7fe428c9a11ce6dfafd0c2db124b08692dc4498c1b14198c63d03c2215029c13c453b0f6962b470da4c38bbcad203522ea423c2784cce7b53c985fa72668611ef83198424ee3ca0ebe97b18d4965b0f0d7ac5ce71151cee60dfe9a163b590d4536af1020accb4302962f99a82c8505f5196fa48bedc0721fcd8cba70a46afed2b9b368058260f5b5be1037c0dc6154bde4b1df40baf9d2284047e5e54b0a7fde879eac9b65286ef3c6a8a303195c1b5c9ec07183e6a52e91d681aebeb80fc53611b71f4a76e425fb858e147b664daf4d5d5d8bcd87ac06e0094277d9a11260b5b3beaa735a0c8d|7ea990d6ca0cc0fb8624a8e4c717aa59|3b6c7a3858c84cd446dd9086750ebc07d403495c66f91ce1f1c8147d6802b489ee9d9b4e1236b5769c237326dce93eedde5fe62e0414a3d0a029b81440b66447|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoqT1XQ9mZqAY0hwy+yK/\nwRL72O6LVOiHBHqX7btJP6v6lMaEIHBUH9VkKO7WGscSTUJeNNUpUWS/EdW7kMZE\nW7snq+Ml1nrEtSKKmWL2ZbK5EEBHtpk0WIsm5P6V0pz16dRfMFavDPhmBWW2+qWe\nJcaTgYOpWlAx4gTiXGcqyrvHr1Wq1HsF3sMExZ6+pKvP+nxtymJJAUtR8X74tN9V\nw7h2ygQHa9UcVf07oHVjSkrLbD5kNKOtXHBM7OInJ4Z+2CxeB6oinRjGbBd8KmVX\nDGIzSOaa12rS0RN/8zgP+TQpR9BNwM7j9jXBHqsSP68WAwtr69hq2Up+Oa0fwPXV\n9QIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (94, 'user', 'user', 'EQPEqGfbRftrcun4mZfQ1G4/hpX80f0vYR7xtxf+rlPkT8cI1bz7Oc78nq/5qqZnJaNpvRbLTRxo8+mt152gDPYvFrFJmUSNcYlSLu7PdYhQlkIHL0v2r4mM5d9BZ5mPBvYEDkTyHCCvx/sy6t2FBmP68VJQ2hXNW5pPYePRX4DxEMWb2zA8gk5CS7yNy/erH5ux742yWDDSwuESGX8CKzz1N8Q65yXznLqEHc1vnX9Rkc/PFw2Ols9RG2xwj9vXsmu5r0b0dBR1QH+m9lCZB/zW35i/oU0GjClkygri0ZlfTB+/5hqo6UOwoPxGY370i3uKN4whNh9o2B6cYpRV/A==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'c0342c9122ed95a9c66ab242bc3bf043234043a873b97aa21d9370209c27ea5b82e4a03b9ca3c961cb91a6047e4b2a0fcc65973cd88fffaa57f53f64621aa382', 0, 1, 1656024809, 1656024598, NULL, NULL, 'b2d298dadfb936382eb041c42446e8c0fb93249ae9882117fba6982c126dc9d8f4a5bd82428393f76fb8b8689158cd68c08adce5178d38d08efc8b301561d0ededabc73409e8057acad9fce8b4edc72c8cf36faa56da5cde22b7003db20b560242f629cac652d6464e8facb51e86ce2d5984fb9fc076b5f225d193a6420829ae4c50829d5d985f6c86ca2beddf831a4e55036789617ee67c61fa1dd3e2f9ff47cede761dbcc6f9b8e7d624657a3f4d4e20f54d337f99dcf475886f0fab143398ffce500c090934eeb1d9fa0ea0fad2901ee6c0e0dd26be25594e063e41cf88125e05603585a9cae7f29d39f01896a9bffbe9d712c7a46eb698ee1236b858afb2b7e008c23f641726b3f148049d274f3299108cf23d4fedb27e43a070a6a2cd9c06210c363f7b1c63ff67083d1925da92e73e73033a1e993210c6b930d3f1a0da93e203322ab96bdc1c7841d7ba3c2b6cfe4357363e0e6d0e8cf1975c2df2482ff4bc367f424531ea9460dbf4313f020c8650258388c9eae2f56f1eafa02fb83d7f6309aaeff0ccf681c06633d1963ce52d99cca1c41a53437aa9d9548f2400073af8f51ae37000987cb9ba89822ac285802a2a869579c3c8acbcf2d023d68c9083d65a1f835e02baedeb0d705a3ab03a611f049084cc02ac4d6e1880f60007748dea7c2fad1c5a3e83ef8195800bbdc100b15c6f8fdb1534ab1048a7019236bfdc9a14e9a239082fa09e6a4e69d0a40e5a3a0f010dd98e4c73d255c370cb7976394558a357ad1490b0237cbecdc438a3fbea43841fa64aff9231210bff162d6df9f513194a1d847fece2495ddf2faee2702bd56dc243bb7ea1077fa26c2272c6274abd4b827709fc348de5417562e486f714ae00307fd0c09597a6834aa60b8f50b6fdf9a46dcdf5dde6e6c83ed8fde633ca2e8fdd366fd4c0f0a80043ce27dca30db3902a9f29afc3c1c24d2020c45ca0112bdd60f1416636d3d205dce242fc04320d808afde02f3f708a8334b03a60baadd49739e210744465ad5be51043532e5532eedfaf432fd2eb350d35f7c5573aa2ad3aa12989c5cd58206722cf64fcf45c07d35c9e431121424fa5bce8ef8fa56780638bbd21bd337b1301ab0f1200f1fb0e881932e66a445cca16c445440a06dda3bf5459ad2ca2c7234e65f0f467840e9dd1569b494098d697c98ca32c33524606dd08976e1d4e19890d099b4755040117ca82076d75666fc26b730d6192a52e25c7be8d19f0ea56b8fdef118f08179f392cf87030ffa3e8135c986b3a1caa36158d19353368001617a6d4586fc0398b0b910389878a80c27c97c9bf2ad2e14ad9efda6ff9a0ce1850c85862ebfbdd01dbe10f12676114b1f17daa31ac63672bb64b43f67d0b9ac129651f71fc3c5f7da8cbb637d6c53df39c7ecc16b21c06f33067e8704e19fa2b961ea7fbee9d14e684bc2734dc61f098974ce4409faaa3b6585ffe0524b399d9765532b52c82211d616cb430df9d40163e2055c0eb4b762ed8ea2eee83e8f7fe2fdeaace6d4fd7fc6edef1a901dc4d2be532428fd87ada968a4a7d3c80d09e9e50591781048d86b0c657c3d445b8109d408d75f47f1a42905af0a15dd9eca945abf6e528a51fe0ad0eeffb7fce6d70a99c9ee4958245b087fb3ec18b8254df05391276feef8a8ff49ab11e0849cacc01413248a73b64a36e95075af5bacb97b075f554a9ffcb7b64d0645b11a13a89fe7c027d5b8c601b7e2442e1cb3cd549122c58d6dcc9a31048fc46037c4e4f23027a8c4edd3db0c0818613074f4f47000f1020e6c266c69945add33bf51abf5ce0122905900fde108faeb551096ad79a1aa32093d6d125bf16d11e349984692ca3e1223258922828f7087a6e9b886bb40c48e3af613b25eca340db07fbb6c9bb58e1e98714c78bb1b9a57b160bc93765ed7275bb3fe1b6b93c9d5ce063cf1615f8f2c2cb45191d3f6349256c4a1a54cf400537ac83ab3937669bbbe630f2a1c177cf75252d26f2e7ec08dbffc1a69baed2635bbcce04f3eded92b0463a8cfb7f4d677409ea818e3462717f264e766fd8e13263ac2cbdac15d3bed005cc71ad4b4fa08034b98b46dba4fe15cd36f3cf60180239e1e7911cea704b79393cf0ca72753657954c4b890747dddd33d049eeb1682075bddc1b40cdcc19d1b09529d81fa5979ec6b9aa93be8d92b412d24743ae0e1f663acf89b26a399a0bde692cf676b08ada37f878d630e5d0f8642765820e7c9447156bcea6897c3a07a9b09033e4dd1a4cdd52bfc151307f7bcb1f7e3c80b178dbd7b906fc15e982de696dfc73d2e27eb24ff812e6e593bee657add0b58933463da5bb7ab69d8ade9acaae2379a5e47323f2271e7bd0129d1ea1604581982931fa24d8613e8f00cf59ea5214e5bec322578c71c6b3|d50d60bd59064e86d8469afec09b73e1|e2eb7f086ba3c3e12bac085a12623e8d24739820a4d64ed4e99196cc57a398c4fa19273661f200f728af0813bde8a2ea4b6a18e9086088ab7cdcea2b6a29274c|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqJYQAOEMin71C9e17h8i\nIjxI6k1aMrj/0LPJyH1yXCvMGhUNrxOXyaFO+L/wovf70NkkehwdIDgJxU39auYG\njUfzFhITdaInqXxQI4MBVHyvoSdNHORICGpg/O5+Hwwk+jc8GfmYaUWoDxDZn8os\nnVrDOT8y9Jy9idlXYR/bcQZCMg06F+OCNbsL1jLY3n9urHzEaBMdcswPnwTjikgD\nO8WO8EIbaN+dzkgPC7TRu0c8J11A0YsqzhPthvb1zn0eE8N+shpts1Y9peEt1YsK\n8g+COIbqyJAlNgt/ITNSP1cr2XgWxzLeVEphpHjyWqW1X0flJjHh6GFiuT2VsKNr\nkwIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (95, 'admin', 'admin', 'XRlsLGeByJiI4pgXNWZSq3j1JaJliLlI6O1/bvZuQjQYNwukYWzlg4ZpOGh7oJ3xzwHz305FietN5uJJizhWIoaV2cyJr1jvf9W4SGz+1WWezMUX/MPByKXeL9WwnmEM0JsX5TxDp1jaQzvOkXbbjAhoqju2QO7kjXem2+eKNOsR+fcQgzjwKeBFkej6sSXJit1pN5MSV3IZJLZk2C4PrxmtqnezpkTate/NfcLvDp4oPjcpXLK3GAfoIuCe6G/9DFN91lQo7uf1rpqsJo0ZQktbzzZ8vFjQApoZdIK1eJwdFACSoDCAZdVunTwSvOaGto2zCGJSNR9Nj/U5ZOYkgA==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'f5eaf0bb618187273e9ce3c6eb8b8e7bd34a1da0638e569d93165e9a06b65dba2f2cf8da6728a5bc378fd0a10abf90a6c7aec7bdc5554e2833cb968e4cfb34b1', 0, 1, 1656024958, 1656024778, NULL, NULL, 'd963ae89dd7907119a44ea1ce858f07980f8c37c6e5a4b8152f74043cd979e2ec9e27851121a5e8d81761600ca35b01354bfd2b140939f18e828e59c982d77224fd8e916117d139eeee87420edb8f2aeb2ee24ced3b1cf7c38263e260a9bce17da7e03d623043968af39dba52d45dad2691220a261166098688e3e73523064eb15020a67f4596ee74f65901026dbd0f5485d1535ddb6ab3f35cac022bb62e7d92c1cbd8285a6a2b52e894156e7201e9e5d3f91814006bb86e07703c95edd03bf0413d1082f68b7d497287c5a2b3d069ed473ff280db53d093eb52103a4d2b7410dad943401dc6bfaf52a2b6d6edc9916400bc32110d68aedf751c381e89702ad649bd3288b3cf0e5ddc3a8c276f1c76587cf070c5647d803826d4927151ce8c2ebc09a6adeb258536d142715d3f6fde55a12821f7f9ac9c78759224087844fcfb5897870ef73298d0ef3c076606b83bbf866f0b6815085f2c9ec73c70df0ab382bc8352ad4b96231f67bca2228c3ebe4f1af5da5e564a4027c55e19eb13c926dab299ebbe08f5b48cceca0bceab86595cfe8259d39fda06349759ae2a5663f0f5e177105eb51dbf4784d098d6b87c57d25a3c6053b0c23613b00815ae7130f44fd9b3909f4e1a3d541cb1f166157566021be41145fb2a56698824dc6a9bc193059567604af88a7c0819d70144d6b3f092ae16f8d6553369c81fae5d1b744135461d0fab735c1cb31413381bcdaf9a5e847e514147dd9b1552f717d091c2301f5bbe6b73ec9235d42280ba6340bf8b1a41030d49cbbe262a1ffdd8c4f55fd947215af4dee73eefbcf76f1727c1b1255bbf479b1f5631598a010ecfc0fcc94250789add55f264cb2caba5db2dffe008259844fe4c572596681193600aaa3c44495549da191358a0928a293584f09fcf881bef5f310454af242f390f6e1b71576c61a1bb8769bbf778b66ff94a104bdc4b1758afa9ccfc62121f49e3b5de8ac34b7a15498f9583cfd10298c34770a9851719ea767fd7966f55ce6284db82137045b5b4e976d9d2687854a2422c2ee5dcee0268a63c27a36ad1f4010260c81531687ce660ab9ab866c4b7a0c8f3821e526dd11a3428cf2f07848eea6e59e801f7bcc8164351523d22de9a6d6de6e37169d141dec920f674b5e94ed6099b25545d1cd560dbfbf82138b513e0c6e0d72b701a100b47fcdf64b38d0655c0e701283e4a6d4864cb5d653e72a9cfc4870e0a2620f7e94d036e9c26cdd348a8713e2e782a80a329ee127e9034911183ae2291b4631a1a0c2e4ed3dbe58aa71352883cfc39fbade90e2b1002b6b229c8d3e7d9591530c7929d9f70a15160324ae082baea87b0a7f30bc3554188034ec91e1e0d9362df1bbb34eed9995fb8f1467dba99ea6af4c9647b084a573b4baac4041ca62abb28a0e28ca28a8e49e3f960ce261f42a4db11671a56a55ff898ba6006493ae278155d0e054fdbb74ca319654a5b79d77ac1a76bdb2cc9f811776e9e9008067b79f8e515e9820735a000b2d24f3e896fe069262c1f4cb5d8a5255df1825bdc2d5bbbd8f40c2d9d6b5aa05b37c82279578bd70e4548f4dbfe1b53f24256f9444fdc906a39fd7aa53d716f01de0db9befcab254db4cc4fd8e64feaf8b22c928f8f55e6b447e4509dd05dfdd804b67711caac48006a290d9bf7d74642cf028274d76b70a87a4f7f6609edb27f5db001002bb91efbada5cf1ed5811f9166649716235167b4eedce6dbe5ec5734211f8119e8f7fca4391cf993ca37b08887e7d9b89dd28f2f21530d223e78a2a118692a8fe5379d367122828ec637b6c989e8721d38a41b3a2f88975fb441a2062f10cb1649d7fa4bf5c4c6aa1399a0d5c354ebe50a52990e957a39f675b40d71ab73bef91392ef95389eba812a5e8b9fb1a6f10e3e5d4fc47a47a06afd6c434858a0dd2d976148999e7c7aec9d52b8157251243cb2d33a80bec3b5f43d91c309b3d1095be530ae7721805fc80bca9306c28f4676d7089e5f9c61d29279d33755571ff1368d63b95c7925c957ac20208eabda79e64c65fd8e7c3074092bbc38830dc9be9579cea747da3441759d68781c543e65ad63685a89c7a1d9d1c55f22b9ac6894f478d645cdb676f04191d21d7b904f27b8f95b5973e84b76a375c3ae2c65511ba1dde42fbf7f6c98a80f9080c02c3760116c3bd1d9ce75334f226ea6901b937d4858c3989ee67e48d17d2a5414402fefad135cf4c2309e1c128b3bbbcab9b83aab7b0eef3c336c63ff133a0803883f11e017aa0aa7a8fa14b8b5cd9c03ef25819a40e752f2ba27fd2f8d287d66b8aa52ab49b1f663ab579fdc0292af2082c06dc6af3c266093af6fa0bd6567bff7c67a2a36de6b28d1d63c71c6da71e20dff9d97c374f7beea53c5f3f7e954f621a0328250489|141050a91fd2790187d50676e36509db|c29c7270c94d25720310127f072027470b1df775bb486de64ce898e1ef913129ca284b2b952d2f29b5f5e8deb8fae783b0a39bb2a6322c9fd915c57cd02e19e2|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqcjvj8elY9hjHNy1kYKV\nPlKp2HNx5RnaMJFjNkqkagmTSeBkyGn5S89AwM72bNyv2jdBtTfoE6UDS+lSDK61\no+z6srgfooXhXuqxXA/i2jJsqLr8LDCdktFBSgbkeXTTs3C84KbyBRen/DLSnj3Y\nWBHWwuy4J44KE1MDid1TwfBDmtvyHsaBYdME57X9WSIAJl8+ZCGoI6FXAOWuujYy\n3xqh9i0iiITCJHAMnydmDmx0l/RRFArs5+3Yxgrz0uvZsT0cWvOdmhxnjxsmtopw\nLgNZNTw1XBbmnDWs8Hle8aNFjdxy5/9MTE+EL4IAjeSqngNJIfUtuiVVdi7MNNxn\n2QIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (104, 'user', 'user', 'uzOJhV3Vgzp+mLt52LESaGQd26sVTCVrtPk4+aYrOR8Q25ueGyn6zR3F5wo886uDD6O3zeJmE63xgTcm+6yvk7P8tajoY1M0wiwKhu2NTBezAyK8KBcW7L1NGuVfqwf4dXN3UCfo+zVU57Fm/VrS6ouNJ0Yshea1dZRBj9uA6epPrD5EFqR92F9W9VFOBJLiiv2Bq98kFjC1913jKp8oqs0FMATRDBEPO7oKSyX5UU7vRzKsj+kH/q17c26nz7RTJpONa+j5RPK1IOuPDFyFSPL7RWKSrGldx3pbm/X0UjTqID07l+jLsT8s8frAUS/MQXBnux2VENIqdgp2vlBiew==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'e2a0fb678debaec8a2b87c46b305fde12b4ec8d90bd806879ad4dc85033452703c41f37ce864ba121650703368bc848c5e65a61c63110b9a0edae8deb99b88ee', 0, 1, 1656622899, 1656622749, NULL, NULL, '63b614c99ab2df1a7358ac4a78740b71bbeaba79f7e686a845e236c43e2b761e7b96b21f85f5befba1e47d3fd6573b788f118836ab128d15cffbac3488d76d36cd0cb2ac97d7f34e9b8471ff7925a24106171c5286bcb4df05a6fd334e2b714561d3a1828fc2093c5468fd9315771073b24c17c29897ec82858613cf47b92f9da85beb3a9c96a45fcb46f30e73112788a6680ddf4bb3349a4ddfbd65425988347fc3d295a5e9ca2240d56ccc7458a8ba2bac91eed417005caa04b2bda5e1b35a085289bd443a2708c6c32b30f8689c01ba91ec79defb28e67f992fa15ba54c56f964fed3f5d74f44b3bd7c6a4710fd036a9fc9e667e66c3438779e116e20e5bf01f175d6ea2b195304d7259153bfa27504c95e9357e494e890263d6d6386db555f2ce83711ab87a4d6f30e154b0f62164384caf25be59414080804a15bec6a25de954019d6657cc00c634bda54d9df01ef99aa5cb0833f9c3aa0f999004c91ef3df29ab2778ea168bea4004224c601f07bbdf27eafd6df4ab98ddd68389fe6258d2d597f95e6cde5b54e9f2fddf90f6725ca24271f92e31a4d1cd95afbeea7103bdf7a5145521df995ac68e8e984d1236fbe4eec4aa308d28c30b7bcb4d71bd5576b63746cbe7173444650f17cddd15127230d62ff738aff556c90858c0479170853c18e641c33eafac2f60b561e687ec1c860466c00374538fecd76ce6828dea94af23e025b800c6d49d5e64bdedbba117ecdb1d2b7acab8ba7320ad8c31940d9a2c7764877162d0c4dce62b914e4e249f08bb1bec47a421840152d6c443ed4b1c214e76436f4faff29170ec80bf31258f212d3d2dfa7c21cef06dc7b7d95426318ebf5c9fbf43d3d6a1e0d1adca30ef31ed49d443dd5f731a23b6c30ef9106709d3382d5a014ec02d8029ce45e1062c4eb4762e969372dc5461ff3f67e5fb3df43d230e3f0dbe003d64eef5cfc8083c90eba78c20c91820772520511782cb3f1f9e174d9b8102577848411b18873d3c2d41a4b771dcdec2847da45ec91503b37589973b0ef07743a551710f90871f16eeec21c0683ae21104c109549534b48cc696a731fa0cd96e857bea17b46cc3323e3e5bc7a04fa8358560544c26271871ac2eda11ebf0e427c0cc999c9401fd909f098686d12e2f11817c89233e643fe5a0c756a54881dc39ae05681736ceb57018412051caa310adf8cb52adb15f9c0981ae0794a2ac57e5d7f93ec68ad52cd3ac556f917adb59106df9d6119dc7d8a4a3fc74dc01bfc55bbaca36990992b16e08018f9354f2b1a4974b672ccf4cc0f160de865fb15e20b61ada58fe8ac6db486411f8ffda6b8cea04a0920fedb49af66bc13ddf106ece7c956e5546b9903f9add9fb18df2778bb2e13ed354907ccb07b9fb9ea77797c4b5ccb3fdb1a1b76855019e9e5474cb4f7bfdf807a27a89cb1499a7bf9b127846c515eb2986131c51ce13220f5610d37b1d976f234a51aaf29a30e0860528913a66d2fde5ec492e4b2d06ab2273f273318461f11edc7733319a033af403332b7a436d9efcc62150152ce83a1e654e5c5fbe887caaba6acebbd909fc48b03093a03b58ba7a511615c8644e15f8b05dae1df792594044c4b971576922641a6560e1eff3fcb08f1e1c633697f2a07c8d1c3b61be29dd5b053186e2d8c3ffa3f7bd7cba7342f1b7c0be2c3564b57ff95566a70e516c46fa78693f6b117ae07b348b53330a0877dc629ca93028b95cb539391421b8a1f55e2baf5ba5e748b26a05bf4c7a304c16533fec3d1a5105f8de8b8d36a9737a29fa06faf942185be8497969668322bf08b960d51125b47d7a677bb58a2e5f218c702d02588c2f535c30b4e291fea4e4cb57a3cdbb18b60deca0f92d7d78ca9d4a2619e12ef863569e0a9f1a735ac4a35d3a23113774030fe45f777f3f0d08af78580bc252ec9b78628bc5280b5c31e93ced2fadcdd9a8ebddaee4f9d3a8876ac4e930c2338a1dfeeab8de86f783325dc7a7586e4cbaf2f4d52a6e06d0b223b841232e1edd1932bf116571f364d523b0cad65f33347fee16018f15d28a270cd914ad7feccf912b518733b7129825e7a5fe74c1be59b33a20cbcb5cfc89625f2590ce0d9ec689da58d0eac84a37eacb35a1fac800b89015f68af4af8299c12bcbf7860dbe702e5b0e184facc0f0994fec1fa3b1d6d54c0625519bf47fa913d3cb68a3cebc75c334e71e45dceb0812d65882c7ade69d845a6d2d417ae0ea64bdb54b0c6fa8a7192a06a4babb440db002bd048d5baac9fd45bc134726a22c125339f68669b62d4bb7d6b7f06a444f5eb21015eec6ca6dbdaac2950176bc4476a584959e42014074d389c868d7b48254e52c4d8790a22b50baf72122eb8c0d5ba01013a57917656a270dcee70344ec0c7a1edfe58af311e|14b444555cb6be780909e8ae0e4c6116|27a8d8720bd6c56317e38e48daeac413ffaaa43b02a93f0d5aec007b2488a92b7173c60124e3a7a7af990f3757180c2ded1223ae6a01c1967e41675bb6b5e525|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvmEmTx6C5z0Pz8bdmbbR\njD+SEirt+GXS1SSq/wMJPuADxLMGlAPfNVjGAAJ41bwzKDdeUmpvxGpCtTx4CVuG\nYx1q99WDGdbNFTR2LTqL3cj9EeUng0jh/KcMtreZjL+pEQ3RWxnQetYEaS30nkRP\nwzE49lVnic/HucR+hQHlW6qYhgevpbJzkJnFCrFEh04f4jwbV7mOCZ1IhmCqVxWt\nBBKMiGBDJnlLbfx7eIZWB2AYGOSRX7u6ZBp/pFHpA/eDbTb1Blem/BQ2ueVsD1gd\n2UsVgmf/Z0GYayUcbsUEXW+XMDiLb4VzCSsKzrRRz/ax2lYkpu+xePf2mlPX7FMj\nGwIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (109, 'user', 'user', 'fvvQOUqv+/ENsz1TCspi9yYKyIIUex9JFBarh+8qJSP5c2VtHGHhN5rXg3moY3VrWjptxLlsdY8CcZByavCk3lzjrzM56V3AAk0TW+nQMla1VhFNKqQBftMESYJq0IG73u7tnRLxEcG3+RHgig7yWHbaMvz5o7IC5qWSG0jWX6jJV1u0XfM8r6gVqQsobZimXs+14Qbzc2z6ZSRjqMNB7l+b10wTzMyvo4nstyp/ayHi1UmcGjdcUwgbP7UueWGEC8SqmOvPCBWELiGbhmX3BoAt0ammPltF4rk5rejB/622l/O8NBKCBHapTJkOXeKlNZJrfBcytpSbHyUlCRCv/g==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '33b972f74be2ad3e8d2e92dfee39c3bb8b782931c533eba27c4393163f80128f97582feee56a9b8346178236c8b3950f4c504e10f0fae8018e440d82a98f0991', 0, 1, 1656623405, 1656623405, NULL, NULL, '3be83e758508d9e68831a6102e897a62ad53fe8b793890eb519658c62ca765db56974c1f39c52c4453ac4a80dd748aa4d9a66338172b403d2684edb4802a706224c7feff05e36eb5024240aeaae58e59ea86b4e1997ae8c0041e6aa14cc0e56d047461ef1995ef1482a791c59c1eb7643248c83af4a251b8825db02bc1bd1788ea901ced6c5fa6163b66d68bf00c627b91b9eac817ac9517dcbc63ad2aaf077c60f49dc27af5bad0521982116da14f20086966298b3cb9c53cffd23104b024de826d97e718a1d17d114a702cfc73862c3c26a0119a179963b7b21b2ce06f8cfbc776c390b4758b4507d2593261317f8fc92e3c46e1601aacd6f973183aacd77eb266fcda5f7c07d068eddd65c7a81ccfdaa9d5b83afbd3a3dfe93687107bdd8ad024b5f50b7d808244a64b9d33a5d2ea36727bd2cbd831c0bdeac5c3f0351ee6f30df7116cb298ac4e67ff8de8e1faa7badd6250831ac154f17eca5ed74154ec2ee51e74ba1a8510c12ff2093ca7d2c98dec89dac3c80fe99001d40ab74c694b1990fdfb35b0bbdf4cfadd5a015d53f41c49cea7ef73dab9e2c8f9b9d72666a49bb6c0291c5d81dab4f39eb4e9ca60fb93f64a565c09c967699263ec7273faac81453da4260bb250fa0871352030e2adf2e43a216b2b946e177ba6389fb22222c15f875e964f948d184651992f44713d96333df0ab1b66972fe868c305103b982e46332b4b709f347f9ba10ee37e1d57bba0e8e3c82faa2e74dc6b2e0ff3eb060f40f6926c96fdffba5022bd7bd70e53910b3fd4bcd69a3c918a91c32d7b3e692d7a516f2af99d47375997f7f3f1c0e0fa8bd6d95e53934b7c27adcc62fb1db5856b08b17f2310622e318cb4b0469d7865db66070d2f47894612f84f138deeb793e75b8f316cdb4687350ff763d6cc40c8d6afb4ec2cc34bf04956e5ad51bdcee07275dd71d2128c82e3665dfdd161ee53ac25f9564ebd0f5e9c66cca0422ac29bf079dfb717249001377e4c369f1439b37aedd2c8926c0352bdfc8e1f6e201bd019bc3d553d24de4210f2890ed3493f1af09968a00a90c57c0539a47721f27194d9f0c790407524e40eb8b95dab9da1142cb9a7eb4f5c28fd63f166fe2cc3eec203255bf1a624f9346d71c0bfd06e6ed3f7048f6be99d8dd1a128f55a3ee78a8a3961de36e74fa9ff13cc3aa2529163c1193437ac55dac81cc9a11da3981d8d499991644a4d5a373b1377e88f89140e3e7ffc4e7599af5ffff778cc00dae6641a895dc1e430323be8ead64e18870463ba147eb5961c625a30af361e481c2765a7545b774b75e17e86a92367f00212131ca2ff9cb246b077bdb3de789ae833b0dca92c2d08671884d4233095248154e3c0096241af727070f47358d17e336cea49dc0b7c926e7e62da55e6f73bb7d2152e1a4a15bd9f00a8ee1968c89a7ceee7088552764571e30f3387258f4121c7c2e58e7eda3950f9093a5aa02559a7c33de3a86c094607c6c296fc818b1eb2dd0dd2a88e6bb7024f1eb28ea3a883e62f9cf23aa2baea6bcaecc92abe20ffc55d20250cc1e586220cb5f3f26447220c6db81debdf566e3a8f1fd01b12a10efc9dbe7f18a53b904e19c4ae3abd1c0086bc24d7380817f24728432613917981daec8f04be1a6baf78eeb05a6320c255e24f5d250edc074761c2292846d5815d4677dc16ac76bb66b01d14a70f57cf79f82a3994b2bc64269d5f751d784bf9f450093eaabfce36bff4ec3e119aa9cc8daa6fddbda36caca9772208a1b1566d6d8aaf288eac2453a0af5bf3a4b23cda6509b5b8ed7dd37ca73ab700b79e5ea339aa205f2e5c58dee8fd243a205f3370a24cde2b135ac4403ca23a3df8de13179bf04c8d227ff429b1f2fddaad20cd1aa13714fb95f52f597ba8666f0056d8b25af7e36c61e07fa05ad47215722416760be2ef3c06045660f7a3f8397f6163f30b5169593d2cc1ca735ff60063a8811333d0ed599c43a0a9568f5efa263c63a79ff0788a670ec2fcdf70d3871dcd10ee509a50ba556bec8b1e346a97b0c0c4540e867cb1129b6bb24a4abfdf747d0a231413af11c9740101d621b74f8cc3fe2a21722b92a8c391bd46a2079a37ba7c30c9b081dc5d363df57d7a7b515c850ce62dc309cf08d9640f4e92028b7c6f1055abf4c197051ecc1b9c4857a0f5c4977a828ce949d2776615a911db0ecdef5fcce04a203fe34de36b0daaf650bc0fe8e7e976f579232cfba0aa8a700cfb54573f3a4e150524ebbd3e2a67401282ecf55a9181908c617e83b322b641002bb95c8c04361fba3dc31c54d22001b5d1819a04b86aefe36281b855d69db50f582bd1fea5ef94f0df1f47afdfa65d15f3fa9b8cc91a751ca68a58eb49e3ea2cd3e1d6d45db90e7b9ad1b64d80d6cf112460dac98ddab318|c718105b60e9361dac2eacfd26752ff4|92049cf1f589a0f99091a92266bd4f24900599993fddbf7f1be83e4e5f2bf7ec10f2f04453a4148e9a048abd7ab7cef26e3403a9a96f8e4ba2f923f9ad98fd79|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA74lhnPV9buNTn/85KTjm\nSyntmH2PcFBw9UW5SEktH4phZ7ax5eCs6b9qkt5WPFhj50WuQ6bDzX9CYv61VllW\nRq1FLY7zLQfwQi64rsJEg9HawSrQwrx0AkRqtQsb3oWJAc5XT6pQJ6SrGyXb12fd\ndmrauX4hFUy/3VOxoLokiT1oaIQnXR3aDr0YFS+gf4Z7XmMlVDgjpizfMx/YJw+B\nA9HaiY0pkPzOVYp/AeCgK6MLuUU1u7Ns7PdVKkeakjHAnFFFKmMbRaFFAN3HCiAd\n7uB/LaU0JHFkOubZZz7U/x0exIQgKwF+tBUteBmLDjmrQurnqFrOwb8yvg1rEdR/\njQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (111, 'user', 'user', 'E8qztiAy3JHcaUa+r302P8rKw8MFl2gylPqvU36q9Tk9k4dyVT6fSpmToicshLqE1g1/VOXDZTc+fJKe2wFqQMkuJCNIMvp72iXjsnq3AmhldV8HYegs0aGdFKujvFeyBLb7a0BLzp+R/MUv3WvbA0UtdFkOjD5ROP7jIL32ZwXSeeZ3BFGQRS9ZtYDP6X6UmGkTzauYY02P/f7xHyhvaqOB1T61vjgs4EznhfWdiCMk6tV9lA9JFd4l1EGBPqUlJqYocpJpVAJPwRxWdpoMVwI0af85ivnu4FgaLonF4Knlajgn//1/gGvC4xyMHD8oiSeFbFQUtGpkqa9/2B5mMA==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '888dcd80afad3f7b988aa6e56d9a69f9f1c25b26f822480efc995332969a50560d2d08d31452b61c248e4527370e2db74dcad741ba2d1271bc135197981dd792', 0, 1, 1656623681, 1656623681, NULL, NULL, 'cfd0e2543144aabb70441356bafcd14d008a336da8c445042cf8de11f4c0cb2c862e623f888c70859c97d9a1eb3c54a7887ab543cbb538beedcf2184329a2e673d366c0b1630df59853e13db483aa4d3f6be0d8795b2e3e15028d9da315b54e8cec4bccfe8309cba5f914e5f56f07c8012fa89f4c4be8d35d5ef640ff26b0ed86f03e4dd467fb75fdbb831d92d313d39fe94b5d32a099b3f820c28290293f070681701084a6391b66fcfcfbcf7d9415000bab643ab645ff47435ba5aa562e7138e85e76532ddbdb668b839ee55fabb238282c8779a21014ef6cab7922ad0791c5527a7b24b4d41638c5937da8f60445d0246c8bab4ee9b5ad25754a6056873eb9f19cbfb057670d486509627e3d52bca05ba4d00899d0ac9ccbebe4c5d2b3f49a2ee5f31b0a4661c0ab03e5e1f998ed7f338c671f62b23a2a5586723223648db8d55450d7ed05453cf20138fe5557dbad7b30a1aa45995a1065c0a386927e347c1df679dcbd5e9e637f840370ff1007ed8afe6f36955dc34acc20d0fd8f4e8c96294729db10b7ed2d48feca3a18e1aff64a3e8edd0beadf3664fce121d0dd6b5e8ac9c199a30edfec67dfe7592d3f66cf5e33bd52ec896ae8f540d9a5da1091ebdaf89db8b4d7f8276b9b5fecd416b720c7a659a285c69fa93b2da825502d8c7dd3de7e63fd0a283b8f723cb4b97c61e8794d7b49f6ba6931188f780d67f7e6c242e56d45117f5e85d7339156e05ba2402d8e76989537cbadba597f16352e80d2a910409d4216f229fcbdc13047d4eb7a8a59cd040982c1f630e8c06dbc6d337e249f57323903316bfbe26378014cb223b902e46047218f1163f637beaae676bbdce9717a590c9c28eed0ad858c183de27a494f1ed136b5de825db03e8a9f0c288e1e89cb6fd73fea5c1cdc315d094ff3f169c9548d3e270a7aec2bce0337847cd2075a3ad3c1ad89732f0a955adb91633c1e8437f42807554cb287ab18a25dc2333746f4e9e3e6c7ed55bb5ccbf4bc892b1007005d09543afd1d3e8162060fa3ee4d8f73f3012791e17cf2c211c44b9753849464fc772252f08937e8efe3deb1974b050f1e6040fd539e0d7e69ca62538a7f7749f04f9032419e350b5eefdcb14c4202403984441d2fb52453230d4fac59630badb81edf4436f780ee7a67ece889fa8e6c2e25b83a2d890fbc06e5d8c66d26c56ee4fec9574308cb9d9cb021c91ff67a61ebfe19a535166312eae246f12521189bd9992a2ea9589833fc0ddcbe152affec1692d48049a0965a032b560c96c7632b95fe1e81658c14448debbe4d874b241554fe6d22e5838fa49f7e33628ccc8d2a99c5d1206fef4cf38ecd0eede2b2f25986c3f238abb714c15704323a4e721b9d98a21607bf48cff67aa80808bb33b3d82bb7e2e9aaadb3cba6c0c9e7ae31f9162a5a5b9076f1ec8051eda1953d5cbf36f5a797a9f65009ec719b4b97ba972812d346834840aef0ded88731ad73f08f9b368feff36b35d8ccf616c35c3e59e0ad2128019112f08364aa0497210c9179f1571461f31048ed438b5802a74bc2c65da6de95cca42d60f97c305d64c9effecf5c2166d6c2a21862569dbc7de56d39baf1839e108f969dd41f7d24dd962ef86425298d8c5970a8fb66b3d7b06c82af2e3ebe9f6c415fb3fe35143103a731eef86f14b453066a1a7c8882c04d1d6b7dadb436a199e61e339ec11395fd3232f95c160d6fb665f83e3b9acfa0059d783f5b8cdf788a9fbb45e4434111cc19092d43966d50f60d82300cc1aa4da53ff629abffbc1e0eeb967ccf51ff18505c698006406d8709fc5310100f6b1cd89af4c75bf0156750ba362ad8de2aeeba973263632784e449ef8437bad1c0b0b18b16f5b3f560a3eaf32a4a66c52e66d5a9d75ead1c785989270a2e6e96a9007de074aa8db60c1399cd1303dc70bd8ff123be59f04f9d6965dda0d758884e7ce06b731d9c151328c34c19cf5e62cdeff6c656299cc5a0ae7a4dd63371c1e500a38069df915db1aa4dfa085ba727dd4f88fc1b8b296512265c804b382e8f214d960088b5b11931ea9b704c2c86a7bd3961f837c7a19c343589f3e519cc60f76d5512410b03e357f4c491bd00e07abb5da24d71388301e6e6433a4e9f003871173926b8c39904c9798cd51b0f28b13253741538df613893b179236f73834d868f67c4ab15e3e05ae62519cc48120c16cd5e5b8777eaae06884a264f3e3235d3fc6347cd6abb70215285dd6b7de87275d405b2636d2af5fdec24108cae56020c21890520937e13b8dfd4a8901150a810e2263b93bb7f0490452af11f0227f50a6023cd3c191320486497feaeac8b3cef108ca2a4da362d328e5654123a244c137169b584b59d7cc7a9450d4300512be2b6f8fa04bf060b3bd0655024a1f080cc73d|4317d0d5cc6c58f762785f0afcb11466|aedbd1fc6eaa416db63051b8d7599371ac8d428ffe5e18da3b52a529ec3d41721111bb352f743c7c5692e1e69ab7d5a678881b69e54e03b72bfe006e200ce053|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwauf42PgojIbOetyuf6L\nakJIZyS25fa3SaGjhnKtzgaiYf5HUR1wSewG1DdIwWRJSH4NqX5pT6X1G0N7BBQ5\nwU4LyZZkb2fonJg67CmCo0Hg+ioekxrxR3zYGx+BQ8bbdrrO5WYp5Mfsq+mOwvdI\nfyAJrq7ScFaowTRd/qNTUC68tZ+z40OnlB0Bin8OzvKfLqKEHTlDryEnKD2WhkHC\nmE/ItqqPYic9sn3xWbdNHsNY/WjKhgxYUUCmOH3VdF6HxPGs9DLGI62VbL5H0XKX\n3agGkZSd6/9imoJkDQA9R/vGcgFtWduVtdR3qTi+nmMT55ejiS7ZJ+jdokaGmpeU\nEQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (112, 'user', 'user', 'XJ6d6CPmFp947PPWuoj0nEVi7LAj6kA5C0j9f1lozq4yCGlSAu6x8/yyOBYXVEoH7wW/HiHxlpyGg2kayT9xuHd4cp9fD3miKm725FAbUXa4piET2nUA4xneorjFzr3el6Bnlf3lAhxuU3R8h8cn1Mbel2gvWSZR4+5PpgtgTUzrsXrlEGVZoolGX1bzNsuEVoM/kOgNVQAdMC0MJQOO0rL9jeSlkLIrwKvt2ywnNPTcxNixHH39wST5IUQoG7WfuJlbQqfLE5r1Pfi4A9t/dvMDufVD/fW4kc/QGnYuRdfrkyZ9bN166s8c0AHXMBwa5yhcDnffuwitXtp+ikvtsw==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '69914b109351387ee825c15c9212595fce2da01a135453249c28715ccc1a967518deed66cf123c44cef573bc24d7e50565ab24311e6a27c4425c4977d66edad2', 0, 1, 1656623728, 1656623728, NULL, NULL, 'a70c8a8b2c73e3c8b80289b075d9314807aa61be63b41886ed8381a1c685fe0e6ce98d2b94c78444364787de86884b7e7e7fc84486524240a049a387806f01ef22a969e858292882ae1c615e738eefa9fcfb6b6141b55e96f5edaf43e67190bbf17e68ae66eb7e268309a7e5b9b4f5364d0be62ffa3aa7d4751924eebf6c807c368f1b0d729e3c2bb9c618a9c38ba582d932b137a1606148ce8718cc702b9ff7b8182b2c9fdfa19fb2cbecb572ba2cb45a14da2ac7b5a6eb44ecbe6d02b5a236127a7de8fa1c35b8a97f367505d8b06c232ef56f0e171bc838841871e83366392ba4e22b2cd8f7bec99927da951f7eaf4afba7965a8912a20fef0aac382ad305bb21e41c97deb30566acaa68421aad8ee4b5d266335fbb0d062876d0646cd0904834a8667db1f5dfbf5185191e4c38e7e8f50959f8b45280c02f60302dc221adb9c1214572aa6eeefe6beadec079f1748de70385de029f633beedf2e293d06bf03609a83d31c0ad101f51fb8f5be2cff18b8d516bf3f77d9ee5d9d1bbaa7ede4935c5d1e1b3e3a9ca24ee9f8b9c4cd877c60ed9a2735ade324e898a58372dbb08e512db32f3ed272d429a44f7b0894586e6cb2d12f367b7f341c913d30f932e40653c497e87242d47dd3dc7523fe68c9fc55aa0106178f53a9bf7b156b564b96dab6e0ee2aac6dd72249581c583b2c08bfe58d1dfca52d05b4fdc3400a1d5309b295a770679c959ebc22c11ca26c26586a4d940337c6577809f497e50cba008c6fa56c8f560c0ce452339bac9815ac9e10e30c979e80086bf878bececbaa6b23c5b6892722824db7485b1a2e0d8fa475fe5061ec8a90b14c2854e71a8693bd35a0f67e6fb8a97f896e0728a05cbc4bb73b730d981d3e41dc0cf56989e451e0fc3cda1db575c1d7020d1c6158dc31fbad7e9f3b8e8d22cf70918c9959c53c254222f5d811c487bd4d1107e909a525d6200f18049de774bb75e58577579a682a9b7dee9277cc535f41e188ed19fb11752025048de5a0ad6b50461907dc275762b7f231bacca723e884c56018e3cb14af36a803f82bb1c6fb23f75efebcaaa13d30654a1d561e5011a28969d03aa9a81730ee3b7ceca184369c0785b6ee56f9f499b7b0df2f368b195133b124add1fb3ed16c89571d1a1f56cbab7577955829940813240985aa33825c526b94505a743e19b4f61f26eeb47e96d7f97b4635aafce8619078a60dcd1385ff63252d2498fc292b20198aa6cc54079dd264f4c970fbdc961e7f4a991d1331d4dbf3f1547f6071ffae0617b1bcdefcf37027c6527b717b4e1355cee2e8a62a9b7db845a44435342dfd5a31d94d7b33836a5f757e17071ca6575ec352fc11ec65e9c19ba5657543b6ad19ba36d4d409597b3f44b77d8ab8c0a9458b27bd64cfa521e67b68498cdceacd376acf46d88124586ba2debbc3187525fb484af805236d5ae18dc413d64ac2fb4a66fee675eefc388dadc2dd10d435cd6c9069935adf0a25f51a6335cdfc739b0f6fe23e7b9dab3fa2f3ac9576d8d658ccc986ddb5b81c4d74890dff59270e8c98415ea238d96a5fdfbb955c63496e8b6e11f82138f19bf7f57592ac8509b6b345c5248a95ec8a19254ecd99c55ad1b7338c16076c320aaf03423ef0b7513a8440c2b312b76a6da0e5dc7bcefcf386f2735ac767d28ab4bded18651bc6e3afb090e6fad8c8691905365db403b2dc75bc65efa332b4df2c627dcaa5468042200f9127f9b918cd6d1f0a8619ed75ba097f47367077bd0fff3b6a041389345ae2edb60b3bfe545a26d699ba61e76181f93ee03ae67e5c3d7f642858613bb39d8fa97cc0153e826c33f75f827791a2e4a6d1525e6aa4663f15d244a906fe6a9821a4735dcdff8c83d3fd7e9ccc71237558de971d87cf788309983a6e1d7734a45ad0a8aead3b57f8091bd1806e94eb7d1a12bf867a23a0cffd2642d297cad1292956d3bde3fae28309e786e409b688e898e68a1ff5adbb9356d0ee9ea891429b4e606aa066485fba2ad9d39cc48fa9a6927b9db88fdf155de871ac3a76d9d8929e8ec994faad481aca958ef87d6001272ece4a23ace4e01fba230389c3738b32d2955bf765e3d5aa9de79a447876ec059b64d14b08c85919c0bb26434c5b64921ab3923805c2f3f91ef26a48120d012e49f781d888271627b95ef5600b911dbcd2a8246f732dbe1fe5b012831667d21a1415194b6f6341f8a55df5f93792ac2d26cc081ab83859c9f1da3c0c9277fd05df53c5871dcd023f0e7abed0393fe0642d082a7c8aefe52e83d5b9e33b53881c57fda5f39da9747c66a70d1d63967417f4df53a7f0bc3e6d782a26db8a79297d5fcf25a68465753163ac83e8033cf0a39b8f961540907cf829311e37994c20eec97d7b9eef7a3d05fb48372d1f369ca0|6016c0d8b270084978829ebf46a59304|65d0d1fb9a3dda148cb900ea95c4a8ed6a81c006e3416f8dbfd47cd6ba043e6c56e44c67f21da4947268809a973ba6d6b245464b2f3c0eb9ccadf920212472aa|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlKp5UzzKbfV22PjLFLZX\nIIF/cyHs9bR1plBMzdiVFBe+/tyrblVKmFFNXnIpbwu6ZM1/ltabm/jZ7mtxE2Oc\n8V5/mOlTLH56G7fkuD/FBH5fnxyofJlg89eDj2UXp8S5YHR5ezSrirhMN8o8hTJb\nY/tULGgaVQjLSEFekS2RVJr+k/d7Y47hFkW1j27dA8cmB+pA1VDb0k+XHb5jN+lL\nENfNO2xN27CYZLOpvaCmxA2rGzmnobQTtbtjnpL1cU3OpWvuNdRH6vqB7wHeto0v\nfWdrIpYh7Zm3SjFieq5uouW/78M2QjHjEJWdr9r+GQRwefWknO06WIy8r4rl5HD6\nDQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (117, 'user', 'user', 'D5EvMTi04cLGGnxhaLJq8qY7aOJsZs8QhAIdncN4C6O9/QBRPmAElNGiGlAgIUcTD+dWtnu+AZxAALgO7HcZ+mYaMfuVEsk8KPt1WjSOulY2GTE+2oDWzoTy6hVrYQH1HNRE6Sg3c8/YvW++PxwQLZTrfSvYE1OFHq0N838S2VS85dv2/kVK9R7PC1ImLBQT+4lqdBlindz3i+T4CaWfYGONEItkSIOk3IQJCQeyHfGQ/PE5cb8mJ8d6Xo4DRaImaKMlzZxKbHsLjU/I5K4UIMHZ5VgFn08wwLSNk9j+f/5fsY8V9FNxS892szqCyyIILc9XNL14MImy0hZUqi28ZA==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'c2787c0af3fbc4bdd161635f37cdc725b4c67b3b1c2fe44ac3bb75e07ec60d585209f0b14dd78c9d4e521d7d8d552b319ce9540db2ff9034ee1f837fa82bcce9', 0, 1, 1656713188, 1656713188, NULL, NULL, 'c606aeeb349ceb51753f69d7169477eb2da2179d58cc2adbbfb122402d49d83810ee3cdf68016f8cb43cd2cd27ff7f8784b409080a84e4840c2737d7dce88e453dcd6f888f68488312a9181aabc6310430cd095cd707989ec518fb43965def34ac5628fe0e833aaaa38dbbc7bd99cf403bd98343b1424c1b5ae6e5f410cf9795fb587365861ca624880435769bd8b5b3121cf97492e94053dd3dfeaee35eea4660d3e8271a90b83710185cb83d3cfe1c65bb3348ffeb3b591bb194806ebed8822067d22e0d9ee20e8764036a5be2c2d18d821e607ae4dcbb31f635714ce2d3508d4ff963f5115423e7c0f6db4baebe7005f5312b4e8df919a7bb89f24cf50aab49bd0269878c15d0f3fc93e5d66e7bc955015a62b3b1314d0b2058bc8775be1894c7e7a989b11565b13b324641549f6e591404b438ce279a7512f4be8e1b4412638140e1ed719ab94d30163dfbd962de1761a66c2388baf55ec79116d25373f25ab94047fc5498105e287e0189ad5cce7250adc4ebfd7be4d8f008ced80587f2a569a2596ac776f53f91daf61b6a3505c68b3f911185f6a7672854a36100d06fb074cb7eb442ab1816ac525ccbeeb9e6dff1a6c485419d033f18e086e4045a94ae8689816780692e78cd693f1a70b2484d75f86d5a457d33b1c52ddada85227b5d87fad32500d1c4d97e70785f5db59d8931ad919a28a25506ea2a4f9da6898d5be6011a27a42edd528522cb3f88ea830469b92a696787efe4f3711ef7e27c7200ac78fd7212d6e9bd65e8157ad4c7af65d678ab570b218e91d997957985a01d932587e6f79ed4512302e7dfae91308a53f69b7fd3ffeb20f154351fb738232033bb0487e33abd84d60a84f13a860403a45a8be8af9fdc3ac4d15be9566fd3354abcd5230689bff5779d972ab76b83bd864d189ed316557816457faf17b42a2b639d01cb9b39b11b188bc93d9db54d8d5b6ef14c08ec84e60dc55018e7347fb7848851d436da1c1e79e69cd7c5e870a1490a6f7cdbcf99d6500df9fb4324a58c3c23ed868ff8e9926ea7f8316821ebae03e3f9755e45fced59e47c39ff3a056e71c121f41dc5509072b7104af81a41f6ace3d03efd2dba3018c349f83029b67e67b64998ab5bef56352b0d21d35c0bec317f9dc25e8f83e8f499058319c0337b9fc9f84e93631db1ddd57476d128b1b747934ae723e929e657213758765ccde6b2eaa3eb2dbee427c99326640d6edcc997c57619e83e1b28f7592bc91526b67ced2f4ffea379489fb60ec1050467c9595303ab34af14e561ed12b98bd687c44f462b7a52ea3ef67541f4053676198a04ec7de0a5393f815511a7df1f4ef4bb70cb0f596dd15eac6febb746e755724836b056af88de973676b2f70a55a5acbc893ef4190925045f14ac66e4ffa160cd42cc93c716b00778efa355babccbb963a5cc97518f18c42de4151bef6aee2f7a254c9cb1534e24eb5d6d28743244b49a8a873ab91a0f1aeab292d77f42898799742d4e599ec420a36ce3c7997535423a828a5fae54b907dcc247e896c0e8bdf987583ea3c5b62bc67abe12344a8d816c46fd1ddb2b2f50d72fa84afa387582032bb05e60eef9ae6142b649273781b00eea17b787c5d293535cadc59b61ac0c2ea1db486a9ad532700c3fef8a21a416b238c3de412252f0979280cda040b852dfb9d61565c007896b8b1f07835a5844490ad3d3502e6d97c9da042f37eeac9b668cf17f80e93f5b899f24715e1d5aae4bdfc4b92475f749bb7a5451ad1fc9c4ad628dc3a87dbbacee58baceb5dbc78d808e6f755b05ba15d2a957fea09a91fee74ad6c334271ae8cbcabd75b18ca2b2b82fd57b38e83b4188125d4e81e84b3cbac19b7db086f3d282ccac099d2ecc79646b3cd20105b667e15cb2f964e1697928386f1b477ae0e72020965843e0f0f17fc85286deff3e03e99aa07443a58705a7cff221c6bef3675b2b69e2105d8c1ac7b1ba6190e54f1363fc58314d984694b9d299471c9c1c6b74ae335e3a3b74e64221b387d8d613aa828b4e94e1cbaa3d065912f08a61d2cfa48b089620397bb38e50e62ca19759da6eed71ebfac5a7b1bb1fa2aa36a2c5bcda6b2055c32aafcd908ea6f3b30e78413a0819efb4c5fec42630c78222f4e8b43c808f2d00eb6f2a3a227aa15dc4fe9b75939ad0a9ce9b44decff307abf1121baca4cbec3e63702ae1630b846ba9af687ecc5d3feb650630ddd91d043ad4a8974d9aa71109ee264e169a609277e82fd1db4582c0ee150e36c89b562eb8dfaf7abd2198bfbc7f5e961ba20a6caefb3464a44eb055fbca756cad9ace0ba3529414a9bca3e42b4530ecfb52f8bd3c3dc37c2f115c937f12114f0153bd204d10f409ca07b885726f5cb05b92d24b78354688fbc7d3b1fe49138f2855|da0d89f0c64ca56402a0a881ab6794a1|c1fc703dddcfb198c8c8058108721dcf769d2a083248dad4b8815ceba7094ebbf086bef515049caf2f4a972dab3a9cb41e26621430ea19ed6db1f6b2011c2394|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw0dJbNytNMkyR+peitKS\ng0N2DJ07EuVeD+gpmJscOvwIO51XhdwOjzI6zGtpUc5/8qTA7IYfziKjWPX5DPxd\nenjUIWs5Igbw8xDZfd1Fgte2XvuONpvRbvU+2BP0lfAS7AJ5McHVQLHPciJPQJj/\nxnU+468zIN4DXLjteMXQyVHZEuoH1CeZ2fObYpXDw6+E7KMFhyLzXO6MXElWWNka\ntxzWN4efhs1zL8aFwd561EkQO3TLebP88wDMiMmdYAeh4a5mRPqaMFZj27tm9SAS\n7TGf/XzBBvh87cFmLm73FxUz/8qeXkzfa11KKu8Z2Kf/JRlTJTPwq89/jjMioJ6P\n5wIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (125, 'user', 'user', 'YwCHrQd/NbnltbDdu0oxXZ2yoa1+Yml/H2hmAu9M1uSpWrthaDQGCyHv1Al4Sukqa79eQtxByjKdsQE2aLRlFUF6CAnoD7eUSQKQectfygiLPnOZjxe08tyzJpkFNQrc/RFE78dkAKhhwkj7agGekODwkODczwEg5E0Xr0fJkTnxc+tJKPolJ5jHg/Xv5trqMPPvqIYxMauIEbNNbjyPbEArJVmmhoftvVl3uBtQbsgXGBInNUyS5EPB5+yMC9i9WIBfWDgGim87hCs3ZWEDOILp15TYJxK6vdYSO0TsXbc7M6ysaEKc6Gu5w329vA9liEX0BdjQI7YkVdqaL90A7g==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'e3483a299f3b42bc0cb2aff82d52206bba96ad331ee104b6dbcd0273c2e97d177fd336ead230c9ac3ecb468efdb6dd6613ca2c0189311535b4234594a894d021', 0, 1, 1657060366, 1657060366, NULL, NULL, '6d65dc4c3604205673d31bf3a0775e48f3a52598e12982635addaa1f563997bba30d448b18bd548e8d2e8f9ec97b6f29e2f8d979b67c237c0c61c1269235056f4e5760778fb464e455188959ec77012283a2ac7b43ac444c7c6e3eebd71fa37d5c944b6cedb436b4434ae1c9433fe952ae8f8fb252a63e7973886b0cff873d823c74d9e27ac0100631a9d120607b2ce8547bd04545dda611a4d056e501cf0b9aff0c56859eb0c8bc2e343643a1f11dfa067d68b1067c16089788dc2a0fad2c792520825ce1f577d0625e9df7e4ecd669fda7f9866c90acb46f9d2ac3271ec3e1a037cbff1770f847a6c70f8e6de2653798a2c62bf65b7eec7f7dd0db2351b23f018ef16488fa26ccd6abd188eefabc815bea688fd6f49ffeb496f639f57707c2dcaedc9ec5f38caa5a7b26bbd0f32c95f05501ce3091d5961c53416a3d1e72fbde99c925859bb8b3fba6a1d4400c03052a1e44bb5887e421fe5fb3d557fa22927f8cdbdac2f5e5ae9ba1a4fa6c4b1961df8e6a56e3715dd17883d14f8e23f1efd9f969108fcdd033d33b30e176be4710481eabbf04cc79b97b5b87f2538bb7e95ff931e9cde44881ef8f191fe3086927bea3372881b055226a6572741167907c7ed1d6b636a478d883ac5eb4cf8d58ad17d26d5009606bb838001bdacd8a08d9b4e2689717ff0d3d21cadfab825052838a03f43eb79b0a007de5f74b07ac3959dee67a5610a3987473a2d19c5a5ce483d8baaa99f711f3654e5879ba9e157cbad0c42186cb7d7fde2da3406cd232f5237d7706c11c650c2152ca0acf9cda99cff78fe541e0d5c22ebdd5378c4a85a0bb5a87893d248541bfaac28faa69fea301c801f53e836bce2aa5cd23af246498df40c8236931c84356ec981e97644fa52f2422ef0855f8148a08a9ea5c829bb462065e7c53bafedf830a9410faa665ce7adf53a08a3f6e291e39a0de37baf62b2ec58fc305a2971519a08e6fb3665b20ffdf0abe8599cbdd5d7550c0702c4d17730005491aef4b48eb76e8a60e31895a709a9c81c680100224c613261c3d32a7c44f19ee0af4bf003376812a4107994baee5af461e7ad0197c3bd41713eafb863cc9600fbd515fdafc5009dfe22ac839900b5ea0ac9c40996522ec5f235445c14c7081d9617f60505a0211d17407bdfea0e8cf873f30702bfdcef92bbc20e37692bd3734b7b074fafe68ef459153e6d9003784fc29daece1840727e040846be19e153018fe9001d2d94997a1ce49fb46086ba94ce60eb109bcd20bb4db754c24455523ec50e1b54daedc9f0429c27d8ac69af5d0420dab6da405b3611741559dc2c5361355638a89f2040dd94d062bf12989ac627de9b68bc174083eb534eac0daac7984315ecfed28a84b851e1a6d4806d746a35233d37da1958ead8b5408525b373f1719b13476018c56f5cbc0587f1245780964271563efa7219a42738b0a7c0ab163eb2a0fc708661576526f4cd3d40ed4306016b61afdff79aad4c580f33b31f8c4468aeaef57ac4ca29bc050a69c4791976df7b292824f1f418245c6ed413fc19b8f2b2b146c94a95691113940083541f3fc671bd575b0c7e2b031ac9025acb9f4377efdca5737ba417537d451b04da5b3241a61badada8c8ddf609310dc3d6ebb85a71ad219eb40603401da4eacf33996504fb7bae6c193f7032228ad2b5611804ad619f3a7cf33f29fd3e66ca3c96d46f6c5054ef42d87b72799ae7cb1c048b95c20ed5309fc8aa99512b93613b3434f359ecfa540dc1a9b90e7cd28e446bdf908d160d352e12f3e27c69989cc6cef9fca5d26ab0345f9e354386e9ff9a789004b574da6092a6d5231c1d45a311e053e9250e93b04a5bffc28e83771163a091637de7d94236222442d87393ab0723a1902fb563f63593bea29a69de1c2011ad5452dd4290cbabe88f57565f8e7ac268808d2cbc2ddc95cf77a7c2edf462527b9c471c9ae742b9cdb3f69f54369ec4de2a0bcb777a6901e8ad01f68833e3e85f90c8f0527ab9e4314d02b4f9b1780d09d3e6e5b7f01a2c7942a2f78a1eb9ce4ac72d2e8c8320c187c1c30abd4ee82dea7a1f6c22c3343185b0985efaf95e126b2099e1f41744a14c5de442f50ccb36489c275031115872fec48e2cda12dfad1710d7e2ea7dee3f9451033d89e598165491d115730049ec4e73cae91d792976d2378436fbf2ba92eab472e78a70990f3d138746e927b2c05c84c4f5ecea1a3f8086b4ac650bbf084ab29cdf0c2848dccae271d38d1e42ec95f9b5fdd058bb59dd5fd8229f60ce09e447fd4e52613a2d5776e00f43da838f2f07481421107690797e0482ec6448e5f424f299f8caba358fd952fb5746331d16d6a6af81acc0ad35e2299288bc907723cd7596872149dc5c1ccaa85c4cb0abc5f15e1c5f005|b2fefe47fb3a6d57070b5d22bff66634|d03fc7c3238215b3a38e230ae2674911aefe152c463b4521097b2485cfe38208a3f35d659e375b3e8f484d0be8584dd38f380b8a2ed466f0c166862d76fe547a|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtkvJ1O5MeaxCcl5FryPz\n6IscQQnPmIwIbrS4o9Ja15ajK5+kUNmvxvI0yN3FOPI+nlfoLQn1jjHRr45Nrvwz\nysqo04LPWU/pdqAItqaCh5i66IJzyYF0wgzjc80BVNttUjX74CHPRqsGpS9Vez+v\n6J8qzVBhg9Mh/Ifkib1wiDAh7fyOtkk3oYJiQboKqcxc37LWRof3NY9sCo1Zw42O\nBQPiRHFqPIyFDXbRJ3qhSK0OB7mejXxFJVPpd+FW0szwcgdlAUtW9mE/23zQwjIW\nS4G/4fI3L/Yz/ldxDsUkVJfpw8CHCVrkgD5yoWHkHbedjes0IjqdN4ipZc4ksL1q\n/wIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
INSERT INTO `oc_authtoken` VALUES (135, 'admin', 'admin', 'WZtAfnmDDkFNtKJ9MrrF9GSj8XoSnmrGNLoaTSpUvNsXyGqT7uQbz0hJn2eaOtJ+hew3NDBSbhoNs53YQ3VVFVGG6gT/hmzcjgK/qnsbpnn+qrxMsJBiL53wpP7YWi3msysBq6i2RQqEQZyXB9ti5CWZq7vVX9WvOs0b1iPV1qE13cY7sHqZ8jm3pb6gQ/mrhk7UALX4DUv/5Juh99VQBZC/gV+mhnAua5l68d06kuBcUv3i2O9AHgw96B/P2mpSUdJhu3trca+fAJzkGTmE3xSypag6WShGKeFXPAz13LyIg/O39KqKUTXgJJTaD24QrkgHHVl+0nLEYxRq9VV3zQ==', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '4f58974491fdc0e1001d4189d79936ea231ddba4ccf6c2abc40eb9f215be12095c1fcef2c40fdff8153cabe1e68204c7478801fba3ba92b2dcc8938dfda89293', 0, 1, 1657748512, 1657748511, NULL, NULL, '554b8d151381bb7d75729207d8eee0548d2c114277cb183fe31e405dcabec7779808c6f2b93f11936819659133c65d4bdbf2c7fa6fba241b74357f7836981900212355fc76aa923337725747a7be44484ce9fa163a483aea58eaaa8229bf3c352431478604792ddd1a2ae72df98422481d5210c6ebabfdaee530f60b2833fb492847edc773448d910d9377e2ec088f3f42fd7a533f340739f8351e4ea62b9440845a409586cd3297c2ec40bad5c33d5b961fe6a8e1937962670eb1ddd9e58a5c53bdd053f687defc0806a45d1569fa87e5ab4aaf9f1b853f9319ccecf33840315cedce3c49cec96bdadad3ad11d6ded6066b699649fd6cd7079afe6a8082583a8d17289ac982bb5d5953b4fce786ba5866b57d09dbbcf5e4798ffc2d99479065ed928b3d90a2f92adab1d2c9b6bd7fb5a44f1db8afe3f06f5c2a84ba4a552917ab3609d9d2579707156dc575f87e38e5c3a63c2ef80f07d5166b7d13d5782d49dc9aa90d76d7cfbfe2a25ce457d20e827aab61f69344e71f54cc2b90d58f3de222e14cd0dd494b94ed04dd2f9f08ee6a5a2bfc9cbcd75468cd30e9b6d7cdc48ce5a62110338bce31adada42779bda71b1f0e97eb21138fa884f6f23ed72b4b987f77d5831bdb326b06316fd21e5ed6e7d7fe908997dc50a5bef626f77d61adb72213d739f38b800e7e12a3109421061d734ab543685bdc619dd7c2d97ed17b050da12f59820b01050a0d13a5058b3ccec3261bfd5787749ce2864a18d23ae408176e19cf0734cd1ed7444665f7452b33400d0a02b15f9842dd1c3268264640a2b9880711de846fe483e55c4466080dd89f9a7e019256a8a2d150d87642ce026195ebb398b32a598715ee286fea0752c95d935e9f67104eeca49a18a3627d653749d0c0b82ee7de630c44eedfdcd7f8d70cfe7cca2cf8ee0db998288e58be8068d9aff6e853c99a836aa6cfb91efffb38859fdaf9a48922e685585bfa38312546161df4328973a1693fce41a5acf83f4e3f1dd3e67dfd25309f90f4bd1666a5dcc18e3650421063ac7172f5dbcd6cbf917f442c5a468f2045f57c4e9d676808dde3a8b87992f59dcde6bb9e42cb578efdb38352f0ff9a46d89941a2ed25ef406882b2a2079435917d7d5a5e13eb9228b2924f7b129ed979a5d3ab63a93dd9bf3d4edd46a32e5ebe2126fb851123934435ddc0b5aff68ef9fb20b628f1d8bf221708f3128d3fd7e4151c52253c7ef01a320200dbc9a53d4906bfde442f19a8230c7b25958085d9aa1dd4af1df775db0884df3ceb6c105dc40f5e76ff4bda7b38e0f15ad8e86e74c5c01c6d801a74e45c6a7256fa9442260da4d3250896d248f50e12898266a290eb43300636edcfc7f008849f0f8be8e1202508a06c156d9fb6dcfa1a495bb42a81c64501005eeb89139cd78b6e624dca591514426bae242009300aa6501b74981e590e5fe4912b758ad4e4b309d0c4288fe9798b95aaf1805526e19e95541762a4470205386fc3c3775e737535e31afcaaeb468622a07d5926a39ada206718db4b7c2758d5471b52592e718529b204766c34b83b433f428dc71c0fcadeee0a0239ff56f9cbc0ada97fb9899ff56f61bd1ced0a5aed736262908bd6230d000296ad0565e482d49cb8fb4a8a4a1b0e62e2c6234c8bb5537457606137b2c6167fd1f5b775c16cb6264bba0083d6e98fb3de1e49c2b771c20a2461d8310eec22d3cf7040851f055bc712bf6117c47a65bc9c24c0879f74e20b9c486048df480a66cac11307acfbb8015e400e67198c1aa532f8fc7c071c7440ea663239c74d69babebbf20834f324df86b822b8dd3eddb66fbd224cbc04b5aa88731c3b536c20b5c71ca342b4bf9e89d1d166ddbd403fd38667bce493e38d6efdbf56f175be27545c304d77c58c6252ca222645d61f8b1042b3a9b4f232531e348bcf0b9f28b25ab7fdd15de4acf38d2fd059864fb42eb1f404e752bc17f3ba09971f0bef61e13a57914fdf602aa00ce2133fc578e1673d21f6ff68a210f8b45f38526d72cfb43d98e7807f3b107cbb38f1b7b239f3bf78ac1a3996c02aec585417ca5b46a71a030c60717ea988d74b5d8a2462209ca30c70e2896f6c0e7a57a616b22b729092a3ad7a5cc4f78dd0847aa7a11a48c6abcad6ac87654c9f81d035c3a8b6337dcf132fcf5233343f60e8aeca677f099019cb9d3244e85b50260a535a98376a4d4738d8449645e1745d1a1b4bb699c3c892ec57cb154ad217ca6f8c047696fd6125a41ff3496a358ed81c77ea16ef4cd11a5bdd5be5223516636b63e664f0ada1974ae0f4aedb0f6e37562b9e72408ad09a96c3a9be67027b57e16407f1a982d10fc453763f3e2f830491155e1e3fe04bc5f43e53b635f21cc5876ed4430592ed99a1965d0849408f83756e4a72|8024885e7d9cedcfd0eb7396cd5d5f2e|f9a858e2f13d5148baf98db98fab3498a240d498200313dea8a5a8eef2b2e3283b8cad62741fe65d6d726fa0bdec5a1bb6526f6c9c7784e2a68409598b8dbcf4|3', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0AlPEFjEcvE3+leteZOH\n8i6omgbibLtAsGmqX3H0kmTthuzkjXeWojO2N+DQDspqkGOy9TpPB0IsPkzNh4Ve\nE+wkV03YmCyL6JDb5mfPomJm/9fvlrWLahsQafBZJEX0qxOn2Py288T4X4Gw10ZJ\nhkpUwNEzz+HYT/JI9E7ZTkkcVz2rBCkNLSOqglBpOBaH6CjcjwEwdFTAw3mc3Vnc\np4J24/m3JjOqaRsQWBG5ssCAyOkx/HMBGeDCrZVPD4NwLuYl/graKeuPbqJlXV7n\ne/tNcAPllWWbfYifrsXE/RTbAKbMOp6jJk3q/BSW2KVrUJYVunLbo0rVWSV35HEo\nIQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_bruteforce_attempts` VALUES (8, 'login', 1655915273, '127.0.0.1', '127.0.0.1/32', '{\"user\":\"khoa\"}');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_calendars
-- ----------------------------
BEGIN;
INSERT INTO `oc_calendars` VALUES (1, 'principals/system/system', 'Contact birthdays', 'contact_birthdays', 1, NULL, 0, '#E9D859', NULL, 'VEVENT', 0, NULL);
INSERT INTO `oc_calendars` VALUES (5, 'principals/users/user', 'Personal', 'personal', 1, NULL, 0, '#0082c9', NULL, 'VEVENT', 0, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_cards
-- ----------------------------
BEGIN;
INSERT INTO `oc_cards` VALUES (5, 1, 0x424547494E3A56434152440D0A56455253494F4E3A332E300D0A50524F4449443A2D2F2F53616272652F2F536162726520564F626A65637420342E342E312F2F454E0D0A5549443A757365720D0A464E3A757365720D0A4E3A757365723B3B3B3B0D0A434C4F55443A75736572406C6F63616C686F73743A343030300D0A454E443A56434152440D0A, 'Database:user.vcf', 1655915375, 'b1a2c2c8ac874ff740dc7668239ec31b', 137, 'user');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_cards_properties
-- ----------------------------
BEGIN;
INSERT INTO `oc_cards_properties` VALUES (50, 1, 5, 'UID', 'user', 0);
INSERT INTO `oc_cards_properties` VALUES (51, 1, 5, 'FN', 'user', 0);
INSERT INTO `oc_cards_properties` VALUES (52, 1, 5, 'N', 'user;;;;', 0);
INSERT INTO `oc_cards_properties` VALUES (53, 1, 5, 'CLOUD', 'user@localhost:4000', 0);
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
INSERT INTO `oc_collres_accesscache` VALUES ('admin', 0, 'file', '2311', 1);
INSERT INTO `oc_collres_accesscache` VALUES ('admin', 0, 'file', '2399', 1);
INSERT INTO `oc_collres_accesscache` VALUES ('admin', 0, 'file', '2620', 1);
INSERT INTO `oc_collres_accesscache` VALUES ('admin', 0, 'file', '2696', 1);
INSERT INTO `oc_collres_accesscache` VALUES ('admin', 0, 'file', '2848', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_file_locks
-- ----------------------------
BEGIN;
INSERT INTO `oc_file_locks` VALUES (13478, 0, 'files/209c795191aa6c8b2cfc80d4761c572a', 1657750913);
INSERT INTO `oc_file_locks` VALUES (13479, 0, 'files/4dab8fc1868cb91d8c12dffab6ad8380', 1657750991);
INSERT INTO `oc_file_locks` VALUES (13480, 0, 'files/b6ef755cfc70b5eb94f5d3aad8ba833d', 1657750991);
INSERT INTO `oc_file_locks` VALUES (13481, 0, 'files/c45d7000dfe97966d6b50a156cd58e67', 1657750913);
INSERT INTO `oc_file_locks` VALUES (13483, 1, 'files/aef894266018a34f48c5bfd4a5c1de5a', 1657750967);
INSERT INTO `oc_file_locks` VALUES (13484, 1, 'files/992d299d65c32f6c9045148c430ef1b9', 1657750967);
INSERT INTO `oc_file_locks` VALUES (13494, 0, 'files/b4b3c85a514621ba4e195accfccefbb7', 1657750913);
INSERT INTO `oc_file_locks` VALUES (13525, 1, 'files/5eba5de108b765feab2525e7603ce4a9', 1657750991);
INSERT INTO `oc_file_locks` VALUES (13529, 1, 'files/b45a8a532b1bb358c4d513a37fce66d8', 1657750968);
INSERT INTO `oc_file_locks` VALUES (14036, 0, 'files/ffa7e35fca47422ec9e9c22455676d59', 1657750194);
INSERT INTO `oc_file_locks` VALUES (14053, 0, 'files/542ca305df82b1e0b284464f5cce9e31', 1657748606);
INSERT INTO `oc_file_locks` VALUES (14089, 0, 'files/9d406e5e949df8b5d277ad8fdcde5f3d', 1657750192);
INSERT INTO `oc_file_locks` VALUES (14290, 0, 'files/79d5b974793c99da2100b0b2a638a5ae', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14321, 0, 'files/b7df98c157026e0fa16edcb91456559d', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14369, 0, 'files/3953c91fad3e4a14609904bb8dbacf02', 1657750194);
INSERT INTO `oc_file_locks` VALUES (14460, 0, 'files/870d2e5ad84b7bdc0053f9481fa76ebc', 1657748465);
INSERT INTO `oc_file_locks` VALUES (14463, 0, 'files/67dbd5fc4d03251afe9c2fdb8479822f', 1657748464);
INSERT INTO `oc_file_locks` VALUES (14468, 0, 'files/c06eda614a98ecd619e497551bfde45e', 1657748606);
INSERT INTO `oc_file_locks` VALUES (14471, 0, 'files/36d48e711cd6f4285a0407a8bfa4f9c2', 1657748605);
INSERT INTO `oc_file_locks` VALUES (14481, 0, 'files/85bfacef017e86bed3d15b092ddb3e75', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14482, 0, 'files/cf316361c7da3c6c5fb81ab363fe6aa1', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14483, 0, 'files/0bb06162e23833b3e7f70e30fca61e4d', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14484, 0, 'files/87594ab1eacd8eec543941e16b3431ea', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14485, 0, 'files/5158d1d3d6e8d354f989c7509b33b158', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14486, 0, 'files/2a8b08e077d98643cf385a3dff7fb1bf', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14487, 0, 'files/504bb28dada306914e479b419c13eb6e', 1657750193);
INSERT INTO `oc_file_locks` VALUES (14503, 0, 'files/6c8c129ca83f6d4577d0f6f25bd9f849', 1657750991);
INSERT INTO `oc_file_locks` VALUES (14513, 0, 'files/19cb97b16420f35091204ba50785daa3', 1657750939);
INSERT INTO `oc_file_locks` VALUES (14516, 0, 'files/7d24815a9b1591feebeb1f6381690508', 1657750492);
INSERT INTO `oc_file_locks` VALUES (14520, 0, 'files/2f7ccdb89b93d48a9476c66a68649b91', 1657750968);
INSERT INTO `oc_file_locks` VALUES (14521, 0, 'files/5d7878926520aa56683d0eb164e7d4b7', 1657750511);
INSERT INTO `oc_file_locks` VALUES (14522, 0, 'files/6f0240219a2efa4669f8a7440294280d', 1657750511);
INSERT INTO `oc_file_locks` VALUES (14523, 0, 'files/81692c330da2a36d0c0609a7e6e3b0cf', 1657750511);
INSERT INTO `oc_file_locks` VALUES (14524, 0, 'files/b61dc9253d3d82949d181d8f87e92fc3', 1657750511);
INSERT INTO `oc_file_locks` VALUES (14525, 0, 'files/3629e7ebd93fe49dec0d09367cdf436f', 1657750512);
INSERT INTO `oc_file_locks` VALUES (14526, 0, 'files/a4e5c531be56e49c60e252bc98c6e8b1', 1657750512);
INSERT INTO `oc_file_locks` VALUES (14556, 0, 'files/9c20735a3a0d5d021c756a104cb41b3a', 1657750991);
INSERT INTO `oc_file_locks` VALUES (14559, 0, 'files/9dfbfa3711996ea4d275312b815e3615', 1657750967);
INSERT INTO `oc_file_locks` VALUES (14564, 0, 'files/7124f17cf840a6685ecfb58c2c3d3d91', 1657750990);
INSERT INTO `oc_file_locks` VALUES (14565, 0, 'files/e9b67bb3dfa26e9c95344135025bb9a8', 1657750990);
INSERT INTO `oc_file_locks` VALUES (14566, 0, 'files/97fd1b004365888b576ca762eae210c5', 1657750990);
INSERT INTO `oc_file_locks` VALUES (14567, 0, 'files/25088fd12b599cb741d30bc5e181f143', 1657750990);
INSERT INTO `oc_file_locks` VALUES (14568, 0, 'files/8262215ffffa2b14d8f8d0768bcb3295', 1657750990);
INSERT INTO `oc_file_locks` VALUES (14569, 0, 'files/55b68ed2e00a03784342106969931a7c', 1657750990);
COMMIT;

-- ----------------------------
-- Table structure for oc_file_upload_notif
-- ----------------------------
DROP TABLE IF EXISTS `oc_file_upload_notif`;
CREATE TABLE `oc_file_upload_notif` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mtime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_file_upload_notif
-- ----------------------------
BEGIN;
INSERT INTO `oc_file_upload_notif` VALUES (3, 2135, 1656974134, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (9, 2168, 1657045505, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (10, 2169, 1657045505, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (13, 2172, 1657045682, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (14, 2173, 1657045682, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (16, 2180, 1657045739, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (21, 2200, 1648760904, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (22, 2209, 1657046607, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (23, 2210, 1657046607, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (24, 2211, 1657046608, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (25, 2200, 1648760904, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (28, 2228, 1649024414, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (29, 2228, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (30, 2228, 1649024414, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (35, 2228, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (36, 2228, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (37, 2228, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (38, 2273, 1655915227, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (41, 2228, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (42, 2052, 1657049707, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (43, 2053, 1657049707, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (44, 2288, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (45, 2289, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (46, 2290, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (47, 2052, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (48, 2053, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (49, 2291, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (50, 2292, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (51, 2293, 1657049708, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (53, 2300, 1656866309, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (54, 2200, 1648760904, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (57, 2312, 1655915227, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (58, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (59, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (70, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (71, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (72, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (73, 2312, 1655915227, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (74, 2318, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (75, 2273, 1655915227, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (76, 2300, 1656866309, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (90, 2458, 1646067055, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (91, 2466, 1647797980, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (96, 2607, 1655545074, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (97, 2608, 1657480522, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (98, 2614, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (99, 2614, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (105, 2639, 1655545074, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (106, 2639, 1657644850, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (130, 2787, 1655829410, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (131, 2793, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (132, 2794, 1656713672, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (133, 2802, 1655226348, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (134, 2810, 1655226319, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (135, 2811, 1654629618, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (136, 2812, 1654629618, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (137, 2813, 1654629618, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (138, 2819, 1654634762, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (139, 2820, 1657740687, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (140, 2821, 1656713672, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (141, 2829, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (142, 2830, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (143, 2831, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (144, 2832, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (145, 2833, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (146, 2834, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (147, 2835, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (148, 2836, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (149, 2837, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (150, 2838, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (151, 2839, 1655402654, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (152, 2849, 1656713672, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (153, 2052, 1657746998, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (154, 2053, 1657746998, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (155, 2858, 1657746998, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (156, 2859, 1657746998, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (157, 2860, 1657746998, 'admin');
INSERT INTO `oc_file_upload_notif` VALUES (158, 2861, 1655226319, 'admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=2869 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_filecache` VALUES (1549, 5, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 0, 1656865266, 1656865266, 0, 0, '62b02583898f5', 23, '', 0, 0);
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
INSERT INTO `oc_filecache` VALUES (1634, 7, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 1230575348, 1657747368, 1657657895, 0, 0, '62cf37a97c568', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1635, 7, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1634, 'files', 2, 1, 172393634, 1657747368, 1657490019, 0, 0, '62cf37a97c568', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1644, 7, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 1634, 'cache', 2, 1, 0, 1655711116, 1655711116, 0, 0, '62b0258ce985f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1728, 7, 'files_encryption', '171a8829416be21834bef1b79079dde8', 1634, 'files_encryption', 2, 1, 11344, 1655713673, 1655713673, 0, 0, '62b02f88d2122', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1729, 7, 'files_encryption/keys', 'c2d6b95afad8b0ebffae4702fceab715', 1728, 'keys', 2, 1, 11344, 1656624411, 1656624411, 0, 0, '62b02f890bb3b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1730, 7, 'files_encryption/keys/files', '9b2997f0595af58997b37b050b6966a7', 1729, 'files', 2, 1, 11344, 1656713887, 1656713887, 0, 0, '62bf71900b3e3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1754, 9, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, -1, 1656864859, 1656864859, 0, 0, '62c1c05b7c7ec', 23, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1772, 9, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 1754, 'cache', 2, 1, 0, 1655924181, 1655924181, 0, 0, '62b365d5105cc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1773, 9, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1754, 'files', 2, 1, 0, 1656864852, 1656864852, 0, 0, '62c1c054c6e74', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1775, 9, 'files_encryption', '171a8829416be21834bef1b79079dde8', 1754, 'files_encryption', 2, 1, 5656, 1655924181, 1655924181, 0, 0, '62b365d598ac9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1776, 9, 'files_encryption/keys', 'c2d6b95afad8b0ebffae4702fceab715', 1775, 'keys', 2, 1, 5656, 1656624497, 1656624497, 0, 0, '62b365d5b5131', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1777, 9, 'files_encryption/keys/files', '9b2997f0595af58997b37b050b6966a7', 1776, 'files', 2, 1, 5656, 1656624522, 1656624522, 0, 0, '62b365d5c96cf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1840, 7, 'files_encryption/keys/files/babel.config.js', '95d9e5b90e4499e11b0fbdf878833c59', 1730, 'babel.config.js', 2, 1, 1864, 1656624428, 1656624428, 0, 0, '62be152c47f72', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1841, 7, 'files_encryption/keys/files/babel.config.js/OC_DEFAULT_MODULE', 'bcb8b306cca44c11f6e01ee3325c21eb', 1840, 'OC_DEFAULT_MODULE', 2, 1, 1864, 1656624428, 1656624428, 0, 0, '62be152c5014f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1843, 7, 'files_encryption/keys/files/COPYING-README', '16ba4e42af01a405067ba56a6fbc18b6', 1730, 'COPYING-README', 2, 1, 1896, 1656624429, 1656624429, 0, 0, '62be152d19c1e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1844, 7, 'files_encryption/keys/files/COPYING-README/OC_DEFAULT_MODULE', 'a3a1e586cd3c8431938cc1fe12e55150', 1843, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656624429, 1656624429, 0, 0, '62be152d1fd92', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1846, 7, 'files_encryption/keys/files/readme1.txt', 'c71e8cfb5a696669e16d06c1d9be71e7', 1730, 'readme1.txt', 2, 1, 1896, 1656624429, 1656624429, 0, 0, '62be152df24df', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1847, 7, 'files_encryption/keys/files/readme1.txt/OC_DEFAULT_MODULE', '1e4bac6aca52e0c505da9b0eeee3f232', 1846, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656624429, 1656624429, 0, 0, '62be152e0c3d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1859, 7, 'files_encryption/keys/files/nextcloud.sql', 'ed56f7c0f3c15082742dc4405eedefa8', 1730, 'nextcloud.sql', 2, 1, 1896, 1656624433, 1656624433, 0, 0, '62be1531d7ac9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1860, 7, 'files_encryption/keys/files/nextcloud.sql/OC_DEFAULT_MODULE', 'abdb0164e0ce5cc321a2bddd4181fbf8', 1859, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656624433, 1656624433, 0, 0, '62be1531ddae0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1870, 9, 'files_encryption/keys/files/occ', '4b4a4acf16e54f9499631b0a12e50040', 1777, 'occ', 2, 1, 1896, 1656624518, 1656624518, 0, 0, '62be15862cebd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1871, 9, 'files_encryption/keys/files/occ/OC_DEFAULT_MODULE', '21cf46222df3fd7c5f2cec59b371a382', 1870, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656624518, 1656624518, 0, 0, '62be15863f2fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1873, 9, 'files_encryption/keys/files/README.md', '0895ae1580a5e99d8af7798986ac864f', 1777, 'README.md', 2, 1, 1896, 1656624520, 1656624520, 0, 0, '62be15882f81d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1874, 9, 'files_encryption/keys/files/README.md/OC_DEFAULT_MODULE', '637745f172d92ce7b91604324eb303fa', 1873, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656624520, 1656624520, 0, 0, '62be158843ce8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1876, 9, 'files_encryption/keys/files/webpack.common.js', '355cf17bcbbba2a9d84d35dcec7dee29', 1777, 'webpack.common.js', 2, 1, 1864, 1656624521, 1656624521, 0, 0, '62be158a038cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1877, 9, 'files_encryption/keys/files/webpack.common.js/OC_DEFAULT_MODULE', '75355ee84312087089fcab6163e8a65c', 1876, 'OC_DEFAULT_MODULE', 2, 1, 1864, 1656624521, 1656624521, 0, 0, '62be158a13d69', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1891, 7, 'files_encryption/keys/files/COPYING-README/OC_DEFAULT_MODULE/fileKey', 'fb84cdc85d22bd14b7cdba076ca8c75d', 1844, 'fileKey', 8, 3, 292, 1656624429, 1656624429, 0, 0, 'b88082949d52b13e377f542ae0ff934f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1892, 7, 'files_encryption/keys/files/COPYING-README/OC_DEFAULT_MODULE/master_99911ff1.shareKey', '02f5f9bdaefa8709681ac5658134c7ed', 1844, 'master_99911ff1.shareKey', 8, 3, 1604, 1656624429, 1656624429, 0, 0, '72ecbe4b7ad3d9db6abd22b1428d949f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1893, 7, 'files_encryption/keys/files/babel.config.js/OC_DEFAULT_MODULE/fileKey', 'c6b6ad531a70734ee687581cc684b1b8', 1841, 'fileKey', 8, 3, 292, 1656624428, 1656624428, 0, 0, '6e58527ff1de8f7bf17a8e4af27585a4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1894, 7, 'files_encryption/keys/files/babel.config.js/OC_DEFAULT_MODULE/master_99911ff1.shareKey', '6d6dd473732bc5e4a2430b408fea1247', 1841, 'master_99911ff1.shareKey', 8, 3, 1572, 1656624428, 1656624428, 0, 0, '5d88cba452662a42562c967ce08a2af9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1895, 7, 'files_encryption/keys/files/nextcloud.sql/OC_DEFAULT_MODULE/fileKey', '1f924ec8a6a001db6eef0536e2294a54', 1860, 'fileKey', 8, 3, 292, 1656624433, 1656624433, 0, 0, '8f97cfa5ea59665f43bd60ac1ad599d1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1896, 7, 'files_encryption/keys/files/nextcloud.sql/OC_DEFAULT_MODULE/master_99911ff1.shareKey', 'b5a85b2754a68299cf835744cb34322a', 1860, 'master_99911ff1.shareKey', 8, 3, 1604, 1656624433, 1656624433, 0, 0, 'a72e33ff60bd73377032d38a99bcaec9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1897, 7, 'files_encryption/keys/files/readme1.txt/OC_DEFAULT_MODULE/fileKey', '24207984b6879a20ad7818281f779d48', 1847, 'fileKey', 8, 3, 292, 1656624429, 1656624429, 0, 0, '3146ff8c72297e0ee39ec48f36355709', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1898, 7, 'files_encryption/keys/files/readme1.txt/OC_DEFAULT_MODULE/master_99911ff1.shareKey', 'c431021a7509706f29490550813b2d02', 1847, 'master_99911ff1.shareKey', 8, 3, 1604, 1656624429, 1656624429, 0, 0, 'ef957f1400f4b9fd4992793feb621796', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1899, 9, 'files_encryption/keys/files/README.md/OC_DEFAULT_MODULE/fileKey', 'd0c25d4cbd719c2a38b3067cc1717d59', 1874, 'fileKey', 8, 3, 292, 1656624520, 1656624520, 0, 0, '706a03edd25ea13e8438db545d27be1d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1900, 9, 'files_encryption/keys/files/README.md/OC_DEFAULT_MODULE/master_99911ff1.shareKey', 'c2f2f2a1e8e7f0e3d2714f6fe4db9399', 1874, 'master_99911ff1.shareKey', 8, 3, 1604, 1656624520, 1656624520, 0, 0, '6068cb5459b6daec61f94efac486bad3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1901, 9, 'files_encryption/keys/files/occ/OC_DEFAULT_MODULE/fileKey', '23b3a10d7572df46a320c1d4b93e3ea9', 1871, 'fileKey', 8, 3, 292, 1656624518, 1656624518, 0, 0, 'ea72fa63b9821b531ce19a87deea860c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1902, 9, 'files_encryption/keys/files/occ/OC_DEFAULT_MODULE/master_99911ff1.shareKey', '604159283baf633dd7fb52ec907a7cad', 1871, 'master_99911ff1.shareKey', 8, 3, 1604, 1656624518, 1656624518, 0, 0, '636fc31e6170cf5fa66dad35237dc83d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1903, 9, 'files_encryption/keys/files/webpack.common.js/OC_DEFAULT_MODULE/fileKey', 'e1792f066d370979e4df0aa8dfa5381d', 1877, 'fileKey', 8, 3, 292, 1656624521, 1656624521, 0, 0, 'd0a2f2b847cd0c13663060123e002876', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1904, 9, 'files_encryption/keys/files/webpack.common.js/OC_DEFAULT_MODULE/master_99911ff1.shareKey', '30c2a22d6fd6c6477f59e3f881aa9e9d', 1877, 'master_99911ff1.shareKey', 8, 3, 1572, 1656624521, 1656624521, 0, 0, 'bb8ecb5f0f67f232ee340b4cbdf78c6a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1919, 7, 'files_versions', '9692aae50022f45f1098646939b287b1', 1634, 'files_versions', 2, 1, 118304961, 1657665831, 1657489821, 0, 0, '62cdf927e3355', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1920, 7, 'files_versions/11.txt.v1656711123', '572c55d4aa31afd3c57967f4aa15a6f9', 1919, '11.txt.v1656711123', 6, 5, 699, 1656713515, 1656713515, 1, 0, 'b2c2b69d4e47f410b883da63dbb928bb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1921, 7, 'files_encryption/keys/files/11.txt', '857fbb0ebdee236fa507f8726f0b49a5', 1730, '11.txt', 2, 1, 0, 1656713515, 1656713515, 0, 0, '62bf712b6ecd5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1922, 7, 'files_encryption/keys/files/11.txt/OC_DEFAULT_MODULE', '9f767762fa669832eccd786a515d2bea', 1921, 'OC_DEFAULT_MODULE', 2, 1, 0, 1656713515, 1656713515, 0, 0, '62bf712b81509', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1923, 7, 'files_encryption/keys/files/11.txt/OC_DEFAULT_MODULE/fileKey', 'dcd547da4c98e9e7db03a4ddf9686913', 1922, 'fileKey', 8, 3, 292, 1656713515, 1656713515, 0, 0, 'bad3fe7fd8e2337707d8ec6f2079b73f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1924, 7, 'files_encryption/keys/files/11.txt/OC_DEFAULT_MODULE/master_99911ff1.shareKey', 'e0c66ca0744a2f6c6e2bbdda5dcfbcf1', 1922, 'master_99911ff1.shareKey', 8, 3, 1572, 1656713515, 1656713515, 0, 0, '228cb93259de379fc8a191958042182d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1951, 7, 'files_encryption/keys/files/222.txt', '4e1144cb690cdf093d7bfc3f7e9d17aa', 1730, '222.txt', 2, 1, 1896, 1656713643, 1656713643, 0, 0, '62bf71ab0fde2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1952, 7, 'files_encryption/keys/files/222.txt/OC_DEFAULT_MODULE', 'bb87cf53671e591fb5fda6358fa6b4ea', 1951, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656713643, 1656713643, 0, 0, '62bf71ab17095', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1964, 7, 'files_encryption/keys/files/autotest-js.sh', '9bfb180fdc62644356bacc7f8cee8354', 1730, 'autotest-js.sh', 2, 1, 1896, 1656713851, 1656713851, 0, 0, '62bf729f3c79e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (1965, 7, 'files_encryption/keys/files/autotest-js.sh/OC_DEFAULT_MODULE', 'accaca42e5877228715237d20f0530ac', 1964, 'OC_DEFAULT_MODULE', 2, 1, 1896, 1656713851, 1656713851, 0, 0, '62bf729f45667', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2026, 7, 'files_trashbin', 'fb66dca5f27af6f15c1d1d81e6f8d28b', 1634, 'files_trashbin', 2, 1, 886289030, 1657657601, 1656974509, 0, 0, '62cdd901ab571', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2027, 7, 'files_trashbin/files', '3014a771cbe30761f2e9ff3272110dbf', 2026, 'files', 2, 1, 604213135, 1657657601, 1657657314, 0, 0, '62cdd901ab571', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2046, 9, 'files_trashbin', 'fb66dca5f27af6f15c1d1d81e6f8d28b', 1754, 'files_trashbin', 2, 1, 0, 1656864859, 1656864859, 0, 0, '62c1c05b7c7ec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2047, 9, 'files_trashbin/files', '3014a771cbe30761f2e9ff3272110dbf', 2046, 'files', 2, 1, 0, 1656864859, 1656864859, 0, 0, '62c1c05b70179', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2048, 5, 'appdata_oc9qmek4lhg9', '4bfdc5364e7dfb6d25b25e9a740ee9a2', 1549, 'appdata_oc9qmek4lhg9', 2, 1, 0, 1657045390, 1657045390, 0, 0, '62c1c1f2a1877', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2049, 5, 'appdata_oc9qmek4lhg9/css', '629e75d81f195aab916e0c205108be97', 2048, 'css', 2, 1, 0, 1657746998, 1657746998, 0, 0, '62c1c1f2b4de1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2050, 5, 'appdata_oc9qmek4lhg9/css/icons', 'cb6d9ea15b13fda1bad5619695cc8073', 2049, 'icons', 2, 1, 0, 1656865267, 1656865267, 0, 0, '62c1c1f2c3177', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2051, 5, 'appdata_oc9qmek4lhg9/css/core', 'e7dd2651c4000e7b85666bc4fde0eae4', 2049, 'core', 2, 1, 0, 1657049708, 1657049708, 0, 0, '62c1c1f2d19fd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2052, 5, 'appdata_oc9qmek4lhg9/css/icons/icons-vars.css', '86729f00b5eaeb30e15e8f8009cfa904', 2050, 'icons-vars.css', 10, 5, 118983, 1657746998, 1657746998, 0, 0, '0c96b8a3d980da5d73a2de7bc435dc07', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2053, 5, 'appdata_oc9qmek4lhg9/css/icons/icons-list.template', '4f709ce19665e79ed79ac863ffa7ab39', 2050, 'icons-list.template', 8, 3, 15618, 1657746998, 1657746998, 0, 0, '016177abe7571e73556d32cf779b4b86', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2054, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css', '3246a727ac112ac3998a6f7af01f30a6', 2051, 'a86f-006d-server.css', 10, 5, 139023, 1656865267, 1656865267, 0, 0, 'b82cbc1f408c82a6ec0b3bcaaf770e67', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2055, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css.deps', 'debfeaedab9cf2d0d95d657fa5327853', 2051, 'a86f-006d-server.css.deps', 8, 3, 1361, 1656865267, 1656865267, 0, 0, 'a1837f56c542256823871d1da5067f58', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2056, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-server.css.gzip', '2ae4a37fb6d457432aad4a3bebed0e63', 2051, 'a86f-006d-server.css.gzip', 9, 3, 19854, 1656865267, 1656865267, 0, 0, '9890ba97295f740c81b709787b8d9e63', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2057, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css', '17be9874d8e73b7b324d3394cd39b8d3', 2051, 'a86f-006d-css-variables.css', 10, 5, 1820, 1656865267, 1656865267, 0, 0, '86e9c79999fc6fc67c22ad9408eb8b55', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2058, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css.deps', 'bbc7783b191e68664a449153e54b5b3a', 2051, 'a86f-006d-css-variables.css.deps', 8, 3, 305, 1656865267, 1656865267, 0, 0, '23524f67ec1b3bd8a296843ba01cd12a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2059, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-css-variables.css.gzip', 'ea447a15480deb3fdcd3e5e09e65e0e3', 2051, 'a86f-006d-css-variables.css.gzip', 9, 3, 692, 1656865267, 1656865267, 0, 0, '0cedc2385327838d56c44dcaa3afa686', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2060, 5, 'appdata_oc9qmek4lhg9/css/user_status', 'defd30c4d6251c0b68df81d144b4626c', 2049, 'user_status', 2, 1, 0, 1656865268, 1656865268, 0, 0, '62c1c1f3cf18b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2061, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css', '7c9d3189d6792980a61531eb711f8a59', 2060, '1bf6-006d-user-status-menu.css', 10, 5, 1039, 1656865267, 1656865267, 0, 0, '68f9cd2cb4f16ec074f49695b6ba27c7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2062, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css.deps', 'e8be7c1fc0d4d97f41a79d810a539c6c', 2060, '1bf6-006d-user-status-menu.css.deps', 8, 3, 321, 1656865267, 1656865267, 0, 0, '7b2fff5a109b601c7da4bcc3c1c377a2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2063, 5, 'appdata_oc9qmek4lhg9/css/user_status/1bf6-006d-user-status-menu.css.gzip', 'cc1ac6d35eb284caa8fc3202b6fb206e', 2060, '1bf6-006d-user-status-menu.css.gzip', 9, 3, 240, 1656865268, 1656865268, 0, 0, 'bfbb5590c2e1eda9631d160cbdfffac7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2064, 5, 'appdata_oc9qmek4lhg9/css/activity', '12973f6b0a0925acde8442ce4cb2f29e', 2049, 'activity', 2, 1, 0, 1656865268, 1656865268, 0, 0, '62c1c1f418327', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2065, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css', '6c0d98af625514cc1c91de223b8e19f9', 2064, '6e52-006d-style.css', 10, 5, 10073, 1656865268, 1656865268, 0, 0, '2bb94d411b5ec19b5f32103a49e2cf84', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2066, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css.deps', 'f3281e91543ebe254efa8386f4feb5b1', 2064, '6e52-006d-style.css.deps', 8, 3, 307, 1656865268, 1656865268, 0, 0, '70d27f3250d594231c81184768cadd2b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2067, 5, 'appdata_oc9qmek4lhg9/css/activity/6e52-006d-style.css.gzip', '41d2b9981f2b804c77938b12c40dfddc', 2064, '6e52-006d-style.css.gzip', 9, 3, 2458, 1656865268, 1656865268, 0, 0, 'c273939bf6d0d30d10430988f33930d2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2068, 5, 'appdata_oc9qmek4lhg9/js', 'cab4bca83e8d017afd448a329e7fbd09', 2048, 'js', 2, 1, 0, 1656866753, 1656866753, 0, 0, '62c1c1f6a613d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2069, 5, 'appdata_oc9qmek4lhg9/js/core', '4a47537158570058c5b417bde00f33fd', 2068, 'core', 2, 1, 0, 1656865271, 1656865271, 0, 0, '62c1c1f6d68ea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2070, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js', 'a6dcd6b46bb2b7c309d25f113295cb31', 2069, 'merged-template-prepend.js', 7, 3, 11942, 1656865270, 1656865270, 0, 0, '0fc4d78ea5e9d6ec5d7cd65368f003f9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2071, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js.deps', '81983c0fc9b4a4f6e14e78eba17f4705', 2069, 'merged-template-prepend.js.deps', 8, 3, 418, 1656865270, 1656865270, 0, 0, '7b7d11d120c267fc5f4ac778799b459b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2072, 5, 'appdata_oc9qmek4lhg9/js/core/merged-template-prepend.js.gzip', '44542213933979e1597b20932d321222', 2069, 'merged-template-prepend.js.gzip', 9, 3, 3054, 1656865271, 1656865271, 0, 0, '813dc0211556803ee0773ca400018d52', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2073, 7, 'files_encryption/keys/files/autotest-js.sh/OC_DEFAULT_MODULE/fileKey', 'b7b0079a7dad6407621b9a09b9a85b4f', 1965, 'fileKey', 8, 3, 292, 1656713851, 1656713851, 0, 0, '1885dd6db61a974e92590d566a36f75d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2074, 7, 'files_encryption/keys/files/autotest-js.sh/OC_DEFAULT_MODULE/master_99911ff1.shareKey', 'abb5cf8b146f205bd6af2078376ef438', 1965, 'master_99911ff1.shareKey', 8, 3, 1604, 1656713851, 1656713851, 0, 0, '2b1b7c1f3df7c524fb2e71fc89f30ef3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2075, 7, 'files_encryption/keys/files/222.txt/OC_DEFAULT_MODULE/fileKey', '9bee0de1274276a9930d7bbf873bce77', 1952, 'fileKey', 8, 3, 292, 1656713643, 1656713643, 0, 0, '55c283950dd51492f0734890c31448fa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2076, 7, 'files_encryption/keys/files/222.txt/OC_DEFAULT_MODULE/master_99911ff1.shareKey', '3b09ae5ae41b2e315a9ab8a852002629', 1952, 'master_99911ff1.shareKey', 8, 3, 1604, 1656713643, 1656713643, 0, 0, 'af6cedfe2d6d2b47df15dee46e885569', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2077, 5, 'appdata_oc9qmek4lhg9/css/theming', '8051360f7b42970a60d6ca2d1e7463e6', 2049, 'theming', 2, 1, 0, 1656865279, 1656865279, 0, 0, '62c1c1ff2b6d6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2078, 5, 'appdata_oc9qmek4lhg9/css/theming/d71e-006d-theming.css', 'c7afdbc86fb1fcb37986fe581ad1676f', 2077, 'd71e-006d-theming.css', 10, 5, 1774, 1656865279, 1656865279, 0, 0, 'b9d7e963f8a1e4676b7ac81ded99ae77', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2079, 5, 'appdata_oc9qmek4lhg9/css/theming/d71e-006d-theming.css.deps', 'a8a3d6344a91d32764022dac1c8a3c52', 2077, 'd71e-006d-theming.css.deps', 8, 3, 308, 1656865279, 1656865279, 0, 0, '11e0bbc3cb1348ba16c05f47d13a8aea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2080, 5, 'appdata_oc9qmek4lhg9/css/theming/d71e-006d-theming.css.gzip', 'dd3080d46fbb4105f98904579a1af763', 2077, 'd71e-006d-theming.css.gzip', 9, 3, 534, 1656865279, 1656865279, 0, 0, 'e5efbaeef30ee6d36087d765d4bc4004', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2081, 5, 'appdata_oc9qmek4lhg9/avatar', '2a2df8da5204dfb0ff61e8fb486bdf59', 2048, 'avatar', 2, 1, 0, 1656865285, 1656865285, 0, 0, '62c1c1ffa1b06', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2082, 5, 'appdata_oc9qmek4lhg9/avatar/admin', 'dad4e234ff497cc01416aee6a8750d50', 2081, 'admin', 2, 1, 0, 1657480522, 1657480522, 0, 0, '62c1c1ffb4bea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2083, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.png', '67486ff38163ededa48ab15b869dc724', 2082, 'avatar.png', 12, 11, 15671, 1656865279, 1656865279, 0, 0, 'caaae33eed9f449995326726920ee66c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2084, 5, 'appdata_oc9qmek4lhg9/avatar/admin/generated', 'a16828c2da991d156e85506cee669e0c', 2082, 'generated', 8, 3, 0, 1656865279, 1656865279, 0, 0, '9b45987c0e1ac81d17b8dc1d3b294610', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2085, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.64.png', 'd9cd23ea7dcd9dcfaff105562f2621bd', 2082, 'avatar.64.png', 12, 11, 809, 1656865280, 1656865280, 0, 0, '917579ca5c165d4e6cdb0f515f4dab87', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2086, 5, 'appdata_oc9qmek4lhg9/avatar/user', '2e82293b400085a3e39a74b9f39a6696', 2081, 'user', 2, 1, 0, 1656865285, 1656865285, 0, 0, '62c1c205a6163', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2087, 5, 'appdata_oc9qmek4lhg9/avatar/user/avatar.png', 'ec1aa28c6c3c26367b29074c7587c059', 2086, 'avatar.png', 12, 11, 10874, 1656865285, 1656865285, 0, 0, '85ca57e986804ee21d0c20374613dea7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2088, 5, 'appdata_oc9qmek4lhg9/avatar/user/generated', 'df435c825eba39601b65a0d868a8e50a', 2086, 'generated', 8, 3, 0, 1656865285, 1656865285, 0, 0, '051bb4060585317ed0cb93b0e3df49b0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2089, 5, 'appdata_oc9qmek4lhg9/avatar/user/avatar.64.png', '07d506da892ef3aa96b924e100185c16', 2086, 'avatar.64.png', 12, 11, 580, 1656865285, 1656865285, 0, 0, '33246522278d1fc2cac4cf831c273751', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2090, 5, 'appdata_oc9qmek4lhg9/css/dashboard', '690b5e89585089c02188a012f3903891', 2049, 'dashboard', 2, 1, 0, 1656866666, 1656866666, 0, 0, '62c1c76a25128', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2091, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css', 'ada3e833c4a6645710817485a55f58e5', 2090, '1c83-006d-dashboard.css', 10, 5, 2070, 1656866666, 1656866666, 0, 0, '481c4ba7d5a781e388b69edb9a3093f8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2092, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css.deps', '24d119802670921be42d7f4223ec45e9', 2090, '1c83-006d-dashboard.css.deps', 8, 3, 312, 1656866666, 1656866666, 0, 0, '475326ee9f704b5f5df9726ed8efa966', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2093, 5, 'appdata_oc9qmek4lhg9/css/dashboard/1c83-006d-dashboard.css.gzip', 'e548733472031ffe34a7e302cef44f74', 2090, '1c83-006d-dashboard.css.gzip', 9, 3, 602, 1656866666, 1656866666, 0, 0, '1cf30444fa6c37be9849af7aec3fabc7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2094, 5, 'appdata_oc9qmek4lhg9/js/files', 'b65733760d4bb03659edcb9adc350c69', 2068, 'files', 2, 1, 0, 1656866753, 1656866753, 0, 0, '62c1c7c182afe', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2095, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js', '134fc99518cbfb4c6ccae53e62d3b9c4', 2094, 'merged-index.js', 7, 3, 421387, 1656866753, 1656866753, 0, 0, '437a4a0b957a80700a0fd21c918334c5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2096, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js.deps', 'f4cd040ffeba2026c906826d5177e08a', 2094, 'merged-index.js.deps', 8, 3, 3357, 1656866753, 1656866753, 0, 0, 'b09c08aa215e175939a3bba7f7653813', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2097, 5, 'appdata_oc9qmek4lhg9/js/files/merged-index.js.gzip', 'da4549a507c3eac3d7293b523ef5177e', 2094, 'merged-index.js.gzip', 9, 3, 95488, 1656866753, 1656866753, 0, 0, '54409d99ca845f02c325973f3a39ef9a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2098, 5, 'appdata_oc9qmek4lhg9/css/files', '26009f37b84cc337cff6168fc446ca72', 2049, 'files', 2, 1, 0, 1656866754, 1656866754, 0, 0, '62c1c7c1c95d3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2099, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css', '161f2c58e30ced8c9f4f9edb088a4744', 2098, 'f244-006d-merged.css', 10, 5, 30015, 1656866754, 1656866754, 0, 0, '6ef2abfc71b00dcffe70abbb8c13b740', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2100, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css.deps', '6633109c60f86ea4d47fb0be2ace4748', 2098, 'f244-006d-merged.css.deps', 8, 3, 824, 1656866754, 1656866754, 0, 0, '09165f4fb4290ddf1b96f0927dd6bc3c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2101, 5, 'appdata_oc9qmek4lhg9/css/files/f244-006d-merged.css.gzip', 'c6a25d4ba21e43fc6cae311cf3f62e77', 2098, 'f244-006d-merged.css.gzip', 9, 3, 5872, 1656866754, 1656866754, 0, 0, '999f8c1a9484cd03803167c806804462', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2102, 5, 'appdata_oc9qmek4lhg9/css/files_sharing', '4c1dbfd7fe39de7f30ee6f1d94d3c568', 2049, 'files_sharing', 2, 1, 0, 1656866755, 1656866755, 0, 0, '62c1c7c2e8df3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2103, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css', '4c2a59ff673f8a8604f4e7fc1d5dea55', 2102, '6328-006d-icons.css', 10, 5, 174, 1656866755, 1656866755, 0, 0, '70ce72bfaf19f799f8d6280d859acc51', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2104, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css.deps', '1650daef03c336f01791b5416b27c0b0', 2102, '6328-006d-icons.css.deps', 8, 3, 312, 1656866755, 1656866755, 0, 0, '6268459c2ec46e3559ac3533d61f097c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2105, 5, 'appdata_oc9qmek4lhg9/css/files_sharing/6328-006d-icons.css.gzip', '5f0b6f6d87a50687d320036f46c8f842', 2102, '6328-006d-icons.css.gzip', 9, 3, 102, 1656866755, 1656866755, 0, 0, 'e32971dedc1765de72f9e73a0f3657da', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2106, 5, 'appdata_oc9qmek4lhg9/theming', '0b114a336a9c69996de35c3ab9602164', 2048, 'theming', 2, 1, 0, 1656866766, 1656866766, 0, 0, '62c1c7cdea6d4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2107, 5, 'appdata_oc9qmek4lhg9/theming/0', 'ab575e572fe410705fdcd4725400042e', 2106, '0', 2, 1, 0, 1657046608, 1657046608, 0, 0, '62c1c7ce0c20c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2108, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_folder-drag-accept.svg', '02a83b7bfcee53244e91b6c7a89c87bd', 2107, 'icon-core-filetypes_folder-drag-accept.svg', 13, 11, 270, 1656866766, 1656866766, 0, 0, '39bca06869d3eb7eb191472aa862bbe0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2109, 7, 'files_trashbin/files/a.txt.d1657045729', '756b4cd57a7587778f7f31094a96c22e', 2027, 'a.txt.d1657045729', 6, 5, 0, 1656866309, 1656866309, 0, 0, '3d94e776aa2de928084586166b40f7e8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2110, 7, 'files_trashbin/files/.gitconfig.d1657045728', 'b1e7d870dbf0f835e2d166aadbb24fbd', 2027, '.gitconfig.d1657045728', 8, 3, 59, 1643310531, 1643310531, 0, 0, 'ff599741ec89c7af06118f5d3e0a42ab', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2111, 7, 'files_trashbin/files/babel.config.js.d1657045734', '13c873619df092a935b3ec3d546567a4', 2027, 'babel.config.js.d1657045734', 7, 3, 207, 1655402654, 1655402654, 0, 0, '557e44b34588354986c100b1365b2b19', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2112, 7, 'uploads', '5128f35c9b4be13788ba41bdb6d1fc1f', 1634, 'uploads', 2, 1, 53583150, 1657740667, 1657740666, 0, 0, '62cf1d7b0bfb0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2118, 7, 'files_trashbin/files/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657045739', '89bc50b9b9deb4b8878d18349c7d2dd1', 2027, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657045739', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, '8db2141422530ff2f4770f66aca3d74a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2119, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_package-x-generic.svg', 'b8b6b399794202047a08c43b5443c07c', 2107, 'icon-core-filetypes_package-x-generic.svg', 13, 11, 219, 1656885332, 1656885332, 0, 0, 'ebcac102bf6be1e4def55fadd61900f6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2120, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_application.svg', 'aa3397fdfaea0f1b65e710205a701a05', 2107, 'icon-core-filetypes_application.svg', 13, 11, 1085, 1656885535, 1656885535, 0, 0, '7e5d0c674b13f7700737d3310e76524e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2122, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_text.svg', '47aea73811cc0e683cfc56d7f80e39e3', 2107, 'icon-core-filetypes_text.svg', 13, 11, 295, 1656972438, 1656972438, 0, 0, '1d16c5ac0628c76f43f85fd0e558c198', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2123, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_text-code.svg', 'f76325339ae143fa0ba7a71d07cdb5ba', 2107, 'icon-core-filetypes_text-code.svg', 13, 11, 252, 1656972438, 1656972438, 0, 0, '61677e1e89322ab2585ef70818ce1007', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2124, 7, 'files_trashbin/files/autotest-external.sh.d1657045732', '28871fcce3a45eb56d55e3c82a248ac4', 2027, 'autotest-external.sh.d1657045732', 29, 5, 8396, 1655402654, 1655402654, 0, 0, 'f3767524e84c2059a60b284a3392febd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2125, 5, 'appdata_oc9qmek4lhg9/appstore', '0c182a58c83c80d6bb757733284f9df2', 2048, 'appstore', 2, 1, 0, 1656972852, 1656972852, 0, 0, '62c3661908d34', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2126, 5, 'appdata_oc9qmek4lhg9/appstore/apps.json', 'cd93ccd4b1eaae560da1f739f0dcbcad', 2125, 'apps.json', 4, 3, 2091988, 1657549945, 1657549945, 0, 0, '1e30b832177293c89cf82667d113ab0f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2127, 5, 'appdata_oc9qmek4lhg9/css/settings', 'a7c6343c61e9caa86efdcef7f0522e4d', 2049, 'settings', 2, 1, 0, 1656972843, 1656972843, 0, 0, '62c3662b56c32', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2128, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css', 'c0a220e225cff561309bc47fac0d8749', 2127, 'ca9f-006d-settings.css', 10, 5, 33292, 1656972843, 1656972843, 0, 0, 'f9a00f3654abef1717d7e8535dc579d7', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2129, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css.deps', '2a09c2ad11491700a5f0272d8b7133df', 2127, 'ca9f-006d-settings.css.deps', 8, 3, 310, 1656972843, 1656972843, 0, 0, '81ee923b017a37d667be515dc7b52664', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2130, 5, 'appdata_oc9qmek4lhg9/css/settings/ca9f-006d-settings.css.gzip', '8278c9be837689f80403b5d786eb4c84', 2127, 'ca9f-006d-settings.css.gzip', 9, 3, 6136, 1656972843, 1656972843, 0, 0, '4b4e7645b48fc884459a796667957738', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2131, 5, 'appdata_oc9qmek4lhg9/appstore/categories.json', '824a0389738e20d77a751f751e6baa1d', 2125, 'categories.json', 4, 3, 141893, 1656972852, 1656972852, 0, 0, '94543b0583bbf5689603f02ed7c00b2e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2132, 7, 'files_trashbin/files/autotest-checkers.sh.d1657045730', 'd6e1e15cbca1dcbe57b8a52dc9ec80c7', 2027, 'autotest-checkers.sh.d1657045730', 29, 5, 442, 1655402654, 1655402654, 0, 0, 'a70a592e7adac269bb0273dbe43ff47d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2133, 7, 'files_trashbin/files/autotest-js.sh.d1657045733', 'db196a2ba2772953e70423fa66677d66', 2027, 'autotest-js.sh.d1657045733', 29, 5, 617, 1655402654, 1655402654, 0, 0, 'c6fd914d1b7fb68c036c8aa725ffdc5d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2134, 7, 'files_trashbin/files/composer.lock.d1657045736', 'a82bf89ca21797957080daa695d686c7', 2027, 'composer.lock.d1657045736', 8, 3, 2689, 1655402654, 1655402654, 0, 0, 'e73e2310065ee9e171adc3a3e4b7638b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2135, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_file.svg', '2646838297ec52fb965bdfe76201ce64', 2107, 'icon-core-filetypes_file.svg', 13, 11, 228, 1656974134, 1656974134, 0, 0, 'b14ada90addd491d605de767a0ccb516', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2140, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', '24914e1adf6344bc781a52612d168e7e', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 14, 3, 29955280, 1649024414, 1649024414, 0, 0, '147d6d7d91668c9d131f992e3a42f00f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2141, 7, 'files_trashbin/versions', 'c639d144d3f1014051e14a98beac5705', 2026, 'versions', 2, 1, 282075895, 1657490077, 1657490077, 0, 0, '62cb4a9e94e59', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2142, 7, 'files_trashbin/keys', '9195c7cfc1b867f229ac78cc1b6a0be3', 2026, 'keys', 2, 1, 0, 1656974509, 1656974509, 0, 0, '62c36cade9f5c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2147, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607', '2e6fd57a743b8933ca010aff9792d891', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607', 8, 3, 29955280, 1649024414, 1649024414, 0, 0, '7af8c2b50cf54d75b194602d89628ba2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2152, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607.d1656974708', 'f774cd1aadfc680f378a1e27b59d637c', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607.d1656974708', 8, 3, 29955280, 1649024414, 1649024414, 0, 0, '469619fe9d2a6a2d0d4995c889dfa39a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2157, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1657045737', '9ae58a3e1c5f08ee64343698675392f8', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1657045737', 8, 3, 29955280, 1649024414, 1649024414, 0, 0, '141abbd3c74dea9c5e71d6c30dfc0d76', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2158, 5, 'appdata_oc9qmek4lhg9/preview', 'bc0414ac4c3d1d6516b9293cd29b1588', 2048, 'preview', 2, 1, 0, 1657045390, 1657045390, 0, 0, '62c4818f011d2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2159, 7, 'files_trashbin/files/README.md.d1657045738', 'bde36cd27cc1b71b740cc156ae6ba5ea', 2027, 'README.md.d1657045738', 25, 5, 4, 1657045617, 1657045617, 0, 0, '959cb4a7b2bfb342ed3aa3761670e123', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2160, 5, 'appdata_oc9qmek4lhg9/preview/d', '204a3833eb8b86b66fd99fa166f087c4', 2158, 'd', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c4820069925', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2161, 5, 'appdata_oc9qmek4lhg9/preview/d/d', '1906d63076f0baa2f703f560ed3b7e1e', 2160, 'd', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c482004b01b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2162, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d', '8d2f2001869b694fb482592859fab2ed', 2161, 'd', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c4820042d19', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2163, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9', 'b878f388b08fba72e6ead27f73b55856', 2162, '9', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c482003cb5b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2164, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d', 'a9a07635e301b1d2a2fa74139ac60baa', 2163, 'd', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c4820036902', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2165, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d/d', 'b20b0d1dab58f5896ac0512f88433a33', 2164, 'd', 2, 1, -1, 1657045504, 1657045504, 0, 0, '62c4820030725', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2166, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d/d/a', '3503c3e5affe4413d48608c013b28b28', 2165, 'a', 2, 1, -1, 1657045682, 1657045682, 0, 0, '62c4820013f34', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2170, 7, 'files_trashbin/versions/README.md.v1654700911.d1657045738', '1fcce751b3d9f616e3e5ed259088cd3f', 2141, 'README.md.v1654700911.d1657045738', 25, 5, 7642, 1657045635, 1657045635, 0, 0, '3e5416701d96dd44998bf41dbe7fb552', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2171, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d/d/a/2159', '24321c7f2ce5d01aa5c1228cd580cc2a', 2166, '2159', 2, 1, 0, 1657045682, 1657045682, 0, 0, '62c482b214e4b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2172, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d/d/a/2159/4096-4096-max.png', '612c14ee22f2210974b1fbfa83f8ddb9', 2171, '4096-4096-max.png', 12, 11, 9579, 1657045682, 1657045682, 0, 0, '7538cd47cc6e704c3d8d703bfcbb543e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2173, 5, 'appdata_oc9qmek4lhg9/preview/d/d/d/9/d/d/a/2159/256-256-crop.png', 'd3da9fe3fc3fb39242a54e1f3b047ba1', 2171, '256-256-crop.png', 12, 11, 1092, 1657045682, 1657045682, 0, 0, '0305d8e10eabce16e82660439660a807', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2179, 7, 'files_trashbin/versions/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657045739', '2513a5ac1fa98ab26e1c191d36809214', 2141, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657045739', 9, 3, 41663551, 1657045700, 1657045700, 0, 0, 'cd28a4000b5a077c3feaefd869b43426', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2180, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_folder.svg', 'b932bea54d611ee53bc89813ebbdc8b5', 2107, 'icon-core-filetypes_folder.svg', 13, 11, 255, 1657045739, 1657045739, 0, 0, '373c2d57fbc2822ff473030c7f9e661f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2185, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657046704', '66f0b6c8e2dd9a4180f6081895912639', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657046704', 14, 3, 29955280, 1649024414, 1649024414, 0, 0, '4194953ee0bcca14055e2abbc03c809f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2190, 7, 'files_trashbin/versions/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1649024414.d1657046704', 'f895dc31c967beb13b1b5d6d279db2bd', 2141, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1649024414.d1657046704', 14, 3, 29955280, 1657046152, 1657046152, 0, 0, '6f9f1134dfd461a40348a9177313f2c5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2199, 7, 'files_trashbin/versions/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410.d1657046704', 'c6bea78f58fb16adf27802e7ac979418', 2141, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410.d1657046704', 14, 3, 21764999, 1657046327, 1657046327, 0, 0, 'f13fc041853ee0cbe60664922256749e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2200, 7, 'files/fix list.odt', '5610655b6caaead46f56270a5c092a2e', 1635, 'fix list.odt', 23, 3, 3041428, 1648760904, 1648760904, 0, 0, '683000c334429e49223de1c1ead55aca', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2201, 5, 'appdata_oc9qmek4lhg9/preview/5', '86c032338daa469d6b87d28e840d8564', 2158, '5', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864f2fc2e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2202, 5, 'appdata_oc9qmek4lhg9/preview/5/2', '2592898857869979c7a4629092d76113', 2201, '2', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864f11928', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2203, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4', 'a99dc3a0c405c44a5c8158d3391d22cc', 2202, '4', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864f02e42', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2204, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4/9', '42b7232c0f9d7e9400f97a5125723d24', 2203, '9', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864ef0f83', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2205, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4/9/e', '60d6d06dab8af2b7b5747b9e6d45f401', 2204, 'e', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864ee2adf', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2206, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4/9/e/e', '77321c0aca92584928f2c0ac1dcaff05', 2205, 'e', 2, 1, -1, 1657046606, 1657046606, 0, 0, '62c4864eda94a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2207, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4/9/e/e/8', 'bb1fefc7100bf8ded10f4fc5df6a04dd', 2206, '8', 2, 1, -1, 1657229672, 1657229672, 0, 0, '62c4864ed25f4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2211, 5, 'appdata_oc9qmek4lhg9/theming/0/icon-core-filetypes_x-office-document.svg', '758b3b9aeccb275a2894bbb02d0abb60', 2107, 'icon-core-filetypes_x-office-document.svg', 13, 11, 295, 1657046608, 1657046608, 0, 0, '23b16ccf9af0008d68dc9eb22ef44ce5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2212, 7, 'files_versions/fix list.odt.v1648760904', '4820e65409095a8d778d7a7ad269a97f', 1919, 'fix list.odt.v1648760904', 23, 3, 3041428, 1657050284, 1657050284, 0, 0, '0fb4028c0781f6b64bc40c6f8aa37c54', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2218, 7, 'files_trashbin/files/robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz.d1657046706', 'c22bdc852acfe4932ca31a24abe516a7', 2027, 'robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz.d1657046706', 9, 3, 41663551, 1651505601, 1651505601, 0, 0, '8881105928ed04028ebfa1968d0cf0f9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2223, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657046803', '929f2ea5e21c73b4c7f845324ff1bbbf', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657046803', 14, 3, 29955280, 1649024414, 1649024414, 0, 0, '722b60cf492216304a860db34f470141', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2228, 7, 'files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'e8c388511247f33ae62dd6a08fe63cb2', 1635, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, '6b3a6232dd63e2127654539e0f67157e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2233, 7, 'files_versions/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1649024414', 'a124e7f0005643c9b8ccdd0de7bdc3ad', 1919, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1649024414', 14, 3, 29955280, 1657048717, 1657048717, 0, 0, 'dc50928631c542675d3f53746436064b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2238, 7, 'files_versions/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410', 'fdb27ba1ef420691415e216382f1b24b', 1919, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410', 14, 3, 21764999, 1657049661, 1657049661, 0, 0, 'eda087b5309b152ea40347bc275a1cb6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2244, 7, 'files_trashbin/files/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657049725', '68a0402574271591aab08dda77ef2a42', 2027, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657049725', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, 'a5194f57d3f7dca4b0ef0778585d0c6f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2250, 7, 'files_trashbin/versions/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657049725', '6e62b7e2a5052bbe970ea7db70d25f2e', 2141, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657049725', 9, 3, 41663551, 1657049541, 1657049541, 0, 0, 'c54ae0315181c563d1760e573201dcdb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2273, 7, 'files/apps-files_downloadactivity.zip', 'b6a0e40be0edd8ae86ea5e3b7552df47', 1635, 'apps-files_downloadactivity.zip', 14, 3, 109899, 1655915227, 1655915227, 0, 0, '7ca2f0a943fe26cf6e707db6a2004392', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2288, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-styles.css', '3abc97d4432f20a37d77207b3a189cfb', 2051, 'a86f-006d-styles.css', 10, 5, 23289, 1657049708, 1657049708, 0, 0, 'b1bb033e11eb81b9840ddc47574f2c3e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2289, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-styles.css.deps', 'ee151f847e309b8b61bb43f333d12e89', 2051, 'a86f-006d-styles.css.deps', 8, 3, 298, 1657049708, 1657049708, 0, 0, '2b360775a46cbd4885465451a7cfcc10', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2290, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-styles.css.gzip', '61e37382ee6db3635dada1bb3b483c99', 2051, 'a86f-006d-styles.css.gzip', 9, 3, 4779, 1657049708, 1657049708, 0, 0, 'a93ccce3ccffd48105469d79b0424036', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2291, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-header.css', 'f6a6e6a92993216f5cc3076d2c264959', 2051, 'a86f-006d-header.css', 10, 5, 13220, 1657049708, 1657049708, 0, 0, '1245f1515ef1635e8f541589904f5e32', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2292, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-header.css.deps', 'b62ed708055c5f5435e106e8b04bc5ad', 2051, 'a86f-006d-header.css.deps', 8, 3, 298, 1657049708, 1657049708, 0, 0, 'edaacc8a69eee767cb11e0b72f7f1596', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2293, 5, 'appdata_oc9qmek4lhg9/css/core/a86f-006d-header.css.gzip', '6494196ff0f6782abbbede06f6767094', 2051, 'a86f-006d-header.css.gzip', 9, 3, 2723, 1657049708, 1657049708, 0, 0, '2240b453b3e3be3bccd6051f2ec2437e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2299, 7, 'files_trashbin/files/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657489820', '5e49fc3aed52098eda17c7d2cbde12de', 2027, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.d1657489820', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, 'ef07af4fed47249f388420cdb67ce30d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2300, 7, 'files/a.txt', '269f3131e1efcd8c3cadbd20d710c329', 1635, 'a.txt', 6, 5, 0, 1656866309, 1656866309, 0, 0, '62f251c926981a508ae8feec83afa9bd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2311, 7, 'files_trashbin/files/New folder.d1657059383', '584a8e55063c4b76a62f389af920ef1f', 2027, 'New folder.d1657059383', 2, 1, 41773450, 1657059208, 1657059208, 0, 0, '62c4b7884d55d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2312, 7, 'files_trashbin/files/New folder.d1657059383/apps-files_downloadactivity.zip', 'd01050892d822b414c3a66a74d7bf534', 2311, 'apps-files_downloadactivity.zip', 14, 3, 109899, 1655915227, 1655915227, 0, 0, 'b8ee1e89207b17bbde9dcda92825fc68', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2318, 7, 'files_trashbin/files/New folder.d1657059383/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'cc1567179316dce0ba55417bc10dbf95', 2311, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, 'fd69272875350a3fd1d4be7083acc187', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2324, 7, 'files_trashbin/versions/New folder.d1657059383', 'ceb82a25e7a0c65ae5159ea39444e4f1', 2141, 'New folder.d1657059383', 2, 1, 41773450, 1657057839, 1657057839, 0, 0, '62c4b23018eb7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2325, 7, 'files_trashbin/versions/New folder.d1657059383/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762', 'b804c02ed9cef19f956622b5d0b8da54', 2324, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762', 9, 3, 41663551, 1657057520, 1657057520, 0, 0, '33c97054e805537a16e156feb961e4de', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2336, 7, 'files_trashbin/versions/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657489820', '118cc2d518980a5f01685625cf5c120b', 2141, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762.d1657489820', 9, 3, 41663551, 1657057277, 1657057277, 0, 0, '56491fa86e366ea1335ac0c35abadf62', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2392, 7, 'files_trashbin/versions/New folder.d1657059383/apps-files_downloadactivity.zip.v1655915227', '0088a47b1739ffea65e1d5bd0b4ec07f', 2324, 'apps-files_downloadactivity.zip.v1655915227', 14, 3, 109899, 1657057839, 1657057839, 0, 0, '14124b09b07a628ac666eba03b27840d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2398, 7, 'files_versions/apps-files_downloadactivity.zip.v1655915227', '3bea5f95a87cd87d82bc864e2dcf8ea6', 1919, 'apps-files_downloadactivity.zip.v1655915227', 14, 3, 109899, 1657059301, 1657059301, 0, 0, '154f534e52e78a69dc7fcfb80a4bd53c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2399, 7, 'files/New folder', '68a4509e71999ad6fce3444c6fc9cae5', 1635, 'New folder', 2, 1, 105784639, 1657747368, 1657746877, 0, 0, '62cf37a97c568', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2412, 7, 'files_versions/New folder', '9903edc5c02e8c2b595ed68d73096c5f', 1919, 'New folder', 2, 1, 63430300, 1657665831, 1657665831, 0, 0, '62cdf927e3355', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2413, 7, 'files_versions/New folder/beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762', '2bfea744c02a2ad0023f4e865237ef16', 2412, 'beforerobo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz.v1654634762', 9, 3, 41663551, 1657059476, 1657059476, 0, 0, 'f30a4a421336a7900770988fd9e6bfdf', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2422, 7, 'files_trashbin/files/3rdparty.zip.d1657490068', '77c4ecb43e5ea7b79144191e79bf71f1', 2027, '3rdparty.zip.d1657490068', 14, 3, 13677241, 1655710870, 1655710870, 0, 0, '8b7f62b1bbae87e573f10caf248b4cfa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2427, 7, 'files_trashbin/files/DE_Outlook2019_x64_x32Bit.iso.d1657490069', 'a8e6c625d5fca368355733d82064f593', 2027, 'DE_Outlook2019_x64_x32Bit.iso.d1657490069', 8, 3, 10747904, 1654708845, 1654708845, 0, 0, 'e635c9caab5f190525a5d67e2e30dad5', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2431, 7, 'files_trashbin/versions/DE_Outlook2019_x64_x32Bit.iso.v1654708845.d1657490069', '9d3d54b406dc1abe69c9914284cfe8c0', 2141, 'DE_Outlook2019_x64_x32Bit.iso.v1654708845.d1657490069', 8, 3, 10747904, 1657060046, 1657060046, 0, 0, '4836b6ee6c2c2e26f600a1ea1c7751d4', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2436, 7, 'files_trashbin/files/QrCodeScanner.zip.d1657490074', 'e80d0228b6953874775186955f3916e0', 2027, 'QrCodeScanner.zip.d1657490074', 14, 3, 26791575, 1648994571, 1648994571, 0, 0, '6f05da4ecb9af26e06557a4d403ae03b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2441, 7, 'files_trashbin/versions/QrCodeScanner.zip.v1648994571.d1657490074', 'f5091f6f5b72e13968e9614c400a20d6', 2141, 'QrCodeScanner.zip.v1648994571.d1657490074', 14, 3, 26791575, 1657060378, 1657060378, 0, 0, 'b31384e5718ba4d9b2f49bbb7a46e845', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2446, 7, 'files_trashbin/files/Skigit_Aakash_8_14.apk.d1657490077', '21c0c1d3a1776b743a1cd8f4540dce80', 2027, 'Skigit_Aakash_8_14.apk.d1657490077', 20, 3, 26044392, 1645971653, 1645971653, 0, 0, '031abd376571d18dd93f11269c86ac70', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2451, 7, 'files_trashbin/versions/Skigit_Aakash_8_14.apk.v1645971653.d1657490077', 'e64757c796c9fadf510464722db4260a', 2141, 'Skigit_Aakash_8_14.apk.v1645971653.d1657490077', 20, 3, 26044392, 1657060569, 1657060569, 0, 0, 'd5101e3142f6f495e8a0f5ee91e92d8b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2456, 7, 'files_trashbin/files/Honeywell_MobilitySDK_And.zip.d1657490072', '3364f3f8f4caade25ea8f8384fcf03e6', 2027, 'Honeywell_MobilitySDK_And.zip.d1657490072', 14, 3, 29955280, 1649024414, 1649024414, 0, 0, 'bb1d04c783e7f22baa5288efba3e2d6c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2457, 5, 'appdata_oc9qmek4lhg9/preview/5/2/4/9/e/e/8/2200', '374b5db6ac845e0d198a1602b6ef007e', 2207, '2200', 2, 1, 0, 1657229672, 1657229672, 0, 0, '62c751685fb77', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2458, 7, 'files/git.odt', 'cdb1b17b10f8bbc7caed94c1e66fbb66', 1635, 'git.odt', 23, 3, 14823, 1646067055, 1646067055, 0, 0, 'd07a682a12ad92730ca1c9b1b1762ee8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2459, 5, 'appdata_oc9qmek4lhg9/preview/5/4', '381c36311a03880d1b106d35ee7579e4', 2201, '4', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535c1473b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2460, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b', 'f30b4a98bb5d5e0d65b543b963e1fe08', 2459, 'b', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535bf2412', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2461, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b/2', 'd5ba4ed5708935a661716718007e3064', 2460, '2', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535bdfda9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2462, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b/2/b', '961cfb4f44e9c289b031d2585943e8c6', 2461, 'b', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535bcd9d1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2463, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b/2/b/2', '0afa46906f2c460bb67cb65b8c46da55', 2462, '2', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535bbd583', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2464, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b/2/b/2/1', '31249405a713a2c77299d65caa76cf85', 2463, '1', 2, 1, -1, 1657230171, 1657230171, 0, 0, '62c7535b6dd47', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2465, 5, 'appdata_oc9qmek4lhg9/preview/5/4/b/2/b/2/1/2458', '014b5b9679b3b4569ca5c4c589a8e6a0', 2464, '2458', 2, 1, 0, 1657230171, 1657230171, 0, 0, '62c7535b61bc4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2466, 7, 'files/git merge.odt', 'a6d6f922b5bcf932a0d0222909351746', 1635, 'git merge.odt', 23, 3, 11939, 1647797980, 1647797980, 0, 0, '04d38e16a56438852aeb8b6ab55f584e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2467, 5, 'appdata_oc9qmek4lhg9/preview/7', '9de36673ced022f71a5bea577cf6f0fa', 2158, '7', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c75377315fe', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2468, 5, 'appdata_oc9qmek4lhg9/preview/7/b', 'c3b41f42a27717e8f6447711b157fe5d', 2467, 'b', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c753770cbc2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2469, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4', '0ddf874985a279d0e3e90a645816ac65', 2468, '4', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c7537692fe5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2470, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4/1', '12fa3a5c9ebc079d82d037abe2d7c094', 2469, '1', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c7537622eef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2471, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4/1/b', 'd90b50f0b5efe41c9f0300c34c35c166', 2470, 'b', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c75375d5f0d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2472, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4/1/b/f', '370d41267826522401b3b4ace4a56816', 2471, 'f', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c75375b146d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2473, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4/1/b/f/a', '126feea7d9ec2a665c47ceba52f825c9', 2472, 'a', 2, 1, -1, 1657230197, 1657230197, 0, 0, '62c753759ae07', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2474, 5, 'appdata_oc9qmek4lhg9/preview/7/b/4/1/b/f/a/2466', '3d82aacf1a248d9acf769182d894629f', 2473, '2466', 2, 1, 0, 1657230197, 1657230197, 0, 0, '62c7537583c4a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2476, 5, 'appdata_oc9qmek4lhg9/preview/f', 'ef4b530bb3dadd5088fe3a5daaeee277', 2158, 'f', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f8289a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2477, 5, 'appdata_oc9qmek4lhg9/preview/f/e', '2cc4e99ced5020baa95b56f456e94de4', 2476, 'e', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f7c6f5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2478, 5, 'appdata_oc9qmek4lhg9/preview/f/e/c', '441c1de9d6a3a58dc9f14c4f9845d4cc', 2477, 'c', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f764fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2479, 5, 'appdata_oc9qmek4lhg9/preview/f/e/c/8', '7c79d80270680b0bd17b81928815a933', 2478, '8', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f70303', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2480, 5, 'appdata_oc9qmek4lhg9/preview/f/e/c/8/7', 'd6987010af02a2e026fb30b58ba9e40f', 2479, '7', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f6a12d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2481, 5, 'appdata_oc9qmek4lhg9/preview/f/e/c/8/7/a', 'c71615e799cb28ba39f007fc0340910e', 2480, 'a', 2, 1, -1, 1657230479, 1657230479, 0, 0, '62c7548f64065', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2482, 5, 'appdata_oc9qmek4lhg9/preview/f/e/c/8/7/a/3', '06aec3f8da34f02cdc19616b0adb66b7', 2481, '3', 2, 1, -1, 1657657831, 1657657831, 0, 0, '62c7548f519f9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2485, 7, 'files_versions/package.json.v1655545074', '753b96b202aa02c937ca3dd6eeee1854', 1919, 'package.json.v1655545074', 4, 3, 2356, 1657479562, 1657479562, 0, 0, '661afc3fa6835ffcc50cd7ebcf30c4ac', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2486, 5, 'appdata_oc9qmek4lhg9/preview/3', 'f3912206ce94a24fc5356de24e82373d', 2158, '3', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9eec86', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2487, 5, 'appdata_oc9qmek4lhg9/preview/3/1', '5259ec4984b894057d833abb6d5b5390', 2486, '1', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9e8aa4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2488, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4', '4074a5a0950c564dbe9fa2bdb5c706ca', 2487, '4', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9e28d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2489, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4/7', 'ca2f82f8c287bd9db99fb5bc07c11603', 2488, '7', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9dc6d6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2490, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4/7/d', '72f2591563258f6060506b825bc29e3e', 2489, 'd', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9d64e4', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2491, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4/7/d/a', 'c8192f48de2e43413511fb9ea66b284d', 2490, 'a', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9d0364', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2492, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4/7/d/a/8', '8f7bd61e6dada70d321bd43097a53c85', 2491, '8', 2, 1, -1, 1657479353, 1657479353, 0, 0, '62cb20b9ca1ae', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2493, 5, 'appdata_oc9qmek4lhg9/preview/3/1/4/7/d/a/8/2244', 'c62defd2b2fd55797813af73805ba392', 2492, '2244', 2, 1, 0, 1657479353, 1657479353, 0, 0, '62cb20b9c1e26', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2494, 5, 'appdata_oc9qmek4lhg9/preview/0', 'f77959d3acb0adc22da8baca4aa1cb40', 2158, '0', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb29fc9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2495, 5, 'appdata_oc9qmek4lhg9/preview/0/4', 'bbd6df8e00667d6895281e6d2b68653a', 2494, '4', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb23e07', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2496, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0', '23c9fb6817ed427dc0be8b2f44af9f1c', 2495, '0', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb1dc0e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2497, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0/4', '1efd340ed7208b8b8e3518de31edd47f', 2496, '4', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb17a0c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2498, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0/4/8', '3d111621858b4c860bfc5b4f9b7c6315', 2497, '8', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb1181f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2499, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0/4/8/a', '34d5a3418fd552ef6319992328d16699', 2498, 'a', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20bb0b6fd', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2500, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0/4/8/a/e', '7bb59291c5a2acbbb3e7cf361a93ae44', 2499, 'e', 2, 1, -1, 1657479354, 1657479354, 0, 0, '62cb20baf1467', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2501, 5, 'appdata_oc9qmek4lhg9/preview/0/4/0/4/8/a/e/2223', 'd4470b1bd90eb8efb4744d2f8799da6e', 2500, '2223', 2, 1, 0, 1657479354, 1657479354, 0, 0, '62cb20bacd2fa', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2502, 5, 'appdata_oc9qmek4lhg9/preview/b', 'fc0f34099786af037480920584ccbc9c', 2158, 'b', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbedfe8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2503, 5, 'appdata_oc9qmek4lhg9/preview/b/0', '9ee28268bee88030ba9441320462e923', 2502, '0', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbe7d70', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2504, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d', '8d83abe2812efeba2b589454858180c6', 2503, 'd', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbe1bc6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2505, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d/f', 'b9b3efc70ed89cae24991694f059a12a', 2504, 'f', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbdb9a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2506, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d/f/2', 'a506e49f6c96303e1ab21f11c5b2edda', 2505, '2', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbd5685', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2507, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d/f/2/2', '1dbdcce5b561be107a67cba08ab643ce', 2506, '2', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbcf4db', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2508, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d/f/2/2/7', '08ffb5eb03ccb5eaca0ddc5c277e69d9', 2507, '7', 2, 1, -1, 1657479355, 1657479355, 0, 0, '62cb20bbc933d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2509, 5, 'appdata_oc9qmek4lhg9/preview/b/0/d/f/2/2/7/2218', 'ad60ace2e4a4c52e35b6dd39422ca7fb', 2508, '2218', 2, 1, 0, 1657479355, 1657479355, 0, 0, '62cb20bbba1d8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2510, 5, 'appdata_oc9qmek4lhg9/preview/f/1', 'c3e6d6e637ca5af43a6f64396b680212', 2476, '1', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc92da2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2511, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2', 'fdeddbb17faacfa9958421a2e3c3f28b', 2510, '2', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc8caf6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2512, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2/e', '2147c84e210b04edd16cd75e4ea4dfca', 2511, 'e', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc8690a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2513, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2/e/e', '57c8d01ce971e2eea0a5b919dcd7bb9d', 2512, 'e', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc80765', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2514, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2/e/e/9', '8e911e82cd400b7c6c5576c761124460', 2513, '9', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc7a592', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2515, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2/e/e/9/7', '98cc59f3afabed3217167ac39de3c349', 2514, '7', 2, 1, -1, 1657479356, 1657479356, 0, 0, '62cb20bc74406', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2516, 5, 'appdata_oc9qmek4lhg9/preview/f/1/2/e/e/9/7/2185', '7b079b4014e6d0bdd7f41e482ef98cbf', 2515, '2185', 2, 1, 0, 1657479356, 1657479356, 0, 0, '62cb20bc64161', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2517, 5, 'appdata_oc9qmek4lhg9/preview/9', '2162177fa3b6e58b0df95c7ad6ff42ac', 2158, '9', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd58476', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2518, 5, 'appdata_oc9qmek4lhg9/preview/9/2', '626b2e9b17bec9ab3d6e5174de676078', 2517, '2', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd37b1d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2519, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b', 'c4b10d353af88d50e2727627166f1214', 2518, 'b', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd31937', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2520, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b/b', 'd1d5b1598398da924cafe853d5206c5b', 2519, 'b', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd2a493', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2521, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b/b/d', '5205b4f871ad1ead26d2042119c2722d', 2520, 'd', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd2350d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2522, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b/b/d/3', '0465486795f01c4d7e73ff29330a0a1f', 2521, '3', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd1d2f0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2523, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b/b/d/3/1', 'd47be769dbf3acc736474b78f121d8ef', 2522, '1', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20bd170fc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2524, 5, 'appdata_oc9qmek4lhg9/preview/9/2/b/b/d/3/1/2118', '8801505c2f2962fb8cbeb2527a3fb1b7', 2523, '2118', 2, 1, 0, 1657479357, 1657479357, 0, 0, '62cb20bd105de', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2525, 5, 'appdata_oc9qmek4lhg9/preview/d/5', 'e2fbb29637ff102ffa19b25d7a12fa6b', 2160, '5', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be23d6d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2526, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4', '37edf70ed283f4b72f2de54d45f43199', 2525, '4', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be1dc91', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2527, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4/2', '1c268b74ae286b4d5d78d95a51308aae', 2526, '2', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be179a3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2528, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4/2/5', 'eece8b9fedbaa64b01d56da37646274d', 2527, '5', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be117ed', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2529, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4/2/5/9', 'af0c136fc8d644edf6a4995cb56ceea5', 2528, '9', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be0b656', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2530, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4/2/5/9/9', 'aacda691c4218a84e854383f1d3b71f8', 2529, '9', 2, 1, -1, 1657479357, 1657479357, 0, 0, '62cb20be05447', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2531, 5, 'appdata_oc9qmek4lhg9/preview/d/5/4/2/5/9/9/2157', '69573cd65eb70052068987875b6d1900', 2530, '2157', 2, 1, 0, 1657479357, 1657479357, 0, 0, '62cb20bdf34a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2532, 5, 'appdata_oc9qmek4lhg9/preview/f/c', 'e616613fb6ee60516651854d157f31b1', 2476, 'c', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20bec6fe6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2533, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a', '403cccf4dcf923acede373e687a169bd', 2532, 'a', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20bec2e9d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2534, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a/0', '086a612522143b40bc0de138429348e5', 2533, '0', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20bebac1f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2535, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a/0/7', '60b416857ef0ae21204f87ce2e66d07d', 2534, '7', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20bea6678', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2536, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a/0/7/8', '216e4ed18347bd23aca163f1da99ed50', 2535, '8', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20bea04ec', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2537, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a/0/7/8/9', '7c4f03acbbc2b78cbc6d2f8b67940ee3', 2536, '9', 2, 1, -1, 1657479358, 1657479358, 0, 0, '62cb20be9a339', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2538, 5, 'appdata_oc9qmek4lhg9/preview/f/c/a/0/7/8/9/2134', '6f360cd827c5950935aea2ff162cedef', 2537, '2134', 2, 1, 0, 1657479358, 1657479358, 0, 0, '62cb20be93854', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2539, 5, 'appdata_oc9qmek4lhg9/preview/1', '55d783cc5b4a966e8e30c97fd09152cb', 2158, '1', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf69cb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2540, 5, 'appdata_oc9qmek4lhg9/preview/1/a', '29af5855690ec7a4ba21fb0768d6c049', 2539, 'a', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf63aef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2541, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0', 'aee627dc081f2634ad912f5b7437fdfb', 2540, '0', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf5d907', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2542, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0/a', '6f094b0637e3e49c30676bf33908e84d', 2541, 'a', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf55698', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2543, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0/a/2', '187d22707b9fd813e586c9606ed95b38', 2542, '2', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf4f4ea', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2544, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0/a/2/8', '55b7a86eaad7cb1a0aa5cbf2ee359fbe', 2543, '8', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf49380', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2545, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0/a/2/8/3', '9ffe887ad111be6ca23405ce589f3a3f', 2544, '3', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bf4317c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2546, 5, 'appdata_oc9qmek4lhg9/preview/1/a/0/a/2/8/3/2111', '0d522cf39630c4f7ca6a4a96e05f74f4', 2545, '2111', 2, 1, 0, 1657479359, 1657479359, 0, 0, '62cb20bf3abcb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2547, 5, 'appdata_oc9qmek4lhg9/preview/c', '36dd3771a4842910095e8c4674f36531', 2158, 'c', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20c010d34', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2548, 5, 'appdata_oc9qmek4lhg9/preview/c/9', '951527ea71c2af6a0e2c33eefb164a1b', 2547, '9', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20c00ab71', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2549, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0', 'ef2a1fb9bb3ae64b51bdda042418061b', 2548, '0', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20c0049c1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2550, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0/2', '6ff47ceb4b3e67622e17d23b4902eafd', 2549, '2', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bff29df', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2551, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0/2/b', 'b463cca875dfbeb520bf55a26601d0b7', 2550, 'b', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bfec8a5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2552, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0/2/b/4', '835ac92831ccf1de9b8ca1ee913483f1', 2551, '4', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bfe66a5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2553, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0/2/b/4/9', '48c6b20408421614bda463f7f2e72a0e', 2552, '9', 2, 1, -1, 1657479359, 1657479359, 0, 0, '62cb20bfe04d2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2554, 5, 'appdata_oc9qmek4lhg9/preview/c/9/0/2/b/4/9/2133', '558ca3921467e8871e82a96c80d828bb', 2553, '2133', 2, 1, 0, 1657479359, 1657479359, 0, 0, '62cb20bfd9aa8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2555, 5, 'appdata_oc9qmek4lhg9/preview/e', '8566d95d65384855576248b779cdd61e', 2158, 'e', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0c663e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2556, 5, 'appdata_oc9qmek4lhg9/preview/e/f', '6d599ecc5a4372e222c7d603059ce76a', 2555, 'f', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0c0454', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2557, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4', 'bb3f1eb3868f958644e7b53321113eb6', 2556, '4', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0ba26a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2558, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4/1', '8f3dd823baa43bdd79407c3bfe485ef9', 2557, '1', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0b407f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2559, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4/1/d', '0a14a55ba1d7466711f30895d83a128d', 2558, 'd', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0ade76', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2560, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4/1/d/4', '68a6c536dad8dff789fe1bd564b1de2a', 2559, '4', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0a7cc8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2561, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4/1/d/4/8', 'd51741fb6c2eb2ba9056ecb58153ed6a', 2560, '8', 2, 1, -1, 1657479360, 1657479360, 0, 0, '62cb20c0a1abb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2562, 5, 'appdata_oc9qmek4lhg9/preview/e/f/4/1/d/4/8/2124', 'a209f1c7f3d9f29d1fb5c02131ebdb39', 2561, '2124', 2, 1, 0, 1657479360, 1657479360, 0, 0, '62cb20c09a36c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2563, 5, 'appdata_oc9qmek4lhg9/preview/f/6', '061b1764ca97237488bf28dfd998056c', 2476, '6', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c1796cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2564, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e', '106eae5e76b221f7f998b13ff3f4e9dc', 2563, 'e', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c173515', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2565, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e/7', '5cb29a7b14730a63119c423bad784c5b', 2564, '7', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c16d4d3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2566, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e/7/9', '60063403f9673921bf3706b766fa7b4c', 2565, '9', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c1671de', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2567, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e/7/9/4', '7559070b7ff3f98fd49ad260822b9264', 2566, '4', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c160f97', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2568, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e/7/9/4/a', '294d063d4415a5ea4d29469761b4f414', 2567, 'a', 2, 1, -1, 1657479361, 1657479361, 0, 0, '62cb20c15ae52', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2569, 5, 'appdata_oc9qmek4lhg9/preview/f/6/e/7/9/4/a/2132', '1b617fd4a9d8435949867090e223c9e2', 2568, '2132', 2, 1, 0, 1657479361, 1657479361, 0, 0, '62cb20c15392b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2570, 5, 'appdata_oc9qmek4lhg9/preview/0/5', '9b1867d3c9c42035405df2c039526b48', 2494, '5', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c29872b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2571, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5', 'd8abc0ced69e0cf714bf07960d3e9b16', 2570, '5', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c29253a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2572, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5/4', '706e9e6de23193f4721cf80a21c71f19', 2571, '4', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c288254', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2573, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5/4/6', '1b03f43230265422e9c7db6021618982', 2572, '6', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c282094', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2574, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5/4/6/b', 'd501b483e87d0ff3cc05d4cb19f9f11d', 2573, 'b', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c277da3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2575, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5/4/6/b/0', '0cee316a864d792164b44b6d9865e544', 2574, '0', 2, 1, -1, 1657479362, 1657479362, 0, 0, '62cb20c26fb05', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2576, 5, 'appdata_oc9qmek4lhg9/preview/0/5/5/4/6/b/0/2109', '702615abfbe59ca10c04b081dc77d2c7', 2575, '2109', 2, 1, 0, 1657479362, 1657479362, 0, 0, '62cb20c225ff8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2577, 5, 'appdata_oc9qmek4lhg9/preview/c/3', '2db7e99d8f5046f28bb69dc4dacf4195', 2547, '3', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3499fe', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2578, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5', 'bcb6b1010b48556b01c5bf6d8457b5de', 2577, '5', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c343854', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2579, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5/3', '99afbf17102c0f3dc65d1702b30cdbac', 2578, '3', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c33d654', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2580, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5/3/5', 'ba405aad300f45b85c408a05e9a75a98', 2579, '5', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3374fc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2581, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5/3/5/f', 'e9f2326d2ccf48b017fb55337d522867', 2580, 'f', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c33183b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2582, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5/3/5/f/e', '3e448771d8f9b778dc5e0bc129d1645a', 2581, 'e', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c32920d', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2583, 5, 'appdata_oc9qmek4lhg9/preview/c/3/5/3/5/f/e/2110', '661799e82c04e49751725a287df73adb', 2582, '2110', 2, 1, 0, 1657479363, 1657479363, 0, 0, '62cb20c3248a2', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2584, 5, 'appdata_oc9qmek4lhg9/preview/a', 'cf981c12be8f701156e07418ab7a7e79', 2158, 'a', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c400f9c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2585, 5, 'appdata_oc9qmek4lhg9/preview/a/4', '6919fe8a859d809a6d5e38e74f2adc19', 2584, '4', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3eefd3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2586, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8', '5b978efc9d4ba79d7102a5df4fbfd9eb', 2585, '8', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3e8e67', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2587, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8/6', 'ff42b8531d325f5e06a066ce8e954633', 2586, '6', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3dcaa0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2588, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8/6/c', '35546e4343be05b28cd53758bbbe8e3e', 2587, 'c', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3d683a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2589, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8/6/c/d', '1fda0f8502810b2cce3151d4a4fe8d98', 2588, 'd', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3d0666', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2590, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8/6/c/d/0', 'db7035e75ff8d4e0c839f7e13f4b6148', 2589, '0', 2, 1, -1, 1657479363, 1657479363, 0, 0, '62cb20c3ca48c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2591, 5, 'appdata_oc9qmek4lhg9/preview/a/4/8/6/c/d/0/2152', '7166c4a488f6da41e9d229c671e98a03', 2590, '2152', 2, 1, 0, 1657479363, 1657479363, 0, 0, '62cb20c3b69ca', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2592, 5, 'appdata_oc9qmek4lhg9/preview/0/d', '822f55152ba60b28e663c8bb11b41248', 2494, 'd', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c4b8a5b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2593, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7', '2f847fe888fcfa81d1dc799016c89328', 2592, '7', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c4b272b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2594, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7/3', 'e33797972ae3dd2bb3fb0aadaad60a77', 2593, '3', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c4ac555', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2595, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7/3/a', '562e6957f7fbd003ac224c4fd44ab38b', 2594, 'a', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c4a6398', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2596, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7/3/a/2', '7e55a3789934d521a987301700ba2c42', 2595, '2', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c49c06a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2597, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7/3/a/2/5', 'f84d08af2324eb343381a3e24dd2e8b3', 2596, '5', 2, 1, -1, 1657479364, 1657479364, 0, 0, '62cb20c489fff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2598, 5, 'appdata_oc9qmek4lhg9/preview/0/d/7/3/a/2/5/2147', 'ccb10e2adbf51cc6a45ddf10a7cc60ac', 2597, '2147', 2, 1, 0, 1657479364, 1657479364, 0, 0, '62cb20c4749bc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2599, 5, 'appdata_oc9qmek4lhg9/preview/2', '4900a5fab400b5e8c9fb347f085cd9ee', 2158, '2', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c5b91fb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2600, 5, 'appdata_oc9qmek4lhg9/preview/2/3', 'b9caad4a91cd3340dd5176dca08a46a5', 2599, '3', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c58c414', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2601, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c', '3773042299b84bbc3540e239b0c92465', 2600, 'c', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c57df04', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2602, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c/9', '3a95cba80897fe4bcd8aa1b64cb8d1e1', 2601, '9', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c573c5f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2603, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c/9/7', '84edb0b978be1f01d6ef62afff8a63af', 2602, '7', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c56787b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2604, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c/9/7/e', '2d0c0a1a63bd0854f15b8a1f35401ff2', 2603, 'e', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c559828', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2605, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c/9/7/e/9', 'ea8bfab25434cbe0d854952c257a84d8', 2604, '9', 2, 1, -1, 1657479365, 1657479365, 0, 0, '62cb20c54b070', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2606, 5, 'appdata_oc9qmek4lhg9/preview/2/3/c/9/7/e/9/2140', 'ae1352b8005442107d9e0070200f8b91', 2605, '2140', 2, 1, 0, 1657479365, 1657479365, 0, 0, '62cb20c53cf06', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2607, 7, 'files/package.json', 'f0c3f01fd140111ce07252f0b83c4b72', 1635, 'package.json', 4, 3, 2356, 1655545074, 1655545074, 0, 0, 'efba412a8a07f828f3824f8e3312360a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2608, 5, 'appdata_oc9qmek4lhg9/avatar/admin/avatar.512.png', '9352ad353f841e869b2b2d3e979cbe69', 2082, 'avatar.512.png', 12, 11, 6550, 1657480522, 1657480522, 0, 0, '7665a64d7106b44a8cafd2e9c2c5afea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2614, 7, 'files/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', '6dba3ba175d656c14602e83ae5933ece', 1635, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, 'bee82dd8687a496fa1cc7651e6e62741', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2628, 5, 'appdata_oc9qmek4lhg9/preview/4', '6d386a7941433451c36137e8b42737cd', 2158, '4', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc988590c89', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2629, 5, 'appdata_oc9qmek4lhg9/preview/4/d', 'a9efceb424847b68530f70d153aeef27', 2628, 'd', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc9885682d8', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2630, 5, 'appdata_oc9qmek4lhg9/preview/4/d/e', '9823cf18136cbca6aa8da6eb6de75d50', 2629, 'e', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc988533229', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2631, 5, 'appdata_oc9qmek4lhg9/preview/4/d/e/8', '51c3357f8605e9dc9cf987e17eb0bcbb', 2630, '8', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc988526ea1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2632, 5, 'appdata_oc9qmek4lhg9/preview/4/d/e/8/1', '0f4f8ba9cf2823b8c47f006834a6fa40', 2631, '1', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc9884b52af', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2633, 5, 'appdata_oc9qmek4lhg9/preview/4/d/e/8/1/d', 'b2b7c2a4eb169fcb301a223cb8fc82b8', 2632, 'd', 2, 1, -1, 1657575556, 1657575556, 0, 0, '62cc988494a58', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2634, 5, 'appdata_oc9qmek4lhg9/preview/4/d/e/8/1/d/9', 'dfa3b225b89bbf39fec57e3497f6a396', 2633, '9', 2, 1, -1, 1657657831, 1657657831, 0, 0, '62cc9884844f7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2640, 7, 'files_versions/New folder/kjh', '2a7a37e1491c9fa0ddac3ca847871530', 2412, 'kjh', 2, 1, 1750, 1657655206, 1657655206, 0, 0, '62cdcfa70ab77', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2641, 7, 'files_versions/New folder/kjh/package.json.v1655545074', '62fe106693ac1c2784cfe23f447d7eea', 2640, 'package.json.v1655545074', 4, 3, 1750, 1657655206, 1657655206, 0, 0, '046b936141c73b87152ec0c66eefa7af', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2646, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656189', 'f45a6ec4bfee1ba1d89eaa29166d0108', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656189', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, '454e703e2cbc37fa7b53fc0ef0b7c89f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2651, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656260', '118466b0f68dfa4259d80fbd9f609c69', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656260', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, '39a2c1114114b7eb85db94f190ec9acd', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2656, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656707', 'a97e4bd16530e0c6d29fe931bfd91bb6', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657656707', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, 'bebb2d6b0da1aa31ae8c3a9fd9bc0061', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2661, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657657313', '15238ee0cba204263c9da9390eecdb22', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657657313', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, 'ec8bdcad3cf834ac08137712c8f92e92', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2666, 7, 'files_trashbin/files/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657657601', '4b77d5c1794597c20eba5ab633e7be6e', 2027, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1657657601', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, '53f7e5e2759033113dc1d6bc9d492ccb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2688, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634', '2fc49d99bffbe4a91f599b70d8bc81a0', 2112, 'web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634', 2, 1, 26791575, 1657657897, 1657657897, 0, 0, '62cdda29d1bac', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2689, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634/0', '885cbb8e709650bcdbbc80d4bde5d3b2', 2688, '0', 8, 3, 10485760, 1657657896, 1657657896, 0, 0, 'c033e91147556440e6b3840db6ca6183', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2690, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634/10485760', '3dc647ed278399dfd049492b9755a6a8', 2688, '10485760', 8, 3, 10485760, 1657657897, 1657657897, 0, 0, 'cdc05f53a67e809a4654a5f94664b014', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2691, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634/20971520', 'd97d75db93e9d7156d1e01c982cd1fdc', 2688, '20971520', 8, 3, 5820055, 1657657897, 1657657897, 0, 0, '7e889f69eabdcc04bdaa04e7c8cb453a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2692, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153', 'e10a397c0d1a57999a0bdcfe8a7667f4', 2112, 'web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153', 2, 1, 26791575, 1657657942, 1657657942, 0, 0, '62cdda568c13b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2693, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153/0', '115e4d4c87feaac2f48d606bfef33833', 2692, '0', 8, 3, 10485760, 1657657941, 1657657941, 0, 0, '000dd52727cd2524ee01e268c2ba1f2d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2694, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153/10485760', '0141c91f1e92a64583be62595b008a01', 2692, '10485760', 8, 3, 10485760, 1657657942, 1657657942, 0, 0, 'b7e6840364187b1e3e9ff893046e8553', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2695, 7, 'uploads/web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153/20971520', '67dd2fa8023752c672c322587949f5da', 2692, '20971520', 8, 3, 5820055, 1657657942, 1657657942, 0, 0, '7194cfb09dfb0b285104f56fee116c9f', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2696, 7, 'files/New folder/sadf', '002c3ed249944db6bc5403b4c0a87d47', 2399, 'sadf', 2, 1, 105672801, 1657745006, 1657745006, 0, 0, '62cf2e6e68333', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2720, 5, 'appdata_oc9qmek4lhg9/preview/7/a', '1f4fe3d742a6d190f7774fbeca7306c1', 2467, 'a', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37daca7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2721, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e', 'a4c203e606ec37f4f122c83f78b15da7', 2720, 'e', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37d49d5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2722, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e/e', 'b494e6703a4a70b52f1b19d05a014ea3', 2721, 'e', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37ce80c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2723, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e/e/2', 'f8c925901fb5f2294903ef898fe98853', 2722, '2', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37c2452', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2724, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e/e/2/6', '34cd49b1c37b18246c01eacaf05ae166', 2723, '6', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37b4039', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2725, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e/e/2/6/c', '395fda90bce42a3558744994506ca762', 2724, 'c', 2, 1, -1, 1657662519, 1657662519, 0, 0, '62cdec37a9e35', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2726, 5, 'appdata_oc9qmek4lhg9/preview/7/a/e/e/2/6/c/2719', '9117b5abe56cc4e1f74cc5e690e61a53', 2725, '2719', 2, 1, 0, 1657662519, 1657662519, 0, 0, '62cdec37a2e1b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2771, 7, 'files_versions/New folder/sadf', 'a8b20e55c027ab95b692c265b2f98b0e', 2412, 'sadf', 2, 1, 21764999, 1657665831, 1657665831, 0, 0, '62cdf927e3355', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2772, 7, 'files_versions/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410', 'a78e7eeaabe9277476d593a34c059636', 2771, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.v1655829410', 14, 3, 21764999, 1657665831, 1657665831, 0, 0, '067ca7128d15dab06cdb07db1f09de3c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2787, 7, 'files/New folder/sadf/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', '38df4cd753d20357c51c26912e048824', 2696, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 14, 3, 21764999, 1655829410, 1655829410, 0, 0, '2d35a3672fee26e8e932ac005ae72959', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2793, 7, 'files/New folder/sadf/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', '73830404e3d1ab04556f425294937a94', 2696, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, '71feeceb7411232cc867a120cd953cad', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2794, 7, 'files/New folder/sadf/222.txt', 'dead09c9b3e749eba21797f57ad33b02', 2696, '222.txt', 6, 5, 6, 1656713672, 1656713672, 0, 0, '5253ab73a5257f234f3e6bb46fce2579', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2795, 5, 'appdata_oc9qmek4lhg9/preview/e/4', '3644d2083d8c193c57fb9808b7985edb', 2555, '4', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad83ab8f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2796, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6', '5be0721eeebc460e4262208df95365a7', 2795, '6', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad828721', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2797, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6/5', '709994985cef12c8b111c62d9a102272', 2796, '5', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad7f3d48', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2798, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6/5/a', 'c62edd5e98f39b809e999cd4831f0c54', 2797, 'a', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad7c708f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2799, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6/5/a/e', 'fb2578cfc787ca0659c6c558a58147f4', 2798, 'e', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad785cb9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2800, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6/5/a/e/4', '49daa6640c28f75348a5de4c3a7bc7e3', 2799, '4', 2, 1, -1, 1657666263, 1657666263, 0, 0, '62cdfad720278', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2801, 5, 'appdata_oc9qmek4lhg9/preview/e/4/6/5/a/e/4/2794', 'fc75d1f0ac77bdb1a95f1a7445482cfa', 2800, '2794', 2, 1, 0, 1657666263, 1657666263, 0, 0, '62cdfad708797', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2802, 7, 'files/New folder/sadf/next list (1) (2).odt', '8e4fac5d367b8292691a6c715e1ec8aa', 2696, 'next list (1) (2).odt', 23, 3, 111832, 1655226348, 1655226348, 0, 0, '051554a03f0bfa7545719ca4b9b32ad6', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2803, 5, 'appdata_oc9qmek4lhg9/preview/2/e', '52ecf4fcc2bd41187525efc6f127fe7e', 2599, 'e', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf1536bddef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2804, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b', '67fa823eb6d76bf3d411a588b75b01d6', 2803, 'b', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf1536993a0', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2805, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b/5', 'e77341fd148fac3b28ba66914a5cf2df', 2804, '5', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf153686e41', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2806, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b/5/6', '5a338ae0a3985160f1ba2c6dc9fe9388', 2805, '6', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf1536706b3', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2807, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b/5/6/5', '5fdadad394dc6a1c8362a015df707632', 2806, '5', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf1536643a6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2808, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b/5/6/5/7', 'e495121c0db544728c01414751a63a7d', 2807, '7', 2, 1, -1, 1657738550, 1657738550, 0, 0, '62cf153653f30', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2809, 5, 'appdata_oc9qmek4lhg9/preview/2/e/b/5/6/5/7/2802', 'ed096b25076ce5ab2cc63b737d8c1ea6', 2808, '2802', 2, 1, 0, 1657738550, 1657738550, 0, 0, '62cf15364104e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2810, 7, 'files/New folder/sadf/next list (1) (1).odt', '50a43349c77ffc22a5b49c8924c9a51a', 2696, 'next list (1) (1).odt', 23, 3, 111832, 1655226319, 1655226319, 0, 0, '66bf983c4cf4d6560efc9ce8265f3a4b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2811, 7, 'files/New folder/sadf/Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', '88a9a85d709f68899b3ff771cdcfaaee', 2696, 'Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 27, 3, 112047, 1654629618, 1654629618, 0, 0, 'c502bd32a4c778c03159d19ac3db9062', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2812, 7, 'files/New folder/sadf/outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 'dc146c616e348624c07aff2cba33b0cd', 2696, 'outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 27, 3, 112047, 1654629618, 1654629618, 0, 0, '197293f178deb48bb5a5533dd3a6f1e9', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2813, 7, 'files/New folder/sadf/outgoing_1657739964_outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', '8dab28a8c091d340c84582e4fde5f3c0', 2696, 'outgoing_1657739964_outgoing_1657739831_Skigit_Launch_SOW_Milestone_Plan_Vacheslav_1.0_060322.docx', 27, 3, 112047, 1654629618, 1654629618, 0, 0, 'd37b3cbe14b01f0848ed5e96097e5fc8', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2819, 7, 'files/New folder/sadf/outgoing_1657666106_robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', '584d21d9b3d20de560dc2df9ed98b6ee', 2696, 'outgoing_1657666106_robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 9, 3, 41663551, 1654634762, 1654634762, 0, 0, 'e5923e7aa9c7e219f6eecdda5dec1e29', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2820, 7, 'files/New folder/sadf/admin', '6aeda754fa5d2b5727751eadb848d48c', 2696, 'admin', 8, 3, 862, 1657740687, 1657740687, 0, 0, '749967fe095fd4e7065668383d05c465', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2821, 7, 'files/New folder/sadf/outgoing_1657666161_222.txt', '9453c69faf5993ac57c336cb45452cdd', 2696, 'outgoing_1657666161_222.txt', 6, 5, 6, 1656713672, 1656713672, 0, 0, '28e1307e8100f8635c100d61d843ec5c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2822, 5, 'appdata_oc9qmek4lhg9/preview/5/6', 'a5c218c9b0868cc94a035279866e981e', 2201, '6', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfb12428', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2823, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c', 'e4f1efda7985b2dedaad2d4814a81ab9', 2822, 'c', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfaedf74', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2824, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c/b', 'c520865d9937c9cd2aef03d1f125c7dd', 2823, 'b', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfad999b', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2825, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c/b/9', '978a9ea2e50a583e53c43e570ff3393b', 2824, '9', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfac53d6', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2826, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c/b/9/4', '12264ba4607e84dbeba5132b37b5c0f1', 2825, '4', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfab0db7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2827, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c/b/9/4/c', 'bb34423e763186494490f1e3eee90353', 2826, 'c', 2, 1, -1, 1657740794, 1657740794, 0, 0, '62cf1dfaa4a6f', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2828, 5, 'appdata_oc9qmek4lhg9/preview/5/6/c/b/9/4/c/2821', '596a2b5b58a9282adb4437d277e72a0f', 2827, '2821', 2, 1, 0, 1657740794, 1657740794, 0, 0, '62cf1dfa8a8bc', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2829, 7, 'files/New folder/sadf/occ', '31e1dabea46cd29fc863cd9438356089', 2696, 'occ', 8, 3, 283, 1655402654, 1655402654, 0, 0, '377f6b1bad22e8748463c9efdb633af0', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2830, 7, 'files/New folder/sadf/index.html', '52bdda80a3abf040f8dfcede5603f951', 2696, 'index.html', 19, 5, 156, 1655402654, 1655402654, 0, 0, 'b7b9810f96f8832dd84fcb8e70c45a0d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2831, 7, 'files/New folder/sadf/index.php', '2d946894cdd7e7cb041957c924a3b689', 2696, 'index.php', 26, 3, 3456, 1655402654, 1655402654, 0, 0, '68f3f6c902ff897379f1f89f2b15c122', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2832, 7, 'files/New folder/sadf/webpack.common.js', 'd65153aab6014cb2c8d9e98b8d36fcb5', 2696, 'webpack.common.js', 7, 3, 4205, 1655402654, 1655402654, 0, 0, 'd86a0cc001707926d1733f6e847412a1', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2833, 7, 'files/New folder/sadf/webpack.prod.js', '8c72f8b2b5d9a59697527ebbbad20dd7', 2696, 'webpack.prod.js', 7, 3, 171, 1655402654, 1655402654, 0, 0, 'c9d0f898a81e2f14edd4a1d5c74c730a', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2834, 7, 'files/New folder/sadf/webpack.modules.js', '117d4641f1eee686b02dd766ab47eac8', 2696, 'webpack.modules.js', 7, 3, 4981, 1655402654, 1655402654, 0, 0, '03158655303b3f6f75f1bd6641040f6d', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2835, 7, 'files/New folder/sadf/version.php', '38d2388b512cc5f0888bf865c38782eb', 2696, 'version.php', 26, 3, 1706, 1655402654, 1655402654, 0, 0, 'ed375f24211e7be6d6632f1666e38caa', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2836, 7, 'files/New folder/sadf/drone-run-php-tests.sh', 'de02e3e131bd45945f56dc2dabd0c424', 2696, 'drone-run-php-tests.sh', 29, 5, 1477, 1655402654, 1655402654, 0, 0, '34567e4530e01af0211d69e9015615ea', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2837, 7, 'files/New folder/sadf/drone-wait-objectstore.sh', 'c74dca666ac60f7c580c29064d91968f', 2696, 'drone-wait-objectstore.sh', 29, 5, 2249, 1655402654, 1655402654, 0, 0, 'f7b1d3096e07c7f892dbb510590c6263', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2838, 7, 'files/New folder/sadf/jestSetup.js', '3b7dbe3c394898aeff00538ff4ebfa40', 2696, 'jestSetup.js', 7, 3, 854, 1655402654, 1655402654, 0, 0, 'ab639cf0644178d52cc37259d6ab4fe2', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2839, 7, 'files/New folder/sadf/bootstrap.php', 'd89ee9de1546ccfd14c97c998071ddce', 2696, 'bootstrap.php', 26, 3, 483, 1655402654, 1655402654, 0, 0, '4c0100866787dac08a2bafa42ab49d0e', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2840, 5, 'appdata_oc9qmek4lhg9/preview/6', '84f3d36abacd7a112f0c608f6c18bfcd', 2158, '6', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a13c98e', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2841, 5, 'appdata_oc9qmek4lhg9/preview/6/6', '603a04c4b274a5cfc20233d3375d3c0a', 2840, '6', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a1387cb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2842, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3', '9d3bafe7f308a75aa618f3765dd54a9b', 2841, '3', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a134645', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2843, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3/7', 'e40bc1af47f2f9e3e133574fa5d7f005', 2842, '7', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a13060a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2844, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3/7/7', 'd52bd9e16f9ddb39e2137cfb35d1bcf9', 2843, '7', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a12c441', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2845, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3/7/7/2', 'fb324fc6bc2cb8973cf65ab27800a3e7', 2844, '2', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a1282e9', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2846, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3/7/7/2/e', '07ccaf022ab1d7fdee1897f15a3598e2', 2845, 'e', 2, 1, -1, 1657746593, 1657746593, 0, 0, '62cf34a124198', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2847, 5, 'appdata_oc9qmek4lhg9/preview/6/6/3/7/7/2/e/2810', '4bebbf17e35e044132f9241369382732', 2846, '2810', 2, 1, 0, 1657746593, 1657746593, 0, 0, '62cf34a11d01a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2848, 7, 'files/New folder/kkdkdkdkdkdkd', '46fe740f7c9c7c7c25ac73e437184ca2', 2399, 'kkdkdkdkdkdkd', 2, 1, 111838, 1657747368, 1657747368, 0, 0, '62cf37a97c568', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2849, 7, 'files/New folder/kkdkdkdkdkdkd/222.txt', '8d3f0007a4312b1215313003ee8c3261', 2848, '222.txt', 6, 5, 6, 1656713672, 1656713672, 0, 0, '748bc667d0e844e2bb03fc32db99758c', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2850, 5, 'appdata_oc9qmek4lhg9/preview/2/2', 'eec106a5a5a5dcb71814a06ad179bb32', 2599, '2', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35e0219d7', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2851, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1', 'c9b0365635f05f16f8f7e2069255d44a', 2850, '1', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35e01955c', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2852, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1/7', '5d227c8940d35382efff9c6b3df8c47f', 2851, '7', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35e00b169', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2853, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1/7/a', '51230e137b40d948d156c508975d9c93', 2852, 'a', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35dfece11', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2854, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1/7/a/d', '2e40020d907d34cc4703aaa29b850e21', 2853, 'd', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35dfce4ef', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2855, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1/7/a/d/1', 'af12e7bc24acd07268a45fc6ff6a1214', 2854, '1', 2, 1, -1, 1657746911, 1657746911, 0, 0, '62cf35dfc41d1', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2856, 5, 'appdata_oc9qmek4lhg9/preview/2/2/1/7/a/d/1/2849', 'a0ef91b8c97934e2e27b420cdf20f382', 2855, '2849', 2, 1, 0, 1657746911, 1657746911, 0, 0, '62cf35dfbceff', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2857, 5, 'appdata_oc9qmek4lhg9/css/federatedfilesharing', '9c3065a7158fd74fa4de7974b939ffcd', 2049, 'federatedfilesharing', 2, 1, 0, 1657746998, 1657746998, 0, 0, '62cf36361c42a', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2858, 5, 'appdata_oc9qmek4lhg9/css/federatedfilesharing/f5a2-006d-settings-admin.css', '864eb4cdeb4cd42c700d1a924ccb8fd2', 2857, 'f5a2-006d-settings-admin.css', 10, 5, 45, 1657746998, 1657746998, 0, 0, '49b4c1a5686455e2e7bc45bbd86222ad', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2859, 5, 'appdata_oc9qmek4lhg9/css/federatedfilesharing/f5a2-006d-settings-admin.css.deps', '05e644c91846a52df1f891260db0cfdc', 2857, 'f5a2-006d-settings-admin.css.deps', 8, 3, 328, 1657746998, 1657746998, 0, 0, 'e36f20011050d520ba619c51d4981ca3', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2860, 5, 'appdata_oc9qmek4lhg9/css/federatedfilesharing/f5a2-006d-settings-admin.css.gzip', '5921b8f8bb47dc366638487956f7b455', 2857, 'f5a2-006d-settings-admin.css.gzip', 9, 3, 63, 1657746998, 1657746998, 0, 0, '7f4e7010e4e2462364a7451961cc0eeb', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2861, 7, 'files/New folder/kkdkdkdkdkdkd/next list (1) (1).odt', 'b48535f3c1a802ad7a95128bd6bd1311', 2848, 'next list (1) (1).odt', 23, 3, 111832, 1655226319, 1655226319, 0, 0, 'a8fad591f028f5d47ced36442711575b', 27, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2862, 5, 'appdata_oc9qmek4lhg9/preview/b/d', 'e62e4a075465af3391b773064b5eb9f5', 2502, 'd', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37bf00794', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2863, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1', '4206ab1fd759b228588e920500c381b5', 2862, '1', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37beee7ee', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2864, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1/3', 'ae4d9136ac8928623b46e9d1b5f5fb7e', 2863, '3', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37bee8601', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2865, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1/3/5', '50af08abec23622a678c7833b72ff778', 2864, '5', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37bee23e5', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2866, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1/3/5/4', '4058dae92ba2b391426d2c35d2a57200', 2865, '4', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37beda186', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2867, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1/3/5/4/6', 'ec5e2e4ae20fd237167f1b5908b4b634', 2866, '6', 2, 1, -1, 1657747390, 1657747390, 0, 0, '62cf37bec9ceb', 31, '', 0, 0);
INSERT INTO `oc_filecache` VALUES (2868, 5, 'appdata_oc9qmek4lhg9/preview/b/d/1/3/5/4/6/2861', 'd5516f3a0031fc0909a1c404ccccd0d8', 2867, '2861', 2, 1, 0, 1657747390, 1657747390, 0, 0, '62cf37bec0f71', 31, '', 0, 0);
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
INSERT INTO `oc_filecache_extended` VALUES (2109, NULL, 0, 1656867884);
INSERT INTO `oc_filecache_extended` VALUES (2110, NULL, 0, 1656883167);
INSERT INTO `oc_filecache_extended` VALUES (2111, NULL, 0, 1656884294);
INSERT INTO `oc_filecache_extended` VALUES (2118, NULL, 0, 1657045702);
INSERT INTO `oc_filecache_extended` VALUES (2124, NULL, 0, 1656972609);
INSERT INTO `oc_filecache_extended` VALUES (2132, NULL, 0, 1656973112);
INSERT INTO `oc_filecache_extended` VALUES (2133, NULL, 0, 1656973922);
INSERT INTO `oc_filecache_extended` VALUES (2134, NULL, 0, 1656974051);
INSERT INTO `oc_filecache_extended` VALUES (2140, NULL, 0, 1656974461);
INSERT INTO `oc_filecache_extended` VALUES (2147, NULL, 0, 1656974541);
INSERT INTO `oc_filecache_extended` VALUES (2152, NULL, 0, 1656974656);
INSERT INTO `oc_filecache_extended` VALUES (2157, NULL, 0, 1656974769);
INSERT INTO `oc_filecache_extended` VALUES (2159, NULL, 0, 1657045635);
INSERT INTO `oc_filecache_extended` VALUES (2185, NULL, 0, 1657046329);
INSERT INTO `oc_filecache_extended` VALUES (2200, NULL, 0, 1657050284);
INSERT INTO `oc_filecache_extended` VALUES (2218, NULL, 0, 1657046670);
INSERT INTO `oc_filecache_extended` VALUES (2223, NULL, 0, 1657046742);
INSERT INTO `oc_filecache_extended` VALUES (2228, NULL, 0, 1657049662);
INSERT INTO `oc_filecache_extended` VALUES (2244, NULL, 0, 1657049543);
INSERT INTO `oc_filecache_extended` VALUES (2273, NULL, 0, 1657059301);
INSERT INTO `oc_filecache_extended` VALUES (2299, NULL, 0, 1657057279);
INSERT INTO `oc_filecache_extended` VALUES (2300, NULL, 0, 1657059338);
INSERT INTO `oc_filecache_extended` VALUES (2312, NULL, 0, 1657057840);
INSERT INTO `oc_filecache_extended` VALUES (2318, NULL, 0, 1657059208);
INSERT INTO `oc_filecache_extended` VALUES (2422, NULL, 0, 1657059545);
INSERT INTO `oc_filecache_extended` VALUES (2427, NULL, 0, 1657060047);
INSERT INTO `oc_filecache_extended` VALUES (2436, NULL, 0, 1657060379);
INSERT INTO `oc_filecache_extended` VALUES (2446, NULL, 0, 1657060571);
INSERT INTO `oc_filecache_extended` VALUES (2456, NULL, 0, 1657060605);
INSERT INTO `oc_filecache_extended` VALUES (2458, NULL, 0, 1657230120);
INSERT INTO `oc_filecache_extended` VALUES (2466, NULL, 0, 1657230188);
INSERT INTO `oc_filecache_extended` VALUES (2607, NULL, 0, 1657479562);
INSERT INTO `oc_filecache_extended` VALUES (2614, NULL, 0, 1657490020);
INSERT INTO `oc_filecache_extended` VALUES (2646, NULL, 0, 1657655343);
INSERT INTO `oc_filecache_extended` VALUES (2651, NULL, 0, 1657656199);
INSERT INTO `oc_filecache_extended` VALUES (2656, NULL, 0, 1657656269);
INSERT INTO `oc_filecache_extended` VALUES (2661, NULL, 0, 1657656721);
INSERT INTO `oc_filecache_extended` VALUES (2666, NULL, 0, 1657657322);
INSERT INTO `oc_filecache_extended` VALUES (2689, NULL, 0, 1657657896);
INSERT INTO `oc_filecache_extended` VALUES (2690, NULL, 0, 1657657897);
INSERT INTO `oc_filecache_extended` VALUES (2691, NULL, 0, 1657657897);
INSERT INTO `oc_filecache_extended` VALUES (2693, NULL, 0, 1657657941);
INSERT INTO `oc_filecache_extended` VALUES (2694, NULL, 0, 1657657942);
INSERT INTO `oc_filecache_extended` VALUES (2695, NULL, 0, 1657657942);
INSERT INTO `oc_filecache_extended` VALUES (2787, NULL, 0, 1657666025);
INSERT INTO `oc_filecache_extended` VALUES (2793, NULL, 0, 1657666069);
INSERT INTO `oc_filecache_extended` VALUES (2794, NULL, 0, 1657666155);
INSERT INTO `oc_filecache_extended` VALUES (2802, NULL, 0, 1657738386);
INSERT INTO `oc_filecache_extended` VALUES (2810, NULL, 0, 1657738592);
INSERT INTO `oc_filecache_extended` VALUES (2811, NULL, 0, 1657739828);
INSERT INTO `oc_filecache_extended` VALUES (2812, NULL, 0, 1657739962);
INSERT INTO `oc_filecache_extended` VALUES (2813, NULL, 0, 1657740004);
INSERT INTO `oc_filecache_extended` VALUES (2819, NULL, 0, 1657740666);
INSERT INTO `oc_filecache_extended` VALUES (2820, NULL, 0, 1657740746);
INSERT INTO `oc_filecache_extended` VALUES (2821, NULL, 0, 1657740793);
INSERT INTO `oc_filecache_extended` VALUES (2829, NULL, 0, 1657742790);
INSERT INTO `oc_filecache_extended` VALUES (2830, NULL, 0, 1657742836);
INSERT INTO `oc_filecache_extended` VALUES (2831, NULL, 0, 1657743066);
INSERT INTO `oc_filecache_extended` VALUES (2832, NULL, 0, 1657743274);
INSERT INTO `oc_filecache_extended` VALUES (2833, NULL, 0, 1657743428);
INSERT INTO `oc_filecache_extended` VALUES (2834, NULL, 0, 1657744321);
INSERT INTO `oc_filecache_extended` VALUES (2835, NULL, 0, 1657744442);
INSERT INTO `oc_filecache_extended` VALUES (2836, NULL, 0, 1657744466);
INSERT INTO `oc_filecache_extended` VALUES (2837, NULL, 0, 1657744596);
INSERT INTO `oc_filecache_extended` VALUES (2838, NULL, 0, 1657744865);
INSERT INTO `oc_filecache_extended` VALUES (2839, NULL, 0, 1657745006);
INSERT INTO `oc_filecache_extended` VALUES (2849, NULL, 0, 1657746892);
INSERT INTO `oc_filecache_extended` VALUES (2861, NULL, 0, 1657747369);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_files_trash
-- ----------------------------
BEGIN;
INSERT INTO `oc_files_trash` VALUES (126, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1656974510', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (127, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'admin', '1656974607', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (128, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510.d1656974607', 'admin', '1656974708', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (129, '.gitconfig', 'admin', '1657045728', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (130, 'a.txt', 'admin', '1657045729', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (131, 'autotest-checkers.sh', 'admin', '1657045730', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (132, 'autotest-external.sh', 'admin', '1657045732', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (133, 'autotest-js.sh', 'admin', '1657045733', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (134, 'babel.config.js', 'admin', '1657045734', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (135, 'composer.lock', 'admin', '1657045736', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (136, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip.d1656974510', 'admin', '1657045737', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (137, 'README.md', 'admin', '1657045738', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (138, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'admin', '1657045739', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (139, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657046704', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (140, 'robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz', 'admin', '1657046706', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (141, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657046803', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (142, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'admin', '1657049725', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (143, 'New folder', 'admin', '1657059383', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (144, 'robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 'admin', '1657489820', '.', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (145, '3rdparty.zip', 'admin', '1657490068', 'New folder', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (146, 'DE_Outlook2019_x64_x32Bit.iso', 'admin', '1657490069', 'New folder', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (147, 'Honeywell_MobilitySDK_And.zip', 'admin', '1657490072', 'New folder', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (148, 'QrCodeScanner.zip', 'admin', '1657490074', 'New folder', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (149, 'Skigit_Aakash_8_14.apk', 'admin', '1657490077', 'New folder', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (150, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657656189', 'New folder/kjh', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (151, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657656260', 'New folder/kjh', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (152, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657656707', 'New folder/kjh', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (153, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657657313', 'New folder/kjh', NULL, NULL);
INSERT INTO `oc_files_trash` VALUES (154, 'Honeywell_MobilitySDK_Android_v1.00.00.0143.zip', 'admin', '1657657601', 'New folder/kjh', NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_jobs
-- ----------------------------
BEGIN;
INSERT INTO `oc_jobs` VALUES (1, 'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob', 'null', 1657748402, 1657748402, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (2, 'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob', 'null', 1657748436, 1657748436, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (3, 'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob', 'null', 1657748402, 1657748402, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (4, 'OCA\\DAV\\BackgroundJob\\EventReminderJob', 'null', 1657748437, 1657748437, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (5, 'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob', 'null', 1657748437, 1657748437, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (6, 'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash', 'null', 1657748437, 1657748437, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (7, 'OCA\\UpdateNotification\\Notification\\BackgroundJob', 'null', 1657748439, 1657748439, 1657748439, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (8, 'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions', 'null', 1657748407, 1657748407, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (9, 'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate', 'null', 1657748408, 1657748408, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (10, 'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob', 'null', 1657748403, 1657748403, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (11, 'OCA\\Files_Sharing\\DeleteOrphanedSharesJob', 'null', 1657748408, 1657748408, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (12, 'OCA\\Files_Sharing\\ExpireSharesJob', 'null', 1657748404, 1657748404, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (13, 'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob', 'null', 1657748409, 1657748409, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (14, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1657748435, 1657748435, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (15, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 1657748404, 1657748404, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (16, 'OCA\\Activity\\BackgroundJob\\DigestMail', 'null', 1657748436, 1657748435, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (17, 'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob', 'null', 1657748409, 1657748409, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (18, 'OCA\\Files\\BackgroundJob\\ScanFiles', 'null', 1657748416, 1657748416, 0, 11, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (19, 'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems', 'null', 1657748429, 1657748429, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (20, 'OCA\\Files\\BackgroundJob\\CleanupFileLocks', 'null', 1657748434, 1657748434, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (21, 'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens', 'null', 1657748435, 1657748435, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (22, 'OCA\\Federation\\SyncJob', 'null', 1657748436, 1657748436, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (23, 'OC\\Log\\Rotate', 'null', 1657655110, 1657655110, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (24, 'OC\\Preview\\BackgroundCleanupJob', 'null', 1657657831, 1657657831, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (25, 'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob', 'null', 1647000806, 1657791604, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 0);
INSERT INTO `oc_jobs` VALUES (26, 'OCA\\Mail\\BackgroundJob\\CleanupJob', 'null', 1655364475, 1657791639, 0, 0, '37a6259cc0c1dae299a7866489dff0bd', 1);
INSERT INTO `oc_jobs` VALUES (184, 'OCA\\FirstRunWizard\\Notification\\BackgroundJob', '{\"uid\":\"user\"}', 0, 1657791639, 0, 0, 'f5fc75cc9ac39e4bbb52155f37c24a15', 1);
INSERT INTO `oc_jobs` VALUES (191, 'OC\\Command\\CommandJob', '\"O:33:\\\"OCA\\\\Files_Trashbin\\\\Command\\\\Expire\\\":1:{s:39:\\\"\\u0000OCA\\\\Files_Trashbin\\\\Command\\\\Expire\\u0000user\\\";s:5:\\\"admin\\\";}\"', 0, 1657657601, 0, 0, 'ca04d14eddadbe79d239365e539f2a65', 1);
INSERT INTO `oc_jobs` VALUES (264, 'OC\\Command\\CommandJob', '\"O:33:\\\"OCA\\\\Files_Versions\\\\Command\\\\Expire\\\":2:{s:43:\\\"\\u0000OCA\\\\Files_Versions\\\\Command\\\\Expire\\u0000fileName\\\";s:28:\\\"\\/New folder\\/kjh\\/package.json\\\";s:39:\\\"\\u0000OCA\\\\Files_Versions\\\\Command\\\\Expire\\u0000user\\\";s:5:\\\"admin\\\";}\"', 0, 1657655206, 0, 0, 'eb4dddea9cae8f28f61bfcdb972ec303', 1);
INSERT INTO `oc_jobs` VALUES (265, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657655336965\"}', 0, 1657655337, 0, 0, '1aa5e124f2b42b7e72a3b6b6d510f9d5', 1);
INSERT INTO `oc_jobs` VALUES (266, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657656193812\"}', 0, 1657656194, 0, 0, '6de54adee800d2403a790f33ec89a1d9', 1);
INSERT INTO `oc_jobs` VALUES (267, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657656264154\"}', 0, 1657656264, 0, 0, '507db74c00225c54710b993ad4ece2ae', 1);
INSERT INTO `oc_jobs` VALUES (268, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657656716156\"}', 0, 1657656716, 0, 0, '8165548706f106242b0cf6c24a3dff16', 1);
INSERT INTO `oc_jobs` VALUES (269, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657657316960\"}', 0, 1657657317, 0, 0, 'ea19f90312e4d0cab938ffed52d48aea', 1);
INSERT INTO `oc_jobs` VALUES (270, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657657604474\"}', 0, 1657657605, 0, 0, 'd2145be634d37481c407fead16771cc8', 1);
INSERT INTO `oc_jobs` VALUES (271, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657657733972\"}', 0, 1657657734, 0, 0, 'b97733408704b6323d9e6adaa109f002', 1);
INSERT INTO `oc_jobs` VALUES (272, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657657757470\"}', 0, 1657657757, 0, 0, '13c24326f97a70aa7b8773b3b7fba46f', 1);
INSERT INTO `oc_jobs` VALUES (273, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-9fd37c967cf7ccdbdbf6290f62af462b-1657657777345\"}', 0, 1657657777, 0, 0, '0f0bb466edf6b4bbd9ecdae9262b2055', 1);
INSERT INTO `oc_jobs` VALUES (274, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657798455\"}', 0, 1657657798, 0, 0, 'f7d5613c56e3903be8b8774a3dbef913', 1);
INSERT INTO `oc_jobs` VALUES (275, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657895634\"}', 0, 1657657896, 0, 0, '5c0a5ae1154e0d34c938ad3b819e49a5', 1);
INSERT INTO `oc_jobs` VALUES (276, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-6ae849e3e466b761d895b2a84a27a495-1657657940153\"}', 0, 1657657940, 0, 0, '40acae3a9a9778ef7863a2a2e76af6c0', 1);
INSERT INTO `oc_jobs` VALUES (277, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-a7cf817958caf31e8afc72077a376ceb-1657658050751\"}', 0, 1657658051, 0, 0, '20501b914f972c9a60b8fee4da57ff71', 1);
INSERT INTO `oc_jobs` VALUES (278, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-a7cf817958caf31e8afc72077a376ceb-1657658122571\"}', 0, 1657658125, 0, 0, '312db3a98065ad517ddd2ab14a32482b', 1);
INSERT INTO `oc_jobs` VALUES (279, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-a7cf817958caf31e8afc72077a376ceb-1657658193119\"}', 0, 1657658195, 0, 0, '6148f86ea2254a8015ce6164129ea719', 1);
INSERT INTO `oc_jobs` VALUES (280, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657662287491\"}', 0, 1657662288, 0, 0, '13e0ef4b90d3b4109f05bdd88b3e3e80', 1);
INSERT INTO `oc_jobs` VALUES (281, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657662332165\"}', 0, 1657662335, 0, 0, '752750b0bed0bcbd2c02cba25b81f78e', 1);
INSERT INTO `oc_jobs` VALUES (282, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657662870129\"}', 0, 1657662870, 0, 0, 'a7ead9ad1b1b175e721724bec6b62634', 1);
INSERT INTO `oc_jobs` VALUES (283, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657663225454\"}', 0, 1657663235, 0, 0, '8e082eb05c866af7ab81d15bc55c2244', 1);
INSERT INTO `oc_jobs` VALUES (284, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-1d0f190a740c5e0846a188130a0bb67b-1657663832250\"}', 0, 1657663833, 0, 0, 'f72cdee9d7d1c46f90a270b813dca171', 1);
INSERT INTO `oc_jobs` VALUES (285, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-76690690a929fff1d26b483e61ae1825-1657664210410\"}', 0, 1657664211, 0, 0, '078834a096f98f1827225e9feab44dce', 1);
INSERT INTO `oc_jobs` VALUES (286, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657665119563\"}', 0, 1657665120, 0, 0, '240ebc159040793974310f40ca3a194e', 1);
INSERT INTO `oc_jobs` VALUES (287, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-b9c674cae3a02d9632c9897195e8ef8d-1657665223809\"}', 0, 1657665224, 0, 0, '52a2324dcddee91c1539bac8cd9ac435', 1);
INSERT INTO `oc_jobs` VALUES (288, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-b9c674cae3a02d9632c9897195e8ef8d-1657665548404\"}', 0, 1657665551, 0, 0, 'ecfa40565c507c88e710c5368c7c89ea', 1);
INSERT INTO `oc_jobs` VALUES (289, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657665644809\"}', 0, 1657665645, 0, 0, 'f593af35b1fd2e07352067f3fcb0be85', 1);
INSERT INTO `oc_jobs` VALUES (290, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657665824776\"}', 0, 1657665826, 0, 0, 'e60157e3f80e39ab81e2e8a2a4db7e62', 1);
INSERT INTO `oc_jobs` VALUES (291, 'OC\\Command\\CommandJob', '\"O:33:\\\"OCA\\\\Files_Versions\\\\Command\\\\Expire\\\":2:{s:43:\\\"\\u0000OCA\\\\Files_Versions\\\\Command\\\\Expire\\u0000fileName\\\";s:64:\\\"\\/New folder\\/sadf\\/Honeywell_MobilitySDK_Android_v1.00.00.0143.zip\\\";s:39:\\\"\\u0000OCA\\\\Files_Versions\\\\Command\\\\Expire\\u0000user\\\";s:5:\\\"admin\\\";}\"', 0, 1657665831, 0, 0, 'ba9f7379a44eb1a895ccea85bc5eba11', 1);
INSERT INTO `oc_jobs` VALUES (292, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657665932464\"}', 0, 1657665932, 0, 0, 'f04f320f83ee417efd78b3e9b1cb998f', 1);
INSERT INTO `oc_jobs` VALUES (293, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657665981637\"}', 0, 1657665982, 0, 0, '2c33d85649098d0e9cc16808e4996a47', 1);
INSERT INTO `oc_jobs` VALUES (294, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-81dd0445d81a9cdfbbfea3c85e68be50-1657666016436\"}', 0, 1657666017, 0, 0, 'ba38fb6ff88b72a2d2319bdd2405e56e', 1);
INSERT INTO `oc_jobs` VALUES (295, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-b9c674cae3a02d9632c9897195e8ef8d-1657666060918\"}', 0, 1657666061, 0, 0, '706380f03bdcf14d371216c34e6460d7', 1);
INSERT INTO `oc_jobs` VALUES (296, 'OCA\\DAV\\BackgroundJob\\UploadCleanup', '{\"uid\":\"admin\",\"folder\":\"web-file-upload-47205baaa956537f831897d91d459339-1657740656708\"}', 0, 1657740657, 0, 0, 'b0c709a1d1c69cd07a60be993d9717f0', 1);
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
INSERT INTO `oc_migrations` VALUES ('file_upload_notification', '00001Date20201012113852');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `oc_mimetypes` VALUES (31, 'application/x-ms-dos-executable');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_mounts
-- ----------------------------
BEGIN;
INSERT INTO `oc_mounts` VALUES (22, 7, 1634, 'admin', '/admin/', NULL, 'OC\\Files\\Mount\\LocalHomeMountProvider');
INSERT INTO `oc_mounts` VALUES (28, 9, 1754, 'user', '/user/', NULL, 'OC\\Files\\Mount\\LocalHomeMountProvider');
INSERT INTO `oc_mounts` VALUES (29, 7, 1733, 'user', '/user/files/next list (1) (1).odt/', NULL, 'OCA\\Files_Sharing\\MountProvider');
INSERT INTO `oc_mounts` VALUES (30, 7, 1842, 'user', '/user/files/babel.config.js/', NULL, 'OCA\\Files_Sharing\\MountProvider');
INSERT INTO `oc_mounts` VALUES (31, 7, 1953, 'user', '/user/files/222.txt/', NULL, 'OCA\\Files_Sharing\\MountProvider');
INSERT INTO `oc_mounts` VALUES (32, 7, 2299, 'user', '/user/files/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz/', NULL, 'OCA\\Files_Sharing\\MountProvider');
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
INSERT INTO `oc_preferences` VALUES ('admin', 'login', 'lastLogin', '1657733344');
INSERT INTO `oc_preferences` VALUES ('admin', 'login_token', '+vIfzYhHS+c7nMZklM9kgK/apSChB8YJ', '1655980864');
INSERT INTO `oc_preferences` VALUES ('admin', 'login_token', '7QnuRvRZW0mKTOdDY2J+BdiN6qNDmNtt', '1657733343');
INSERT INTO `oc_preferences` VALUES ('admin', 'login_token', 'zumk+v/Ts7k1RKGj1UUxC0UcQG8q5uoe', '1656019067');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'configured', 'yes');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_calendar', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_calendar_event', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_calendar_todo', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_comments', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_contacts', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_file_changed', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_file_downloaded', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_group_settings', '1');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_public_links', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_remote_share', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_shared', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_email_systemtags', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_calendar', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_calendar_event', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_calendar_todo', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_comments', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_contacts', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_favorite', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_file_changed', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_file_downloaded', '1');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_file_favorite_changed', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_group_settings', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_personal_settings', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_public_links', '1');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_remote_share', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_security', '1');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_shared', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_notification_systemtags', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_setting_batchtime', '3600');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_setting_self', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'activity', 'notify_setting_selfemail', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'avatar', 'generated', 'true');
INSERT INTO `oc_preferences` VALUES ('user', 'core', 'lang', 'en');
INSERT INTO `oc_preferences` VALUES ('user', 'core', 'timezone', 'America/New_York');
INSERT INTO `oc_preferences` VALUES ('user', 'dashboard', 'firstRun', '0');
INSERT INTO `oc_preferences` VALUES ('user', 'files', 'quota', 'default');
INSERT INTO `oc_preferences` VALUES ('user', 'login', 'lastLogin', '1657049800');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', '0aPDgtAqEsAevqczfMzKyk9rk8dQLuqe', '1656623729');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', '4LIzMAi72NHCC3LgsuRdN/DRrs1AnVyX', '1656622748');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 'LB34UyeHaiBJX12F6suF2yjpfWHqHaX7', '1656623406');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 'SBYlSwqezCYMCROPxFE/6Iz+Huvy9OIV', '1655924183');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 'X4D9thv7vFxs8fABhAm0ebxTLgWuKcIc', '1656675401');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 'YXy7O27aQ/8gCKxN0zbC8zsV0/i9GOdV', '1656623682');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 'h6u3F8o1c5u8R3RgYlSUgVp6bGYRnwpk', '1657049800');
INSERT INTO `oc_preferences` VALUES ('user', 'login_token', 't3T8GsZO5wbGsInPB4HFejCKzS4Jv+rP', '1656017361');
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
INSERT INTO `oc_profile_config` VALUES (2, 'user', '{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
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
-- Table structure for oc_publish
-- ----------------------------
DROP TABLE IF EXISTS `oc_publish`;
CREATE TABLE `oc_publish` (
  `id` bigint(20) NOT NULL,
  `uid` varchar(40) DEFAULT NULL,
  `origin_path` varchar(4000) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `unique_name` varchar(255) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT 0,
  `timestamp` bigint(20) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oc_publish
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_share
-- ----------------------------
BEGIN;
INSERT INTO `oc_share` VALUES (61, 0, 'user', NULL, 'admin', 'admin', NULL, 'file', '2299', NULL, 2299, '/robo3t-1.4.4-linux-x86_64-e6ac9ec (1).tar.gz', 19, 1657049788, 1, NULL, NULL, 0, NULL, 0, NULL, 0, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_storages
-- ----------------------------
BEGIN;
INSERT INTO `oc_storages` VALUES (1, 'local::/home/khoa/mobile/server/data/', 1, NULL);
INSERT INTO `oc_storages` VALUES (5, '488da2e8df88da76efbc8b2816797b1c', 1, NULL);
INSERT INTO `oc_storages` VALUES (7, 'home::admin', 1, NULL);
INSERT INTO `oc_storages` VALUES (9, 'home::user', 1, NULL);
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
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes', 'user', 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of oc_user_status
-- ----------------------------
BEGIN;
INSERT INTO `oc_user_status` VALUES (5, 'admin', 'online', 1657748468, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `oc_user_status` VALUES (6, 'user', 'offline', 1657748409, 0, NULL, NULL, NULL, NULL, 0);
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
INSERT INTO `oc_users` VALUES ('user', NULL, '3|$argon2id$v=19$m=65536,t=4,p=1$M001ek40ZTRBeXNqVVpRdw$hTRLzeFGZUEMVVEQGJUD04WXBF8IBcc6lUGA/mXA3zM', 'user');
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
