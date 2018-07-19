/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : mmtap

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-06-10 22:25:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('16752943696973824', null, '2018-06-06 19:42:34', '0', null, '2018-06-06 19:42:34', '312', '127.0.0.1', '本机地址', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/mmtap/login', 'admin');

-- ----------------------------
-- Table structure for t_panel
-- ----------------------------
DROP TABLE IF EXISTS `t_panel`;
CREATE TABLE `t_panel` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_panel
-- ----------------------------

-- ----------------------------
-- Table structure for t_panel_content
-- ----------------------------
DROP TABLE IF EXISTS `t_panel_content`;
CREATE TABLE `t_panel_content` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `panel_id` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pic_url2` varchar(255) DEFAULT NULL,
  `pic_url3` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `use_product` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_panel_content
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('5129710648430592', '', '2018-06-04 19:02:29', '0', '', '2018-06-03 18:35:36', '', 'sys', '', '0', '1.00', 'Main', '/form', '系统管理', 'ios-gear', '1', null, '0');
INSERT INTO `t_permission` VALUES ('5129710648430593', null, '2018-06-04 19:02:32', '0', null, '2018-06-04 19:02:43', null, 'user-manage', '5129710648430592', '0', '1.10', 'sys/user-manage/userManage', 'user-manage', '用户管理', 'android-person', '2', null, '0');
INSERT INTO `t_permission` VALUES ('5129710648430594', null, '2018-06-04 19:02:35', '0', null, '2018-06-04 19:02:45', null, 'role-manage', '5129710648430592', '0', '1.20', 'sys/role-manage/roleManage', 'role-manage', '角色管理', 'android-contacts', '2', null, '0');
INSERT INTO `t_permission` VALUES ('5129710648430595', null, '2018-06-04 19:02:37', '0', null, '2018-06-04 19:02:49', null, 'menu-manage', '5129710648430592', '0', '1.30', 'sys/menu-manage/menuManage', 'menu-manage', '菜单权限管理', 'navicon-round', '2', null, '0');
INSERT INTO `t_permission` VALUES ('5129710648430596', null, '2018-06-04 19:02:40', '0', null, '2018-06-04 19:02:53', null, 'log-manage', '5129710648430592', '0', '1.40', 'sys/log-manage/logManage', 'log-manage', '日志管理', 'android-list', '2', null, '0');
INSERT INTO `t_permission` VALUES ('15701400130424832', '', '2018-06-03 22:04:06', '0', '', '2018-06-06 18:17:20', '', '', '5129710648430593', '1', '1.11', '', '/mmtap/user/admin/add', '添加用户', '', '3', 'add', '0');
INSERT INTO `t_permission` VALUES ('15701915807518720', '', '2018-06-03 22:06:09', '0', '', '2018-06-06 14:46:51', '', '', '5129710648430593', '1', '1.13', '', '/mmtap/user/admin/disable/**', '禁用用户', '', '3', 'disable', '0');
INSERT INTO `t_permission` VALUES ('15708892205944832', '', '2018-06-03 22:33:52', '0', '', '2018-06-06 14:46:55', '', '', '5129710648430593', '1', '1.14', '', '/mmtap/user/admin/enable/**', '启用用户', '', '3', 'undefined', '0');
INSERT INTO `t_permission` VALUES ('16392452747300864', '', '2018-06-05 19:50:06', '0', '', '2018-06-05 23:08:36', '', 'access', '', '0', '2.00', 'Main', '/access', '权限按钮测试页', 'locked', '1', '', '0');
INSERT INTO `t_permission` VALUES ('16392767785668608', '', '2018-06-05 19:51:21', '0', '', '2018-06-05 21:10:15', '', 'access_index', '16392452747300864', '0', '2.10', 'access/access', 'index', '权限按钮测试页', 'locked', '2', '', '0');
INSERT INTO `t_permission` VALUES ('16438800255291392', '', '2018-06-05 22:54:18', '0', '', '2018-06-05 22:54:59', '', '', '16392767785668608', '1', '2.11', '', 'test-add', '添加按钮测试', '', '3', 'add', '0');
INSERT INTO `t_permission` VALUES ('16438962738434048', null, '2018-06-05 22:54:55', '0', null, '2018-06-05 22:54:55', null, null, '16392767785668608', '1', '2.12', null, 'edit-test', '编辑按钮测试', null, '3', 'edit', '0');
INSERT INTO `t_permission` VALUES ('16439068543946752', '', '2018-06-05 22:55:20', '0', '', '2018-06-05 22:55:33', '', '', '16392767785668608', '1', '2.13', '', 'delete-test', '删除按钮测试', '', '3', 'delete', '0');
INSERT INTO `t_permission` VALUES ('16678126574637056', '', '2018-06-06 14:45:16', '0', '', '2018-06-06 14:46:45', '', '', '5129710648430593', '1', '1.12', '', '/mmtap/user/admin/edit', '编辑用户', '', '3', 'edit', '0');
INSERT INTO `t_permission` VALUES ('16678447719911424', '', '2018-06-06 14:46:32', '0', '', '2018-06-06 18:49:43', '', '', '5129710648430593', '1', '1.15', '', '/mmtap/user/delByIds**', '删除用户', '', '3', 'delete', '0');
INSERT INTO `t_permission` VALUES ('16687383932047360', null, '2018-06-06 15:22:03', '0', null, '2018-06-06 15:22:03', null, null, '5129710648430594', '1', '1.21', null, '/mmtap/role/save', '添加角色', null, '3', 'add', '0');
INSERT INTO `t_permission` VALUES ('16689632049631232', null, '2018-06-06 15:30:59', '0', null, '2018-06-06 15:30:59', null, null, '5129710648430594', '1', '1.22', null, '/mmtap/role/edit', '编辑角色', null, '3', 'edit', '0');
INSERT INTO `t_permission` VALUES ('16689745006432256', '', '2018-06-06 15:31:26', '0', '', '2018-06-06 18:49:51', '', '', '5129710648430594', '1', '1.23', '', '/mmtap/role/delAllByIds**', '删除角色', '', '3', 'delete', '0');
INSERT INTO `t_permission` VALUES ('16689883993083904', null, '2018-06-06 15:31:59', '0', null, '2018-06-06 15:31:59', null, null, '5129710648430594', '1', '1.24', null, '/mmtap/role/editRolePerm/**', '分配权限', null, '3', 'editPerm', '0');
INSERT INTO `t_permission` VALUES ('16690313745666048', null, '2018-06-06 15:33:41', '0', null, '2018-06-06 15:33:41', null, null, '5129710648430594', '1', '1.25', null, '/mmtap/role/setDefault', '设为默认角色', null, '3', 'setDefault', '0');
INSERT INTO `t_permission` VALUES ('16694861252005888', null, '2018-06-06 15:51:46', '0', null, '2018-06-06 15:51:46', null, null, '5129710648430595', '1', '1.31', null, '/mmtap/permission/add', '添加菜单', null, '3', 'add', '0');
INSERT INTO `t_permission` VALUES ('16695107491205120', null, '2018-06-06 15:52:44', '0', null, '2018-06-06 15:52:44', null, null, '5129710648430595', '1', '1.32', null, '/mmtap/permission/edit', '编辑菜单', null, '3', 'edit', '0');
INSERT INTO `t_permission` VALUES ('16695243126607872', '', '2018-06-06 15:53:17', '0', '', '2018-06-06 18:49:57', '', '', '5129710648430595', '1', '1.33', '', '/mmtap/permission/delByIds**', '删除菜单', '', '3', 'delete', '0');
INSERT INTO `t_permission` VALUES ('16695482789138432', '', '2018-06-06 15:54:14', '0', '', '2018-06-06 18:50:03', '', '', '5129710648430596', '1', '1.41', '', '/mmtap/log/delByIds**', '删除日志', '', '3', 'delete', '0');
INSERT INTO `t_permission` VALUES ('16695638456537088', null, '2018-06-06 15:54:51', '0', null, '2018-06-06 15:54:51', null, null, '5129710648430596', '1', '1.42', null, '/mmtap/log/delAll', '清空日志', null, '3', 'clearAll', '0');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `c_id` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pic_urls` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------

-- ----------------------------
-- Table structure for t_product_category
-- ----------------------------
DROP TABLE IF EXISTS `t_product_category`;
CREATE TABLE `t_product_category` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_category
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('496138616573952', '', '2018-04-22 23:03:49', '', '2018-05-04 12:56:23', 'ROLE_ADMIN', '0', null);
INSERT INTO `t_role` VALUES ('496138616573953', '', '2018-05-02 21:40:03', '', '2018-05-08 10:33:32', 'ROLE_USER', '0', '');
INSERT INTO `t_role` VALUES ('16457350655250432', null, '2018-06-06 00:08:00', null, '2018-06-06 00:08:00', 'ROLE_TEST', '0', null);

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('16736297938849792', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16439068543946752', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297917878272', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16438962738434048', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297892712448', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16438800255291392', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297867546624', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16392767785668608', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297842380800', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16392452747300864', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297813020672', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16695638456537088', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297783660544', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16695482789138432', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297750106112', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '5129710648430596', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297712357376', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16695243126607872', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297674608640', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16695107491205120', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297569751040', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16694861252005888', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297544585216', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '5129710648430595', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16457624555884544', null, '2018-06-06 00:09:04', '0', null, '2018-06-06 00:09:04', '16392452747300864', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('16457624597827584', null, '2018-06-06 00:09:04', '0', null, '2018-06-06 00:09:04', '16392767785668608', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('16457624643964928', null, '2018-06-06 00:09:04', '0', null, '2018-06-06 00:09:04', '16439068543946752', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('16717356252270592', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '16439068543946752', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356231299072', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '16438962738434048', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356218716160', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '16438800255291392', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356201938944', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '16392767785668608', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356185161728', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '16392452747300864', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356159995904', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '5129710648430596', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356147412992', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '5129710648430595', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356130635776', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '5129710648430594', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16717356097081344', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '5129710648430593', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('16736297527808000', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16690313745666048', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297511030784', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16689883993083904', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297494253568', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16689745006432256', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297469087744', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16689632049631232', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297448116224', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16687383932047360', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297397784576', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '5129710648430594', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297355841536', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16678447719911424', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297326481408', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '15708892205944832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297276149760', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '15701915807518720', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297217429504', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '16678126574637056', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297179680768', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '15701400130424832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736297137737728', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '5129710648430593', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16736296999325696', null, '2018-06-06 18:36:25', '0', null, '2018-06-06 18:36:25', '5129710648430592', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('16717356080304128', null, '2018-06-06 17:21:09', '0', null, '2018-06-06 17:21:09', '5129710648430592', '496138616573953');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('682265633886208', '', '2018-05-01 16:13:51', '', '2018-06-01 19:32:59', '[\"510000\",\"510100\",\"510104\"]', 'http://p77xsahe9.bkt.clouddn.com/788eb3e78206429eb34fc7cd3e1e46f4.jpg', null, '1012139570@qq.com', '18782059038', null, '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '1', '0', '1', 'admin', '0');
INSERT INTO `t_user` VALUES ('682265633886209', '', '2018-04-30 23:28:42', '', '2018-06-06 14:30:21', '', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', '', '1012139570@qq.com', '18782059038', '', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '0', '-1', '1', 'Exrick', '0');
INSERT INTO `t_user` VALUES ('16739222421508096', '', '2018-06-06 18:48:02', '', '2018-06-06 18:57:55', '', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', '', '1012139570@qq.com', '18782059038', '', '$2a$10$3VQxPlr8lu9P9kFEIw66y.vCKUO90QDB0gt.4JCB5sZim8yb1jPbK', '1', '0', '0', 'test2', '0');
INSERT INTO `t_user` VALUES ('4363087427670016', '', '2018-05-03 15:09:42', '', '2018-06-06 18:58:25', '[\"510000\",\"510100\",\"510114\"]', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', null, '1012139570@qq.com', '18782059038', null, '$2a$10$LPNcntYGxcWSngwZJj08D.A2biv.k2sQUsGrxLc2HkvL9DA1LbLaO', '1', '0', '0', 'test', '0');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('16056421829316608', null, '2018-06-04 21:34:50', '0', null, '2018-06-04 21:34:50', '496138616573953', '6118792149078016');
INSERT INTO `t_user_role` VALUES ('16674372718694400', null, '2018-06-06 14:30:21', '0', null, '2018-06-06 14:30:21', '496138616573953', '682265633886209');
INSERT INTO `t_user_role` VALUES ('4365473638518788', null, '2018-05-08 11:25:45', '0', null, '2018-05-08 11:25:50', '496138616573952', '682265633886208');
INSERT INTO `t_user_role` VALUES ('4365473638518784', null, '2018-05-03 15:19:11', '0', null, '2018-05-03 15:19:11', '496138616573953', '4363087427670016');
INSERT INTO `t_user_role` VALUES ('16674372659974144', null, '2018-06-06 14:30:21', '0', null, '2018-06-06 14:30:21', '496138616573952', '682265633886209');
INSERT INTO `t_user_role` VALUES ('16741709752832000', null, '2018-06-06 18:57:55', '0', null, '2018-06-06 18:57:55', '16457350655250432', '16739222421508096');
