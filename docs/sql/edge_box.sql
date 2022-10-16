-- ----------------------------
-- Table structure for go_menu
-- ----------------------------
DROP TABLE IF EXISTS `go_menu`;
CREATE TABLE `go_menu` (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` VARCHAR(50) NOT NULL,--'名字'
    `type` TEXT CHECK( type IN ('菜单','按钮','目录') )   NOT NULL DEFAULT '菜单',
    `path` VARCHAR(50) DEFAULT '' ,--'访问路径'
    `method` VARCHAR(50) DEFAULT '' ,--'资源请求方式'
    `created_on` INTEGER DEFAULT NULL, --'创建时间'
    `modified_on` INTEGER DEFAULT NULL, --'更新时间'
    `deleted_on` INTEGER DEFAULT '0' --'删除时间戳'
);


-- ----------------------------
-- Records of go_menu
-- ----------------------------
INSERT INTO `go_menu` VALUES ('1', 'system', '目录', '/system', 'GET', null, null, '0');
INSERT INTO `go_menu` VALUES ('2', 'menu', '菜单', '/api/v1/menus', 'GET', null, null, '0');
INSERT INTO `go_menu` VALUES ('3', 'create_menu', '按钮', '/api/v1/menus', 'POST', null, null, '0');
INSERT INTO `go_menu` VALUES ('4', 'update_menu', '按钮', '/api/v1/menus/:id', 'PUT', null, null, '0');
INSERT INTO `go_menu` VALUES ('5', 'delete_menu', '按钮', '/api/v1/menus/:id', 'DELETE', null, null, '0');
INSERT INTO `go_menu` VALUES ('6', 'user', '菜单', '/api/v1/users', 'GET', null, null, '0');
INSERT INTO `go_menu` VALUES ('7', 'create_user', '按钮', '/api/v1/users', 'POST', null, null, '0');
INSERT INTO `go_menu` VALUES ('8', 'update_user', '按钮', '/api/v1/users/:id', 'PUT', null, null, '0');
INSERT INTO `go_menu` VALUES ('9', 'delete_user', '按钮', '/api/v1/users/:id', 'DELETE', null, null, '0');
INSERT INTO `go_menu` VALUES ('10', 'role', '菜单', '/api/v1/roles', 'GET', null, null, '0');
INSERT INTO `go_menu` VALUES ('11', 'create_role', '按钮', '/api/v1/roles', 'POST', null, null, '0');
INSERT INTO `go_menu` VALUES ('12', 'update_role', '按钮', '/api/v1/roles/:id', 'PUT', null, null, '0');
INSERT INTO `go_menu` VALUES ('13', 'delete_role', '按钮', '/api/v1/roles/:id', 'DELETE', null, null, '0');

-- ----------------------------
-- Table structure for go_role
-- ----------------------------
DROP TABLE IF EXISTS `go_role`;
CREATE TABLE `go_role` (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` VARCHAR(50) DEFAULT '', --'名字'
    `created_on` INTEGER DEFAULT NULL, --'创建时间'
    `modified_on` INTEGER DEFAULT NULL, --'更新时间'
    `deleted_on` INTEGER DEFAULT '0' --'删除时间戳'
);

-- ----------------------------
-- Records of go_role
-- ----------------------------
INSERT INTO `go_role` VALUES ('1', '开发部', null, null, '0');
INSERT INTO `go_role` VALUES ('2', '运维部', null, null, '0');
INSERT INTO `go_role` VALUES ('3', '测试部', null, null, '0');

-- ----------------------------
-- Table structure for go_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `go_role_menu`;
CREATE TABLE `go_role_menu` (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `role_id` INTEGER DEFAULT NULL, --'角色ID'
    `menu_id` INTEGER DEFAULT NULL, --'菜单ID'
    `deleted_on` INTEGER DEFAULT '0' --'删除时间戳'
);--'用户_角色ID_管理'

-- ----------------------------
-- Records of go_role_menu
-- ----------------------------
INSERT INTO `go_role_menu` VALUES ('1', '2', '1', '0');
INSERT INTO `go_role_menu` VALUES ('2', '2', '2', '0');
INSERT INTO `go_role_menu` VALUES ('3', '2', '3', '0');
INSERT INTO `go_role_menu` VALUES ('4', '2', '4', '0');
INSERT INTO `go_role_menu` VALUES ('5', '2', '5', '0');
INSERT INTO `go_role_menu` VALUES ('6', '2', '6', '0');
INSERT INTO `go_role_menu` VALUES ('7', '2', '7', '0');
INSERT INTO `go_role_menu` VALUES ('8', '2', '8', '0');
INSERT INTO `go_role_menu` VALUES ('9', '2', '9', '0');
INSERT INTO `go_role_menu` VALUES ('10', '2', '10', '0');
INSERT INTO `go_role_menu` VALUES ('11', '2', '11', '0');
INSERT INTO `go_role_menu` VALUES ('12', '2', '12', '0');
INSERT INTO `go_role_menu` VALUES ('13', '2', '13', '0');

-- ----------------------------
-- Table structure for go_user
-- ----------------------------
DROP TABLE IF EXISTS `go_user`;
CREATE TABLE `go_user` (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `username` VARCHAR(50) DEFAULT '', --'账号'
    `password` VARCHAR(50) DEFAULT '', --'密码'
    `created_on` INTEGER DEFAULT NULL, --'创建时间',
    `modified_on` INTEGER DEFAULT NULL, --'更新时间'
    `deleted_on` INTEGER DEFAULT '0' --'删除时间戳'
);--'用户管理'

-- ----------------------------
-- Records of go_user
-- ----------------------------
INSERT INTO `go_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, '0');
INSERT INTO `go_user` VALUES ('2', 'wangxinxin', 'e10adc3949ba59abbe56e057f20f883e', '1550642309', '1550642309', '0');

-- ----------------------------
-- Table structure for go_user_role
-- ----------------------------
DROP TABLE IF EXISTS `go_user_role`;
CREATE TABLE `go_user_role` (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `user_id` INTEGER DEFAULT NULL, --'用户ID'
    `role_id` INTEGER DEFAULT NULL, --'角色ID'
    `deleted_on` INTEGER DEFAULT '0' --'删除时间戳'
);--'用户_角色ID_管理'

-- ----------------------------
-- Records of go_user_role
-- ----------------------------
INSERT INTO `go_user_role` VALUES ('1', '2', '2', '0');
