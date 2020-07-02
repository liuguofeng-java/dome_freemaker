/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : localhost:1433
 Source Catalog        : iScanCode1
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 02/07/2020 11:39:53
*/


-- ----------------------------
-- Table structure for dt_manager
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_manager]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_manager]
GO

CREATE TABLE [dbo].[dt_manager] (
  [id] int  IDENTITY(26,1) NOT NULL,
  [company_id] int  NULL,
  [role_id] int  NULL,
  [role_type] int DEFAULT ((2)) NULL,
  [user_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [salt] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [real_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [telephone] nvarchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [email] nvarchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [is_audit] int DEFAULT ((0)) NULL,
  [is_lock] int DEFAULT ((0)) NULL,
  [add_time] datetime DEFAULT (getdate()) NULL,
  [address] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[dt_manager] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'company_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员类型1超管2系管',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'role_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录密码',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'6位随机字符串,加密用到',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'salt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员头像',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户昵称',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'real_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'telephone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电子邮箱',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否锁定',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'is_lock'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员信息表',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager'
GO


-- ----------------------------
-- Records of [dt_manager]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dt_manager] ON
GO

INSERT INTO [dbo].[dt_manager] ([id], [company_id], [role_id], [role_type], [user_name], [password], [salt], [avatar], [real_name], [telephone], [email], [is_audit], [is_lock], [add_time], [address], [remark]) VALUES (N'1', N'0', N'1', N'1', N'admin', N'a7847fb5659a18700b96ca69b94f7284', N'24V0XZ', N'', N'超级管理员', N'13800138000', N'info@dtcms.net', N'0', N'0', N'2017-03-20 13:41:39.000', NULL, NULL)
GO

INSERT INTO [dbo].[dt_manager] ([id], [company_id], [role_id], [role_type], [user_name], [password], [salt], [avatar], [real_name], [telephone], [email], [is_audit], [is_lock], [add_time], [address], [remark]) VALUES (N'2', N'0', N'1', N'1', N'user', N'87FA6AD6CBFDF3108E4DD6F47F5D04A4', N'24V0XZ', NULL, N'系统管理员', N'789789798', N'', N'0', N'0', N'2019-09-08 00:00:00.000', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[dt_manager] OFF
GO


-- ----------------------------
-- Table structure for dt_manager_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_manager_log]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_manager_log]
GO

CREATE TABLE [dbo].[dt_manager_log] (
  [id] int  IDENTITY(452,1) NOT NULL,
  [user_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [action_type] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_ip] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_manager_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'action_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户IP',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'user_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理日志表',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_log'
GO


-- ----------------------------
-- Records of [dt_manager_log]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dt_manager_log] ON
GO

INSERT INTO [dbo].[dt_manager_log] ([id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (N'611', N'admin', N'Login', N'ok', N'0:0:0:0:0:0:0:1', N'2020-07-02 10:32:07.200')
GO

INSERT INTO [dbo].[dt_manager_log] ([id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (N'612', N'admin', N'Login', N'ok', N'0:0:0:0:0:0:0:1', N'2020-07-02 10:32:24.710')
GO

INSERT INTO [dbo].[dt_manager_log] ([id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (N'613', N'admin', N'Login', N'ok', N'0:0:0:0:0:0:0:1', N'2020-07-02 10:32:33.003')
GO

SET IDENTITY_INSERT [dbo].[dt_manager_log] OFF
GO


-- ----------------------------
-- Table structure for dt_manager_role_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_manager_role_list]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_manager_role_list]
GO

CREATE TABLE [dbo].[dt_manager_role_list] (
  [id] int  IDENTITY(11,1) NOT NULL,
  [role_id] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [navigation_id] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[dt_manager_role_list] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_role_list',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_role_list',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色类型',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_role_list',
'COLUMN', N'navigation_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理角色表',
'SCHEMA', N'dbo',
'TABLE', N'dt_manager_role_list'
GO


-- ----------------------------
-- Table structure for dt_navigation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_navigation]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_navigation]
GO

CREATE TABLE [dbo].[dt_navigation] (
  [id] int  IDENTITY(150,1) NOT NULL,
  [parent_id] int DEFAULT ((0)) NULL,
  [channel_id] int DEFAULT ((0)) NULL,
  [nav_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [title] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [sub_title] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [icon_url] nvarchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [link_url] nvarchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [sort_id] int DEFAULT ((99)) NULL,
  [is_lock] int DEFAULT ((0)) NULL,
  [remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [action_type] nvarchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [is_sys] int DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[dt_navigation] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属父导航ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属频道ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'channel_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'导航类别',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'nav_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'导航ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'副标题',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'sub_title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'icon_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'link_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序数字',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'sort_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否隐藏0显示1隐藏',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'is_lock'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注说明',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限资源',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'action_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统默认',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation',
'COLUMN', N'is_sys'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统导航菜单',
'SCHEMA', N'dbo',
'TABLE', N'dt_navigation'
GO


-- ----------------------------
-- Records of [dt_navigation]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dt_navigation] ON
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'1', N'0', N'0', N'System', N'sys_contents', N'站点管理', N'站点', N'fa fa-home', N'', N'99', N'0', N'系统默认导航，不可更改导航ID', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'2', N'0', N'0', N'System', N'sys_application', N'应用管理', N'应用', N'', N'', N'100', N'0', N'系统默认导航，不可更改导航ID', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'3', N'0', N'0', N'System', N'sys_users', N'会员管理', N'会员', N'', N'', N'101', N'0', N'系统默认导航，不可更改导航ID', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'4', N'0', N'0', N'System', N'sys_controller', N'控制面板', N'控制面板', N'', N'', N'103', N'0', N'系统默认导航，不可更改导航ID', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'7', N'4', N'0', N'System', N'sys_manager', N'系统用户', N'', N'', N'', N'103', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'8', N'7', N'0', N'System', N'manager_list', N'管理员管理', N'', N'', N'manager/manager_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'9', N'7', N'0', N'System', N'manager_role', N'角色管理', N'', N'', N'manager/role_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'10', N'7', N'0', N'System', N'manager_log', N'管理日志', N'', N'', N'manager/manager_log.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'11', N'4', N'0', N'System', N'sys_settings', N'系统管理', N'', N'', N'', N'99', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'12', N'11', N'0', N'System', N'sys_config', N'系统设置', N'', N'', N'settings/sys_config.aspx', N'99', N'0', N'', N'Show,View,Edit', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'13', N'11', N'0', N'System', N'sys_plugin_config', N'插件设置', N'', N'', N'settings/plugin_list.aspx', N'100', N'0', N'', N'Show,View,Build,Instal,Unload', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'14', N'11', N'0', N'System', N'sys_url_rewrite', N'URL配置', N'', N'', N'settings/url_rewrite_list.aspx', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'15', N'4', N'0', N'System', N'sys_site_settings', N'站点设置', N'', N'', N'', N'100', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'16', N'15', N'0', N'System', N'sys_site_manage', N'站点管理', N'', N'', N'channel/site_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'17', N'15', N'0', N'System', N'sys_channel_manage', N'频道管理', N'', N'', N'channel/channel_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'18', N'15', N'0', N'System', N'sys_channel_field', N'扩展字段', N'', N'', N'channel/attribute_field_list.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'19', N'4', N'0', N'System', N'sys_design', N'界面管理', N'', N'', N'', N'102', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'20', N'19', N'0', N'System', N'sys_site_templet', N'站点模板管理', N'', N'', N'settings/templet_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Build', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'21', N'19', N'0', N'System', N'sys_builder_html', N'生成静态管理', N'', N'', N'settings/builder_html.aspx', N'100', N'0', N'', N'Show,View,Build', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'22', N'19', N'0', N'System', N'sys_navigation', N'后台导航管理', N'', N'', N'settings/nav_list.aspx', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'23', N'0', N'0', N'System', N'sys_orders', N'订单管理', N'订单', N'', N'', N'102', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'26', N'2', N'0', N'System', N'sys_plugin_manage', N'插件管理', N'', N'', N'', N'99', N'0', N'', N'Show,View', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'35', N'23', N'0', N'System', N'order_manage', N'订单管理', N'', N'', N'', N'99', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'36', N'23', N'0', N'System', N'order_settings', N'订单设置', N'', N'', N'', N'100', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'37', N'36', N'0', N'System', N'order_config', N'订单参数设置', N'', N'', N'order/order_config.aspx', N'99', N'0', N'', N'Show,View,Edit', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'38', N'36', N'0', N'System', N'order_payment', N'支付方式设置', N'', N'', N'order/site_payment_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'39', N'36', N'0', N'System', N'order_express', N'配送方式设置', N'', N'', N'order/express_list.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'41', N'35', N'0', N'System', N'order_confirm', N'待确认订单', N'', N'', N'order/order_confirm.aspx', N'99', N'0', N'', N'Show,View,Confirm', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'42', N'35', N'0', N'System', N'order_list', N'全部订单', N'', N'', N'order/order_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'43', N'3', N'0', N'System', N'user_manage', N'会员管理', N'', N'', N'', N'99', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'44', N'43', N'0', N'System', N'user_audit', N'审核会员', N'', N'', N'users/user_audit.aspx', N'99', N'0', N'', N'Show,View,Audit', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'45', N'43', N'0', N'System', N'user_list', N'所有会员', N'', N'', N'users/user_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'46', N'43', N'0', N'System', N'user_group', N'会员组别', N'', N'', N'users/group_list.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'47', N'3', N'0', N'System', N'user_log', N'会员日志', N'', N'', N'', N'100', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'48', N'47', N'0', N'System', N'user_sms', N'发送短信', N'', N'', N'users/user_sms.aspx', N'99', N'0', N'', N'Show,View,Add', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'49', N'47', N'0', N'System', N'user_message', N'站内消息', N'', N'', N'users/message_list.aspx', N'100', N'0', N'', N'Show,View,Add,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'50', N'47', N'0', N'System', N'user_recharge_log', N'充值记录', N'', N'', N'users/recharge_list.aspx', N'101', N'0', N'', N'Show,View,Add,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'51', N'47', N'0', N'System', N'user_amount_log', N'消费记录', N'', N'', N'users/amount_log.aspx', N'102', N'0', N'', N'Show,View,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'52', N'47', N'0', N'System', N'user_point_log', N'积分记录', N'', N'', N'users/point_log.aspx', N'103', N'0', N'', N'Show,View,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'53', N'3', N'0', N'System', N'user_settings', N'会员设置', N'', N'', N'', N'101', N'0', N'', N'Show', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'54', N'53', N'0', N'System', N'user_config', N'参数设置', N'', N'', N'users/user_config.aspx', N'99', N'0', N'', N'Show,View,Edit', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'55', N'53', N'0', N'System', N'user_sms_template', N'短信模板', N'', N'', N'users/sms_template_list.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'56', N'53', N'0', N'System', N'user_mail_template', N'邮件模板', N'', N'', N'users/mail_template_list.aspx', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'57', N'53', N'0', N'System', N'user_oauth', N'OAuth设置', N'', N'', N'users/site_oauth_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'58', N'0', N'0', N'System', N'sys_weixin_message', N'微信管理', N'', N'fa fa-weixin', N'', N'100', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'59', N'15', N'0', N'System', N'sys_article_tags', N'Tags标签', N'', N'', N'channel/tags_list.aspx', N'103', N'0', N'', N'Show,View,Add,Edit,Delete', N'0')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'80', N'26', N'0', N'System', N'plugin_feedback', N'留言管理', N'', N'', N'/plugins/feedback/admin/index.aspx', N'0', N'0', N'', N'Show,View,Delete,Audit,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'81', N'26', N'0', N'System', N'plugin_link', N'链接管理', N'', N'', N'/plugins/link/admin/index.aspx', N'0', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'82', N'58', N'0', N'System', N'weixin_base_settings', N'基本设置', N'', N'fa fa-gear', N'', N'99', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'83', N'82', N'0', N'System', N'weixin_account_manage', N'公众平台管理', N'', N'fa fa-desktop', N'/SystemManage/weixin/index', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'84', N'82', N'0', N'System', N'weixin_custom_menu', N'自定义菜单', N'', N'', N'/SystemManage/weixin/menu_list', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'85', N'58', N'0', N'System', N'weixin_message_manage', N'消息管理', N'', N'fa fa-stack-exchange', N'', N'100', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'86', N'85', N'0', N'System', N'weixin_subscribe_subscribe', N'关注回复', N'', N'', N'weixin/subscribe_edit.aspx?action=subscribe', N'99', N'0', N'', N'Show,View,Edit', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'87', N'85', N'0', N'System', N'weixin_subscribe_default', N'默认回复', N'', N'', N'weixin/subscribe_edit.aspx?action=default', N'100', N'0', N'', N'Show,View,Edit', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'88', N'85', N'0', N'System', N'weixin_response_text', N'文本回复', N'', N'', N'weixin/text_list.aspx', N'101', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'89', N'85', N'0', N'System', N'weixin_response_picture', N'图文回复', N'', N'', N'weixin/picture_list.aspx', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'90', N'85', N'0', N'System', N'weixin_response_sound', N'语音回复', N'', N'', N'weixin/sound_list.aspx', N'103', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'91', N'85', N'0', N'System', N'weixin_response_content', N'消息记录', N'', N'', N'weixin/response_list.aspx', N'104', N'0', N'', N'Show,View,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'92', N'1', N'0', N'System', N'channel_main', N'默认站点', N'', N'', N'', N'99', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'93', N'92', N'1', N'System', N'channel_news', N'新闻资讯', N'', N'', N'', N'99', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'94', N'93', N'1', N'System', N'channel_news_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'95', N'93', N'1', N'System', N'channel_news_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'96', N'93', N'1', N'System', N'channel_news_comment', N'评论管理', N'', N'', N'article/comment_list.aspx', N'103', N'0', N'', N'Show,View,Delete,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'108', N'92', N'2', N'System', N'channel_goods', N'购物商城', N'', N'', N'', N'100', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'109', N'108', N'2', N'System', N'channel_goods_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'110', N'108', N'2', N'System', N'channel_goods_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'111', N'108', N'2', N'System', N'channel_goods_spec', N'规格管理', N'', N'', N'article/spec_list.aspx', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'112', N'108', N'2', N'System', N'channel_goods_comment', N'评论管理', N'', N'', N'article/comment_list.aspx', N'103', N'0', N'', N'Show,View,Delete,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'113', N'92', N'3', N'System', N'channel_video', N'视频专区', N'', N'', N'', N'101', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'114', N'113', N'3', N'System', N'channel_video_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'115', N'113', N'3', N'System', N'channel_video_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'116', N'113', N'3', N'System', N'channel_video_comment', N'评论管理', N'', N'', N'article/comment_list.aspx', N'103', N'0', N'', N'Show,View,Delete,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'117', N'92', N'4', N'System', N'channel_photo', N'图片分享', N'', N'', N'', N'102', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'118', N'117', N'4', N'System', N'channel_photo_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'119', N'117', N'4', N'System', N'channel_photo_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'120', N'117', N'4', N'System', N'channel_photo_comment', N'评论管理', N'', N'', N'article/comment_list.aspx', N'103', N'0', N'', N'Show,View,Delete,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'121', N'92', N'5', N'System', N'channel_down', N'资源下载', N'', N'', N'', N'103', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'122', N'121', N'5', N'System', N'channel_down_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'123', N'121', N'5', N'System', N'channel_down_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'124', N'121', N'5', N'System', N'channel_down_comment', N'评论管理', N'', N'', N'article/comment_list.aspx', N'103', N'0', N'', N'Show,View,Delete,Reply', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'125', N'92', N'6', N'System', N'channel_content', N'公司介绍', N'', N'', N'', N'104', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'126', N'125', N'6', N'System', N'channel_content_list', N'内容管理', N'', N'', N'article/article_list.aspx', N'99', N'0', N'', N'Show,View,Add,Edit,Delete,Audit', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'127', N'125', N'6', N'System', N'channel_content_category', N'栏目类别', N'', N'', N'article/category_list.aspx', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'128', N'1', N'0', N'System', N'channel_mobile', N'手机网站', N'', N'', N'', N'100', N'0', N'', N'Show', N'1')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'129', N'0', N'0', N'System', N'home_page', N'主页', N'', N'fa fa-home', N'/home/default', N'1', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'130', N'0', N'0', N'System', N'goods', N'商品管理', N'', N'fa fa-shopping-cart', N'/SystemManage/Goods/index', N'3', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'131', N'0', N'0', N'System', N'devices', N'设备管理', N'', N'fa fa-hdd-o', N'', N'4', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'132', N'131', N'0', N'System', N'device_list', N'设备列表', N'', N'', N'/SystemManage/Device/index', N'4', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'133', N'0', N'0', N'System', N'sys_manager', N'系统用户', N'', N'fa fa-user-circle', N'', N'99', N'0', N'', N'Show', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'134', N'133', N'0', N'System', N'manager_list', N'管理员管理', N'', N'', N'/SystemManage/Manager/Index', N'1', N'0', N'', N'Show,View', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'135', N'133', N'0', N'System', N'manager_role', N'角色管理', N'', N'', N'/SystemManage/Role/Index', N'2', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'136', N'133', N'0', N'System', N'manager_log', N'日志管理', N'', N'', N'/SystemManage/Log/Index', N'3', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'137', N'0', N'0', N'System', N'places', N'场地管理', N'', N'fa fa-globe', N'/SystemManage/Place/Index', N'7', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'138', N'0', N'0', N'System', N'Agent', N'代理商管理', N'', N'fa fa-address-book', N'/SystemManage/Agent/Index', N'8', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'139', N'0', N'0', N'System', N'orders', N'订单管理', N'', N'fa fa-table', N'', N'5', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'140', N'0', N'0', N'System', N'statistics', N'数据统计', N'', N'fa fa-bar-chart-o', N'', N'9', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'141', N'140', N'0', N'System', N'reports', N'营收报表', N'', N'', N'/SystemManage/Report/Index', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'142', N'140', N'0', N'System', N'Dincome', N'设备收益', N'', N'', N'/SystemManage/Report/devicelist', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'143', N'140', N'0', N'System', N'Pincome', N'场地收益', N'', N'', N'/SystemManage/Report/placelist', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'144', N'0', N'0', N'system', N'ProfileInfo', N'个人中心', N'', N'fa fa-address-card-o', N'', N'105', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'145', N'144', N'0', N'system', N'Profile', N'个人信息', N'', N'', N'/SystemManage/Profile/Index', N'99', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'146', N'0', N'0', N'system', N'Tyre', N'认购管理', N'', N' fa fa-suitcase', N'/SystemManage/Tyre/Index', N'2', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'147', N'140', N'0', N'System', N'goods', N'商品收益', N'', N'', N'/SystemManage/Report/goodslist', N'102', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'148', N'144', N'0', N'System', N'basicSetup', N'基本设置', N'', N'', N'/SystemManage/Profile/Index', N'100', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'149', N'139', N'0', N'system', N'orderlist', N'商品订单', NULL, N'', N'/SystemManage/Order/Index', N'5', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

INSERT INTO [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (N'150', N'139', N'0', N'system', N'tyrelist', N'认购订单', N'', N'', N'/SystemManage/Order/TyreList', N'6', N'0', N'', N'Show,View,Add,Edit,Delete', N'2')
GO

SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
GO


-- ----------------------------
-- Table structure for dt_weixin_access_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_weixin_access_token]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_weixin_access_token]
GO

CREATE TABLE [dbo].[dt_weixin_access_token] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [account_id] int  NULL,
  [access_token] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [expires_in] int DEFAULT ((0)) NULL,
  [count] int DEFAULT ((0)) NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_weixin_access_token] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众账户ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'access_token值',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'access_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效期(秒)',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'expires_in'
GO

EXEC sp_addextendedproperty
'MS_Description', N'总数',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'count'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众平台access_token存储',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_access_token'
GO


-- ----------------------------
-- Records of [dt_weixin_access_token]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dt_weixin_access_token] ON
GO

INSERT INTO [dbo].[dt_weixin_access_token] ([id], [account_id], [access_token], [expires_in], [count], [add_time]) VALUES (N'1', N'1', N'32_ShNd_NlUlgweQOkGY4Ke2_j16DPvk8i-OL204yFt9weIRbK8W_L0rIuvvHiRU62q2OM4iP6mH2U_JOo_HanpFh7YD1sLpNLKDbDhTmmKOORehxL6EAxX6xPiYNIvCz7GgJ09TnERIy8kEvxYBJUhACAJRC', N'120', N'1', N'2020-04-14 14:10:14.590')
GO

SET IDENTITY_INSERT [dbo].[dt_weixin_access_token] OFF
GO


-- ----------------------------
-- Table structure for dt_weixin_account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_weixin_account]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_weixin_account]
GO

CREATE TABLE [dbo].[dt_weixin_account] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [originalid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wxcode] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [appid] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [appsecret] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_push] int DEFAULT ((0)) NULL,
  [sort_id] int DEFAULT ((99)) NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_weixin_account] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众号名称',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众号原始ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'originalid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信号',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'wxcode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌必须与微信平台对应',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'appid(仅用于高级接口)',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'appid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'appsecret(仅用于高级接口)',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'appsecret'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否支持网站内容推送',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'is_push'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'sort_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信公众平台账户',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_account'
GO


-- ----------------------------
-- Records of [dt_weixin_account]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dt_weixin_account] ON
GO

INSERT INTO [dbo].[dt_weixin_account] ([id], [name], [originalid], [wxcode], [token], [appid], [appsecret], [is_push], [sort_id], [add_time]) VALUES (N'1', N'扫扫科技', N'gh_bf849908d6fa', N'iScanCode', N'iScanCode', N'wx64e9aeb810d53978', N'1c7676b2ead16bb31824e1d66c726a50', N'0', N'99', N'2019-12-20 19:52:27.813')
GO

SET IDENTITY_INSERT [dbo].[dt_weixin_account] OFF
GO


-- ----------------------------
-- Table structure for dt_weixin_request_content
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_weixin_request_content]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_weixin_request_content]
GO

CREATE TABLE [dbo].[dt_weixin_request_content] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [account_id] int  NULL,
  [rule_id] int  NULL,
  [title] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] ntext COLLATE Chinese_PRC_CI_AS  NULL,
  [link_url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [img_url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [media_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [media_url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [meida_hd_url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort_id] int  NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_weixin_request_content] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众账户ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'rule_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回复标题',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回复内容',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'详情链接地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'link_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图片地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'img_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'缩略图素材管理接口上传得到的id',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'media_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'语音或视频地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'media_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'高清语音或者视频地址',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'meida_hd_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'sort_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求回复内容',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_content'
GO


-- ----------------------------
-- Table structure for dt_weixin_request_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_weixin_request_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_weixin_request_rule]
GO

CREATE TABLE [dbo].[dt_weixin_request_rule] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [account_id] int  NULL,
  [name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [keywords] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_type] int  NULL,
  [response_type] int  NULL,
  [is_like_query] tinyint DEFAULT ((0)) NULL,
  [is_default] tinyint DEFAULT ((0)) NULL,
  [sort_id] int  NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_weixin_request_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众账户ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则名称',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求关键词,逗号分隔',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'keywords'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求类型(0默认回复1文字2图片3语音4链接5地理位置6关注7取消关注8扫描带参数二维码事件9上报地理位置事件10自定义菜单事件）',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'request_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回复类型(1文本2图文3语音4视频5第三方接口)',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'response_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否模糊查询',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'is_like_query'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否默认回复',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'is_default'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'sort_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求回复规格',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_request_rule'
GO


-- ----------------------------
-- Table structure for dt_weixin_response_content
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_weixin_response_content]') AND type IN ('U'))
	DROP TABLE [dbo].[dt_weixin_response_content]
GO

CREATE TABLE [dbo].[dt_weixin_response_content] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [account_id] int  NULL,
  [openid] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_content] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [response_type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [reponse_content] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [xml_content] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_time] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[dt_weixin_response_content] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众账户ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户微信ID',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link 事件:event',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'request_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据内容',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'request_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回复的类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'response_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统回复的内容',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'reponse_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'消息创建时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'xml原始内容',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'xml_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'录入系统的时间',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公众平台回复信息',
'SCHEMA', N'dbo',
'TABLE', N'dt_weixin_response_content'
GO


-- ----------------------------
-- Table structure for st_agent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_agent]') AND type IN ('U'))
	DROP TABLE [dbo].[st_agent]
GO

CREATE TABLE [dbo].[st_agent] (
  [id] int  IDENTITY(7,1) NOT NULL,
  [company_code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [company_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [company_adderss] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [company_phone] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [company_state] int  NULL,
  [remark] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_agent] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业编号',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'company_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业名称',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'company_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业地址',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'company_adderss'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业电话',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'company_phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'company_state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'st_agent',
'COLUMN', N'remark'
GO


-- ----------------------------
-- Records of [st_agent]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[st_agent] ON
GO

INSERT INTO [dbo].[st_agent] ([id], [company_code], [company_name], [company_adderss], [company_phone], [company_state], [remark]) VALUES (N'1', N'222', N'代理商测试', N'青岛', N'0532', N'0', N'cesi12    ')
GO

INSERT INTO [dbo].[st_agent] ([id], [company_code], [company_name], [company_adderss], [company_phone], [company_state], [remark]) VALUES (N'2', N'C353570380314528', N'', N'', N'15966933045', N'0', N'')
GO

INSERT INTO [dbo].[st_agent] ([id], [company_code], [company_name], [company_adderss], [company_phone], [company_state], [remark]) VALUES (N'3', N'C522248625552488', N'', N'', N'15711510558', N'0', N'')
GO

SET IDENTITY_INSERT [dbo].[st_agent] OFF
GO


-- ----------------------------
-- Table structure for st_base_devices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_base_devices]') AND type IN ('U'))
	DROP TABLE [dbo].[st_base_devices]
GO

CREATE TABLE [dbo].[st_base_devices] (
  [imeid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] int  NULL,
  [code] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] int  NULL,
  [remark] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_base_devices] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [st_base_devices]
-- ----------------------------
INSERT INTO [dbo].[st_base_devices]  VALUES (N'92015200', N'1', NULL, N'0', NULL)
GO


-- ----------------------------
-- Table structure for st_check_device
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_check_device]') AND type IN ('U'))
	DROP TABLE [dbo].[st_check_device]
GO

CREATE TABLE [dbo].[st_check_device] (
  [device_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [data] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [errorCode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [result] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_status] int  NULL,
  [add_time] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_check_device] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备id',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'device_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备描述',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误码',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'errorCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备检查',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备状态成功1失败0',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'device_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'时间',
'SCHEMA', N'dbo',
'TABLE', N'st_check_device',
'COLUMN', N'add_time'
GO


-- ----------------------------
-- Records of [st_check_device]
-- ----------------------------
INSERT INTO [dbo].[st_check_device]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/28 15:58:08')
GO

INSERT INTO [dbo].[st_check_device]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/28 15:58:28')
GO

INSERT INTO [dbo].[st_check_device]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/28 16:22:36')
GO

INSERT INTO [dbo].[st_check_device]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/28 16:22:45')
GO

INSERT INTO [dbo].[st_check_device]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/28 16:22:55')
GO


-- ----------------------------
-- Table structure for st_device_goods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_device_goods]') AND type IN ('U'))
	DROP TABLE [dbo].[st_device_goods]
GO

CREATE TABLE [dbo].[st_device_goods] (
  [deviceId] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [goodsId] int  NOT NULL,
  [add_time] datetime  NULL,
  [adderId] int  NULL,
  [remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_device_goods] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [st_device_goods]
-- ----------------------------
INSERT INTO [dbo].[st_device_goods]  VALUES (N'00000001', N'16', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92000271', N'1', N'2020-01-02 17:05:52.737', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92000271', N'4', N'2020-01-03 10:08:50.253', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92000271', N'6', N'2020-01-03 17:25:15.503', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015200', N'1', N'2019-12-09 15:47:31.467', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015200', N'3', N'2019-12-09 15:55:55.133', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015200', N'10', N'2019-12-09 17:13:51.517', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015201', N'1', N'2020-01-02 09:33:51.970', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015201', N'3', N'2020-01-03 10:08:29.937', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015201', N'17', N'2020-04-25 09:14:09.723', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015201', N'18', N'2020-04-25 09:14:09.943', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015201', N'19', N'2020-04-25 09:14:09.960', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015202', N'3', N'2020-01-05 10:41:13.047', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015202', N'17', N'2020-04-27 10:58:32.820', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015202', N'18', N'2020-04-27 10:58:32.850', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015202', N'19', N'2020-04-27 10:58:32.930', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015203', N'1', N'2020-01-05 10:41:39.337', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015203', N'17', N'2020-04-27 11:00:12.277', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015203', N'18', N'2020-04-27 11:00:12.277', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015203', N'19', N'2020-04-27 11:00:12.293', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015204', N'3', N'2020-01-05 10:42:08.807', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015204', N'4', N'2020-04-27 16:57:40.473', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015204', N'17', N'2020-04-27 10:49:05.160', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015204', N'18', N'2020-04-27 10:49:05.393', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015204', N'19', N'2020-04-27 10:49:05.457', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015205', N'1', N'2020-01-05 10:42:34.797', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015205', N'17', N'2020-04-27 10:57:34.840', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015205', N'18', N'2020-04-27 10:57:35.030', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015205', N'19', N'2020-04-27 10:57:35.077', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015206', N'1', N'2020-01-05 10:43:09.543', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015206', N'17', N'2020-04-27 10:59:52.940', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015206', N'18', N'2020-04-27 10:59:52.953', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015206', N'19', N'2020-04-27 10:59:52.970', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015207', N'3', N'2020-01-05 10:43:34.603', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015207', N'17', N'2020-04-27 10:57:09.713', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015207', N'18', N'2020-04-27 10:57:09.777', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015207', N'19', N'2020-04-27 10:57:09.790', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015208', N'6', N'2020-01-05 10:43:59.947', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015208', N'17', N'2020-05-06 15:50:34.407', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015208', N'18', N'2020-05-06 15:50:34.423', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015208', N'19', N'2020-05-06 15:50:34.437', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015209', N'6', N'2020-01-05 10:44:30.850', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015209', N'17', N'2020-04-27 10:59:17.277', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015209', N'18', N'2020-04-27 10:59:17.307', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015209', N'19', N'2020-04-27 10:59:17.323', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015210', N'1', N'2020-01-05 10:44:56.393', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015210', N'4', N'2020-04-28 10:54:01.350', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015210', N'17', N'2020-04-27 10:57:58.313', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015210', N'18', N'2020-04-27 10:57:58.343', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015210', N'19', N'2020-04-27 10:57:58.360', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015211', N'3', N'2020-01-05 10:45:23.883', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015211', N'17', N'2020-05-06 15:50:48.017', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015211', N'18', N'2020-05-06 15:50:48.033', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015211', N'19', N'2020-05-06 15:50:48.033', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015212', N'3', N'2020-01-05 10:45:55.753', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015212', N'17', N'2020-05-06 15:50:59.677', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015212', N'18', N'2020-05-06 15:50:59.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015212', N'19', N'2020-05-06 15:50:59.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015213', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015213', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015213', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015214', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015214', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015214', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015215', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015215', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015215', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015216', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015216', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015216', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015217', N'3', N'2020-01-05 10:46:36.827', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015217', N'17', N'2020-05-06 15:51:11.253', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015217', N'18', N'2020-05-06 15:51:11.270', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015217', N'19', N'2020-05-06 15:51:11.270', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015218', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015218', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015218', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015219', N'3', N'2020-01-05 10:47:03.147', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015219', N'17', N'2020-05-06 15:51:24.770', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015219', N'18', N'2020-05-06 15:51:24.770', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015219', N'19', N'2020-05-06 15:51:24.787', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015220', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015220', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015220', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015221', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015221', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015221', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015222', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015222', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015222', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015223', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015223', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015223', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015224', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015224', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015224', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015225', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015225', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015225', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015226', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015226', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015226', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015227', N'17', N'2020-05-06 15:52:20.340', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015227', N'18', N'2020-05-06 15:52:20.353', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015227', N'19', N'2020-05-06 15:52:20.353', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015227', N'21', N'2020-05-07 08:28:13.187', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015228', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015228', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015228', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015229', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015229', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015229', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015230', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015230', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015230', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015231', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015231', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015231', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015232', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015232', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015232', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015233', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015233', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015233', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015234', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015234', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015234', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015235', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015235', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015235', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015236', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015236', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015236', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015237', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015237', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015237', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015238', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015238', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015238', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015239', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015239', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015239', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015239', N'21', N'2020-05-07 08:22:05.583', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015240', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015240', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015240', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015241', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015241', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015241', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015242', N'4', N'2020-05-14 14:13:47.737', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015242', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015242', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015242', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015243', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015243', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015243', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015244', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015244', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015244', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015245', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015245', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015245', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015246', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015246', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015246', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015247', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015247', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015247', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015248', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015248', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015248', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015249', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015249', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015249', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015250', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015250', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015250', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015251', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015251', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015251', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015252', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015252', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015252', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015253', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015253', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015253', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015254', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015254', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015254', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015255', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015255', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015255', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015256', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015256', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015256', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015257', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015257', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015257', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015258', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015258', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015258', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015259', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015259', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015259', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015260', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015260', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015260', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015261', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015261', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015261', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015262', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015262', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015262', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015263', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015263', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015263', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015264', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015264', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015264', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015265', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015265', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015265', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015266', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015266', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015266', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015267', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015267', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015267', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015268', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015268', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015268', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015269', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015269', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015269', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015270', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015270', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015270', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015271', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015271', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015271', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015272', N'17', N'2020-05-06 15:51:35.947', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015272', N'18', N'2020-05-06 15:51:35.963', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015272', N'19', N'2020-05-06 15:51:35.963', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015272', N'20', N'2020-04-30 14:02:28.800', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015273', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015273', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015273', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015274', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015274', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015274', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015275', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015275', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015275', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015276', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015276', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015276', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015277', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015277', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015277', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015278', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015278', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015278', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015279', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015279', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015279', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015280', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015280', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015280', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015281', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015281', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015281', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015282', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015282', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015282', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015283', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015283', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015283', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015284', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015284', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015284', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015285', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015285', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015285', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015286', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015286', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015286', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015287', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015287', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015287', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015288', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015288', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015288', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015289', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015289', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015289', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015290', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015290', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015290', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015291', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015291', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015291', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015292', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015292', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015292', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015293', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015293', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015293', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015294', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015294', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015294', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015295', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015295', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015295', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015296', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015296', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015296', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015297', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015297', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015297', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015298', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015298', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015298', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015299', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015299', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015299', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015300', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015300', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015300', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015301', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015301', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015301', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015302', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015302', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015302', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015303', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015303', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015303', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015304', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015304', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015304', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015305', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015305', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015305', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015306', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015306', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015306', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015307', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015307', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015307', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015308', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015308', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015308', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015309', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015309', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015309', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015310', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015310', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015310', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015311', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015311', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015311', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015312', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015312', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015312', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015313', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015313', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015313', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015314', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015314', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015314', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015315', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015315', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015315', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015316', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015316', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015316', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015317', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015317', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015317', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015318', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015318', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015318', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015319', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015319', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015319', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015320', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015320', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015320', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015321', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015321', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015321', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015322', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015322', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015322', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015323', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015323', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015323', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015324', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015324', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015324', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015325', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015325', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015325', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015326', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015326', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015326', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015327', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015327', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015327', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015328', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015328', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015328', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015329', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015329', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015329', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015330', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015330', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015330', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015331', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015331', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015331', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015332', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015332', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015332', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015333', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015333', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015333', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015334', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015334', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015334', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015335', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015335', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015335', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015336', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015336', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015336', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015337', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015337', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015337', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015338', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015338', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015338', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015339', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015339', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015339', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015340', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015340', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015340', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015341', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015341', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015341', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015342', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015342', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015342', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015343', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015343', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015343', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015344', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015344', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015344', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015345', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015345', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015345', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015346', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015346', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015346', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015347', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015347', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015347', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015348', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015348', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015348', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015349', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015349', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015349', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015350', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015350', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015350', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015351', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015351', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015351', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015352', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015352', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015352', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015353', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015353', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015353', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015354', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015354', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015354', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015355', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015355', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015355', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015356', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015356', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015356', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015357', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015357', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015357', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015358', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015358', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015358', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015359', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015359', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015359', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015360', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015360', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015360', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015361', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015361', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015361', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015362', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015362', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015362', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015363', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015363', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015363', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015364', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015364', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015364', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015365', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015365', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015365', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015366', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015366', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015366', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015367', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015367', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015367', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015368', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015368', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015368', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015369', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015369', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015369', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015370', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015370', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015370', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015371', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015371', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015371', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015372', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015372', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015372', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015373', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015373', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015373', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015374', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015374', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015374', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015375', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015375', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015375', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015376', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015376', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015376', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015377', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015377', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015377', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015378', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015378', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015378', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015379', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015379', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015379', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015380', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015380', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015380', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015381', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015381', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015381', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015382', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015382', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015382', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015383', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015383', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015383', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015384', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015384', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015384', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015385', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015385', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015385', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015386', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015386', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015386', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015387', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015387', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015387', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015388', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015388', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015388', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015389', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015389', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015389', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015390', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015390', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015390', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015391', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015391', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015391', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015392', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015392', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015392', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015393', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015393', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015393', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015394', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015394', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015394', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015395', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015395', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015395', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015396', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015396', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015396', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015397', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015397', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015397', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015398', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015398', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015398', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015399', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015399', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015399', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015400', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015400', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015400', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015401', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015401', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015401', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015402', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015402', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015402', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015403', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015403', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015403', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015404', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015404', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015404', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015405', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015405', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015405', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015406', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015406', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015406', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015407', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015407', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015407', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015408', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015408', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015408', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015409', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015409', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015409', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015410', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015410', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015410', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015411', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015411', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015411', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015412', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015412', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015412', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015413', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015413', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015413', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015414', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015414', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015414', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015415', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015415', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015415', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015416', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015416', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015416', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015417', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015417', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015417', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015418', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015418', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015418', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015419', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015419', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015419', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015420', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015420', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015420', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015421', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015421', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015421', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015422', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015422', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015422', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015423', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015423', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015423', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015424', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015424', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015424', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015425', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015425', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015425', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015426', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015426', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015426', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015427', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015427', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015427', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015428', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015428', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015428', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015429', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015429', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015429', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015430', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015430', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015430', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015431', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015431', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015431', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015432', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015432', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015432', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015433', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015433', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015433', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015434', N'17', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015434', N'18', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015434', N'19', N'2020-03-16 09:59:47.207', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015435', N'17', N'2020-05-06 13:31:52.373', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015435', N'18', N'2020-05-06 13:31:52.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015435', N'19', N'2020-05-06 13:31:52.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015436', N'17', N'2020-05-06 13:32:12.587', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015436', N'18', N'2020-05-06 13:32:12.617', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015436', N'19', N'2020-05-06 13:32:12.633', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015437', N'17', N'2020-05-06 13:32:34.800', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015437', N'18', N'2020-05-06 13:32:34.830', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015437', N'19', N'2020-05-06 13:32:34.847', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015438', N'17', N'2020-05-06 13:32:49.130', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015438', N'18', N'2020-05-06 13:32:49.160', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015438', N'19', N'2020-05-06 13:32:49.170', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015439', N'17', N'2020-05-06 13:33:06.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015439', N'18', N'2020-05-06 13:33:06.123', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015439', N'19', N'2020-05-06 13:33:06.123', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015440', N'17', N'2020-05-06 13:33:21.927', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015440', N'18', N'2020-05-06 13:33:21.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015440', N'19', N'2020-05-06 13:33:21.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015441', N'17', N'2020-05-06 13:33:39.537', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015441', N'18', N'2020-05-06 13:33:39.567', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015441', N'19', N'2020-05-06 13:33:39.630', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015442', N'17', N'2020-05-06 13:33:57.247', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015442', N'18', N'2020-05-06 13:33:57.293', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015442', N'19', N'2020-05-06 13:33:57.373', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015443', N'17', N'2020-05-06 13:34:14.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015443', N'18', N'2020-05-06 13:34:14.757', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015443', N'19', N'2020-05-06 13:34:14.757', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015444', N'17', N'2020-05-06 13:34:28.670', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015444', N'18', N'2020-05-06 13:34:28.683', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015444', N'19', N'2020-05-06 13:34:28.700', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015445', N'17', N'2020-05-06 13:34:44.840', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015445', N'18', N'2020-05-06 13:34:44.860', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015445', N'19', N'2020-05-06 13:34:44.873', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015446', N'17', N'2020-05-06 13:35:02.040', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015446', N'18', N'2020-05-06 13:35:02.053', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015446', N'19', N'2020-05-06 13:35:02.070', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015447', N'17', N'2020-05-06 13:35:35.303', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015447', N'18', N'2020-05-06 13:35:35.317', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015447', N'19', N'2020-05-06 13:35:35.333', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015448', N'17', N'2020-05-06 13:35:47.470', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015448', N'18', N'2020-05-06 13:35:47.533', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015448', N'19', N'2020-05-06 13:35:47.550', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015449', N'17', N'2020-05-06 13:35:59.970', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015449', N'18', N'2020-05-06 13:35:59.987', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015449', N'19', N'2020-05-06 13:35:59.987', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015450', N'17', N'2020-05-06 13:36:11.300', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015450', N'18', N'2020-05-06 13:36:11.333', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015450', N'19', N'2020-05-06 13:36:11.333', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015451', N'17', N'2020-05-06 13:36:26.173', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015451', N'18', N'2020-05-06 13:36:26.203', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015451', N'19', N'2020-05-06 13:36:26.203', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015452', N'17', N'2020-05-06 13:36:38.620', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015452', N'18', N'2020-05-06 13:36:38.650', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015452', N'19', N'2020-05-06 13:36:38.650', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015453', N'17', N'2020-05-06 13:36:49.830', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015453', N'18', N'2020-05-06 13:36:49.847', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015453', N'19', N'2020-05-06 13:36:49.860', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015454', N'17', N'2020-05-06 13:37:03.140', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015454', N'18', N'2020-05-06 13:37:03.157', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015454', N'19', N'2020-05-06 13:37:03.170', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015455', N'17', N'2020-05-06 13:37:22.033', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015455', N'18', N'2020-05-06 13:37:22.050', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015455', N'19', N'2020-05-06 13:37:22.050', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015456', N'17', N'2020-05-06 13:37:34.210', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015456', N'18', N'2020-05-06 13:37:34.227', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015456', N'19', N'2020-05-06 13:37:34.243', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015457', N'17', N'2020-05-06 13:37:45.677', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015457', N'18', N'2020-05-06 13:37:45.693', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015457', N'19', N'2020-05-06 13:37:45.710', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015458', N'17', N'2020-05-06 13:37:57.027', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015458', N'18', N'2020-05-06 13:37:57.340', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015458', N'19', N'2020-05-06 13:37:57.357', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015459', N'17', N'2020-05-06 13:38:09.943', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015459', N'18', N'2020-05-06 13:38:09.960', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015459', N'19', N'2020-05-06 13:38:09.960', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015460', N'17', N'2020-05-06 13:38:21.593', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015460', N'18', N'2020-05-06 13:38:21.607', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015460', N'19', N'2020-05-06 13:38:21.623', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015461', N'17', N'2020-05-06 13:38:57.607', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015461', N'18', N'2020-05-06 13:38:57.620', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015461', N'19', N'2020-05-06 13:38:57.637', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015462', N'17', N'2020-05-06 13:39:12.537', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015462', N'18', N'2020-05-06 13:39:12.550', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015462', N'19', N'2020-05-06 13:39:12.583', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015463', N'17', N'2020-05-06 13:39:26.683', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015463', N'18', N'2020-05-06 13:39:26.717', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015463', N'19', N'2020-05-06 13:39:26.717', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015464', N'17', N'2020-05-06 13:39:41.133', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015464', N'18', N'2020-05-06 13:39:41.150', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015464', N'19', N'2020-05-06 13:39:41.150', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015465', N'17', N'2020-05-06 13:39:52.910', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015465', N'18', N'2020-05-06 13:39:52.960', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015465', N'19', N'2020-05-06 13:39:53.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015466', N'17', N'2020-05-06 13:40:05.807', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015466', N'18', N'2020-05-06 13:40:05.820', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015466', N'19', N'2020-05-06 13:40:05.820', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015467', N'17', N'2020-05-06 13:40:17.487', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015467', N'18', N'2020-05-06 13:40:17.503', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015467', N'19', N'2020-05-06 13:40:17.503', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015468', N'17', N'2020-05-06 13:40:28.197', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015468', N'18', N'2020-05-06 13:40:28.213', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015468', N'19', N'2020-05-06 13:40:28.213', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015469', N'17', N'2020-05-06 13:40:40.113', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015469', N'18', N'2020-05-06 13:40:40.147', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015469', N'19', N'2020-05-06 13:40:40.147', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015470', N'17', N'2020-05-06 13:40:52.940', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015470', N'18', N'2020-05-06 13:40:52.957', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015470', N'19', N'2020-05-06 13:40:52.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015471', N'17', N'2020-05-06 13:41:04.997', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015471', N'18', N'2020-05-06 13:41:05.013', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015471', N'19', N'2020-05-06 13:41:05.013', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015472', N'17', N'2020-05-06 13:41:16.470', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015472', N'18', N'2020-05-06 13:41:16.487', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015472', N'19', N'2020-05-06 13:41:16.487', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015473', N'17', N'2020-05-06 13:41:27.020', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015473', N'18', N'2020-05-06 13:41:27.033', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015473', N'19', N'2020-05-06 13:41:27.097', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015474', N'17', N'2020-05-06 13:41:39.543', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015474', N'18', N'2020-05-06 13:41:39.560', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015474', N'19', N'2020-05-06 13:41:39.573', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015475', N'17', N'2020-05-06 13:41:52.013', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015475', N'18', N'2020-05-06 13:41:52.030', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015475', N'19', N'2020-05-06 13:41:52.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015476', N'17', N'2020-05-06 13:42:04.153', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015476', N'18', N'2020-05-06 13:42:04.247', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015476', N'19', N'2020-05-06 13:42:04.263', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015477', N'17', N'2020-05-06 13:42:18.817', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015477', N'18', N'2020-05-06 13:42:18.863', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015477', N'19', N'2020-05-06 13:42:18.927', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015478', N'17', N'2020-05-06 13:42:31.290', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015478', N'18', N'2020-05-06 13:42:31.523', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015478', N'19', N'2020-05-06 13:42:31.523', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015479', N'17', N'2020-05-06 13:42:49.017', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015479', N'18', N'2020-05-06 13:42:49.030', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015479', N'19', N'2020-05-06 13:42:49.030', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015480', N'17', N'2020-05-06 13:43:01.060', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015480', N'18', N'2020-05-06 13:43:01.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015480', N'19', N'2020-05-06 13:43:01.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015481', N'17', N'2020-05-06 13:43:12.137', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015481', N'18', N'2020-05-06 13:43:12.150', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015481', N'19', N'2020-05-06 13:43:12.150', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015482', N'17', N'2020-05-06 13:43:25.283', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015482', N'18', N'2020-05-06 13:43:25.300', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015482', N'19', N'2020-05-06 13:43:25.313', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015483', N'17', N'2020-05-06 13:43:36.593', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015483', N'18', N'2020-05-06 13:43:37.030', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015483', N'19', N'2020-05-06 13:43:37.093', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015484', N'17', N'2020-05-06 13:43:48.370', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015484', N'18', N'2020-05-06 13:43:48.527', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015484', N'19', N'2020-05-06 13:43:48.543', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015485', N'17', N'2020-05-06 13:43:59.747', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015485', N'18', N'2020-05-06 13:43:59.827', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015485', N'19', N'2020-05-06 13:43:59.843', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015486', N'17', N'2020-05-06 13:44:13.557', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015486', N'18', N'2020-05-06 13:44:13.570', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015486', N'19', N'2020-05-06 13:44:13.587', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015487', N'17', N'2020-05-06 13:44:26.413', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015487', N'18', N'2020-05-06 13:44:26.427', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015487', N'19', N'2020-05-06 13:44:26.443', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015488', N'17', N'2020-05-06 13:44:39.360', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015488', N'18', N'2020-05-06 13:44:39.377', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015488', N'19', N'2020-05-06 13:44:39.393', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015489', N'17', N'2020-05-06 13:44:49.750', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015489', N'18', N'2020-05-06 13:44:49.767', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015489', N'19', N'2020-05-06 13:44:49.767', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015490', N'17', N'2020-05-06 13:45:33.553', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015490', N'18', N'2020-05-06 13:45:33.570', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015490', N'19', N'2020-05-06 13:45:33.587', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015491', N'17', N'2020-05-06 13:45:45.357', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015491', N'18', N'2020-05-06 13:45:45.403', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015491', N'19', N'2020-05-06 13:45:45.403', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015492', N'17', N'2020-05-06 13:45:56.357', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015492', N'18', N'2020-05-06 13:45:56.373', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015492', N'19', N'2020-05-06 13:45:56.393', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015493', N'17', N'2020-05-06 13:46:07.850', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015493', N'18', N'2020-05-06 13:46:07.867', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015493', N'19', N'2020-05-06 13:46:07.883', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015494', N'17', N'2020-05-06 13:47:09.113', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015494', N'18', N'2020-05-06 13:47:09.130', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015494', N'19', N'2020-05-06 13:47:09.147', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015495', N'17', N'2020-05-06 13:47:19.940', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015495', N'18', N'2020-05-06 13:47:19.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015495', N'19', N'2020-05-06 13:47:19.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015496', N'17', N'2020-05-06 13:47:31.107', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015496', N'18', N'2020-05-06 13:47:31.123', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015496', N'19', N'2020-05-06 13:47:31.123', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015497', N'17', N'2020-05-06 13:47:59.403', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015497', N'18', N'2020-05-06 13:47:59.420', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015497', N'19', N'2020-05-06 13:47:59.433', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015498', N'17', N'2020-05-06 13:48:13.643', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015498', N'18', N'2020-05-06 13:48:13.657', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015498', N'19', N'2020-05-06 13:48:13.720', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015499', N'17', N'2020-05-06 13:48:24.357', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015499', N'18', N'2020-05-06 13:48:24.370', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015499', N'19', N'2020-05-06 13:48:24.403', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015500', N'17', N'2020-05-06 13:48:35.037', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015500', N'18', N'2020-05-06 13:48:35.100', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015500', N'19', N'2020-05-06 13:48:35.113', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015501', N'17', N'2020-05-06 13:48:45.250', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015501', N'18', N'2020-05-06 13:48:45.283', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015501', N'19', N'2020-05-06 13:48:45.297', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015502', N'17', N'2020-05-06 13:48:55.900', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015502', N'18', N'2020-05-06 13:48:57.103', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015502', N'19', N'2020-05-06 13:48:57.540', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015503', N'17', N'2020-05-06 13:49:09.317', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015503', N'18', N'2020-05-06 13:49:09.330', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015503', N'19', N'2020-05-06 13:49:09.347', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015504', N'17', N'2020-05-06 13:49:20.277', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015504', N'18', N'2020-05-06 13:49:20.310', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015504', N'19', N'2020-05-06 13:49:20.323', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015505', N'17', N'2020-05-06 13:49:31.483', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015505', N'18', N'2020-05-06 13:49:31.517', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015505', N'19', N'2020-05-06 13:49:31.517', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015506', N'17', N'2020-05-06 13:49:44.010', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015506', N'18', N'2020-05-06 13:49:44.023', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015506', N'19', N'2020-05-06 13:49:44.040', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015507', N'17', N'2020-05-06 13:49:57.160', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015507', N'18', N'2020-05-06 13:49:57.173', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015507', N'19', N'2020-05-06 13:49:57.173', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015508', N'17', N'2020-05-06 13:50:07.473', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015508', N'18', N'2020-05-06 13:50:07.490', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015508', N'19', N'2020-05-06 13:50:07.507', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015509', N'17', N'2020-05-06 13:50:18.170', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015509', N'18', N'2020-05-06 13:50:18.247', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015509', N'19', N'2020-05-06 13:50:18.327', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015510', N'17', N'2020-05-06 13:50:29.923', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015510', N'18', N'2020-05-06 13:50:30.063', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015510', N'19', N'2020-05-06 13:50:30.110', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015511', N'17', N'2020-05-06 13:50:40.537', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015511', N'18', N'2020-05-06 13:50:40.610', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015511', N'19', N'2020-05-06 13:50:40.640', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015512', N'17', N'2020-05-06 13:50:51.330', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015512', N'18', N'2020-05-06 13:50:51.347', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015512', N'19', N'2020-05-06 13:50:51.347', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015513', N'17', N'2020-05-06 13:51:01.973', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015513', N'18', N'2020-05-06 13:51:02.067', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015513', N'19', N'2020-05-06 13:51:02.130', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015514', N'4', N'2020-05-13 16:08:56.710', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015514', N'17', N'2020-05-06 13:51:13.440', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015514', N'18', N'2020-05-06 13:51:13.547', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015514', N'19', N'2020-05-06 13:51:13.597', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015515', N'17', N'2020-05-06 13:51:23.933', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015515', N'18', N'2020-05-06 13:51:24.043', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015515', N'19', N'2020-05-06 13:51:24.057', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015516', N'17', N'2020-05-06 13:51:34.680', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015516', N'18', N'2020-05-06 13:51:34.727', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015516', N'19', N'2020-05-06 13:51:34.727', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015517', N'17', N'2020-05-06 13:51:44.673', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015517', N'18', N'2020-05-06 13:51:44.753', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015517', N'19', N'2020-05-06 13:51:44.753', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015518', N'17', N'2020-05-06 13:51:55.390', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015518', N'18', N'2020-05-06 13:51:55.423', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015518', N'19', N'2020-05-06 13:51:55.437', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015519', N'17', N'2020-05-06 13:52:20.043', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015519', N'18', N'2020-05-06 13:52:20.090', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015519', N'19', N'2020-05-06 13:52:20.170', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015520', N'17', N'2020-05-06 13:52:38.727', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015520', N'18', N'2020-05-06 13:52:38.757', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015520', N'19', N'2020-05-06 13:52:38.820', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015521', N'17', N'2020-05-06 13:52:58.007', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015521', N'18', N'2020-05-06 13:52:58.040', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015521', N'19', N'2020-05-06 13:52:58.053', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015522', N'17', N'2020-05-06 13:53:17.343', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015522', N'18', N'2020-05-06 13:53:17.360', N'1', NULL)
GO

INSERT INTO [dbo].[st_device_goods]  VALUES (N'92015522', N'19', N'2020-05-06 13:53:17.377', N'1', NULL)
GO


-- ----------------------------
-- Table structure for st_device_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_device_log]') AND type IN ('U'))
	DROP TABLE [dbo].[st_device_log]
GO

CREATE TABLE [dbo].[st_device_log] (
  [imeid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [add_time] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] int  NULL,
  [info] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_device_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备ID',
'SCHEMA', N'dbo',
'TABLE', N'st_device_log',
'COLUMN', N'imeid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'记录时间',
'SCHEMA', N'dbo',
'TABLE', N'st_device_log',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态类型',
'SCHEMA', N'dbo',
'TABLE', N'st_device_log',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备信息',
'SCHEMA', N'dbo',
'TABLE', N'st_device_log',
'COLUMN', N'info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'st_device_log',
'COLUMN', N'remark'
GO


-- ----------------------------
-- Records of [st_device_log]
-- ----------------------------
INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 16:51:14', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 16:51:40', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 16:54:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 16:54:42', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 17:02:51', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000000', N'2020-01-15 17:05:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-02 16:10:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-02 16:22:00', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-02 16:59:17', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-02 16:59:18', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-02 17:01:00', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:06:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:16:02', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:34:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:34:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:35:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:36:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-15 17:40:01', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 15:59:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 16:00:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 16:10:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 17:12:05', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-16 17:22:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000001', N'2020-02-08 10:13:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:08:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:16:02', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:33:26', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:34:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:35:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:38:07', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-15 17:40:01', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 10:29:51', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 15:49:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 15:57:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 16:00:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 16:10:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-16 17:22:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000002', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:08:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:10:41', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:10:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:16:02', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:34:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:35:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:36:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 15:59:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 16:00:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-16 17:22:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000003', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:08:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:10:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:16:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:34:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 16:00:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000004', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:08:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:10:11', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:10:40', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:14:17', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:14:18', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:16:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:34:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000005', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:10:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:14:17', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:14:18', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:16:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:33:26', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000006', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:16:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:32:20', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000007', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:16:02', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000008', N'2020-02-08 10:13:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:10:40', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:16:02', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-15 17:40:02', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 16:10:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000009', N'2020-02-08 10:13:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000a', N'2020-01-15 17:10:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000a', N'2020-01-15 17:15:16', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000b', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000b', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000c', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000c', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000d', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000d', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000e', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000e', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000f', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000000f', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:30:19', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:30:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:34:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:34:14', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:35:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-16 17:22:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000010', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:17:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 16:00:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000011', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:10:42', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:16:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000012', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:16:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000013', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:16:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000014', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-15 17:40:03', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000015', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 16:10:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-16 17:22:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000016', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:32:21', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:35:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 16:01:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000017', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 16:00:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000018', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 15:51:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 17:13:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-17 08:50:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000019', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001a', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001a', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001b', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001b', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001c', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001c', N'2020-01-15 17:12:53', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001d', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001d', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001e', N'2020-01-15 17:10:43', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001e', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001f', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000001f', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000020', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:14:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 10:31:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000021', N'2020-02-08 10:13:57', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-15 17:40:04', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000022', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:12:52', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:33:24', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:35:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 16:10:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-16 17:22:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000023', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 16:00:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000024', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:12:52', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000025', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:32:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000026', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 15:45:54', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000027', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000028', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:39:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-15 17:40:05', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000029', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002a', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002a', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002b', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002b', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002c', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002c', N'2020-01-15 17:12:53', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002d', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002d', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002e', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002e', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002f', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000002f', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:35:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 16:10:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-16 17:22:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-01-17 10:13:22', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000030', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 16:00:46', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000031', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:14:34', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000032', N'2020-02-08 10:13:56', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000033', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 15:45:55', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000034', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:12:53', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000035', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:32:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-15 17:40:06', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 16:10:12', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 17:13:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000036', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:33:24', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:35:09', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 16:02:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-16 17:22:49', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-01-17 10:13:23', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000037', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:33:24', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 16:00:47', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 16:01:58', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000038', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 15:54:35', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 16:03:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000039', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003a', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003a', N'2020-01-15 17:14:38', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003b', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003b', N'2020-01-15 17:14:38', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003c', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003c', N'2020-01-15 17:14:37', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003d', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003d', N'2020-01-15 17:14:37', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003e', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003e', N'2020-01-15 17:14:37', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003f', N'2020-01-15 17:10:41', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'000000000000003f', N'2020-01-15 17:14:37', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:33:24', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 16:03:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000040', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 15:45:56', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 16:03:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000041', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:10:44', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-15 17:40:07', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 15:45:57', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 16:03:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000042', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:14:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:39:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-15 17:40:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 10:31:30', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 15:45:57', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 15:51:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 16:03:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 16:10:13', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 17:13:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-17 08:50:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000043', N'2020-02-08 10:13:55', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:14:38', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:35:10', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:39:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-15 17:40:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 10:31:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 15:45:57', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 15:51:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 15:58:31', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 16:00:48', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 16:03:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 16:10:14', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 17:13:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-16 17:22:50', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-17 08:50:35', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-01-17 10:13:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000044', N'2020-02-08 10:14:01', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:10:45', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:14:38', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:32:24', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:33:25', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:35:11', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:39:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-15 17:40:08', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-16 10:31:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-16 15:45:57', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-16 15:51:33', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-16 15:54:36', N'0', N'00000001,00000001', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'0000000000000045', N'2020-01-16 15:58:32', N'1', N'', N'')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 10:40:46', N'12', N'设备停用', N'设备92000271停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 10:44:12', N'12', N'设备启用', N'设备92000271启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 10:58:20', N'12', N'设备停用', N'设备92000271停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:23:41', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:25:10', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:25:50', N'12', N'设备启用', N'设备92000271启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:28:11', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:45:59', N'12', N'设备停用', N'设备92000271停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 11:46:06', N'12', N'设备启用', N'设备92000271启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:47:45', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:48:52', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:49:01', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:49:14', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:49:27', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:49:37', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:50:39', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:50:48', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92000271', N'2020-06-22 13:51:36', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 11:33:56', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 11:33:57', N'12', N'设备停用', N'设备92015200停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 11:33:58', N'12', N'设备启用', N'设备92015200启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 11:35:17', N'12', N'设备启用', N'设备92015200启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 13:43:08', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015200', N'2020-06-22 13:49:59', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015201', N'2020-06-22 11:24:35', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015201', N'2020-06-22 11:33:57', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015201', N'2020-06-22 13:50:06', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 14:21:40', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 14:32:59', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 14:33:17', N'11', N'绑定场地', N'设备所属场地：1')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 15:06:36', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 15:07:07', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 15:09:10', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015210', N'2020-06-22 15:12:03', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015213', N'2020-06-22 14:28:38', N'12', N'设备启用', N'设备92015213启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015213', N'2020-06-22 14:32:42', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015213', N'2020-06-22 15:07:45', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015213', N'2020-06-22 15:09:00', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015213', N'2020-06-22 15:09:19', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 14:28:46', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:24:54', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:40:41', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:41:15', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:54:05', N'12', N'设备停用', N'设备92015214停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:54:27', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:54:47', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:58:21', N'12', N'设备停用', N'设备92015214停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:58:30', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 15:58:31', N'12', N'设备停用', N'设备92015214停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:04:15', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:04:25', N'12', N'设备停用', N'设备92015214停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:04:31', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:04:39', N'12', N'设备停用', N'设备92015214停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:12:38', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 16:12:46', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:31:59', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:32:18', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:32:25', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:32:36', N'12', N'设备启用', N'设备92015214启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:32:51', N'11', N'绑定场地', N'设备所属场地：1')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:35:12', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-22 17:35:24', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-23 16:48:59', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-23 16:49:11', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-23 16:49:18', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015214', N'2020-06-23 16:53:22', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:07:35', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:25:14', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:40:49', N'11', N'绑定场地', N'设备所属场地：11')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:41:15', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:54:27', N'12', N'设备启用', N'设备92015215启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:54:56', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 15:58:57', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-22 17:25:39', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:17:18', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:17:34', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:17:44', N'12', N'设备停用', N'设备92015215停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:17:53', N'12', N'设备启用', N'设备92015215启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:18:21', N'12', N'设备停用', N'设备92015215停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015215', N'2020-06-24 09:18:35', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 15:25:30', N'11', N'绑定场地', N'设备所属场地：8')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 15:41:03', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 15:41:15', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 15:54:27', N'12', N'设备启用', N'设备92015216启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-22 17:35:35', N'11', N'绑定场地', N'设备所属场地：9')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-24 09:18:21', N'12', N'设备停用', N'设备92015216停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015216', N'2020-06-24 09:18:35', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015217', N'2020-06-22 15:25:51', N'11', N'绑定场地', N'设备所属场地：1')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015217', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015217', N'2020-06-24 09:18:21', N'12', N'设备停用', N'设备92015217停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015218', N'2020-06-22 15:26:16', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015218', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015218', N'2020-06-23 16:53:35', N'11', N'绑定场地', N'设备所属场地：3')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015218', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015218启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015218', N'2020-06-24 09:18:35', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015219', N'2020-06-22 15:15:38', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015219', N'2020-06-24 09:18:21', N'12', N'设备停用', N'设备92015219停用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015220', N'2020-06-22 15:11:54', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015220', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015220启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015221', N'2020-06-22 15:08:43', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015221', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015221启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015222', N'2020-06-22 15:40:22', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015222', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015222启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015223', N'2020-06-22 15:26:36', N'11', N'解绑场地', N'解绑设备所属场地')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015223', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015223启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015224', N'2020-06-24 09:18:21', N'12', N'设备启用', N'设备92015224启用')
GO

INSERT INTO [dbo].[st_device_log]  VALUES (N'92015224', N'2020-06-24 09:18:35', N'11', N'解绑场地', N'解绑设备所属场地')
GO


-- ----------------------------
-- Table structure for st_devices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_devices]') AND type IN ('U'))
	DROP TABLE [dbo].[st_devices]
GO

CREATE TABLE [dbo].[st_devices] (
  [imeid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [agent_id] int  NULL,
  [place_id] int  NULL,
  [type_id] int  NULL,
  [online_state] int  NULL,
  [device_state] int  NULL,
  [signal] int  NULL,
  [deploy_state] int  NULL,
  [device_tags] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [goods_id] int  NULL,
  [qr_code] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [other_id] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_time] datetime  NULL,
  [remark] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_devices] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'添加时间',
'SCHEMA', N'dbo',
'TABLE', N'st_devices',
'COLUMN', N'add_time'
GO


-- ----------------------------
-- Records of [st_devices]
-- ----------------------------
INSERT INTO [dbo].[st_devices]  VALUES (N'92015220', N'0', N'0', NULL, N'1', N'0', NULL, N'0', N'220(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015221', N'0', N'0', NULL, N'1', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015222', N'0', N'0', NULL, N'1', N'0', NULL, N'0', N'509(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015223', N'0', N'0', NULL, N'1', N'0', NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015224', N'0', N'0', NULL, N'1', N'0', NULL, N'0', N'226（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015225', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015226', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015227', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-05 12:30:46.117', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015228', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015229', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015230', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015231', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015232', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015233', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015234', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015235', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'522（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015236', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015237', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015238', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015239', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'403(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015240', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015241', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015242', N'0', N'10', NULL, N'0', NULL, NULL, N'0', N'样机', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015243', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015244', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015245', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'223（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015246', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'513（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015247', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'402(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015248', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'510（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015249', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'228（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015250', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015251', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'623（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015252', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015253', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015254', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015255', N'0', N'7', NULL, N'0', NULL, NULL, N'0', N'615（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015256', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015257', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015258', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015259', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015260', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015261', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015262', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'436(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015263', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'516（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015264', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'611（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015265', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015266', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'505(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015267', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'213（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015268', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015269', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015270', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'229（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015271', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015272', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-04-30 13:42:09.490', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015273', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015274', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'401（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015275', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'526（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015276', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'511（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015277', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015278', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'543(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015279', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'420(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015280', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015281', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015282', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'536（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015283', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015284', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015285', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015286', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'502(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015287', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'518（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015288', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015289', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015290', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'432(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015291', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015292', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015293', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015294', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015295', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015296', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015297', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015298', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'429(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015299', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'406(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015300', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'621（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015301', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'211（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015302', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'425(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015303', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'531（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015304', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'415(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015305', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'222（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015306', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015307', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015308', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015309', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015310', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015311', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015312', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015313', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015314', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015315', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015316', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015317', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'526（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015318', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'405（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015319', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015320', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015321', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'535（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015322', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015323', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015324', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'210（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015325', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015326', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015327', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015328', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015329', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015330', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015331', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'530（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015332', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'618（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015333', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015334', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015335', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015336', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015337', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015338', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'605（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015339', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'533(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015340', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015341', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'505（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015342', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'603（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015343', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'523（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015344', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015345', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'613（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015346', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'512（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015347', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'510（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015348', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015349', N'0', N'7', NULL, N'0', NULL, NULL, N'0', N'216（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015350', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'501（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015351', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'413(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015352', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'532（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015353', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'503（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015354', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015355', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'520（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015356', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015357', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015358', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'506(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015359', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015360', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'606（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015361', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'443(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015362', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015363', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015364', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015365', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015366', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'528（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015367', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015368', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015369', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'612（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015370', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'232（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015371', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'426(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015372', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'423(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015373', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'620（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015374', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'412（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015375', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015376', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'439(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015377', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015378', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'219（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015379', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015380', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015381', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015382', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015383', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'616（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015384', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'419(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015385', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015386', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015387', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015388', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015389', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015390', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015391', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015392', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015393', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015394', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015395', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015396', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'519(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015397', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015398', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015399', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015400', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015401', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015402', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'218（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015403', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'511（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015404', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015405', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015406', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015407', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015408', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015409', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015410', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015411', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015412', N'0', NULL, NULL, N'0', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015413', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015414', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015415', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'509（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015416', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015417', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'619（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015418', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015419', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015420', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015421', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015422', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015423', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'513（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015424', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'416(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015425', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015426', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015427', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015428', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'411(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015429', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015430', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015431', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015432', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015433', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015434', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015435', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:17:59.040', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015436', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:18:11.567', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015437', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:18:23.320', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015438', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:18:47.620', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015439', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:18:55.367', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015440', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:06.150', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015441', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:16.233', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015442', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:23.693', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015443', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:32.003', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015444', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:39.247', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015445', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:46.617', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015446', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:19:55.677', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015447', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:01.757', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015448', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:09.027', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015449', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:15.060', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015450', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:21.063', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015451', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:26.920', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015452', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:34.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015453', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:39.990', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015454', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:45.433', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015455', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:51.167', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015456', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:20:56.917', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015457', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:03.377', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015458', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:13.347', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015459', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:19.343', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015460', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:25.273', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015461', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:31.307', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015462', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:37.203', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015463', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:47.673', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015464', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:53.337', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015465', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:21:59.200', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015466', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:06.087', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015467', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:12.130', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015468', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:17.887', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015469', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:24.037', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015470', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:30.810', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015471', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:36.493', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015472', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:42.087', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015473', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:48.340', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015474', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:22:55.743', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015475', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:23:30.113', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015476', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:23:36.097', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015477', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:23:41.967', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015478', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:23:47.817', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015479', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:23:57.353', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015480', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:04.517', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015481', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:10.803', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015482', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:16.463', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015483', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:22.273', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015484', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:28.257', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015485', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:34.143', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015486', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:41.283', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015487', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:46.790', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015488', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:52.817', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015489', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:24:58.600', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015490', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:04.293', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015491', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:10.200', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015492', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:16.890', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015493', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:22.307', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015494', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'529（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 13:25:28.897', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015495', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:34.967', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015496', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'515（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 13:25:40.427', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015497', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:45.900', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015498', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:25:58.237', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015499', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:26:04.327', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015500', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:26:11.197', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015501', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:26:17.293', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015502', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:26:23.613', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015503', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:26:31.443', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015504', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:20.023', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015505', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:26.283', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015506', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015507', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:39.340', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015508', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:44.793', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015509', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:27:50.347', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015510', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:06.263', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015511', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:11.977', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015512', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:18.863', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015513', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:24.507', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015514', N'0', N'9', NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:30.257', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015515', N'0', N'0', NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:36.053', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015516', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:28:44.133', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015517', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'508（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 13:28:50.783', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015518', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:29:08.750', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015519', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'421(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 13:52:09.307', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015520', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'221（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 13:52:27.610', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015521', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'525（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 13:52:47.380', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015522', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:53:05.480', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015523', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'422(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 13:53:29.530', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015524', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:53:58.173', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015525', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:54:15.090', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015526', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:54:31.660', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015527', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:54:51.270', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015528', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:55:08.970', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015529', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:55:58.327', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015530', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-07 05:48:09.683', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015531', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:56:51.720', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015532', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:57:17.297', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015533', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:57:35.170', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015534', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:57:53.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015535', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:58:09.610', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015536', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:58:27.713', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015537', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 13:58:44.397', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015538', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:00:07.530', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015539', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:00:26.110', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015540', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:00:45.557', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015541', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:01:12.850', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015542', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:01:33.813', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015543', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:01:50.877', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015544', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:02:07.697', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015545', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:02:24.740', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015546', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:03:00.010', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015547', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:03:20.237', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015548', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:03:40.327', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015549', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:03:57.990', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015550', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:04:14.650', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015551', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:04:31.947', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015552', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:05:09.347', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015553', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:05:28.120', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015554', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'409（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:05:45.453', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015555', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'433(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 14:06:02.920', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015556', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:06:19.930', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015557', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:06:54.177', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015558', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'610（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:07:10.467', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015559', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:07:29.637', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015560', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'430(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 14:07:48.550', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015561', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:08:06.497', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015562', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'519（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:08:29.137', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015563', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:08:47.173', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015564', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:09:04.477', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015565', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:09:23.723', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015566', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:09:42.537', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015567', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'205（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:10:03.487', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015568', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'209（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:10:21.057', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015569', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:10:37.360', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015570', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:10:57.033', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015571', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:11:15.880', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015572', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:11:42.777', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015573', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:12:05.160', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015574', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:12:27.313', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015575', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:12:58.503', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015576', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:13:14.993', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015577', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:13:33.877', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015578', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:13:55.030', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015579', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:14:11.337', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015580', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:14:28.033', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015581', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:14:47.977', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015582', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:15:04.330', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015583', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:15:21.220', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015584', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:15:45.177', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015585', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:16:01.227', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015586', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:16:20.320', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015587', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:16:38.843', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015588', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:16:54.890', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015589', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'230（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:17:16.897', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015590', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:17:35.007', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015591', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:17:52.140', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015592', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:18:14.860', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015593', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:18:31.897', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015594', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:18:50.843', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015595', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:19:07.250', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015596', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:19:24.810', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015597', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:19:41.713', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015598', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:19:57.813', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015599', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:20:20.300', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015600', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:20:37.597', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015601', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:23:34.707', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015602', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:23:53.470', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015603', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:24:08.613', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015604', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:24:27.410', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015605', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:24:44.800', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015606', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:25:02.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015607', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:25:17.910', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015608', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:25:33.520', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015609', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:25:49.497', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015610', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:26:05.027', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015611', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:26:20.353', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015612', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:26:37.267', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015613', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:26:54.627', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015614', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:27:11.147', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015615', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:27:57.477', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015616', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'431(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 14:28:30.593', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015617', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:29:10.450', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015618', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:29:46.440', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015619', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:30:03.077', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015620', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:30:21.127', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015621', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:30:46.260', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015622', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:31:10.703', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015623', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:31:29.973', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015624', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:31:54.070', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015625', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:32:29.623', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015626', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:32:48.480', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015627', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:33:06.367', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015628', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'521(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 14:34:16.037', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015629', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:34:39.520', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015630', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:34:58.113', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015631', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:35:14.640', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015632', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:35:33.773', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015633', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:35:50.907', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015634', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:36:11.413', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015635', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:36:37.517', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015636', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'215（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:36:57.813', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015637', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:37:14.503', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015638', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'201（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:37:30.790', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015639', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:37:50.323', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015640', N'0', N'7', NULL, N'0', NULL, NULL, N'0', N'515（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:38:10.100', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015641', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'408(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 14:38:26.737', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015642', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:38:55.787', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015643', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:39:12.363', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015644', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:39:31.510', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015645', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:39:52.560', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015646', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:40:09.973', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015647', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:40:32.910', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015648', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:40:49.490', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015649', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:41:05.953', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015650', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:41:23.607', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015651', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:41:41.450', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015652', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:42:01.110', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015653', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:42:17.760', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015654', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:42:34.850', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015655', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:42:52.553', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015656', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'231（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:43:08.767', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015657', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'225（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:43:31.060', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015658', N'0', N'7', NULL, N'0', NULL, NULL, N'0', N'208（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:43:51.847', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015659', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:44:16.713', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015660', N'0', NULL, NULL, N'0', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:44:37.953', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015661', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'602（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:44:59.397', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015662', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'520（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 14:45:20.833', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015663', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:45:38.250', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015664', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 14:45:59.990', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015665', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015666', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'508（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015667', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015668', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015669', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015670', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015671', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015672', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015673', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015674', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015675', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015676', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015677', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015678', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015679', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015680', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015681', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'609(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015682', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'523（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015683', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'418(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015684', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'521（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015685', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015686', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015687', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'516（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015688', N'0', N'7', NULL, N'1', NULL, NULL, N'0', N'522（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015689', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'512（双人房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015690', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015691', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015692', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'435(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015693', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015694', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'441(大床房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015695', N'0', NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015696', N'0', N'6', NULL, N'0', NULL, NULL, N'0', N'428(双人房)', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015697', N'0', N'7', NULL, N'0', NULL, NULL, N'0', N'203（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015698', N'0', NULL, NULL, N'1', NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO

INSERT INTO [dbo].[st_devices]  VALUES (N'92015699', N'0', N'6', NULL, N'1', NULL, NULL, N'0', N'525（大床房）', NULL, NULL, NULL, NULL, N'2020-05-06 15:33:33.000', NULL)
GO


-- ----------------------------
-- Table structure for st_goods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_goods]') AND type IN ('U'))
	DROP TABLE [dbo].[st_goods]
GO

CREATE TABLE [dbo].[st_goods] (
  [id] int  IDENTITY(21,1) NOT NULL,
  [agent_id] int  NULL,
  [goods_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [goods_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [goods_spec] int  NULL,
  [type_id] int  NULL,
  [market_price] decimal(18,2)  NULL,
  [sell_price] decimal(18,2)  NULL,
  [run_time] int  NULL,
  [status] int  NULL,
  [goods_state] int  NULL,
  [picture] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort_id] int  NULL,
  [goods_tags] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_time] datetime  NULL,
  [remark] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_goods] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品ID',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运营代理商',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'agent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品编码',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'goods_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'goods_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品规格',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'goods_spec'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品类型',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'type_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'时长价格',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'market_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'销售价格',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'sell_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运行时长',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'run_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物理状态',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品状态',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'goods_state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图片',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'picture'
GO

EXEC sp_addextendedproperty
'MS_Description', N'顺序',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'sort_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标签',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'goods_tags'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'st_goods',
'COLUMN', N'remark'
GO


-- ----------------------------
-- Records of [st_goods]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[st_goods] ON
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'7', N'0', N'No6', N'促进循环', N'1', N'1', N'.00', N'7.00', N'12', N'0', N'0', NULL, N'99', N'春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼', N'2020-03-13 14:26:49.863', N'可以软化血管，增加血管的弹性，从而减少因受压力而遭致破坏的危险性。可以使身体的很多肌肉，尤其是大腿肌能够做连续的收缩和放松，促使肌肉中的大量血管也跟着连续收缩和放松，继而增进肌肉与血液循环的运动效率，加强氧的吸收、运送和有效的运用。')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'8', N'0', N'No7', N'调节神经', N'1', N'1', N'5.00', N'6.00', N'18', N'0', N'0', NULL, N'99', N'春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼', N'2020-01-01 18:45:32.457', N'可以软化血管，增加血管的弹性，从而减少因受压力而遭致破坏的危险性。可以使身体的很多肌肉，尤其是大腿肌能够做连续的收缩和放松，促使肌肉中的大量血管也跟着连续收缩和放松，继而增进肌肉与血液循环的运动效率，加强氧的吸收、运送和有效的运用。')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'9', N'0', N'No8', N'疏经活血', N'154666', N'1', N'.00', N'12.00', N'10', N'0', N'1', NULL, N'0', N'春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼', N'2020-01-01 18:45:29.217', N'可以软化血管，增加血管的弹性，从而减少因受压力而遭致破坏的危险性。可以使身体的很多肌肉，尤其是大腿肌能够做连续的收缩和放松，促使肌肉中的大量血管也跟着连续收缩和放松，继而增进肌肉与血液循环的运动效率，加强氧的吸收、运送和有效的运用。')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'10', N'0', N'No9', N'缓解紧张和忧虑', N'1', N'1', N'7.00', N'4.00', N'6', N'0', N'0', NULL, N'99', N'春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼', N'2020-01-01 18:45:25.440', N'可以软化血管，增加血管的弹性，从而减少因受压力而遭致破坏的危险性。可以使身体的很多肌肉，尤其是大腿肌能够做连续的收缩和放松，促使肌肉中的大量血管也跟着连续收缩和放松，继而增进肌肉与血液循环的运动效率，加强氧的吸收、运送和有效的运用。')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'11', N'12', N'No10', N'强化心脏的效率', N'1', N'1', N'9.00', N'7.00', N'6', N'0', N'0', NULL, N'99', N'春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼', N'2020-01-01 18:45:19.360', N'可以软化血管，增加血管的弹性，从而减少因受压力而遭致破坏的危险性。可以使身体的很多肌肉，尤其是大腿肌能够做连续的收缩和放松，促使肌肉中的大量血管也跟着连续收缩和放松，继而增进肌肉与血液循环的运动效率，加强氧的吸收、运送和有效的运用。')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'16', N'0', N'G618075420073270', N'调理气血', N'0', N'1', N'.00', N'9.90', N'15', N'0', N'0', N'C:\\fakepath\\1.png', N'1', NULL, N'2020-03-13 14:27:37.553', N'&nbsp;')
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'17', N'0', N'G876716180328436', N'舒适体验', N'0', N'1', N'.00', N'9.90', N'15', N'0', N'0', N'C:\\fakepath\\9.9元15分钟.jpg', N'3', NULL, N'2020-05-11 14:29:11.667', NULL)
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'18', N'0', N'G416478487331716', N'气血调理', N'0', N'1', N'.00', N'15.00', N'25', N'0', N'0', NULL, N'2', NULL, N'2020-04-25 08:27:52.057', NULL)
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'19', N'0', N'G301310134425206', N'疲劳恢复', N'0', N'1', N'.00', N'20.00', N'50', N'0', N'0', NULL, N'1', NULL, N'2020-04-25 08:27:39.730', NULL)
GO

INSERT INTO [dbo].[st_goods] ([id], [agent_id], [goods_no], [goods_name], [goods_spec], [type_id], [market_price], [sell_price], [run_time], [status], [goods_state], [picture], [sort_id], [goods_tags], [add_time], [remark]) VALUES (N'22', N'0', N'G035515767062114', N'veshi', N'0', N'1', N'.00', N'2.00', N'3', N'0', N'0', N'&nbsp;', N'99', NULL, N'2020-05-19 17:17:01.687', N'&nbsp;')
GO

SET IDENTITY_INSERT [dbo].[st_goods] OFF
GO


-- ----------------------------
-- Table structure for st_inspection_equipment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_inspection_equipment]') AND type IN ('U'))
	DROP TABLE [dbo].[st_inspection_equipment]
GO

CREATE TABLE [dbo].[st_inspection_equipment] (
  [device_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [data] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [errorCode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [result] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_status] int  NULL,
  [add_time] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_inspection_equipment] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备id',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'device_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备描述',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误码',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'errorCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备检查',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备状态成功1失败0',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'device_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'时间',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment',
'COLUMN', N'add_time'
GO


-- ----------------------------
-- Table structure for st_inspection_equipment_copy1_copy1
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_inspection_equipment_copy1_copy1]') AND type IN ('U'))
	DROP TABLE [dbo].[st_inspection_equipment_copy1_copy1]
GO

CREATE TABLE [dbo].[st_inspection_equipment_copy1_copy1] (
  [device_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [data] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [errorCode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [result] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [device_status] int  NULL,
  [add_time] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_inspection_equipment_copy1_copy1] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备id',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'device_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备描述',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错误码',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'errorCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备检查',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备状态成功1失败0',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'device_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'时间',
'SCHEMA', N'dbo',
'TABLE', N'st_inspection_equipment_copy1_copy1',
'COLUMN', N'add_time'
GO


-- ----------------------------
-- Records of [st_inspection_equipment_copy1_copy1]
-- ----------------------------
INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:44:36')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:44:37')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:44:39')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:44:40')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:44:42')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:45:49')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:45:53')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:45:54')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 16:45:55')
GO

INSERT INTO [dbo].[st_inspection_equipment_copy1_copy1]  VALUES (N'2000000001', NULL, N'设备离线', NULL, N'-1', N'0', N'2020/6/23 17:25:07')
GO


-- ----------------------------
-- Table structure for st_orders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_orders]') AND type IN ('U'))
	DROP TABLE [dbo].[st_orders]
GO

CREATE TABLE [dbo].[st_orders] (
  [id] int  IDENTITY(847,1) NOT NULL,
  [agent_id] int  NULL,
  [order_no] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [trade_no] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [imeid] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [goods_id] int  NULL,
  [goods_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [placeId] int  NULL,
  [user_id] int DEFAULT ((0)) NULL,
  [user_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [payment_id] int DEFAULT ((0)) NULL,
  [payment_fee] decimal(9,2) DEFAULT ((0)) NULL,
  [payment_status] int DEFAULT ((0)) NULL,
  [payment_time] datetime  NULL,
  [telphone] nvarchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [mobile] nvarchar(20) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (N'('''')') NULL,
  [payable_amount] decimal(9,2) DEFAULT ((0)) NULL,
  [real_amount] decimal(9,2) DEFAULT ((0)) NULL,
  [order_amount] decimal(9,2) DEFAULT ((0)) NULL,
  [status] int DEFAULT ((1)) NULL,
  [add_time] datetime DEFAULT (getdate()) NULL,
  [confirm_time] datetime  NULL,
  [complete_time] datetime  NULL
)
GO

ALTER TABLE [dbo].[st_orders] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'自增ID',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运营商ID',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'agent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单号',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'order_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易号担保支付用到',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备Id',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'imeid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品ID',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'goods_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'goods_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'场地Id',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'placeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付方式',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'payment_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付手续费',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'payment_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付状态0未支付1待支付2已支付',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'payment_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付时间',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'payment_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'telphone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'mobile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单备注',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应付商品总金额',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'payable_amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实付商品总金额',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'real_amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单总金额',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'order_amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下单时间',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'确认时间',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'confirm_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单完成时间',
'SCHEMA', N'dbo',
'TABLE', N'st_orders',
'COLUMN', N'complete_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单表',
'SCHEMA', N'dbo',
'TABLE', N'st_orders'
GO


-- ----------------------------
-- Records of [st_orders]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[st_orders] ON
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'1', N'0', N'201912231529232433', N'', N'20865800046100136', N'1', N'疲劳恢复', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-06-05 00:00:00.000', N'', N'', N'', N'1.00', N'1.00', N'1.00', N'4', N'2020-06-05 15:29:23.200', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'2', N'0', N'201912231602342881', N'', N'20865800046100136', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:02:34.883', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'3', N'0', N'201912231613296755', N'', N'20865800046100136', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:13:29.847', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'4', N'0', N'201912231616184851', N'', N'20865800046100136', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:16:18.843', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'5', N'0', N'201912231618494954', N'', N'20865800046100136', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:18:49.803', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'6', N'0', N'201912231623174632', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:23:17.257', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'7', N'0', N'201912231628473323', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:28:47.480', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'8', N'0', N'201912231629523855', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:29:52.763', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'9', N'0', N'201912231631145256', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:31:14.677', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'10', N'0', N'201912231641494072', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:41:49.757', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'11', N'0', N'201912231647489530', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 16:47:48.563', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'12', N'0', N'201912231802582034', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:02:58.047', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'13', N'0', N'201912231803281814', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:03:28.750', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'14', N'0', N'201912231807352283', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:07:35.360', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'15', N'0', N'201912231809417292', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:09:41.857', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'16', N'0', N'201912231812224425', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:12:22.257', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'17', N'0', N'201912231813245457', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:13:24.890', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'18', N'0', N'201912231832405446', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:32:40.847', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'19', N'0', N'201912231836507445', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:36:50.507', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'20', N'0', N'201912231836541792', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:36:54.160', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'21', N'0', N'201912231836564392', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:36:56.013', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'22', N'0', N'201912231840355385', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:40:35.420', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'23', N'0', N'201912231855183455', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:55:18.643', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'24', N'0', N'201912231858461054', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:58:46.943', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'25', N'0', N'201912231859488642', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 18:59:48.443', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'26', N'0', N'201912231903309821', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:03:30.100', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'27', N'0', N'201912231903328908', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:03:32.020', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'28', N'0', N'201912231903372655', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:03:37.853', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'29', N'0', N'201912231903523910', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:03:52.550', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'30', N'0', N'201912231910036600', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:10:03.943', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'31', N'0', N'201912231913028275', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:13:02.057', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'32', N'0', N'201912231915436566', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:15:43.420', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'33', N'0', N'201912231925298944', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:25:29.313', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'34', N'0', N'201912231925457156', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:25:45.057', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'35', N'0', N'201912231930227905', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:30:22.487', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'36', N'0', N'201912231937497338', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:37:49.317', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'37', N'0', N'201912231939484427', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:39:48.997', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'38', N'0', N'201912231942313562', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-23 19:42:31.030', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'39', N'0', N'201912231950453744', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'4.00', N'1', N'2019-12-23 19:50:45.723', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'40', N'0', N'201912241042109218', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 10:42:10.053', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'41', N'0', N'201912241114515963', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:14:51.803', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'42', N'0', N'201912241132503223', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:32:50.970', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'43', N'0', N'201912241135157444', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:35:15.833', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'44', N'0', N'201912241142269322', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:42:26.563', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'45', N'0', N'201912241144428638', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:44:42.017', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'46', N'0', N'201912241159012334', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:01.423', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'47', N'0', N'201912241159346815', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:34.527', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'48', N'0', N'201912241159428649', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:42.290', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'49', N'0', N'201912241159446480', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:44.347', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'50', N'0', N'201912241159486754', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:48.747', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'51', N'0', N'201912241159494870', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:49.557', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'52', N'0', N'201912241159572346', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 11:59:57.887', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'53', N'0', N'201912241201012279', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.00', N'.00', N'3.00', N'1', N'2019-12-24 12:01:01.387', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'54', N'0', N'201912241227399111', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 12:27:39.303', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'55', N'0', N'201912241253162426', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 12:53:16.170', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'56', N'0', N'201912241258066883', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 12:58:06.183', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'57', N'0', N'201912241258118816', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 12:58:11.630', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'58', N'0', N'201912241349347251', N'', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 13:49:34.217', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'59', N'0', N'201912241402352175', N'4200000446201912249804731192', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2019-12-24 14:02:41.953', N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 14:02:35.037', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'60', N'0', N'201912241442191662', N'4200000430201912248994749866', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2019-12-24 14:42:26.360', N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 14:42:19.327', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'61', N'0', N'201912241447144696', N'4200000443201912245474849226', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2019-12-24 14:47:20.777', N'', N'', N'', N'1.00', N'.00', N'1.00', N'1', N'2019-12-24 14:47:14.397', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'62', N'0', N'201912241501364124', N'4200000436201912241629849503', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2019-12-24 15:01:54.857', N'', N'', N'', N'1.00', N'.00', N'1.00', N'4', N'2019-12-24 15:01:36.733', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'63', N'0', N'201912251714076146', N'4200000486201912251816577587', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2019-12-25 17:14:14.327', N'', N'', N'', N'.10', N'.00', N'.10', N'4', N'2019-12-25 17:14:07.773', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'64', N'0', N'201912251715399628', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:15:39.150', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'65', N'0', N'201912251717278810', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:17:27.763', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'66', N'0', N'201912251722328594', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:22:32.917', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'67', N'0', N'201912251725193802', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:25:19.490', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'68', N'0', N'201912251728113417', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:28:11.703', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'69', N'0', N'201912251732322540', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:32:32.347', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'70', N'0', N'201912251734326185', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:34:32.087', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'71', N'0', N'201912251747171925', N'2019122522001418721403083904', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-25 19:13:35.237', N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:47:17.247', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'72', N'0', N'201912251755108076', N'2019122522001418721403139310', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-25 18:20:35.340', N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 17:55:10.123', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'73', N'0', N'201912251802232956', N'', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 18:02:23.683', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'74', N'0', N'201912251811444788', N'2019122522001418721402944387', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-25 18:25:02.580', N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 18:11:44.770', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'75', N'0', N'201912251818295404', N'2019122522001418721403016104', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-25 18:18:35.363', N'', N'', N'', N'.10', N'.00', N'.10', N'1', N'2019-12-25 18:18:29.207', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'76', N'0', N'201912261709087247', N'4200000497201912264689131129', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2019-12-26 17:09:14.203', N'', N'', N'', N'.10', N'.10', N'.10', N'4', N'2019-12-26 17:09:08.213', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'77', N'0', N'201912261837281275', N'2019122622001418721403209305', N'865800046100134', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-26 18:51:24.313', N'', N'', N'', N'.10', N'.10', N'.10', N'4', N'2019-12-26 18:37:28.820', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'78', N'0', N'201912261843253369', N'2019122622001418721403515479', N'865800046100134', N'1', N'疲劳恢复', NULL, N'0', N'', N'1', N'.00', N'2', N'2019-12-26 18:57:51.110', N'', N'', N'', N'.10', N'.10', N'.10', N'4', N'2019-12-26 18:43:25.177', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'79', N'0', N'202001021636463754', N'4200000498202001021471387629', N'92015200', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-02 16:36:56.447', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-02 16:36:46.430', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'80', N'0', N'202001021639179426', N'', N'92015200', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-02 16:39:17.970', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'81', N'0', N'202001021639411853', N'', N'92015200', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-02 16:39:41.457', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'82', N'0', N'202001021639566212', N'', N'92015200', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-02 16:39:56.857', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'83', N'0', N'202001021709557818', N'4200000488202001025179881619', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-02 17:10:03.390', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-02 17:09:55.433', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'84', N'0', N'202001021710399414', N'4200000495202001023981140254', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-02 17:11:14.527', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-02 17:10:39.853', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'85', N'0', N'202001021714085544', N'4200000488202001020414406997', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-02 17:14:15.170', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-02 17:14:08.287', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'86', N'0', N'202001030935278772', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-03 09:35:27.507', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'87', N'0', N'202001031001196803', N'4200000487202001036938446214', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:01:34.767', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:01:19.830', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'88', N'0', N'202001031003334033', N'4200000494202001036904719822', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:03:41.913', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:03:33.400', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'89', N'0', N'202001031009049729', N'4200000474202001039119206273', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:09:14.347', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:09:04.920', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'90', N'0', N'202001031017004146', N'4200000497202001032074713923', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:17:13.170', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:17:00.283', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'91', N'0', N'202001031019412970', N'4200000475202001037163940437', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:19:58.670', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:19:41.057', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'92', N'0', N'202001031023088443', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-03 10:23:08.893', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'93', N'0', N'202001031025165535', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-03 10:25:16.050', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'94', N'0', N'202001031029379111', N'4200000499202001038026676311', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 10:29:50.097', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 10:29:37.130', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'95', N'0', N'202001031302264580', N'4200000497202001038750694583', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:02:45.110', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:02:26.097', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'96', N'0', N'202001031304436992', N'4200000492202001035391652252', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:04:52.057', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:04:43.107', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'97', N'0', N'202001031310148516', N'4200000488202001039695142154', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:10:24.883', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:10:14.193', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'98', N'0', N'202001031313183750', N'4200000484202001038220298464', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:13:30.260', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:13:18.717', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'99', N'0', N'202001031315405388', N'4200000477202001032332708073', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:15:48.330', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:15:40.227', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'100', N'0', N'202001031320087661', N'4200000488202001039152530680', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:20:15.433', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:20:08.637', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'101', N'0', N'202001031322084329', N'4200000474202001038894284992', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:22:14.270', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:22:08.123', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'102', N'0', N'202001031325457596', N'4200000483202001036077509961', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:25:52.393', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:25:45.813', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'103', N'0', N'202001031327095418', N'4200000490202001037207603748', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:27:16.790', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:27:09.860', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'104', N'0', N'202001031327314145', N'4200000473202001033109631023', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:27:42.510', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:27:31.703', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'105', N'0', N'202001031330106069', N'4200000493202001039352407455', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:30:18.260', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:30:10.510', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'106', N'0', N'202001031350586956', N'4200000495202001031935497446', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:51:07.733', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:50:58.417', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'107', N'0', N'202001031355046301', N'4200000472202001030750895074', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 13:55:10.720', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 13:55:04.883', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'108', N'0', N'202001031439158644', N'4200000473202001034902879925', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 14:39:22.807', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 14:39:15.867', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'109', N'0', N'202001031441054007', N'4200000496202001030101884845', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 14:41:11.710', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 14:41:05.450', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'110', N'0', N'202001031617489061', N'4200000500202001033103742988', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 16:17:59.807', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 16:17:48.163', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'111', N'0', N'202001031626072648', N'4200000489202001034052886279', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 16:26:17.753', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 16:26:07.087', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'112', N'0', N'202001031702045301', N'4200000493202001039503318436', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 17:02:09.703', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 17:02:04.180', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'113', N'0', N'202001031703151276', N'4200000479202001030494073432', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-03 17:03:21.727', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 17:03:15.520', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'114', N'0', N'202001031704472466', N'2020010322001418720567058073', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-01-03 17:04:54.793', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-03 17:04:47.217', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'115', N'0', N'202001031718096426', N'4200000493202001036254532890', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-03 17:18:14.573', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-03 17:18:09.140', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'116', N'0', N'202001031722569427', N'2020010322001418720567146079', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-01-03 17:26:02.210', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-03 17:22:56.557', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'117', N'0', N'202001040834121338', N'4200000481202001040442307059', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-04 08:34:30.367', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-04 08:34:12.273', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'118', N'0', N'202001050943415356', N'4200000475202001055128736074', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-05 09:43:49.620', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 09:43:41.800', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'119', N'0', N'202001050945476020', N'4200000480202001057779421055', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 09:45:54.107', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 09:45:47.190', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'120', N'0', N'202001050954536385', N'4200000490202001053678580275', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 09:55:03.143', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 09:54:53.983', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'121', N'0', N'202001051049406297', N'4200000488202001059779555236', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 10:49:48.993', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 10:49:40.793', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'122', N'0', N'202001051053118326', N'4200000496202001051946818023', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 10:53:18.053', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 10:53:11.197', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'123', N'0', N'202001051251311418', N'2020010522001424701432000855', N'92015211', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'2', N'2020-01-05 12:51:55.717', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 12:51:31.647', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'124', N'0', N'202001051331447008', N'4200000496202001055876803267', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:31:54.750', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:31:44.707', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'125', N'0', N'202001051337056314', N'4200000496202001052896998895', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:37:14.777', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:37:05.163', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'126', N'0', N'202001051337357819', N'4200000477202001059989256730', N'92015204', N'3', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:37:47.400', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:37:35.700', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'127', N'0', N'202001051340405468', N'4200000480202001055978295949', N'92015204', N'3', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:40:55.340', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:40:40.607', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'128', N'0', N'202001051341197995', N'4200000474202001052634142545', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:41:29.420', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:41:19.800', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'129', N'0', N'202001051347264166', N'4200000472202001050618006497', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:47:36.127', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:47:26.207', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'130', N'0', N'202001051348192769', N'4200000484202001051296357706', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:48:29.967', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:48:19.340', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'131', N'0', N'202001051348524874', N'4200000499202001059821049993', N'92015204', N'3', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:49:02.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:48:52.057', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'132', N'0', N'202001051351214677', N'4200000490202001058801817065', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:51:32.040', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:51:21.323', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'133', N'0', N'202001051352151651', N'4200000481202001058168344473', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:52:25.097', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:52:15.197', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'134', N'0', N'202001051353039244', N'4200000490202001052070089611', N'92015204', N'3', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:53:13.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:53:03.900', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'135', N'0', N'202001051353474097', N'4200000487202001053416815841', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 13:53:56.977', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 13:53:47.030', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'136', N'0', N'202001051359111528', N'4200000496202001054335871242', N'92015210', N'1', N'疲劳恢复', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 13:59:23.247', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 13:59:11.123', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'137', N'0', N'202001051359581093', N'4200000477202001050543797217', N'92015203', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 14:00:09.020', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 13:59:58.707', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'138', N'0', N'202001051400499098', N'4200000493202001052779651331', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 14:00:59.477', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 14:00:49.427', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'139', N'0', N'202001051402468711', N'4200000500202001057936621276', N'92015210', N'1', N'疲劳恢复', N'3', N'0', N'', N'0', N'.00', N'3', N'2020-01-05 14:02:56.107', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 14:02:46.467', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'140', N'0', N'202001051403277666', N'4200000493202001050406521527', N'92015203', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:03:37.387', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:03:27.423', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'141', N'0', N'202001051404283306', N'4200000494202001058518416139', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:04:38.937', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:04:28.947', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'142', N'0', N'202001051405059278', N'4200000472202001054689491871', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-05 14:05:15.513', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 14:05:05.587', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'143', N'0', N'202001051406094016', N'4200000490202001059913683329', N'92015210', N'1', N'疲劳恢复', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:06:19.683', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:06:09.630', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'144', N'0', N'202001051407414705', N'4200000472202001058212389460', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:07:50.990', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:07:41.430', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'145', N'0', N'202001051412197655', N'4200000478202001053259672170', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:12:29.317', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:12:19.087', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'146', N'0', N'202001051415125312', N'4200000488202001052973070044', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:15:22.017', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:15:12.393', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'147', N'0', N'202001051415514827', N'4200000475202001059656071029', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:16:02.217', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:15:51.420', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'148', N'0', N'202001051422392838', N'4200000476202001057082743131', N'92015207', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:22:49.523', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:22:39.363', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'149', N'0', N'202001051423397164', N'4200000500202001053456640405', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 14:23:50.093', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 14:23:39.960', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'150', N'0', N'202001051511498773', N'4200000498202001055842339557', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:11:58.903', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:11:49.150', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'151', N'0', N'202001051515395387', N'4200000487202001050763638176', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:15:49.023', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:15:39.450', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'152', N'0', N'202001051516141662', N'4200000495202001052349894295', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:16:25.267', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:16:14.017', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'153', N'0', N'202001051526129816', N'4200000498202001056476810344', N'92015204', N'3', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:26:22.527', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:26:12.890', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'154', N'0', N'202001051526527201', N'4200000500202001052645851568', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:27:03.730', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:26:52.770', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'155', N'0', N'202001051528333425', N'4200000490202001058702629857', N'92015205', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:28:42.937', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:28:33.307', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'156', N'0', N'202001051529125197', N'4200000484202001058802750111', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:29:21.857', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:29:12.240', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'157', N'0', N'202001051529491982', N'4200000474202001054156603316', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:30:00.120', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:29:49.933', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'158', N'0', N'202001051536288786', N'4200000472202001059907769542', N'92015207', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:36:38.380', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:36:28.857', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'159', N'0', N'202001051537153708', N'4200000479202001055190541600', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:37:26.353', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:37:15.817', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'160', N'0', N'202001051538101782', N'4200000472202001059624873580', N'92015203', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:38:20.617', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:38:10.567', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'161', N'0', N'202001051540574286', N'4200000475202001057216175819', N'92015203', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:41:06.713', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:40:57.497', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'162', N'0', N'202001051541309120', N'4200000477202001057893431017', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:41:40.673', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:41:30.353', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'163', N'0', N'202001051542357999', N'4200000493202001054336645099', N'92015210', N'1', N'疲劳恢复', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:42:44.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:42:35.117', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'164', N'0', N'202001051543193510', N'4200000482202001053255905692', N'92015203', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:43:30.167', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:43:19.823', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'165', N'0', N'202001051543585095', N'4200000498202001055239913327', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:44:09.393', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:43:58.610', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'166', N'0', N'202001051546397903', N'4200000493202001051345470629', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-05 15:46:49.617', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-05 15:46:39.640', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'167', N'0', N'202001051549224096', N'', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-05 15:49:22.587', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'168', N'0', N'202001051549461980', N'4200000501202001058984810602', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'3', N'2020-01-05 15:49:55.573', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-05 15:49:46.317', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'169', N'0', N'202001061612204634', N'4200000482202001060125183598', N'92000271', N'4', N'酸痛改善', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-06 16:12:26.547', N'', N'', N'', N'.02', N'.02', N'.02', N'1', N'2020-01-06 16:12:20.697', N'2020-01-06 16:12:26.547', N'2020-01-06 16:14:29.917')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'170', N'0', N'202001061614561788', N'4200000499202001062047965787', N'92000271', N'6', N'调理气血', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-06 16:15:19.777', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-06 16:14:56.877', N'2020-01-06 16:15:19.777', N'2020-01-06 16:18:22.513')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'171', N'0', N'202001061617063964', N'4200000495202001067513957527', N'92015200', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-07 15:51:30.427', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-06 16:17:06.373', N'2020-01-07 15:51:30.427', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'172', N'0', N'202001061644358839', N'', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-06 16:44:35.233', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'173', N'0', N'202001061646066956', N'', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-06 16:46:06.187', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'174', N'0', N'202001061653508468', N'4200000494202001066985111599', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'3', N'2020-01-06 16:54:30.410', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-06 16:53:50.663', N'2020-01-06 16:54:30.410', N'2020-01-06 16:55:32.473')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'175', N'0', N'202001091123386843', N'4200000476202001094376437763', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-09 11:23:46.160', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-09 11:23:38.320', N'2020-01-09 11:23:46.160', N'2020-01-09 11:26:49.077')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'176', N'0', N'202001091148249410', N'4200000491202001092661065665', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-10 11:22:59.750', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-09 11:48:24.833', N'2020-01-10 11:22:59.750', N'2020-01-10 11:24:02.420')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'177', N'0', N'202001091410415562', N'4200000495202001092343092274', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-09 14:10:48.000', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-09 14:10:41.190', N'2020-01-09 14:10:48.000', N'2020-01-09 14:13:50.243')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'178', N'0', N'202001091429389673', N'4200000477202001099007078361', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-09 14:29:45.563', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-09 14:29:38.920', N'2020-01-09 14:29:45.563', N'2020-01-09 14:32:48.040')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'179', N'0', N'202001091433005665', N'4200000494202001098682565860', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-09 14:33:22.537', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-09 14:33:00.920', N'2020-01-09 14:33:22.537', N'2020-01-09 14:36:24.970')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'180', N'0', N'202001091509505822', N'', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-09 15:09:50.267', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'181', N'0', N'202001091510002016', N'4200000480202001094713040229', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-09 15:10:22.243', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-09 15:10:00.547', N'2020-01-09 15:10:22.243', N'2020-01-09 15:15:25.130')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'182', N'0', N'202001131537335289', N'4200000483202001132360337182', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-13 17:11:49.780', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-13 15:37:33.550', N'2020-01-13 17:11:49.780', N'2020-01-13 17:12:51.830')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'183', N'0', N'202001131538182370', N'4200000488202001130027303026', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-13 16:12:32.203', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-13 15:38:18.133', N'2020-01-13 16:12:32.203', N'2020-01-13 16:13:35.767')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'184', N'0', N'202001131542545537', N'2020011322001418721408553691', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-01-13 15:43:01.857', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-13 15:42:54.417', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'185', N'0', N'202001131549122985', N'4200000485202001135550827361', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-13 15:49:33.923', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-13 15:49:12.250', N'2020-01-13 15:49:33.923', N'2020-01-13 15:51:37.480')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'186', N'0', N'202001131550154808', N'4200000493202001137650682409', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-13 15:50:37.193', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-13 15:50:15.787', N'2020-01-13 15:50:37.193', N'2020-01-13 15:51:39.923')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'187', N'0', N'202001141523193400', N'4200000486202001143782691118', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 15:23:25.413', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 15:23:19.527', N'2020-01-14 15:23:25.413', N'2020-01-14 15:24:27.910')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'188', N'0', N'202001141537378664', N'4200000485202001143302218733', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 15:41:47.257', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-14 15:37:37.420', N'2020-01-14 15:41:47.257', N'2020-01-14 15:43:49.803')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'189', N'0', N'202001141540179116', N'4200000485202001144391863447', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 15:54:28.213', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-14 15:40:17.447', N'2020-01-14 15:54:28.213', N'2020-01-14 15:55:31.223')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'190', N'0', N'202001141543223850', N'4200000497202001148165129908', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 15:44:31.437', N'', N'', N'', N'.01', N'.01', N'.01', N'4', N'2020-01-14 15:43:22.067', N'2020-01-14 15:44:31.437', N'2020-01-14 15:45:34.050')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'191', N'0', N'202001141615156883', N'4200000482202001148796307565', N'92000271', N'4', N'酸痛改善', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:15:38.620', N'', N'', N'', N'.02', N'.02', N'.02', N'1', N'2020-01-14 16:15:15.900', N'2020-01-14 16:15:38.620', N'2020-01-14 16:17:41.653')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'192', N'0', N'202001141615476603', N'4200000475202001143523680946', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:16:10.100', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:15:47.910', N'2020-01-14 16:16:10.100', N'2020-01-14 16:17:12.193')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'193', N'0', N'202001141618436900', N'4200000484202001144640362523', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:19:05.650', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:18:43.480', N'2020-01-14 16:19:05.650', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'194', N'0', N'202001141628268811', N'4200000487202001144557282024', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:28:48.243', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:28:26.157', N'2020-01-14 16:28:48.243', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'195', N'0', N'202001141629059237', N'4200000479202001145518460685', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:29:38.920', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:29:05.877', N'2020-01-14 16:29:38.920', N'2020-01-14 16:30:41.203')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'196', N'0', N'202001141632465173', N'4200000493202001143628616034', N'92000271', N'4', N'酸痛改善', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:33:07.743', N'', N'', N'', N'.02', N'.02', N'.02', N'1', N'2020-01-14 16:32:46.943', N'2020-01-14 16:33:07.743', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'197', N'0', N'202001141635081825', N'4200000475202001149746301476', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:35:29.053', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:35:08.403', N'2020-01-14 16:35:29.053', N'2020-01-14 16:36:31.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'198', N'0', N'202001141638006754', N'4200000491202001143906394609', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:39:08.357', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:38:00.173', N'2020-01-14 16:39:08.357', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'199', N'0', N'202001141639396925', N'4200000483202001145363155438', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:40:47.927', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:39:39.250', N'2020-01-14 16:40:47.927', N'2020-01-14 16:42:03.403')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'200', N'0', N'202001141642313953', N'4200000481202001144508375552', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:42:53.033', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:42:31.917', N'2020-01-14 16:42:53.033', N'2020-01-14 16:43:55.130')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'201', N'0', N'202001141646063608', N'4200000481202001142017653308', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:47:15.387', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:46:06.033', N'2020-01-14 16:47:15.387', N'2020-01-14 16:48:18.083')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'202', N'0', N'202001141647088847', N'4200000487202001147928182105', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:47:31.940', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:47:08.513', N'2020-01-14 16:47:31.940', N'2020-01-14 16:48:35.343')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'203', N'0', N'202001141652343962', N'4200000482202001147661795172', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:52:40.610', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:52:34.510', N'2020-01-14 16:52:40.610', N'2020-01-14 16:53:43.827')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'204', N'0', N'202001141652547547', N'4200000483202001149967999395', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:53:17.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:52:54.423', N'2020-01-14 16:53:17.047', N'2020-01-14 16:54:19.297')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'205', N'0', N'202001141653295205', N'4200000475202001142440964573', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:53:36.817', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:53:29.913', N'2020-01-14 16:53:36.817', N'2020-01-14 16:54:38.837')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'206', N'0', N'202001141655113658', N'4200000483202001143061060817', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:56:21.020', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:55:11.870', N'2020-01-14 16:56:21.020', N'2020-01-14 16:57:23.823')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'207', N'0', N'202001141657248631', N'4200000492202001142394959559', N'92000271', N'4', N'酸痛改善', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:58:01.683', N'', N'', N'', N'.02', N'.02', N'.02', N'1', N'2020-01-14 16:57:24.117', N'2020-01-14 16:58:01.683', N'2020-01-14 17:00:04.323')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'208', N'0', N'202001141658277443', N'4200000482202001144222318285', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 16:58:48.037', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 16:58:27.460', N'2020-01-14 16:58:48.037', N'2020-01-14 17:03:51.177')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'209', N'0', N'202001141701483935', N'4200000495202001140152284211', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:02:09.823', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:01:48.163', N'2020-01-14 17:02:09.823', N'2020-01-14 17:03:12.300')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'210', N'0', N'202001141703139972', N'4200000472202001145732091570', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:04:22.190', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:03:13.483', N'2020-01-14 17:04:22.190', N'2020-01-14 17:05:25.410')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'211', N'0', N'202001141706538793', N'4200000483202001149100330393', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:08:02.097', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:06:53.930', N'2020-01-14 17:08:02.097', N'2020-01-14 17:09:04.483')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'212', N'0', N'202001141709484477', N'4200000476202001146115444048', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:10:11.943', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:09:48.570', N'2020-01-14 17:10:11.943', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'213', N'0', N'202001141712312958', N'4200000475202001143600505833', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:13:08.630', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:12:31.120', N'2020-01-14 17:13:08.630', N'2020-01-14 17:14:10.620')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'214', N'0', N'202001141714211146', N'4200000498202001145547539503', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:14:44.153', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:14:21.913', N'2020-01-14 17:14:44.153', N'2020-01-14 17:15:46.200')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'215', N'0', N'202001141717339219', N'4200000479202001146237486371', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:17:54.367', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:17:33.060', N'2020-01-14 17:17:54.367', N'2020-01-14 17:19:04.307')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'216', N'0', N'202001141720216679', N'4200000478202001147832646173', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:34:34.873', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:20:21.790', N'2020-01-14 17:34:34.873', N'2020-01-14 17:35:38.183')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'217', N'0', N'202001141725306277', N'4200000478202001141375712315', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:25:52.023', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:25:30.690', N'2020-01-14 17:25:52.023', N'2020-01-14 17:27:02.157')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'218', N'0', N'202001141727166398', N'4200000496202001149785306944', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:27:54.000', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:27:16.030', N'2020-01-14 17:27:54.000', N'2020-01-14 17:30:05.810')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'219', N'0', N'202001141731245901', N'4200000488202001145193416616', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:31:46.393', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:31:24.160', N'2020-01-14 17:31:46.393', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'220', N'0', N'202001141735547300', N'4200000476202001141470314876', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:36:15.557', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:35:54.783', N'2020-01-14 17:36:15.557', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'221', N'0', N'202001141738076286', N'4200000496202001141734969270', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:38:28.380', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:38:07.187', N'2020-01-14 17:38:28.380', N'2020-01-14 17:39:40.100')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'222', N'0', N'202001141740335078', N'4200000495202001147840765756', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:40:55.840', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:40:33.437', N'2020-01-14 17:40:55.840', N'2020-01-14 17:42:32.643')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'223', N'0', N'202001141751095032', N'4200000474202001147533182031', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:51:31.267', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:51:09.947', N'2020-01-14 17:51:31.267', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'224', N'0', N'202001141753427506', N'4200000477202001142718323892', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:54:51.523', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:53:42.380', N'2020-01-14 17:54:51.523', N'2020-01-14 17:55:09.297')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'225', N'0', N'202001141754252516', N'4200000490202001146345297139', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:54:49.363', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:54:25.983', N'2020-01-14 17:54:49.363', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'226', N'0', N'202001141755126438', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-01-14 17:55:12.960', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'227', N'0', N'202001141755279698', N'4200000492202001141777917862', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:55:51.200', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:55:27.480', N'2020-01-14 17:55:51.200', N'2020-01-14 17:56:53.333')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'228', N'0', N'202001141756313651', N'4200000477202001145530314963', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:56:53.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:56:31.580', N'2020-01-14 17:56:53.123', N'2020-01-14 17:57:55.443')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'229', N'0', N'202001141757362560', N'4200000475202001142960491677', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 17:57:57.793', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 17:57:36.037', N'2020-01-14 17:57:57.793', N'2020-01-14 17:59:00.063')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'230', N'0', N'202001141801238919', N'4200000477202001146491630283', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:05:33.407', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:01:23.353', N'2020-01-14 18:05:33.407', N'2020-01-14 18:10:36.750')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'231', N'0', N'202001141804019117', N'4200000489202001144596339045', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:04:24.297', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:04:01.823', N'2020-01-14 18:04:24.297', N'2020-01-14 18:05:34.067')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'232', N'0', N'202001141806553986', N'4200000491202001145653754060', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:07:17.410', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:06:55.623', N'2020-01-14 18:07:17.410', N'2020-01-14 18:08:20.140')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'233', N'0', N'202001141807272764', N'4200000495202001149980805413', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:07:49.717', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:07:27.220', N'2020-01-14 18:07:49.717', N'2020-01-14 18:08:51.490')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'234', N'0', N'202001141810501799', N'4200000499202001146972067893', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:11:28.727', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:10:50.303', N'2020-01-14 18:11:28.727', N'2020-01-14 18:12:31.350')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'235', N'0', N'202001141811144922', N'4200000473202001143600030090', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:11:38.107', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:11:14.437', N'2020-01-14 18:11:38.107', N'2020-01-14 18:12:40.660')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'236', N'0', N'202001141812596673', N'4200000496202001142682978059', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:13:20.177', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:12:59.020', N'2020-01-14 18:13:20.177', N'2020-01-14 18:14:22.577')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'237', N'0', N'202001141814463723', N'4200000495202001149793498496', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:15:07.323', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:14:46.010', N'2020-01-14 18:15:07.323', N'2020-01-14 18:17:09.500')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'238', N'0', N'202001141816349999', N'4200000473202001143801697634', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:16:55.593', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:16:34.897', N'2020-01-14 18:16:55.593', N'2020-01-14 18:17:57.857')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'239', N'0', N'202001141818252416', N'4200000473202001141646699090', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:18:47.163', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:18:25.700', N'2020-01-14 18:18:47.163', N'2020-01-14 18:19:50.630')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'240', N'0', N'202001141819596246', N'4200000498202001140620941234', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:20:20.967', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:19:59.640', N'2020-01-14 18:20:20.967', N'2020-01-14 18:25:31.207')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'241', N'0', N'202001141823029754', N'4200000499202001142908899749', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:23:23.550', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:23:02.403', N'2020-01-14 18:23:23.550', N'2020-01-14 18:25:26.110')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'242', N'0', N'202001141823461378', N'4200000481202001147603866936', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:24:09.100', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:23:46.723', N'2020-01-14 18:24:09.100', N'2020-01-14 18:25:11.560')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'243', N'0', N'202001141824565440', N'4200000487202001149628848352', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:25:17.910', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:24:56.147', N'2020-01-14 18:25:17.910', N'2020-01-14 18:26:19.807')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'244', N'0', N'202001141829064854', N'4200000484202001149047779699', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:29:27.867', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:29:06.407', N'2020-01-14 18:29:27.867', N'2020-01-14 18:30:30.233')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'245', N'0', N'202001141829339363', N'4200000473202001143387455591', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:29:56.890', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:29:33.877', N'2020-01-14 18:29:56.890', N'2020-01-14 18:31:07.417')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'246', N'0', N'202001141830157503', N'4200000488202001145704806590', N'92000271', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:30:21.473', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:30:15.213', N'2020-01-14 18:30:21.473', N'2020-01-14 18:31:24.237')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'247', N'0', N'202001141830556772', N'4200000492202001140262048986', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:31:18.440', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:30:55.910', N'2020-01-14 18:31:18.440', N'2020-01-14 18:32:28.397')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'248', N'0', N'202001141832177283', N'4200000490202001145656420162', N'92015201', N'3', N'气血调理', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:32:38.160', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:32:17.170', N'2020-01-14 18:32:38.160', N'2020-01-14 18:34:40.843')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'249', N'0', N'202001141836108795', N'4200000475202001142602821495', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:36:32.907', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:36:10.847', N'2020-01-14 18:36:32.907', N'2020-01-14 18:37:35.710')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'250', N'0', N'202001141838048996', N'4200000483202001145124074675', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-14 18:38:25.717', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-14 18:38:04.463', N'2020-01-14 18:38:25.717', N'2020-01-14 18:43:28.520')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'251', N'0', N'202001151035171429', N'4200000478202001159110709372', N'92015202', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-15 10:35:39.860', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-15 10:35:17.523', N'2020-01-15 10:35:39.860', N'2020-01-15 10:37:42.910')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'252', N'0', N'202001151036009326', N'4200000492202001156884740115', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-15 10:36:07.960', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-15 10:36:00.303', N'2020-01-15 10:36:07.960', N'2020-01-15 10:39:10.487')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'253', N'0', N'202001151045542355', N'2020011522001418721409412539', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-01-15 10:46:43.790', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-15 10:45:54.137', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'254', N'0', N'202001151057163905', N'2020011522001418721409434259', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-01-15 10:57:23.350', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-15 10:57:16.297', NULL, N'2020-01-15 10:58:29.793')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'255', N'0', N'202001151058275180', N'2020011522001418721409428288', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'1', N'.00', N'2', N'2020-01-15 10:58:32.343', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-15 10:58:27.400', NULL, N'2020-01-15 11:01:38.377')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'256', N'0', N'202001160944147382', N'4200000475202001164485804751', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-16 09:44:36.397', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-16 09:44:14.407', N'2020-01-16 09:44:36.397', N'2020-01-16 09:45:46.907')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'257', N'0', N'202001160945059244', N'4200000483202001167953229498', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-16 09:49:16.900', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-16 09:45:05.997', N'2020-01-16 09:49:16.900', N'2020-01-16 09:50:19.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'258', N'0', N'202001160946476784', N'2020011622001418721409916099', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'1', N'.00', N'2', N'2020-01-16 09:46:52.857', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-16 09:46:47.240', NULL, N'2020-01-16 09:49:57.210')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'259', N'0', N'202001161737239985', N'4200000491202001166039797363', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-16 17:37:44.733', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-16 17:37:23.370', N'2020-01-16 17:37:44.733', N'2020-01-16 17:38:47.153')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'260', N'0', N'202001161737513364', N'4200000495202001160115265153', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-16 17:38:30.990', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-16 17:37:51.707', N'2020-01-16 17:38:30.990', N'2020-01-16 17:39:43.597')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'261', N'0', N'202001170847242152', N'4200000475202001174579095913', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-01-17 08:47:33.240', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-17 08:47:24.973', N'2020-01-17 08:47:33.240', N'2020-01-17 08:48:36.793')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'262', N'0', N'202001171225535232', N'4200000494202001170868835370', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-17 12:26:00.270', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-17 12:25:53.167', N'2020-01-17 12:26:00.270', N'2020-01-17 12:29:02.483')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'263', N'0', N'202001171230036432', N'4200000474202001172162868714', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-17 12:30:24.823', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-17 12:30:03.127', N'2020-01-17 12:30:24.823', N'2020-01-17 12:33:27.483')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'264', N'0', N'202001181615522618', N'4200000477202001184259502814', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-18 16:16:00.377', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-18 16:15:52.557', N'2020-01-18 16:16:00.377', N'2020-01-18 16:31:03.203')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'265', N'0', N'202001181632424966', N'4200000479202001183980231228', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-18 16:32:50.750', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-18 16:32:42.827', N'2020-01-18 16:32:50.750', N'2020-01-18 16:47:53.330')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'266', N'0', N'202001181652414060', N'4200000485202001181378200821', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-18 16:52:52.417', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-18 16:52:41.727', N'2020-01-18 16:52:52.417', N'2020-01-18 17:07:54.550')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'267', N'0', N'202001190916078207', N'4200000474202001195892744306', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-19 09:16:32.063', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-19 09:16:07.897', N'2020-01-19 09:16:32.063', N'2020-01-19 09:31:35.070')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'268', N'0', N'202001261226346375', N'4200000480202001260120861868', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-26 12:26:45.093', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-26 12:26:34.407', N'2020-01-26 12:26:45.093', N'2020-01-26 12:41:48.130')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'269', N'0', N'202001261403269298', N'4200000484202001268279312002', N'92015208', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-01-26 14:03:52.733', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-01-26 14:03:26.997', N'2020-01-26 14:03:52.733', N'2020-01-26 14:18:55.053')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'270', N'0', N'202002150845397338', N'4200000485202002152730290267', N'92015219', N'3', N'气血调理', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-02-15 08:46:01.493', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-02-15 08:45:39.307', N'2020-02-15 08:46:01.493', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'271', N'0', N'202002150846223957', N'', N'92015219', N'3', N'气血调理', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-02-15 08:46:22.267', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'272', N'0', N'202003121143444109', N'4200000482202003121584655440', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:58:03.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:43:44.270', N'2020-03-12 11:58:03.123', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'273', N'0', N'202003121151111785', N'', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-03-12 11:51:11.147', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'274', N'0', N'202003121153368135', N'4200000496202003121692833706', N'92015206', N'5', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:57:47.620', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:53:36.893', N'2020-03-12 11:57:47.620', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'275', N'0', N'202003121154248130', N'4200000486202003123372887655', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:58:36.797', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:54:24.977', N'2020-03-12 11:58:36.797', N'2020-03-12 12:08:39.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'276', N'0', N'202003121156406286', N'4200000493202003122932732051', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:57:01.910', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:56:40.680', N'2020-03-12 11:57:01.910', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'277', N'0', N'202003121157599888', N'4200000485202003120538966131', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:58:07.740', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:57:59.687', N'2020-03-12 11:58:07.740', N'2020-03-12 12:08:10.097')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'278', N'0', N'202003121158317627', N'4200000495202003122987578592', N'92015209', N'6', N'调理气血', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-03-12 11:58:36.670', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 11:58:31.683', N'2020-03-12 11:58:36.670', N'2020-03-12 12:13:39.063')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'279', N'0', N'202003121535119065', N'4200000472202003126046854917', N'92015206', N'1', N'疲劳恢复', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-03-12 15:35:32.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-03-12 15:35:11.047', N'2020-03-12 15:35:32.957', N'2020-03-12 15:45:35.943')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'280', N'0', N'202004150935021164', N'4200000538202004150862160262', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-04-15 09:35:25.953', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-15 09:35:02.577', N'2020-04-15 09:35:25.953', N'2020-04-15 09:45:28.587')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'281', N'0', N'202004150937042259', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-04-15 09:37:04.077', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'282', N'0', N'202004151020247324', N'', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-04-15 10:20:24.697', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'283', N'0', N'202004211716512672', N'2020042122001418721440434326', N'92015201', N'1', N'疲劳恢复', N'1', N'0', N'', N'1', N'.00', N'2', N'2020-04-21 17:16:59.297', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-21 17:16:51.343', NULL, N'2020-04-21 17:27:07.307')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'284', N'0', N'202004251023213453', N'', N'92015201', N'17', N'舒适体验', N'1', N'0', N'', N'1', N'.00', N'0', NULL, N'', N'', N'', N'9.90', N'.00', N'9.90', N'1', N'2020-04-25 10:23:21.570', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'285', N'0', N'202004271020184327', N'4200000525202004274269108532', N'92000271', N'4', N'酸痛改善', N'1', N'0', N'', N'0', N'.00', N'2', N'2020-04-27 10:20:26.413', N'', N'', N'', N'.02', N'.02', N'.02', N'1', N'2020-04-27 10:20:18.753', N'2020-04-27 10:20:26.413', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'286', N'0', N'202004271049416360', N'4200000530202004279288489274', N'92015204', N'17', N'舒适体验', N'2', N'0', N'', N'0', N'.00', N'3', N'2020-04-27 10:49:56.257', N'', N'', N'', N'9.90', N'9.90', N'9.90', N'4', N'2020-04-27 10:49:41.340', N'2020-04-27 10:49:56.257', N'2020-04-27 11:04:58.683')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'287', N'0', N'202004271400577454', N'', N'92015204', N'18', N'气血调理', N'2', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'15.00', N'.00', N'15.00', N'1', N'2020-04-27 14:00:57.307', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'288', N'0', N'202004271632134176', N'4200000527202004273565835785', N'92015204', N'17', N'舒适体验', N'2', N'0', N'', N'0', N'.00', N'3', N'2020-04-27 16:32:22.473', N'', N'', N'', N'9.90', N'9.90', N'9.90', N'4', N'2020-04-27 16:32:13.450', N'2020-04-27 16:32:22.473', N'2020-04-27 16:47:25.130')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'289', N'0', N'202004271702051472', N'4200000525202004278037108296', N'92015204', N'4', N'样机', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-04-27 17:02:20.927', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-27 17:02:05.183', N'2020-04-27 17:02:20.927', N'2020-04-27 17:22:23.883')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'290', N'0', N'202004281054131819', N'4200000525202004281939751895', N'92015210', N'4', N'样机', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 10:54:21.400', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 10:54:13.717', N'2020-04-28 10:54:21.400', N'2020-04-28 11:14:23.567')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'291', N'0', N'202004281533017466', N'4200000541202004283646560875', N'92015210', N'4', N'样机', N'3', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 15:33:25.473', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 15:33:01.590', N'2020-04-28 15:33:25.473', N'2020-04-28 15:54:10.497')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'292', N'0', N'202004282215332289', N'4200000550202004281782536804', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 22:15:48.020', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 22:15:33.590', N'2020-04-28 22:15:48.020', N'2020-04-28 22:35:51.247')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'293', N'0', N'202004282240596411', N'4200000535202004282634560861', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 22:41:24.407', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 22:40:59.197', N'2020-04-28 22:41:24.407', N'2020-04-28 23:01:26.487')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'294', N'0', N'202004282305335787', N'4200000546202004282531200304', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 23:05:40.390', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 23:05:33.797', N'2020-04-28 23:05:40.390', N'2020-04-28 23:25:43.227')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'295', N'0', N'202004282327158918', N'4200000534202004286012620763', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-28 23:27:29.053', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-28 23:27:15.717', N'2020-04-28 23:27:29.053', N'2020-04-28 23:47:32.790')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'296', N'0', N'202004291230363865', N'4200000532202004299352360067', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-29 12:30:50.860', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-29 12:30:36.513', N'2020-04-29 12:30:50.860', N'2020-04-29 12:50:53.397')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'297', N'0', N'202004300035428720', N'4200000549202004303188846556', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-30 00:35:53.093', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 00:35:42.347', N'2020-04-30 00:35:53.093', N'2020-04-30 00:55:56.217')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'298', N'0', N'202004301348464992', N'', N'92015272', N'4', N'样机', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-04-30 13:48:46.667', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'299', N'0', N'202004301348568200', N'4200000542202004301849005760', N'92015272', N'4', N'样机', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 13:49:22.760', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 13:48:56.723', N'2020-04-30 13:49:22.760', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'300', N'0', N'202004301405522926', N'4200000545202004305284531242', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 14:07:25.937', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 14:05:52.923', N'2020-04-30 14:07:25.937', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'301', N'0', N'202004301409282830', N'4200000526202004303126010758', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 14:09:42.037', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 14:09:28.763', N'2020-04-30 14:09:42.037', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'302', N'0', N'202004301431401834', N'4200000544202004302952011072', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 14:32:07.853', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 14:31:40.353', N'2020-04-30 14:32:07.853', N'2020-04-30 14:34:10.940')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'303', N'0', N'202004301435474276', N'4200000549202004307221288353', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 14:50:03.867', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 14:35:47.093', N'2020-04-30 14:50:03.867', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'304', N'0', N'202004301517319853', N'4200000537202004307694618848', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 15:22:09.917', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:17:31.060', N'2020-04-30 15:22:09.917', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'305', N'0', N'202004301521542948', N'4200000549202004300656526600', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 15:22:05.313', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:21:54.460', N'2020-04-30 15:22:05.313', N'2020-04-30 15:24:08.997')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'306', N'0', N'202004301525306679', N'4200000529202004308240066497', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 15:26:42.643', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:25:30.500', N'2020-04-30 15:26:42.643', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'307', N'0', N'202004301530099745', N'4200000538202004308896905064', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 15:31:31.523', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:30:09.837', N'2020-04-30 15:31:31.523', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'308', N'0', N'202004301532023901', N'4200000522202004302675780334', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 16:06:18.910', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:32:02.643', N'2020-04-30 16:06:18.910', N'2020-04-30 16:08:21.720')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'309', N'0', N'202004301545176762', N'4200000522202004307366285038', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 15:49:31.873', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 15:45:17.443', N'2020-04-30 15:49:31.873', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'310', N'0', N'202004301611048084', N'4200000540202004306554020443', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 16:11:19.310', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 16:11:04.470', N'2020-04-30 16:11:19.310', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'311', N'0', N'202004301625076926', N'4200000544202004308164166634', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-04-30 16:39:21.870', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 16:25:07.340', N'2020-04-30 16:39:21.870', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'312', N'0', N'202004302259507009', N'4200000551202004304290468340', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-04-30 23:00:01.473', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-04-30 22:59:50.907', N'2020-04-30 23:00:01.473', N'2020-04-30 23:20:04.147')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'313', N'0', N'202005012204435445', N'4200000542202005019158037256', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-05-01 22:04:52.643', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-01 22:04:43.110', N'2020-05-01 22:04:52.643', N'2020-05-01 22:24:55.550')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'314', N'0', N'202005021329379542', N'4200000546202005023407662673', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-02 13:29:47.880', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-02 13:29:37.733', N'2020-05-02 13:29:47.880', N'2020-05-02 13:31:51.310')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'315', N'0', N'202005021337103693', N'4200000539202005026817771664', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-02 13:37:19.713', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-02 13:37:10.283', N'2020-05-02 13:37:19.713', N'2020-05-02 13:39:22.980')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'316', N'0', N'202005021343141664', N'4200000534202005021304562130', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-02 13:43:26.603', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-02 13:43:14.533', N'2020-05-02 13:43:26.603', N'2020-05-02 13:45:29.723')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'317', N'0', N'202005021347166844', N'4200000536202005025197996125', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-02 13:51:31.227', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-02 13:47:16.710', N'2020-05-02 13:51:31.227', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'318', N'0', N'202005021352195441', N'4200000527202005024809010914', N'92015272', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-02 13:52:34.053', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-02 13:52:19.390', N'2020-05-02 13:52:34.053', N'2020-05-02 13:54:37.690')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'319', N'0', N'202005051232094164', N'4200000524202005053306426585', N'92015227', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 12:32:19.583', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 12:32:09.587', N'2020-05-05 12:32:19.583', N'2020-05-05 12:34:22.960')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'320', N'0', N'202005051236421567', N'4200000531202005055951528075', N'92015227', N'21', N'厂家测试1', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 12:36:50.107', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 12:36:42.160', N'2020-05-05 12:36:50.107', N'2020-05-05 12:39:52.737')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'321', N'0', N'202005051316493485', N'4200000547202005056151259746', N'92015227', N'21', N'厂家测试1', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 13:16:59.663', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 13:16:49.267', N'2020-05-05 13:16:59.663', N'2020-05-05 13:20:03.003')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'322', N'0', N'202005051605431151', N'4200000542202005059862505762', N'92015227', N'21', N'厂家测试1', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 16:05:57.427', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 16:05:43.487', N'2020-05-05 16:05:57.427', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'323', N'0', N'202005051632354349', N'4200000533202005059237511800', N'92015227', N'21', N'厂家测试1', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 16:36:53.400', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 16:32:35.060', N'2020-05-05 16:36:53.400', N'2020-05-05 16:40:00.313')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'324', N'0', N'202005051636298480', N'4200000526202005059774795624', N'92015227', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-05 16:36:37.227', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-05 16:36:29.533', N'2020-05-05 16:36:37.227', N'2020-05-05 16:38:40.070')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'325', N'0', N'202005061437015303', N'4200000528202005067259751032', N'92015227', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-06 14:37:27.620', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-06 14:37:01.323', N'2020-05-06 14:37:27.620', N'2020-05-06 14:39:30.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'326', N'0', N'202005061441389880', N'4200000524202005066727007249', N'92015227', N'20', N'厂家测试', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-06 14:41:54.093', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-06 14:41:39.023', N'2020-05-06 14:41:54.093', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'327', N'0', N'202005062343125159', N'4200000547202005065290462659', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-05-06 23:43:22.893', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-06 23:43:12.727', N'2020-05-06 23:43:22.893', N'2020-05-07 00:03:26.170')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'328', N'0', N'202005070828359230', N'4200000528202005079854469223', N'92015268', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 08:28:55.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 08:28:35.080', N'2020-05-07 08:28:55.047', N'2020-05-07 08:30:58.313')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'329', N'0', N'202005070832498461', N'4200000525202005079782772025', N'92015685', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 08:33:04.343', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 08:32:49.003', N'2020-05-07 08:33:04.343', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'330', N'0', N'202005070836136599', N'4200000533202005077348397669', N'92015698', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 08:36:27.113', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 08:36:13.277', N'2020-05-07 08:36:27.113', N'2020-05-07 08:38:30.593')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'331', N'0', N'202005070842107093', N'4200000547202005078116765187', N'92015508', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 08:42:24.557', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 08:42:10.410', N'2020-05-07 08:42:24.557', N'2020-05-07 08:44:27.690')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'332', N'0', N'202005071006011892', N'4200000548202005073379795621', N'92015514', N'17', N'舒适体验', N'9', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:06:27.940', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:06:01.077', N'2020-05-07 10:06:27.940', N'2020-05-07 10:08:28.493')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'333', N'0', N'202005071012526196', N'4200000543202005076265223401', N'92015301', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:13:06.490', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:12:52.137', N'2020-05-07 10:13:06.490', N'2020-05-07 10:15:09.953')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'334', N'0', N'202005071013292796', N'4200000527202005071664379692', N'92015514', N'17', N'舒适体验', N'9', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:13:55.673', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:13:29.133', N'2020-05-07 10:13:55.673', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'335', N'0', N'202005071023219708', N'4200000529202005072903774678', N'92015361', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:23:40.220', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:23:21.120', N'2020-05-07 10:23:40.220', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'336', N'0', N'202005071027304808', N'4200000537202005072400066517', N'92015520', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:27:43.373', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:27:30.133', N'2020-05-07 10:27:43.373', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'337', N'0', N'202005071028253849', N'4200000544202005077546795859', N'92015361', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:28:40.853', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:28:25.487', N'2020-05-07 10:28:40.853', N'2020-05-07 10:30:44.127')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'338', N'0', N'202005071037314583', N'4200000529202005074586879885', N'92015684', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:37:47.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:37:31.397', N'2020-05-07 10:37:47.123', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'339', N'0', N'202005071047407508', N'4200000534202005076778235813', N'92015366', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:47:58.933', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:47:40.903', N'2020-05-07 10:47:58.933', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'340', N'0', N'202005071055504972', N'4200000540202005071422438526', N'92015317', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 10:56:04.673', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 10:55:50.077', N'2020-05-07 10:56:04.673', N'2020-05-07 10:58:07.270')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'341', N'0', N'202005071305006821', N'4200000551202005074792652158', N'92015287', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:05:16.657', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:05:00.667', N'2020-05-07 13:05:16.657', N'2020-05-07 13:07:19.080')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'342', N'0', N'202005071305406236', N'4200000548202005071747828191', N'92015288', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:05:56.443', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:05:40.900', N'2020-05-07 13:05:56.443', N'2020-05-07 13:07:58.847')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'343', N'0', N'202005071312487026', N'4200000539202005075557205559', N'92015658', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:13:04.293', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:12:48.037', N'2020-05-07 13:13:04.293', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'344', N'0', N'202005071313154431', N'4200000535202005074300642705', N'92015249', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:13:30.280', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:13:15.017', N'2020-05-07 13:13:30.280', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'345', N'0', N'202005071323308347', N'4200000533202005077239011894', N'92015318', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:23:51.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:23:30.373', N'2020-05-07 13:23:51.957', N'2020-05-07 13:25:54.310')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'346', N'0', N'202005071324116476', N'4200000541202005077662338215', N'92015616', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:24:33.383', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:24:11.620', N'2020-05-07 13:24:33.383', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'347', N'0', N'202005071325112307', N'4200000537202005073681394646', N'92015656', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:25:50.190', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:25:11.733', N'2020-05-07 13:25:50.190', N'2020-05-07 13:28:35.873')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'348', N'0', N'202005071326156097', N'4200000536202005078573301976', N'92015355', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:26:41.160', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:26:15.753', N'2020-05-07 13:26:41.160', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'349', N'0', N'202005071327181045', N'4200000535202005078760971534', N'92015247', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:27:43.930', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:27:18.100', N'2020-05-07 13:27:43.930', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'350', N'0', N'202005071328153029', N'4200000542202005074989891197', N'92015370', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:29:28.290', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:28:15.887', N'2020-05-07 13:29:28.290', N'2020-05-07 13:32:08.333')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'351', N'0', N'202005071329118371', N'4200000522202005073558659591', N'92015347', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:29:27.057', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:29:11.677', N'2020-05-07 13:29:27.057', N'2020-05-07 13:31:30.513')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'352', N'0', N'202005071329542261', N'4200000538202005070569643216', N'92015589', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:30:10.497', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:29:54.760', N'2020-05-07 13:30:10.497', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'353', N'0', N'202005071331007052', N'4200000549202005075435542987', N'92015355', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:31:16.427', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:31:00.207', N'2020-05-07 13:31:16.427', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'354', N'0', N'202005071335091210', N'4200000542202005074471360523', N'92015370', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:35:19.590', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:35:09.590', N'2020-05-07 13:35:19.590', N'2020-05-07 13:37:22.150')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'355', N'0', N'202005071341406871', N'4200000550202005077516873437', N'92015681', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:41:55.190', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:41:40.980', N'2020-05-07 13:41:55.190', N'2020-05-07 13:43:58.547')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'356', N'0', N'202005071342235717', N'4200000535202005078050704220', N'92015517', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:42:42.273', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:42:23.703', N'2020-05-07 13:42:42.273', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'357', N'0', N'202005071343121824', N'4200000549202005079197649160', N'92015682', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:43:22.397', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:43:12.173', N'2020-05-07 13:43:22.397', N'2020-05-07 13:45:25.587')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'358', N'0', N'202005071343592761', N'4200000544202005074668025905', N'92015666', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:45:12.570', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:43:59.863', N'2020-05-07 13:45:12.570', N'2020-05-07 13:47:14.020')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'359', N'0', N'202005071344481096', N'4200000549202005073969005852', N'92015640', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:45:03.673', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:44:48.103', N'2020-05-07 13:45:03.673', N'2020-05-07 13:47:07.337')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'360', N'0', N'202005071345452168', N'4200000550202005073848745347', N'92015402', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:46:01.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:45:45.407', N'2020-05-07 13:46:01.047', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'361', N'0', N'202005071346273213', N'4200000538202005077158362478', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:46:53.627', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:46:27.570', N'2020-05-07 13:46:53.627', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'362', N'0', N'202005071347066113', N'4200000551202005074966417893', N'92015304', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:47:26.553', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:47:06.187', N'2020-05-07 13:47:26.553', N'2020-05-07 13:49:44.933')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'363', N'0', N'202005071350476350', N'4200000542202005077208160439', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 13:51:02.140', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 13:50:47.057', N'2020-05-07 13:51:02.140', N'2020-05-07 13:53:05.403')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'364', N'0', N'202005071403488643', N'4200000525202005070079748417', N'92015685', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:04:03.107', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:03:48.320', N'2020-05-07 14:04:03.107', N'2020-05-07 14:06:05.427')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'365', N'0', N'202005071406137123', N'4200000541202005071220110874', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:06:28.290', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:06:13.487', N'2020-05-07 14:06:28.290', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'366', N'0', N'202005071413457360', N'4200000548202005070486227964', N'92015523', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:13:59.637', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:13:45.137', N'2020-05-07 14:13:59.637', N'2020-05-07 14:16:02.860')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'367', N'0', N'202005071414314694', N'', N'92015299', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 14:14:31.947', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'368', N'0', N'202005071414592630', N'4200000548202005074606258489', N'92015299', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:15:13.773', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:14:59.353', N'2020-05-07 14:15:13.773', N'2020-05-07 14:17:16.377')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'369', N'0', N'202005071415413861', N'4200000522202005070225661371', N'92015300', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:15:56.060', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:15:41.347', N'2020-05-07 14:15:56.060', N'2020-05-07 14:17:58.943')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'370', N'0', N'202005071416261166', N'4200000536202005074046874316', N'92015665', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:17:40.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:16:26.647', N'2020-05-07 14:17:40.123', N'2020-05-07 14:19:42.320')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'371', N'0', N'202005071417388075', N'4200000537202005070843562497', N'92015518', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:18:51.050', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:17:38.617', N'2020-05-07 14:18:51.050', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'372', N'0', N'202005071418065039', N'4200000545202005071536631910', N'92015377', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:18:20.407', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:18:06.100', N'2020-05-07 14:18:20.407', N'2020-05-07 14:20:23.593')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'373', N'0', N'202005071418556005', N'4200000531202005076046551512', N'92015331', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:19:38.393', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:18:55.293', N'2020-05-07 14:19:38.393', N'2020-05-07 14:21:32.370')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'374', N'0', N'202005071419498873', N'4200000529202005074123416046', N'92015342', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:20:05.517', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:19:49.640', N'2020-05-07 14:20:05.517', N'2020-05-07 14:22:08.383')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'375', N'0', N'202005071424139997', N'4200000541202005077832579530', N'92015377', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:28:27.080', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:24:13.150', N'2020-05-07 14:28:27.080', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'376', N'0', N'202005071432237363', N'4200000530202005074229685134', N'92015224', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:32:49.370', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:32:23.397', N'2020-05-07 14:32:49.370', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'377', N'0', N'202005071433105011', N'4200000550202005073182262372', N'92015251', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:33:49.417', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:33:10.473', N'2020-05-07 14:33:49.417', N'2020-05-07 14:35:52.030')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'378', N'0', N'202005071433585947', N'4200000542202005070304334023', N'92015214', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:48:15.467', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:33:58.160', N'2020-05-07 14:48:15.467', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'379', N'0', N'202005071434361261', N'4200000527202005077102782634', N'92015636', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:34:51.630', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:34:36.193', N'2020-05-07 14:34:51.630', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'380', N'0', N'202005071435307359', N'4200000529202005074230259798', N'92015638', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:35:44.983', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:35:30.517', N'2020-05-07 14:35:44.983', N'2020-05-07 14:37:47.977')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'381', N'0', N'202005071436099317', N'4200000548202005070135680212', N'92015239', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:36:35.273', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:36:09.550', N'2020-05-07 14:36:35.273', N'2020-05-07 14:38:38.400')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'382', N'0', N'202005071436519105', N'4200000527202005077892103519', N'92015558', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:37:06.330', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:36:51.857', N'2020-05-07 14:37:06.330', N'2020-05-07 14:39:09.027')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'383', N'0', N'202005071437361738', N'4200000533202005077802220665', N'92015218', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:37:56.370', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:37:36.253', N'2020-05-07 14:37:56.370', N'2020-05-07 14:39:59.537')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'384', N'0', N'202005071439316395', N'4200000541202005072189107853', N'92015636', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:43:45.850', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:39:31.797', N'2020-05-07 14:43:45.850', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'385', N'0', N'202005071445222699', N'4200000548202005076784315588', N'92015636', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:45:47.360', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:45:22.177', N'2020-05-07 14:45:47.360', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'386', N'0', N'202005071453218683', N'4200000530202005071078795499', N'92015424', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:57:57.290', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:53:21.150', N'2020-05-07 14:57:57.290', N'2020-05-07 15:00:00.600')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'387', N'0', N'202005071455094292', N'4200000551202005079954930965', N'92015245', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:55:23.687', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:55:09.203', N'2020-05-07 14:55:23.687', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'388', N'0', N'202005071456516684', N'4200000536202005070108038537', N'92015699', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:57:06.703', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:56:51.867', N'2020-05-07 14:57:06.703', N'2020-05-07 14:59:09.997')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'389', N'0', N'202005071457365402', N'4200000536202005077950763036', N'92015696', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:58:00.677', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:57:36.547', N'2020-05-07 14:58:00.677', N'2020-05-07 15:00:17.860')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'390', N'0', N'202005071458345032', N'4200000537202005075635088160', N'92015417', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:59:00.300', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:58:34.140', N'2020-05-07 14:59:00.300', N'2020-05-07 15:01:48.723')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'391', N'0', N'202005071459424139', N'4200000532202005070728911373', N'92015267', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 14:59:56.390', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 14:59:42.930', N'2020-05-07 14:59:56.390', N'2020-05-07 15:01:59.250')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'392', N'0', N'202005071500288687', N'4200000541202005079922164295', N'92015521', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:01:04.417', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:00:28.250', N'2020-05-07 15:01:04.417', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'393', N'0', N'202005071501091517', N'4200000533202005077388731946', N'92015263', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:01:23.403', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:01:09.277', N'2020-05-07 15:01:23.403', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'394', N'0', N'202005071508449085', N'4200000530202005077309102017', N'92015341', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:08:58.250', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:08:44.310', N'2020-05-07 15:08:58.250', N'2020-05-07 15:11:00.960')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'395', N'0', N'202005071512357641', N'4200000526202005073813892202', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:12:50.870', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:12:35.397', N'2020-05-07 15:12:50.870', N'2020-05-07 15:14:53.540')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'396', N'0', N'202005071512551799', N'4200000537202005075535294216', N'92015656', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:13:15.240', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:12:55.203', N'2020-05-07 15:13:15.240', N'2020-05-07 15:15:18.800')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'397', N'0', N'202005071513326113', N'4200000551202005073185199762', N'92015514', N'17', N'舒适体验', N'9', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:13:53.237', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:13:32.083', N'2020-05-07 15:13:53.237', N'2020-05-07 15:15:56.110')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'398', N'0', N'202005071514152417', N'4200000527202005071016216310', N'92015301', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:14:47.590', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:14:15.903', N'2020-05-07 15:14:47.590', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'399', N'0', N'202005071514551961', N'4200000548202005076349308310', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:15:15.657', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:14:55.327', N'2020-05-07 15:15:15.657', N'2020-05-07 15:17:18.730')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'400', N'0', N'202005071515034923', N'4200000548202005073224468410', N'92015355', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:15:19.377', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:15:03.727', N'2020-05-07 15:15:19.377', N'2020-05-07 15:17:22.857')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'401', N'0', N'202005071515276913', N'4200000534202005078672074733', N'92015366', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:15:47.090', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:15:27.030', N'2020-05-07 15:15:47.090', N'2020-05-07 15:17:50.067')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'402', N'0', N'202005071516053041', N'4200000526202005075684346760', N'92015361', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:16:25.947', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:16:05.440', N'2020-05-07 15:16:25.947', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'403', N'0', N'202005071516378307', N'4200000550202005070956204663', N'92015520', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:16:56.277', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:16:37.397', N'2020-05-07 15:16:56.277', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'404', N'0', N'202005071517056871', N'4200000547202005070246318512', N'92015318', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:17:20.940', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:17:05.323', N'2020-05-07 15:17:20.940', N'2020-05-07 15:19:23.653')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'405', N'0', N'202005071517386552', N'4200000523202005071413570714', N'92015249', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:17:49.130', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:17:38.327', N'2020-05-07 15:17:49.130', N'2020-05-07 15:19:51.807')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'406', N'0', N'202005071518074547', N'4200000531202005072581899410', N'92015347', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:18:23.057', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:18:07.547', N'2020-05-07 15:18:23.057', N'2020-05-07 15:20:25.560')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'407', N'0', N'202005071520333998', N'4200000548202005079301564583', N'92015214', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:25:21.133', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:20:33.833', N'2020-05-07 15:25:21.133', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'408', N'0', N'202005071525517519', N'4200000541202005072112965282', N'92015214', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:40:07.773', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:25:51.860', N'2020-05-07 15:40:07.773', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'409', N'0', N'202005071532486730', N'4200000546202005077879623579', N'92015685', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:34:01.217', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:32:48.523', N'2020-05-07 15:34:01.217', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'410', N'0', N'202005071544116338', N'4200000536202005075379116337', N'92015239', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:44:27.063', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:44:11.610', N'2020-05-07 15:44:27.063', N'2020-05-07 15:46:29.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'411', N'0', N'202005071546041779', N'4200000549202005072482506780', N'92015567', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:46:19.623', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:46:04.580', N'2020-05-07 15:46:19.623', N'2020-05-07 15:48:22.120')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'412', N'0', N'202005071546498712', N'4200000525202005078528543077', N'92015568', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:47:15.660', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:46:49.210', N'2020-05-07 15:47:15.660', N'2020-05-07 15:49:22.613')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'413', N'0', N'202005071547335360', N'4200000532202005070177132277', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:48:31.720', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:47:33.663', N'2020-05-07 15:48:31.720', N'2020-05-07 15:50:35.050')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'414', N'0', N'202005071548174392', N'4200000524202005079453935493', N'92015343', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:48:32.727', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:48:17.417', N'2020-05-07 15:48:32.727', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'415', N'0', N'202005071549047684', N'4200000545202005072161603093', N'92015657', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:49:18.727', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:49:04.093', N'2020-05-07 15:49:18.727', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'416', N'0', N'202005071549543379', N'4200000544202005076407226788', N'92015282', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:50:36.840', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:49:54.597', N'2020-05-07 15:50:36.840', N'2020-05-07 15:53:05.227')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'417', N'0', N'202005071550447730', N'4200000536202005079793103972', N'92015683', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:51:57.693', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:50:44.520', N'2020-05-07 15:51:57.693', N'2020-05-07 15:54:30.977')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'418', N'0', N'202005071551434317', N'4200000530202005070331158175', N'92015226', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:51:59.213', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:51:43.187', N'2020-05-07 15:51:59.213', N'2020-05-07 15:54:01.947')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'419', N'0', N'202005071554495127', N'4200000537202005070842401965', N'92015683', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 15:55:03.467', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 15:54:49.480', N'2020-05-07 15:55:03.467', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'420', N'0', N'202005071605108060', N'4200000539202005078281866092', N'92015359', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:05:30.267', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:05:10.590', N'2020-05-07 16:05:30.267', N'2020-05-07 16:07:33.737')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'421', N'0', N'202005071606011497', N'4200000527202005076994167272', N'92015689', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:06:16.630', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:06:01.023', N'2020-05-07 16:06:16.630', N'2020-05-07 16:08:19.740')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'422', N'0', N'202005071606463631', N'4200000540202005079459660058', N'92015319', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:07:01.307', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:06:46.747', N'2020-05-07 16:07:01.307', N'2020-05-07 16:09:03.880')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'423', N'0', N'202005071607359582', N'4200000539202005076096736598', N'92015641', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:08:02.667', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:07:35.897', N'2020-05-07 16:08:02.667', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'424', N'0', N'202005071608416846', N'4200000536202005070078004356', N'92015562', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:08:56.390', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:08:41.350', N'2020-05-07 16:08:56.390', N'2020-05-07 16:10:59.280')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'425', N'0', N'202005071609309568', N'4200000543202005070930072390', N'92015566', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:09:47.173', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:09:30.533', N'2020-05-07 16:09:47.173', N'2020-05-07 16:11:50.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'426', N'0', N'202005071610285968', N'4200000525202005074301469966', N'92015348', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:12:00.263', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:10:28.140', N'2020-05-07 16:12:00.263', N'2020-05-07 16:14:02.787')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'427', N'0', N'202005071611097641', N'4200000535202005075335403503', N'92015570', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:11:35.187', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:11:09.623', N'2020-05-07 16:11:35.187', N'2020-05-07 16:14:01.877')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'428', N'0', N'202005071627126143', N'4200000547202005076185365333', N'92015243', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:27:27.760', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:27:12.493', N'2020-05-07 16:27:27.760', N'2020-05-07 16:29:30.170')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'429', N'0', N'202005071628026951', N'4200000538202005075196306394', N'92015697', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:28:19.297', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:28:02.167', N'2020-05-07 16:28:19.297', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'430', N'0', N'202005071628531233', N'4200000533202005076328968827', N'92015324', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:29:12.267', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:28:53.297', N'2020-05-07 16:29:12.267', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'431', N'0', N'202005071629402453', N'4200000529202005077268596053', N'92015352', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:31:15.740', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:29:40.923', N'2020-05-07 16:31:15.740', N'2020-05-07 16:33:18.790')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'432', N'0', N'202005071630469030', N'4200000550202005071351578658', N'92015276', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:32:00.763', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:30:46.653', N'2020-05-07 16:32:00.763', N'2020-05-07 16:34:22.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'433', N'0', N'202005071630477961', N'', N'92015276', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 16:30:47.860', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'434', N'0', N'202005071631403557', N'', N'92015275', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 16:31:40.647', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'435', N'0', N'202005071631429229', N'4200000547202005078627153582', N'92015275', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:31:57.450', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:31:42.957', N'2020-05-07 16:31:57.450', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'436', N'0', N'202005071632309351', N'4200000527202005071418153259', N'92015266', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:32:56.887', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:32:30.273', N'2020-05-07 16:32:56.887', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'437', N'0', N'202005071633034861', N'4200000544202005074635616648', N'92015375', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:37:40.763', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:33:03.690', N'2020-05-07 16:37:40.763', N'2020-05-07 16:39:43.063')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'438', N'0', N'202005071646525550', N'4200000536202005078701207643', N'92015589', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:51:07.697', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:46:52.620', N'2020-05-07 16:51:07.697', N'2020-05-07 16:53:10.863')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'439', N'0', N'202005071647234672', N'4200000532202005070550275786', N'92015218', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:48:56.440', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:47:23.687', N'2020-05-07 16:48:56.440', N'2020-05-07 16:51:00.083')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'440', N'0', N'202005071648012243', N'4200000530202005079535728040', N'92015681', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:49:15.007', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:48:01.793', N'2020-05-07 16:49:15.007', N'2020-05-07 16:51:54.493')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'441', N'0', N'202005071648398028', N'4200000547202005078648833592', N'92015288', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:49:06.867', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:48:39.817', N'2020-05-07 16:49:06.867', N'2020-05-07 16:51:13.753')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'442', N'0', N'202005071649091351', N'4200000541202005075163849846', N'92015558', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:50:22.240', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:49:09.360', N'2020-05-07 16:50:22.240', N'2020-05-07 16:52:47.053')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'443', N'0', N'202005071650057036', N'4200000528202005070530974249', N'92015638', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:50:28.367', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:50:05.713', N'2020-05-07 16:50:28.367', N'2020-05-07 16:52:30.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'444', N'0', N'202005071650352900', N'4200000531202005078039553026', N'92015517', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:51:01.733', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:50:35.287', N'2020-05-07 16:51:01.733', N'2020-05-07 16:53:04.407')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'445', N'0', N'202005071651106998', N'4200000532202005079138743888', N'92015523', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:51:37.610', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:51:10.737', N'2020-05-07 16:51:37.610', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'446', N'0', N'202005071651571633', N'4200000532202005078042721490', N'92015287', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:52:16.523', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:51:57.990', N'2020-05-07 16:52:16.523', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'447', N'0', N'202005071652333444', N'4200000528202005074470114196', N'92015636', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 16:52:43.790', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 16:52:33.053', N'2020-05-07 16:52:43.790', N'2020-05-07 16:54:46.513')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'448', N'0', N'202005071731473210', N'4200000523202005071875593631', N'92015248', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:32:03.973', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:31:47.327', N'2020-05-07 17:32:03.973', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'449', N'0', N'202005071732477040', N'4200000537202005075332674945', N'92015302', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:33:02.920', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:32:47.167', N'2020-05-07 17:33:02.920', N'2020-05-07 17:35:05.820')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'450', N'0', N'202005071733422881', N'4200000532202005072503562031', N'92015305', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:34:03.567', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:33:42.857', N'2020-05-07 17:34:03.567', N'2020-05-07 17:36:04.873')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'451', N'0', N'202005071734508732', N'', N'92015349', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 17:34:50.337', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'452', N'0', N'202005071735171495', N'4200000551202005073434438490', N'92015349', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:35:31.993', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:35:17.953', N'2020-05-07 17:35:31.993', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'453', N'0', N'202005071736043030', N'4200000535202005076515925014', N'92015572', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:36:15.997', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:36:04.650', N'2020-05-07 17:36:15.997', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'454', N'0', N'202005071737017273', N'4200000532202005075494201600', N'92015274', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:37:16.037', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:37:01.303', N'2020-05-07 17:37:16.037', N'2020-05-07 17:39:18.427')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'455', N'0', N'202005071737466992', N'4200000546202005074617858060', N'92015505', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:37:57.220', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:37:46.217', N'2020-05-07 17:37:57.220', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'456', N'0', N'202005071738451979', N'4200000537202005078284764497', N'92015273', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:39:15.980', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:38:45.637', N'2020-05-07 17:39:15.980', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'457', N'0', N'202005071741454026', N'4200000535202005074308444247', N'92015349', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:42:00.487', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:41:45.840', N'2020-05-07 17:42:00.487', N'2020-05-07 17:44:04.160')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'458', N'0', N'202005071743031200', N'4200000543202005078575487442', N'92015572', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:43:30.613', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:43:03.987', N'2020-05-07 17:43:30.613', N'2020-05-07 17:46:19.063')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'459', N'0', N'202005071744315821', N'4200000526202005076381422911', N'92015274', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:44:45.337', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:44:31.597', N'2020-05-07 17:44:45.337', N'2020-05-07 17:46:47.207')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'460', N'0', N'202005071751152579', N'4200000526202005074338175361', N'92015370', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 17:51:30.213', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 17:51:15.507', N'2020-05-07 17:51:30.213', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'461', N'0', N'202005071804218092', N'4200000544202005073720985198', N'92015251', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:04:36.240', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:04:21.193', N'2020-05-07 18:04:36.240', N'2020-05-07 18:06:39.143')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'462', N'0', N'202005071804471297', N'4200000537202005074698736636', N'92015424', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:04:58.800', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:04:47.093', N'2020-05-07 18:04:58.800', N'2020-05-07 18:07:02.290')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'463', N'0', N'202005071805317258', N'4200000547202005073253120779', N'92015681', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:06:08.320', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:05:31.797', N'2020-05-07 18:06:08.320', N'2020-05-07 18:08:11.537')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'464', N'0', N'202005071806315631', N'', N'92015666', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:06:31.947', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'465', N'0', N'202005071806322619', N'4200000545202005076858131683', N'92015666', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:06:51.860', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:06:32.107', N'2020-05-07 18:06:51.860', N'2020-05-07 18:08:59.270')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'466', N'0', N'202005071807021554', N'4200000540202005076636719641', N'92015518', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:07:51.273', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:07:02.123', N'2020-05-07 18:07:51.273', N'2020-05-07 18:10:05.717')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'467', N'0', N'202005071808002597', N'', N'92015239', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:08:00.317', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'468', N'0', N'202005071808005355', N'', N'92015239', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:08:00.503', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'469', N'0', N'202005071808006641', N'4200000525202005070571708990', N'92015239', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:08:11.340', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:08:00.690', N'2020-05-07 18:08:11.340', N'2020-05-07 18:10:14.867')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'470', N'0', N'202005071808323064', N'', N'92015224', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:08:32.187', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'471', N'0', N'202005071808326106', N'4200000533202005072340386528', N'92015224', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:08:52.357', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:08:32.333', N'2020-05-07 18:08:52.357', N'2020-05-07 18:11:00.137')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'472', N'0', N'202005071809073148', N'', N'92015665', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:09:07.603', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'473', N'0', N'202005071809075218', N'', N'92015665', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:09:07.823', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'474', N'0', N'202005071809072206', N'4200000537202005075349353100', N'92015665', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:09:25.277', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:09:08.017', N'2020-05-07 18:09:25.277', N'2020-05-07 18:11:28.753')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'475', N'0', N'202005071809504723', N'', N'92015682', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:09:50.177', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'476', N'0', N'202005071809501022', N'4200000522202005073070975770', N'92015682', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:10:07.403', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:09:50.397', N'2020-05-07 18:10:07.403', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'477', N'0', N'202005071810225033', N'', N'92015341', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-07 18:10:22.510', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'478', N'0', N'202005071810226318', N'4200000523202005074393683059', N'92015341', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:10:35.297', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:10:22.680', N'2020-05-07 18:10:35.297', N'2020-05-07 18:12:39.003')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'479', N'0', N'202005071827111310', N'4200000522202005070354692071', N'92015505', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:27:22.230', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:27:11.677', N'2020-05-07 18:27:22.230', N'2020-05-07 18:29:25.717')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'480', N'0', N'202005071835009288', N'4200000543202005077952356203', N'92015377', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-07 18:35:15.243', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-07 18:35:00.693', N'2020-05-07 18:35:15.243', N'2020-05-07 18:37:18.270')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'481', N'0', N'202005080707083648', N'4200000542202005089385912342', N'92015247', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:07:19.250', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:07:08.623', N'2020-05-08 07:07:19.250', N'2020-05-08 07:09:21.327')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'482', N'0', N'202005080708009658', N'4200000541202005084307705082', N'92015346', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:09:16.913', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:08:00.830', N'2020-05-08 07:09:16.913', N'2020-05-08 07:11:20.020')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'483', N'0', N'202005080709114840', N'4200000525202005086102092571', N'92015300', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:09:26.153', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:09:11.680', N'2020-05-08 07:09:26.153', N'2020-05-08 07:11:29.147')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'484', N'0', N'202005080709531586', N'4200000548202005082866162564', N'92015331', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:10:04.113', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:09:53.850', N'2020-05-08 07:10:04.113', N'2020-05-08 07:12:06.910')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'485', N'0', N'202005080710314771', N'', N'92015299', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:10:31.243', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'486', N'0', N'202005080710314300', N'4200000551202005087364412192', N'92015299', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:12:05.127', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:10:31.430', N'2020-05-08 07:12:05.127', N'2020-05-08 07:14:08.330')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'487', N'0', N'202005080711229338', N'', N'92015342', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:11:22.513', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'488', N'0', N'202005080711222408', N'', N'92015342', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:11:22.750', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'489', N'0', N'202005080711226923', N'4200000524202005087325745814', N'92015342', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:11:37.767', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:11:22.897', N'2020-05-08 07:11:37.767', N'2020-05-08 07:13:41.223')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'490', N'0', N'202005080712064984', N'', N'92015616', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:12:06.743', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'491', N'0', N'202005080712067742', N'4200000536202005085358245570', N'92015616', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:12:34.163', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:12:06.943', N'2020-05-08 07:12:34.163', N'2020-05-08 07:14:40.993')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'492', N'0', N'202005080712497687', N'', N'92015304', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:12:49.970', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'493', N'0', N'202005080712502230', N'4200000542202005084877114781', N'92015304', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:13:06.620', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:12:50.227', N'2020-05-08 07:13:06.620', N'2020-05-08 07:15:09.917')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'494', N'0', N'202005080713357249', N'', N'92015658', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:13:35.347', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'495', N'0', N'202005080713351008', N'4200000545202005082704521579', N'92015658', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:14:14.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:13:35.537', N'2020-05-08 07:14:14.633', N'2020-05-08 07:15:50.190')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'496', N'0', N'202005080714119777', N'4200000523202005080825804908', N'92015699', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:14:31.953', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:14:11.887', N'2020-05-08 07:14:31.953', N'2020-05-08 07:16:35.250')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'497', N'0', N'202005080727115643', N'4200000546202005089754924225', N'92015402', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:27:36.930', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:27:11.090', N'2020-05-08 07:27:36.930', N'2020-05-08 07:29:50.323')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'498', N'0', N'202005080727479397', N'4200000532202005086814758909', N'92015567', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:28:30.413', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:27:47.170', N'2020-05-08 07:28:30.413', N'2020-05-08 07:30:02.667')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'499', N'0', N'202005080728208951', N'4200000540202005084535677295', N'92015684', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:32:58.413', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:28:20.960', N'2020-05-08 07:32:58.413', N'2020-05-08 07:35:01.780')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'500', N'0', N'202005080728532205', N'', N'92015317', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:28:53.103', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'501', N'0', N'202005080729245214', N'4200000544202005080448393503', N'92015317', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:29:36.583', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:29:25.013', N'2020-05-08 07:29:36.583', N'2020-05-08 07:31:39.487')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'502', N'0', N'202005080730124206', N'4200000528202005088801589812', N'92015267', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:30:28.343', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:30:12.863', N'2020-05-08 07:30:28.343', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'503', N'0', N'202005080730444330', N'4200000522202005083946414011', N'92015640', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:31:11.617', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:30:44.160', N'2020-05-08 07:31:11.617', N'2020-05-08 07:33:52.117')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'504', N'0', N'202005080731228486', N'4200000529202005087289509581', N'92015657', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:31:33.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:31:22.637', N'2020-05-08 07:31:33.123', N'2020-05-08 07:33:36.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'505', N'0', N'202005080731527609', N'4200000546202005084643297239', N'92015568', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:32:03.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:31:52.600', N'2020-05-08 07:32:03.780', N'2020-05-08 07:34:07.380')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'506', N'0', N'202005080732251019', N'4200000540202005082081216498', N'92015521', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:32:56.610', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:32:25.390', N'2020-05-08 07:32:56.610', N'2020-05-08 07:35:23.663')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'507', N'0', N'202005080733082279', N'', N'92015343', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 07:33:08.897', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'508', N'0', N'202005080733337056', N'4200000543202005085591184753', N'92015343', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:33:48.307', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:33:33.933', N'2020-05-08 07:33:48.307', N'2020-05-08 07:35:51.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'509', N'0', N'202005080736354304', N'4200000530202005080007222686', N'92015684', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:36:50.857', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:36:35.217', N'2020-05-08 07:36:50.857', N'2020-05-08 07:38:53.590')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'510', N'0', N'202005080755469289', N'4200000543202005088905653903', N'92015661', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:56:02.560', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:55:46.697', N'2020-05-08 07:56:02.560', N'2020-05-08 07:58:04.950')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'511', N'0', N'202005080756312266', N'4200000535202005088275704286', N'92015322', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:56:50.240', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:56:31.680', N'2020-05-08 07:56:50.240', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'512', N'0', N'202005080757176657', N'4200000546202005082574164817', N'92015396', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:57:57.057', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:57:17.480', N'2020-05-08 07:57:57.057', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'513', N'0', N'202005080758139614', N'4200000548202005087409910970', N'92015495', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:58:24.803', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:58:13.987', N'2020-05-08 07:58:24.803', N'2020-05-08 08:00:27.973')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'514', N'0', N'202005080758511885', N'4200000550202005082529611573', N'92015383', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:59:11.740', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:58:51.850', N'2020-05-08 07:59:11.740', N'2020-05-08 08:01:14.913')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'515', N'0', N'202005080759439838', N'4200000546202005083095962507', N'92015382', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 07:59:58.913', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 07:59:43.860', N'2020-05-08 07:59:58.913', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'516', N'0', N'202005080800292157', N'4200000530202005083016525996', N'92015330', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:00:45.717', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:00:29.197', N'2020-05-08 08:00:45.717', N'2020-05-08 08:02:48.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'517', N'0', N'202005080801011652', N'4200000530202005088555363777', N'92015401', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:01:17.030', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:01:01.157', N'2020-05-08 08:01:17.030', N'2020-05-08 08:03:20.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'518', N'0', N'202005080811492992', N'4200000539202005082641015608', N'92015662', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:12:04.807', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:11:49.447', N'2020-05-08 08:12:04.807', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'519', N'0', N'202005080812215971', N'4200000526202005089108483997', N'92015505', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:12:31.717', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:12:21.027', N'2020-05-08 08:12:31.717', N'2020-05-08 08:14:34.660')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'520', N'0', N'202005080812583228', N'4200000531202005084260760924', N'92015668', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:13:21.143', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:12:58.863', N'2020-05-08 08:13:21.143', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'521', N'0', N'202005080813472908', N'4200000529202005082208833472', N'92015290', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:14:02.653', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:13:47.897', N'2020-05-08 08:14:02.653', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'522', N'0', N'202005080814326298', N'4200000533202005088675555384', N'92015354', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:14:50.187', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:14:32.280', N'2020-05-08 08:14:50.187', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'523', N'0', N'202005080815209305', N'4200000539202005082316488914', N'92015373', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:15:40.453', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:15:20.200', N'2020-05-08 08:15:40.453', N'2020-05-08 08:17:42.493')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'524', N'0', N'202005080816311100', N'4200000547202005086543645054', N'92015509', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:16:41.350', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:16:31.543', N'2020-05-08 08:16:41.350', N'2020-05-08 08:18:43.920')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'525', N'0', N'202005080817136032', N'4200000550202005080953124772', N'92015384', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:17:42.510', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:17:13.327', N'2020-05-08 08:17:42.510', N'2020-05-08 08:19:58.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'526', N'0', N'202005080829001858', N'4200000544202005081394038173', N'92015212', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:29:16.663', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:29:00.947', N'2020-05-08 08:29:16.663', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'527', N'0', N'202005080829477564', N'4200000527202005087593712066', N'92015298', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:30:01.930', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:29:47.223', N'2020-05-08 08:30:01.930', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'528', N'0', N'202005080830518312', N'4200000546202005086761208441', N'92015506', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:31:11.290', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:30:51.103', N'2020-05-08 08:31:11.290', N'2020-05-08 08:33:14.100')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'529', N'0', N'202005080831394890', N'4200000545202005086197373355', N'92015235', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:31:53.867', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:31:39.393', N'2020-05-08 08:31:53.867', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'530', N'0', N'202005080832364176', N'4200000526202005086632608941', N'92015628', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:33:02.180', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:32:36.400', N'2020-05-08 08:33:02.180', N'2020-05-08 08:35:39.203')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'531', N'0', N'202005080833327074', N'4200000540202005082248720235', N'92015303', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:33:46.703', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:33:32.257', N'2020-05-08 08:33:46.703', N'2020-05-08 08:35:50.063')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'532', N'0', N'202005080834293602', N'4200000526202005083734049952', N'92015228', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:35:08.550', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:34:29.090', N'2020-05-08 08:35:08.550', N'2020-05-08 08:37:42.867')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'533', N'0', N'202005080835187639', N'4200000542202005086026045685', N'92015278', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:35:33.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:35:18.770', N'2020-05-08 08:35:33.780', N'2020-05-08 08:37:36.480')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'534', N'0', N'202005080843428899', N'4200000544202005080248712292', N'92015220', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:43:58.580', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:43:42.647', N'2020-05-08 08:43:58.580', N'2020-05-08 08:46:01.907')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'535', N'0', N'202005080844262946', N'4200000530202005080090389397', N'92015358', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:44:38.223', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:44:26.433', N'2020-05-08 08:44:38.223', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'536', N'0', N'202005080845224117', N'4200000548202005086751146293', N'92015222', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:45:42.767', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:45:22.650', N'2020-05-08 08:45:42.767', N'2020-05-08 08:47:51.553')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'537', N'0', N'202005080846128184', N'4200000529202005086439448557', N'92015223', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:46:40.697', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:46:12.620', N'2020-05-08 08:46:40.697', N'2020-05-08 08:49:18.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'538', N'0', N'202005080846539199', N'4200000541202005081998156673', N'92015379', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:47:14.190', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:46:53.337', N'2020-05-08 08:47:14.190', N'2020-05-08 08:49:17.423')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'539', N'0', N'202005080847529957', N'4200000536202005084176706921', N'92015215', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:48:12.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:47:52.703', N'2020-05-08 08:48:12.633', N'2020-05-08 08:50:14.860')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'540', N'0', N'202005080848447781', N'4200000528202005080876181049', N'92015510', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:49:00.680', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:48:44.087', N'2020-05-08 08:49:00.680', N'2020-05-08 08:51:04.040')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'541', N'0', N'202005080849264056', N'4200000523202005083634485367', N'92015659', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:49:40.893', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:49:26.440', N'2020-05-08 08:49:40.893', N'2020-05-08 08:51:44.393')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'542', N'0', N'202005080850205168', N'4200000536202005084007242480', N'92015628', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:50:31.700', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:50:20.817', N'2020-05-08 08:50:31.700', N'2020-05-08 08:52:34.210')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'543', N'0', N'202005080858183408', N'4200000523202005089900317400', N'92015358', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:58:39.003', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:58:18.450', N'2020-05-08 08:58:39.003', N'2020-05-08 09:00:42.000')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'544', N'0', N'202005080858587309', N'4200000531202005089882280508', N'92015503', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 08:59:13.427', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:58:58.503', N'2020-05-08 08:59:13.427', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'545', N'0', N'202005080859483475', N'4200000541202005087110860362', N'92015234', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:00:03.690', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 08:59:48.797', N'2020-05-08 09:00:03.690', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'546', N'0', N'202005080900408857', N'4200000537202005086645758057', N'92015246', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:01:06.980', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:00:40.480', N'2020-05-08 09:01:06.980', N'2020-05-08 09:03:45.680')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'547', N'0', N'202005080901292579', N'4200000551202005088983578114', N'92015494', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:01:51.377', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:01:29.637', N'2020-05-08 09:01:51.377', N'2020-05-08 09:03:59.517')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'548', N'0', N'202005080902037119', N'4200000529202005080928056009', N'92015380', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:02:33.837', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:02:03.373', N'2020-05-08 09:02:33.837', N'2020-05-08 09:04:41.383')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'549', N'0', N'202005080902586474', N'4200000551202005085748874260', N'92015339', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:03:25.353', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:02:58.990', N'2020-05-08 09:03:25.353', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'550', N'0', N'202005080903519470', N'4200000551202005085174196009', N'92015374', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:04:07.400', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:03:51.370', N'2020-05-08 09:04:07.400', N'2020-05-08 09:06:10.230')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'551', N'0', N'202005080904579619', N'4200000542202005087586610535', N'92015565', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:05:24.107', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:04:57.420', N'2020-05-08 09:05:24.107', N'2020-05-08 09:07:35.273')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'552', N'0', N'202005080914392124', N'4200000522202005085023049754', N'92015694', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:15:10.680', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:14:39.900', N'2020-05-08 09:15:10.680', N'2020-05-08 09:17:44.977')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'553', N'0', N'202005080915196967', N'4200000534202005087589137191', N'92015381', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:15:30.263', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:15:19.547', N'2020-05-08 09:15:30.263', N'2020-05-08 09:17:33.213')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'554', N'0', N'202005080916139178', N'4200000530202005080982065968', N'92015357', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:16:27.513', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:16:13.050', N'2020-05-08 09:16:27.513', N'2020-05-08 09:18:30.483')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'555', N'0', N'202005080917013716', N'4200000527202005086965437782', N'92015255', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:18:14.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:17:01.403', N'2020-05-08 09:18:14.047', N'2020-05-08 09:20:17.577')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'556', N'0', N'202005080917341140', N'4200000550202005083987054258', N'92015368', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:18:02.507', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:17:34.340', N'2020-05-08 09:18:02.507', N'2020-05-08 09:19:51.033')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'557', N'0', N'202005080918567872', N'4200000527202005085332984140', N'92015372', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:19:22.207', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:18:56.827', N'2020-05-08 09:19:22.207', N'2020-05-08 09:22:03.417')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'558', N'0', N'202005080919362930', N'4200000548202005088745893954', N'92015376', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:19:51.997', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:19:36.397', N'2020-05-08 09:19:51.997', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'559', N'0', N'202005080920242423', N'4200000535202005085794960347', N'92015353', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:24:39.893', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:20:24.390', N'2020-05-08 09:24:39.893', N'2020-05-08 09:26:43.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'560', N'0', N'202005080926228590', N'4200000545202005089898820460', N'92015273', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:26:42.530', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:26:22.630', N'2020-05-08 09:26:42.530', N'2020-05-08 09:28:46.043')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'561', N'0', N'202005080929038795', N'4200000528202005082573114368', N'92015353', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:29:29.693', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:29:03.483', N'2020-05-08 09:29:29.693', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'562', N'0', N'202005080938384736', N'4200000529202005081629086202', N'92015559', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:38:57.790', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:38:38.127', N'2020-05-08 09:38:57.790', N'2020-05-08 09:40:59.967')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'563', N'0', N'202005080939329077', N'4200000537202005089931065843', N'92015242', N'17', N'舒适体验', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:39:43.210', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:39:32.483', N'2020-05-08 09:39:43.210', N'2020-05-08 09:41:46.080')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'564', N'0', N'202005080940196912', N'4200000531202005083390956971', N'92015655', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:40:33.663', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:40:19.417', N'2020-05-08 09:40:33.663', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'565', N'0', N'202005080941115364', N'', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 09:41:11.303', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'566', N'0', N'202005080941114893', N'', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 09:41:11.513', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'567', N'0', N'202005080941114422', N'4200000536202005083906415342', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:41:39.000', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:41:11.717', N'2020-05-08 09:41:39.000', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'568', N'0', N'202005080941498922', N'4200000541202005086032921700', N'92015378', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:43:02.703', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:41:49.573', N'2020-05-08 09:43:02.703', N'2020-05-08 09:44:28.567')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'569', N'0', N'202005080942276493', N'4200000544202005081907567513', N'92015350', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:42:44.337', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:42:27.667', N'2020-05-08 09:42:44.337', N'2020-05-08 09:44:47.713')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'570', N'0', N'202005080943134112', N'4200000532202005088387395575', N'92015364', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:43:34.533', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:43:13.240', N'2020-05-08 09:43:34.533', N'2020-05-08 09:45:36.967')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'571', N'0', N'202005080943474167', N'4200000527202005089692436375', N'92015555', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:44:03.647', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:43:47.140', N'2020-05-08 09:44:03.647', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'572', N'0', N'202005080958495522', N'4200000526202005080314172039', N'92015216', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:58:59.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:58:49.390', N'2020-05-08 09:58:59.957', N'2020-05-08 10:01:02.290')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'573', N'0', N'202005080959319011', N'4200000528202005082350239569', N'92015423', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 09:59:46.973', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 09:59:31.477', N'2020-05-08 09:59:46.973', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'574', N'0', N'202005081000161487', N'4200000540202005081243306313', N'92015325', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:00:37.013', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:00:16.377', N'2020-05-08 10:00:37.013', N'2020-05-08 10:02:39.930')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'575', N'0', N'202005081001018450', N'4200000536202005082346407306', N'92015237', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:01:15.887', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:01:01.317', N'2020-05-08 10:01:15.887', N'2020-05-08 10:03:17.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'576', N'0', N'202005081001454096', N'4200000533202005080556840369', N'92015338', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:02:05.447', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:01:45.537', N'2020-05-08 10:02:05.447', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'577', N'0', N'202005081002293472', N'4200000545202005086863620669', N'92015270', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:02:44.547', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:02:29.863', N'2020-05-08 10:02:44.547', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'578', N'0', N'202005081003155322', N'4200000539202005087294289684', N'92015369', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:03:31.453', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:03:15.647', N'2020-05-08 10:03:31.453', N'2020-05-08 10:05:34.517')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'579', N'0', N'202005081003566680', N'4200000543202005086221654966', N'92015286', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:04:11.787', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:03:56.857', N'2020-05-08 10:04:11.787', N'2020-05-08 10:06:15.140')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'580', N'0', N'202005081020305590', N'4200000538202005089438955231', N'92015238', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:20:53.293', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:20:30.960', N'2020-05-08 10:20:53.293', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'581', N'0', N'202005081023153655', N'4200000530202005083178547355', N'92015263', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:23:30.923', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:23:15.397', N'2020-05-08 10:23:30.923', N'2020-05-08 10:25:39.337')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'582', N'0', N'202005081024153814', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:15.833', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'583', N'0', N'202005081024169615', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:16.147', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'584', N'0', N'202005081024168359', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:16.290', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'585', N'0', N'202005081024164659', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:16.507', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'586', N'0', N'202005081024169958', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:16.733', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'587', N'0', N'202005081024163717', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:16.937', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'588', N'0', N'202005081024175787', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:17.157', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'589', N'0', N'202005081024178545', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:17.347', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'590', N'0', N'202005081024176602', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:17.533', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'591', N'0', N'202005081024178388', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:17.803', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'592', N'0', N'202005081024187289', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:18.703', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'593', N'0', N'202005081024186818', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:18.893', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'594', N'0', N'202005081024194874', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:19.080', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'595', N'0', N'202005081024194403', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:19.283', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'596', N'0', N'202005081024193932', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:19.503', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'597', N'0', N'202005081024199232', N'', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:24:19.697', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'598', N'0', N'202005081024192990', N'4200000547202005087445292229', N'92015345', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:24:30.650', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:24:19.887', N'2020-05-08 10:24:30.650', N'2020-05-08 10:26:34.043')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'599', N'0', N'202005081025516001', N'4200000542202005080123948424', N'92015371', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:26:00.330', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:25:51.480', N'2020-05-08 10:26:00.330', N'2020-05-08 10:28:03.903')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'600', N'0', N'202005081033362574', N'4200000543202005082104011711', N'92015368', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:33:45.767', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:33:36.447', N'2020-05-08 10:33:45.767', N'2020-05-08 10:35:48.950')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'601', N'0', N'202005081043293902', N'4200000538202005089434622599', N'92015213', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:43:41.630', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:43:29.483', N'2020-05-08 10:43:41.630', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'602', N'0', N'202005081044122748', N'4200000539202005082138330210', N'92015519', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:44:27.583', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:44:12.190', N'2020-05-08 10:44:27.583', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'603', N'0', N'202005081044598611', N'4200000545202005088127899779', N'92015360', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:45:20.750', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:44:59.230', N'2020-05-08 10:45:20.750', N'2020-05-08 10:47:24.043')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'604', N'0', N'202005081045369538', N'4200000526202005084270759253', N'92015496', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:45:51.567', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:45:36.517', N'2020-05-08 10:45:51.567', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'605', N'0', N'202005081046325880', N'4200000551202005088811194407', N'92015321', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:46:42.637', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:46:32.320', N'2020-05-08 10:46:42.637', N'2020-05-08 10:48:45.027')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'606', N'0', N'202005081047446048', N'4200000530202005089703213074', N'92015571', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:48:22.520', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:47:44.323', N'2020-05-08 10:48:22.520', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'607', N'0', N'202005081049331716', N'4200000527202005080553435417', N'92015213', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:49:48.377', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:49:33.023', N'2020-05-08 10:49:48.377', N'2020-05-08 10:51:56.293')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'608', N'0', N'202005081050377606', N'', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:50:37.567', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'609', N'0', N'202005081050379392', N'', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:50:37.853', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'610', N'0', N'202005081050387448', N'', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:50:38.050', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'611', N'0', N'202005081050416594', N'', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:50:41.783', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'612', N'0', N'202005081050421137', N'', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 10:50:42.043', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'613', N'0', N'202005081050422452', N'4200000545202005086483620499', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:50:56.793', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:50:42.527', N'2020-05-08 10:50:56.793', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'614', N'0', N'202005081051246255', N'4200000532202005083156246550', N'92015660', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 10:51:40.563', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 10:51:24.877', N'2020-05-08 10:51:40.563', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'615', N'0', N'202005081313335197', N'4200000536202005089969272470', N'92015414', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:28:14.090', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:13:33.033', N'2020-05-08 13:28:14.090', N'2020-05-08 13:20:14.577')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'616', N'0', N'202005081314258537', N'4200000531202005085061779700', N'92015415', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:15:07.013', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:14:25.957', N'2020-05-08 13:15:07.013', N'2020-05-08 13:16:42.340')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'617', N'0', N'202005081315247322', N'4200000527202005087508113887', N'92015356', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:15:50.443', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:15:24.073', N'2020-05-08 13:15:50.443', N'2020-05-08 13:18:00.043')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'618', N'0', N'202005081316288443', N'4200000538202005082226813399', N'92015561', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:50:46.417', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:16:28.843', N'2020-05-08 13:50:46.417', N'2020-05-08 13:22:49.703')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'619', N'0', N'202005081317309760', N'4200000546202005080023255953', N'92015688', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:18:12.313', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:17:30.227', N'2020-05-08 13:18:12.313', N'2020-05-08 13:20:15.237')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'620', N'0', N'202005081318263186', N'4200000522202005082026865512', N'92015415', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:18:42.360', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:18:26.297', N'2020-05-08 13:18:42.360', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'621', N'0', N'202005081319049002', N'4200000536202005080331722958', N'92015279', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:19:31.787', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:19:04.647', N'2020-05-08 13:19:31.787', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'622', N'0', N'202005081320145724', N'4200000522202005083963356628', N'92015344', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:20:29.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:20:14.133', N'2020-05-08 13:20:29.780', N'2020-05-08 13:22:32.423')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'623', N'0', N'202005081321197443', N'4200000522202005080456672323', N'92015557', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:21:48.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:21:19.107', N'2020-05-08 13:21:48.123', N'2020-05-08 13:24:35.957')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'624', N'0', N'202005081322362958', N'4200000524202005081517556146', N'92015414', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:22:51.160', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:22:36.193', N'2020-05-08 13:22:51.160', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'625', N'0', N'202005081323162374', N'4200000535202005085319849507', N'92015561', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:23:27.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:23:16.397', N'2020-05-08 13:23:27.633', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'626', N'0', N'202005081327434273', N'4200000549202005083799394328', N'92015561', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:28:03.927', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:27:43.307', N'2020-05-08 13:28:03.927', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'627', N'0', N'202005081350467657', N'4200000542202005082562673636', N'92015351', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:51:00.537', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:50:46.213', N'2020-05-08 13:51:00.537', N'2020-05-08 13:53:03.437')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'628', N'0', N'202005081351377897', N'4200000537202005085773778869', N'92015635', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:51:53.027', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:51:37.180', N'2020-05-08 13:51:53.027', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'629', N'0', N'202005081352303022', N'4200000551202005085613110957', N'92015686', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:52:48.750', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:52:30.193', N'2020-05-08 13:52:48.750', N'2020-05-08 13:54:51.533')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'630', N'0', N'202005081353219659', N'4200000529202005084300838981', N'92015560', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 13:53:37.697', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 13:53:21.710', N'2020-05-08 13:53:37.697', N'2020-05-08 13:55:40.127')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'631', N'0', N'202005081406129432', N'4200000528202005082260045848', N'92015221', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:06:27.520', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:06:12.863', N'2020-05-08 14:06:27.520', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'632', N'0', N'202005081407395898', N'4200000540202005081560208267', N'92015250', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:07:59.413', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:07:39.933', N'2020-05-08 14:07:59.413', N'2020-05-08 14:10:02.960')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'633', N'0', N'202005081408293978', N'4200000547202005086764829567', N'92015365', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:08:51.710', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:08:29.760', N'2020-05-08 14:08:51.710', N'2020-05-08 14:10:54.297')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'634', N'0', N'202005081409181213', N'4200000539202005080452662852', N'92015497', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:09:29.300', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:09:18.850', N'2020-05-08 14:09:29.300', N'2020-05-08 14:11:32.150')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'635', N'0', N'202005081410008903', N'4200000538202005082489147161', N'92015553', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:10:11.387', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:10:00.830', N'2020-05-08 14:10:11.387', N'2020-05-08 14:12:14.540')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'636', N'0', N'202005081410461094', N'4200000547202005081017926967', N'92015403', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:10:58.517', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:10:46.950', N'2020-05-08 14:10:58.517', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'637', N'0', N'202005081411408262', N'4200000541202005088635244338', N'92015262', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:12:01.200', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:11:40.100', N'2020-05-08 14:12:01.200', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'638', N'0', N'202005081412304928', N'4200000548202005080667053819', N'92015332', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:12:46.937', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:12:30.507', N'2020-05-08 14:12:46.937', N'2020-05-08 14:14:49.587')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'639', N'0', N'202005081413488314', N'4200000529202005085700372549', N'92015403', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:15:00.893', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:13:48.173', N'2020-05-08 14:15:00.893', N'2020-05-08 14:17:21.947')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'640', N'0', N'202005081422221368', N'4200000543202005083096679002', N'92015412', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:22:43.060', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:22:22.497', N'2020-05-08 14:22:43.060', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'641', N'0', N'202005081423217799', N'4200000548202005087742631740', N'92015512', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:23:40.273', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:23:21.863', N'2020-05-08 14:23:40.273', N'2020-05-08 14:25:43.880')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'642', N'0', N'202005081424125721', N'4200000524202005081659653976', N'92015556', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:25:44.720', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:24:12.113', N'2020-05-08 14:25:44.720', N'2020-05-08 14:27:57.937')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'643', N'0', N'202005081424584999', N'4200000524202005089266044154', N'92015513', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:25:19.037', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:24:58.763', N'2020-05-08 14:25:19.037', N'2020-05-08 14:27:19.683')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'644', N'0', N'202005081425436946', N'4200000529202005082127533569', N'92015264', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:26:03.180', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:25:43.433', N'2020-05-08 14:26:03.180', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'645', N'0', N'202005081426397302', N'4200000535202005080071962517', N'92015667', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:26:55.250', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:26:39.250', N'2020-05-08 14:26:55.250', N'2020-05-08 14:28:58.057')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'646', N'0', N'202005081427189604', N'4200000533202005081037836279', N'92015687', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:27:33.907', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:27:18.877', N'2020-05-08 14:27:33.907', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'647', N'0', N'202005081437299172', N'4200000534202005082349090649', N'92015667', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:37:44.720', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:37:29.177', N'2020-05-08 14:37:44.720', N'2020-05-08 14:39:47.717')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'648', N'0', N'202005081445489156', N'4200000547202005081020949780', N'92015298', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:45:58.570', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:45:48.463', N'2020-05-08 14:45:58.570', N'2020-05-08 14:48:01.223')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'649', N'0', N'202005081446255255', N'4200000547202005085723807609', N'92015286', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:49:05.003', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:46:25.330', N'2020-05-08 14:49:05.003', N'2020-05-08 14:51:08.503')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'650', N'0', N'202005081449516024', N'4200000547202005082156180511', N'92015380', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:50:08.330', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:49:51.780', N'2020-05-08 14:50:08.330', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'651', N'0', N'202005081452051079', N'4200000547202005089888787520', N'92015381', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:52:16.433', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:52:05.520', N'2020-05-08 14:52:16.433', N'2020-05-08 14:54:19.763')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'652', N'0', N'202005081452538758', N'4200000550202005082671131280', N'92015694', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:53:04.283', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:52:53.150', N'2020-05-08 14:53:04.283', N'2020-05-08 14:55:07.393')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'653', N'0', N'202005081454077885', N'4200000537202005086420707449', N'92015423', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:54:22.483', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:54:07.860', N'2020-05-08 14:54:22.483', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'654', N'0', N'202005081454452914', N'4200000529202005089137089991', N'92015510', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:55:03.380', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:54:45.933', N'2020-05-08 14:55:03.380', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'655', N'0', N'202005081455267159', N'4200000550202005082176821370', N'92015369', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:55:37.210', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:55:26.593', N'2020-05-08 14:55:37.210', N'2020-05-08 14:57:39.497')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'656', N'0', N'202005081456073689', N'4200000549202005083427815691', N'92015494', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:56:20.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:56:07.370', N'2020-05-08 14:56:20.123', N'2020-05-08 14:58:22.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'657', N'0', N'202005081456468659', N'4200000536202005083704552840', N'92015659', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 14:57:12.437', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:56:46.230', N'2020-05-08 14:57:12.437', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'658', N'0', N'202005081459477910', N'4200000545202005082774099888', N'92015553', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:00:01.753', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 14:59:47.953', N'2020-05-08 15:00:01.753', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'659', N'0', N'202005081502172620', N'4200000543202005087673792953', N'92015273', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:02:31.010', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:02:17.170', N'2020-05-08 15:02:31.010', N'2020-05-08 15:04:33.680')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'660', N'0', N'202005081502413323', N'4200000537202005082824289669', N'92015221', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:02:56.293', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:02:41.510', N'2020-05-08 15:02:56.293', N'2020-05-08 15:04:59.840')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'661', N'0', N'202005081507164672', N'4200000525202005082546142016', N'92015494', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:07:31.853', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:07:16.740', N'2020-05-08 15:07:31.853', N'2020-05-08 15:09:34.463')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'662', N'0', N'202005081514483279', N'4200000545202005082937371480', N'92015494', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:15:03.500', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:14:48.853', N'2020-05-08 15:15:03.500', N'2020-05-08 15:17:05.983')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'663', N'0', N'202005081519506990', N'4200000542202005089113849684', N'92015553', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:20:00.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:19:50.693', N'2020-05-08 15:20:00.633', N'2020-05-08 15:22:03.693')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'664', N'0', N'202005081524572975', N'4200000533202005081973184244', N'92015553', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:25:25.250', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:24:57.160', N'2020-05-08 15:25:25.250', N'2020-05-08 15:27:28.597')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'665', N'0', N'202005081531259020', N'4200000525202005081716290555', N'92015360', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:31:41.003', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:31:25.017', N'2020-05-08 15:31:41.003', N'2020-05-08 15:33:43.380')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'666', N'0', N'202005081532411777', N'', N'92015688', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 15:32:41.900', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'667', N'0', N'202005081532427764', N'4200000527202005083083239418', N'92015688', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:32:54.557', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:32:42.077', N'2020-05-08 15:32:54.557', N'2020-05-08 15:34:57.263')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'668', N'0', N'202005081533316472', N'4200000529202005080077796226', N'92015512', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:33:46.777', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:33:31.203', N'2020-05-08 15:33:46.777', N'2020-05-08 15:35:49.517')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'669', N'0', N'202005081534061040', N'4200000547202005085086058098', N'92015556', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:34:16.917', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:34:06.260', N'2020-05-08 15:34:16.917', N'2020-05-08 15:36:20.337')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'670', N'0', N'202005081534502330', N'4200000536202005082131638272', N'92015553', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:35:00.820', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:34:50.077', N'2020-05-08 15:35:00.820', N'2020-05-08 15:37:04.023')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'671', N'0', N'202005081535251098', N'4200000533202005085481715498', N'92015494', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:35:40.000', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:35:25.003', N'2020-05-08 15:35:40.000', N'2020-05-08 15:37:42.670')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'672', N'0', N'202005081536012841', N'4200000542202005085124541824', N'92015279', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:36:12.127', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:36:01.473', N'2020-05-08 15:36:12.127', N'2020-05-08 15:38:15.307')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'673', N'0', N'202005081536385182', N'4200000537202005089340472832', N'92015332', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:36:48.830', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:36:38.157', N'2020-05-08 15:36:48.830', N'2020-05-08 15:38:51.970')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'674', N'0', N'202005081537146737', N'4200000545202005080006801324', N'92015378', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:37:34.563', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:37:14.790', N'2020-05-08 15:37:34.563', N'2020-05-08 15:39:37.967')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'675', N'0', N'202005081537488549', N'4200000534202005084516253070', N'92015262', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 15:38:04.777', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 15:37:48.673', N'2020-05-08 15:38:04.777', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'676', N'0', N'202005081602181814', N'4200000535202005089945415958', N'92015557', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:02:33.770', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:02:18.353', N'2020-05-08 16:02:33.770', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'677', N'0', N'202005081602536854', N'4200000531202005085179893658', N'92015213', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:03:04.543', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:02:53.403', N'2020-05-08 16:03:04.543', N'2020-05-08 16:05:08.073')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'678', N'0', N'202005081603374414', N'4200000529202005084341154636', N'92015221', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:03:47.910', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:03:37.137', N'2020-05-08 16:03:47.910', N'2020-05-08 16:05:50.847')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'679', N'0', N'202005081604269079', N'4200000549202005082199026115', N'92015519', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:04:52.927', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:04:26.127', N'2020-05-08 16:04:52.927', N'2020-05-08 16:06:40.647')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'680', N'0', N'202005081605046680', N'4200000528202005081961950106', N'92015561', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:05:31.170', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:05:04.540', N'2020-05-08 16:05:31.170', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'681', N'0', N'202005081605533130', N'4200000532202005083558213812', N'92015497', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:06:04.510', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:05:53.603', N'2020-05-08 16:06:04.510', N'2020-05-08 16:08:07.740')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'682', N'0', N'202005081606324558', N'4200000532202005084383759596', N'92015560', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:06:59.160', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:06:32.227', N'2020-05-08 16:06:59.160', N'2020-05-08 16:09:39.997')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'683', N'0', N'202005081607242255', N'4200000545202005084514117255', N'92015660', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:07:38.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:07:24.347', N'2020-05-08 16:07:38.047', N'2020-05-08 16:09:41.690')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'684', N'0', N'202005081608069257', N'4200000538202005088212145234', N'92015412', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:08:17.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:08:06.373', N'2020-05-08 16:08:17.780', N'2020-05-08 16:10:20.963')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'685', N'0', N'202005081608385553', N'4200000540202005083348259636', N'92015403', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:08:50.930', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:08:38.647', N'2020-05-08 16:08:50.930', N'2020-05-08 16:10:54.307')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'686', N'0', N'202005081641246772', N'4200000537202005082887567786', N'92015570', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:41:35.337', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:41:24.700', N'2020-05-08 16:41:35.337', N'2020-05-08 16:43:38.773')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'687', N'0', N'202005081642093733', N'4200000545202005086837803792', N'92015290', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:42:20.623', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:42:09.433', N'2020-05-08 16:42:20.623', N'2020-05-08 16:44:23.917')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'688', N'0', N'202005081642521795', N'4200000544202005085018222192', N'92015683', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:43:03.263', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:42:52.073', N'2020-05-08 16:43:03.263', N'2020-05-08 16:45:06.473')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'689', N'0', N'202005081643455292', N'4200000524202005086480593863', N'92015226', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:44:01.730', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:43:45.740', N'2020-05-08 16:44:01.730', N'2020-05-08 16:46:04.603')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'690', N'0', N'202005081644269035', N'4200000546202005086850355864', N'92015377', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:44:37.393', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:44:26.257', N'2020-05-08 16:44:37.393', N'2020-05-08 16:46:40.987')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'691', N'0', N'202005081645056822', N'4200000547202005080595208173', N'92015357', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:45:23.020', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:45:05.710', N'2020-05-08 16:45:23.020', N'2020-05-08 16:47:22.423')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'692', N'0', N'202005081646012693', N'', N'92015255', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 16:46:01.723', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'693', N'0', N'202005081646278912', N'4200000535202005086141873803', N'92015255', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:46:42.830', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:46:27.660', N'2020-05-08 16:46:42.830', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'694', N'0', N'202005081647014422', N'4200000538202005083076683991', N'92015415', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:47:19.230', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:47:01.053', N'2020-05-08 16:47:19.230', N'2020-05-08 16:49:22.557')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'695', N'0', N'202005081647362877', N'4200000545202005082497455064', N'92015562', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:47:50.873', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:47:36.913', N'2020-05-08 16:47:50.873', N'2020-05-08 16:49:53.620')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'696', N'0', N'202005081648185237', N'4200000541202005086752454406', N'92015641', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 16:48:40.220', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 16:48:18.400', N'2020-05-08 16:48:40.220', N'2020-05-08 16:50:42.637')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'697', N'0', N'202005081750041050', N'4200000532202005088131756300', N'92015350', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:50:14.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:50:04.590', N'2020-05-08 17:50:14.780', N'2020-05-08 17:52:17.847')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'698', N'0', N'202005081750317613', N'4200000523202005080023720604', N'92015630', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:50:47.367', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:50:31.100', N'2020-05-08 17:50:47.367', N'2020-05-08 17:52:49.517')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'699', N'0', N'202005081750586019', N'4200000542202005085131336407', N'92015348', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:51:09.677', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:50:58.283', N'2020-05-08 17:51:09.677', N'2020-05-08 17:53:12.120')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'700', N'0', N'202005081751272825', N'4200000527202005089437670559', N'92015379', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:51:38.667', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:51:27.450', N'2020-05-08 17:51:38.667', N'2020-05-08 17:53:41.713')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'701', N'0', N'202005081752015138', N'4200000527202005087096495247', N'92015275', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:52:12.090', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:52:01.423', N'2020-05-08 17:52:12.090', N'2020-05-08 17:54:15.607')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'702', N'0', N'202005081752276371', N'4200000531202005084125226279', N'92015662', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:52:38.023', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:52:27.387', N'2020-05-08 17:52:38.023', N'2020-05-08 17:54:41.393')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'703', N'0', N'202005081753022097', N'4200000535202005083504640144', N'92015215', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:53:17.900', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:53:02.180', N'2020-05-08 17:53:17.900', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'704', N'0', N'202005081753341092', N'4200000538202005087980180116', N'92015266', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:54:03.827', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:53:34.037', N'2020-05-08 17:54:03.827', N'2020-05-08 17:56:01.360')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'705', N'0', N'202005081754044856', N'4200000523202005089032734376', N'92015375', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:54:15.793', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:54:04.453', N'2020-05-08 17:54:15.793', N'2020-05-08 17:56:18.820')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'706', N'0', N'202005081754363881', N'4200000535202005084654539796', N'92015668', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:54:56.663', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:54:36.623', N'2020-05-08 17:54:56.663', N'2020-05-08 17:57:11.680')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'707', N'0', N'202005081755037214', N'4200000542202005083760471820', N'92015373', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 17:55:17.370', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 17:55:03.137', N'2020-05-08 17:55:17.370', N'2020-05-08 17:57:20.853')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'708', N'0', N'202005081812515938', N'', N'92015414', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 18:12:51.933', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'709', N'0', N'202005081813162157', N'4200000548202005083522223972', N'92015414', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:13:26.313', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:13:16.410', N'2020-05-08 18:13:26.313', N'2020-05-08 18:15:29.773')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'710', N'0', N'202005081813483723', N'4200000543202005085617497905', N'92015571', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:14:04.123', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:13:48.603', N'2020-05-08 18:14:04.123', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'711', N'0', N'202005081814271667', N'4200000529202005083069610033', N'92015496', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:14:43.903', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:14:27.600', N'2020-05-08 18:14:43.903', N'2020-05-08 18:16:46.837')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'712', N'0', N'202005081815024606', N'4200000547202005080803525677', N'92015417', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:15:18.353', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:15:02.103', N'2020-05-08 18:15:18.353', N'2020-05-08 18:17:21.287')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'713', N'0', N'202005081815339245', N'4200000535202005086078880855', N'92015321', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:15:53.743', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:15:33.540', N'2020-05-08 18:15:53.743', N'2020-05-08 18:18:08.713')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'714', N'0', N'202005081816176334', N'4200000545202005082705274548', N'92015276', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:20:36.810', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:16:17.473', N'2020-05-08 18:20:36.810', N'2020-05-08 18:22:39.997')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'715', N'0', N'202005081817262429', N'4200000522202005081840078298', N'92015356', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:17:37.177', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:17:26.427', N'2020-05-08 18:17:37.177', N'2020-05-08 18:19:40.360')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'716', N'0', N'202005081818048970', N'4200000551202005085571063748', N'92015223', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:18:30.397', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:18:04.217', N'2020-05-08 18:18:30.397', N'2020-05-08 18:21:14.010')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'717', N'0', N'202005081818419426', N'4200000541202005081706742885', N'92015339', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:18:58.023', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:18:41.720', N'2020-05-08 18:18:58.023', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'718', N'0', N'202005081819174367', N'4200000539202005082052009750', N'92015696', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:19:35.920', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:19:17.630', N'2020-05-08 18:19:35.920', N'2020-05-08 18:21:38.137')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'719', N'0', N'202005081819574254', N'4200000526202005089846309129', N'92015513', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:20:18.920', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:19:57.640', N'2020-05-08 18:20:18.920', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'720', N'0', N'202005081820293406', N'4200000538202005086060320087', N'92015264', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:20:39.480', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:20:29.017', N'2020-05-08 18:20:39.480', N'2020-05-08 18:22:42.700')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'721', N'0', N'202005081826272673', N'4200000550202005087792337263', N'92015276', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:26:42.517', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:26:27.793', N'2020-05-08 18:26:42.517', N'2020-05-08 18:28:45.017')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'722', N'0', N'202005081841165121', N'4200000522202005084986272323', N'92015417', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:41:27.653', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:41:16.383', N'2020-05-08 18:41:27.653', N'2020-05-08 18:43:30.993')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'723', N'0', N'202005081841287730', N'4200000534202005088691619492', N'92015667', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:41:54.817', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:41:28.640', N'2020-05-08 18:41:54.817', N'2020-05-08 18:43:58.233')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'724', N'0', N'202005081841552093', N'4200000545202005080067796888', N'92015687', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:42:10.337', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:41:55.477', N'2020-05-08 18:42:10.337', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'725', N'0', N'202005081842285946', N'4200000532202005083370902809', N'92015365', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:42:39.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:42:28.053', N'2020-05-08 18:42:39.957', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'726', N'0', N'202005081843036972', N'4200000531202005088453844249', N'92015303', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:43:13.673', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:43:03.060', N'2020-05-08 18:43:13.673', N'2020-05-08 18:45:17.030')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'727', N'0', N'202005081843432658', N'4200000525202005086004868607', N'92015635', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:43:54.023', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:43:43.167', N'2020-05-08 18:43:54.023', N'2020-05-08 18:45:57.053')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'728', N'0', N'202005081844119436', N'4200000531202005086150622881', N'92015354', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:44:22.043', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:44:11.033', N'2020-05-08 18:44:22.043', N'2020-05-08 18:46:25.480')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'729', N'0', N'202005081844387970', N'4200000526202005082556119664', N'92015250', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:44:54.797', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:44:38.643', N'2020-05-08 18:44:54.797', N'2020-05-08 18:46:58.407')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'730', N'0', N'202005081845068820', N'4200000543202005087756890658', N'92015351', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:45:29.070', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:45:06.953', N'2020-05-08 18:45:29.070', N'2020-05-08 18:47:32.657')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'731', N'0', N'202005081845493623', N'4200000546202005087205414228', N'92015344', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:46:03.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:45:49.313', N'2020-05-08 18:46:03.957', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'732', N'0', N'202005081846326356', N'4200000539202005085721224279', N'92015655', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:46:54.880', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:46:32.843', N'2020-05-08 18:46:54.880', N'2020-05-08 18:49:02.717')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'733', N'0', N'202005081847033721', N'4200000522202005088149790863', N'92015505', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:47:23.503', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:47:03.937', N'2020-05-08 18:47:23.503', N'2020-05-08 18:49:26.000')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'734', N'0', N'202005081847589505', N'4200000523202005088890340482', N'92015365', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 18:48:12.927', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 18:47:58.003', N'2020-05-08 18:48:12.927', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'735', N'0', N'202005081907295389', N'4200000523202005084305567428', N'92015368', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:07:48.690', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:07:29.010', N'2020-05-08 19:07:48.690', N'2020-05-08 19:09:50.867')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'736', N'0', N'202005081907521451', N'4200000548202005087724202445', N'92015238', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:08:03.610', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:07:52.773', N'2020-05-08 19:08:03.610', N'2020-05-08 19:10:06.050')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'737', N'0', N'202005081908227286', N'4200000538202005088367675037', N'92015352', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:08:36.760', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:08:22.243', N'2020-05-08 19:08:36.760', N'2020-05-08 19:10:39.340')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'738', N'0', N'202005081908503622', N'4200000550202005080585227974', N'92015270', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:09:18.723', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:08:50.403', N'2020-05-08 19:09:18.723', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'739', N'0', N'202005081909242675', N'4200000536202005086534613525', N'92015565', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:09:47.117', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:09:24.087', N'2020-05-08 19:09:47.117', N'2020-05-08 19:12:00.670')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'740', N'0', N'202005081910026360', N'4200000544202005088901995231', N'92015246', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:10:29.137', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:10:02.767', N'2020-05-08 19:10:29.137', N'2020-05-08 19:12:26.353')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'741', N'0', N'202005081910294737', N'4200000540202005088341988583', N'92015384', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:10:49.640', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:10:29.653', N'2020-05-08 19:10:49.640', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'742', N'0', N'202005081911006805', N'4200000547202005084121845807', N'92015371', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:11:21.637', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:11:00.753', N'2020-05-08 19:11:21.637', N'2020-05-08 19:14:03.637')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'743', N'0', N'202005081911333728', N'', N'92015324', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 19:11:33.553', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'744', N'0', N'202005081911577788', N'4200000524202005089390445335', N'92015324', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:12:26.167', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:11:57.113', N'2020-05-08 19:12:26.167', N'2020-05-08 19:14:43.843')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'745', N'0', N'202005081912301228', N'4200000525202005089336747180', N'92015278', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:12:42.130', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:12:30.290', N'2020-05-08 19:12:42.130', N'2020-05-08 19:14:44.733')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'746', N'0', N'202005081912546417', N'4200000549202005080987729454', N'92015417', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:13:08.940', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:12:54.483', N'2020-05-08 19:13:08.940', N'2020-05-08 19:15:12.400')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'747', N'0', N'202005081931187139', N'4200000532202005085105661362', N'92015222', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:31:32.923', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:31:18.190', N'2020-05-08 19:31:32.923', N'2020-05-08 19:33:35.660')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'748', N'0', N'202005081931468587', N'4200000525202005082782115315', N'92015245', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:32:10.330', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:31:46.713', N'2020-05-08 19:32:10.330', N'2020-05-08 19:34:17.503')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'749', N'0', N'202005081932232586', N'4200000532202005084146991694', N'92015220', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:32:39.953', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:32:23.043', N'2020-05-08 19:32:39.953', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'750', N'0', N'202005081932548039', N'4200000546202005086734303986', N'92015338', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:33:04.997', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:32:54.857', N'2020-05-08 19:33:04.997', N'2020-05-08 19:35:07.563')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'751', N'0', N'202005081933223501', N'4200000551202005081970885971', N'92015302', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:33:32.833', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:33:22.027', N'2020-05-08 19:33:32.833', N'2020-05-08 19:35:36.307')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'752', N'0', N'202005081933509180', N'4200000538202005080842807017', N'92015248', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:34:07.737', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:33:50.760', N'2020-05-08 19:34:07.737', N'2020-05-08 19:36:10.753')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'753', N'0', N'202005081934216389', N'4200000538202005089501466820', N'92015661', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:34:35.670', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:34:21.117', N'2020-05-08 19:34:35.670', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'754', N'0', N'202005081934505139', N'4200000527202005086960938364', N'92015383', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:35:00.427', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:34:50.080', N'2020-05-08 19:35:00.427', N'2020-05-08 19:37:04.003')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'755', N'0', N'202005081935224507', N'4200000544202005087338709628', N'92015282', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:35:47.680', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:35:22.817', N'2020-05-08 19:35:47.680', N'2020-05-08 19:37:50.730')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'756', N'0', N'202005081936119957', N'4200000549202005084189261897', N'92015689', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:36:23.687', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:36:11.867', N'2020-05-08 19:36:23.687', N'2020-05-08 19:38:27.007')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'757', N'0', N'202005081936441424', N'4200000539202005085223030251', N'92015212', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:36:56.700', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:36:44.933', N'2020-05-08 19:36:56.700', N'2020-05-08 19:39:00.060')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'758', N'0', N'202005081938181735', N'4200000535202005081490289941', N'92015686', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:38:28.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:38:18.163', N'2020-05-08 19:38:28.047', N'2020-05-08 19:40:31.167')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'759', N'0', N'202005081956051373', N'4200000526202005086460362292', N'92015353', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:56:20.713', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:56:05.033', N'2020-05-08 19:56:20.713', N'2020-05-08 19:58:19.337')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'760', N'0', N'202005081956367768', N'4200000535202005083544628937', N'92015274', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:57:02.723', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:56:36.430', N'2020-05-08 19:57:02.723', N'2020-05-08 19:59:10.690')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'761', N'0', N'202005081957119609', N'4200000537202005086761330848', N'92015628', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:57:26.580', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:57:11.813', N'2020-05-08 19:57:26.580', N'2020-05-08 19:59:30.067')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'762', N'0', N'202005081957401616', N'4200000544202005083221896763', N'92015305', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:57:56.410', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:57:40.863', N'2020-05-08 19:57:56.410', N'2020-05-08 19:59:59.820')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'763', N'0', N'202005081958334926', N'', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 19:58:33.490', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'764', N'0', N'202005081958337498', N'', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 19:58:33.837', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'765', N'0', N'202005081958348783', N'4200000523202005084496515814', N'92015244', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:58:44.613', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:58:34.017', N'2020-05-08 19:58:44.613', N'2020-05-08 20:00:48.080')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'766', N'0', N'202005081959016562', N'4200000549202005083775820923', N'92015242', N'17', N'舒适体验', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:59:28.773', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:59:01.863', N'2020-05-08 19:59:28.773', N'2020-05-08 20:01:25.807')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'767', N'0', N'202005081959309012', N'4200000529202005081812370742', N'92015349', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 19:59:43.020', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:59:30.620', N'2020-05-08 19:59:43.020', N'2020-05-08 20:01:46.050')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'768', N'0', N'202005081959472266', N'4200000547202005083214244430', N'92015689', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:00:14.040', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 19:59:47.943', N'2020-05-08 20:00:14.040', N'2020-05-08 20:02:32.520')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'769', N'0', N'202005082000075424', N'4200000534202005085453026236', N'92015559', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:00:18.990', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:00:07.760', N'2020-05-08 20:00:18.990', N'2020-05-08 20:02:22.520')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'770', N'0', N'202005082000371475', N'4200000526202005087444219920', N'92015358', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:00:48.457', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:00:37.170', N'2020-05-08 20:00:48.457', N'2020-05-08 20:02:50.953')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'771', N'0', N'202005082001093228', N'4200000531202005082438814139', N'92015372', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:01:24.043', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:01:09.197', N'2020-05-08 20:01:24.043', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'772', N'0', N'202005082001352204', N'4200000524202005088429002973', N'92015572', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:01:45.950', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:01:35.097', N'2020-05-08 20:01:45.950', N'2020-05-08 20:03:48.777')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'773', N'0', N'202005082020331979', N'4200000544202005083449428840', N'92015216', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:20:54.210', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:20:33.660', N'2020-05-08 20:20:54.210', N'2020-05-08 20:23:04.770')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'774', N'0', N'202005082021031415', N'4200000537202005084510677617', N'92015325', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:21:18.967', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:21:03.797', N'2020-05-08 20:21:18.967', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'775', N'0', N'202005082021313836', N'4200000537202005083985540331', N'92015396', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:22:01.587', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:21:31.023', N'2020-05-08 20:22:01.587', N'2020-05-08 20:24:02.967')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'776', N'0', N'202005082022321453', N'4200000533202005089530999613', N'92015228', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:22:51.147', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:22:32.633', N'2020-05-08 20:22:51.147', N'2020-05-08 20:24:54.250')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'777', N'0', N'202005082023065993', N'4200000536202005088036758178', N'92015319', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:23:22.047', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:23:06.367', N'2020-05-08 20:23:22.047', N'2020-05-08 20:25:24.180')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'778', N'0', N'202005082023434633', N'4200000523202005087110396860', N'92015322', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:23:59.093', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:23:43.270', N'2020-05-08 20:23:59.093', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'779', N'0', N'202005082024143785', N'4200000530202005086807691331', N'92015495', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:24:26.690', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:24:14.660', N'2020-05-08 20:24:26.690', N'2020-05-08 20:26:29.417')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'780', N'0', N'202005082024581091', N'', N'92015237', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-08 20:24:58.747', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'781', N'0', N'202005082024582377', N'4200000529202005088406748721', N'92015237', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:25:14.437', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:24:58.917', N'2020-05-08 20:25:14.437', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'782', N'0', N'202005082025303756', N'4200000537202005085425224578', N'92015235', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:25:44.523', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:25:30.063', N'2020-05-08 20:25:44.523', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'783', N'0', N'202005082025557404', N'4200000542202005087818533774', N'92015364', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:26:05.940', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:25:55.637', N'2020-05-08 20:26:05.940', N'2020-05-08 20:28:09.480')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'784', N'0', N'202005082026243111', N'4200000537202005081587399025', N'92015697', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:26:38.500', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:26:24.477', N'2020-05-08 20:26:38.500', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'785', N'0', N'202005082026508359', N'4200000525202005089515221755', N'92015509', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:27:01.647', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:26:50.487', N'2020-05-08 20:27:01.647', N'2020-05-08 20:29:04.120')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'786', N'0', N'202005082031572401', N'4200000546202005088254856429', N'92015359', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:32:11.153', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:31:57.137', N'2020-05-08 20:32:11.153', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'787', N'0', N'202005082046174028', N'4200000526202005086488990414', N'92015555', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:46:32.957', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:46:17.727', N'2020-05-08 20:46:32.957', N'2020-05-08 20:48:41.123')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'788', N'0', N'202005082046428244', N'4200000525202005080026703327', N'92015325', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:46:56.857', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:46:42.013', N'2020-05-08 20:46:56.857', N'2020-05-08 20:49:00.360')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'789', N'0', N'202005082046426518', N'4200000529202005085895009937', N'92015506', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:46:58.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:46:42.363', N'2020-05-08 20:46:58.633', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'790', N'0', N'202005082047097466', N'4200000523202005087429867650', N'92015382', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:47:24.443', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:47:09.583', N'2020-05-08 20:47:24.443', N'2020-05-08 20:49:27.800')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'791', N'0', N'202005082047506724', N'4200000549202005089807272925', N'92015234', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:48:02.500', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:47:50.263', N'2020-05-08 20:48:02.500', N'2020-05-08 20:50:05.970')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'792', N'0', N'202005082048263294', N'4200000524202005082568187784', N'92015503', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:48:42.460', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:48:26.923', N'2020-05-08 20:48:42.460', N'2020-05-08 20:50:41.110')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'793', N'0', N'202005082048505628', N'4200000545202005085807315618', N'92015330', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:49:05.277', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:48:50.827', N'2020-05-08 20:49:05.277', N'2020-05-08 20:51:07.813')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'794', N'0', N'202005082049187361', N'4200000550202005088111978835', N'92015243', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:49:32.140', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:49:18.100', N'2020-05-08 20:49:32.140', N'2020-05-08 20:51:34.540')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'795', N'0', N'202005082049508485', N'4200000538202005082796704761', N'92015374', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:50:00.433', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:49:50.823', N'2020-05-08 20:50:00.433', N'2020-05-08 20:52:04.120')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'796', N'0', N'202005082050157432', N'4200000522202005082105029608', N'92015376', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:50:31.877', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:50:15.190', N'2020-05-08 20:50:31.877', N'2020-05-08 20:52:33.863')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'797', N'0', N'202005082056183773', N'4200000535202005083518743788', N'92015509', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-08 20:56:27.780', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-08 20:56:18.683', N'2020-05-08 20:56:27.780', N'2020-05-08 20:58:31.273')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'798', N'0', N'202005091501287850', N'4200000541202005092803770757', N'92015698', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:01:56.757', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:01:28.163', N'2020-05-09 15:01:56.757', N'2020-05-09 15:04:45.367')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'799', N'0', N'202005091501582802', N'4200000549202005098146184257', N'92015554', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:02:25.517', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:01:58.440', N'2020-05-09 15:02:25.517', N'2020-05-09 15:05:09.970')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'800', N'0', N'202005091522566409', N'4200000523202005094172975716', N'92015590', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:23:17.380', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:22:56.610', N'2020-05-09 15:23:17.380', N'2020-05-09 15:25:26.220')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'801', N'0', N'202005091523269860', N'4200000525202005099993372770', N'92015227', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:23:45.830', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:23:26.773', N'2020-05-09 15:23:45.830', N'2020-05-09 15:25:48.947')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'802', N'0', N'202005091524226359', N'4200000523202005097908939740', N'92015428', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:24:44.800', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:24:22.083', N'2020-05-09 15:24:44.800', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'803', N'0', N'202005091528383577', N'4200000548202005098672760764', N'92015428', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:28:53.617', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:28:38.793', N'2020-05-09 15:28:53.617', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'804', N'0', N'202005091529265299', N'4200000544202005095096806407', N'92015508', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:29:44.203', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:29:26.553', N'2020-05-09 15:29:44.203', N'2020-05-09 15:31:47.613')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'805', N'0', N'202005091531479118', N'4200000545202005091850733015', N'92015691', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:32:17.467', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:31:47.833', N'2020-05-09 15:32:17.467', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'806', N'0', N'202005091532342467', N'4200000550202005096468100517', N'92015362', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:33:17.287', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:32:34.907', N'2020-05-09 15:33:17.287', N'2020-05-09 15:35:20.260')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'807', N'0', N'202005091533477149', N'4200000544202005099295251722', N'92015693', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:34:13.380', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:33:47.070', N'2020-05-09 15:34:13.380', N'2020-05-09 15:36:16.757')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'808', N'0', N'202005091534442235', N'4200000534202005093270193545', N'92015418', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:35:04.993', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:34:44.203', N'2020-05-09 15:35:04.993', N'2020-05-09 15:37:08.177')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'809', N'0', N'202005091543023819', N'4200000536202005096712421105', N'92015692', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:47:17.580', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:43:02.720', N'2020-05-09 15:47:17.580', N'2020-05-09 15:49:21.147')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'810', N'0', N'202005091543558102', N'4200000551202005098779403378', N'92015569', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:48:13.063', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:43:55.260', N'2020-05-09 15:48:13.063', N'2020-05-09 15:48:14.533')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'811', N'0', N'202005091544573834', N'4200000539202005093649382611', N'92015690', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:45:08.703', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:44:57.663', N'2020-05-09 15:45:08.703', N'2020-05-09 15:47:11.993')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'812', N'0', N'202005091545407480', N'4200000540202005090560001706', N'92015685', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:45:55.203', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:45:40.480', N'2020-05-09 15:45:55.203', N'2020-05-09 15:47:58.607')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'813', N'0', N'202005091549596730', N'4200000551202005092920733424', N'92015692', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:50:14.140', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:49:59.147', N'2020-05-09 15:50:14.140', N'2020-05-09 15:52:22.233')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'814', N'0', N'202005091550242320', N'4200000550202005097701212519', N'92015569', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 15:50:39.500', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 15:50:24.310', N'2020-05-09 15:50:39.500', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'815', N'0', N'202005091617355103', N'4200000538202005090755840123', N'92015418', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:17:45.377', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:17:35.140', N'2020-05-09 16:17:45.377', N'2020-05-09 16:19:48.117')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'816', N'0', N'202005091618181722', N'4200000534202005097046655677', N'92015428', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:18:35.063', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:18:18.093', N'2020-05-09 16:18:35.063', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'817', N'0', N'202005091619016996', N'4200000523202005098939029174', N'92015698', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:19:17.633', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:19:01.667', N'2020-05-09 16:19:17.633', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'818', N'0', N'202005091619376639', N'4200000539202005099153820877', N'92015690', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:19:49.443', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:19:37.580', N'2020-05-09 16:19:49.443', N'2020-05-09 16:21:52.043')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'819', N'0', N'202005091620244474', N'4200000523202005098180361651', N'92015508', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:24:40.247', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:20:24.497', N'2020-05-09 16:24:40.247', N'2020-05-09 16:26:42.807')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'820', N'0', N'202005091621229216', N'4200000540202005092527492678', N'92015692', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:21:39.283', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:21:22.467', N'2020-05-09 16:21:39.283', N'2020-05-09 16:23:41.700')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'821', N'0', N'202005091621572214', N'4200000522202005092705834810', N'92015554', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:22:11.990', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:21:57.380', N'2020-05-09 16:22:11.990', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'822', N'0', N'202005091622288079', N'', N'92015693', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-09 16:22:28.367', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'823', N'0', N'202005091622286636', N'', N'92015693', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'.01', N'.00', N'.01', N'1', N'2020-05-09 16:22:28.667', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'824', N'0', N'202005091622286666', N'4200000538202005092237988332', N'92015693', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:22:48.510', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:22:28.977', N'2020-05-09 16:22:48.510', N'2020-05-09 16:24:50.850')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'825', N'0', N'202005091623189260', N'4200000542202005098013379182', N'92015685', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:23:30.760', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:23:18.940', N'2020-05-09 16:23:30.760', N'2020-05-09 16:25:34.387')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'826', N'0', N'202005091623497254', N'4200000541202005097500136850', N'92015691', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:24:06.860', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:23:49.387', N'2020-05-09 16:24:06.860', N'2020-05-09 16:26:09.567')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'827', N'0', N'202005091625102071', N'4200000551202005096005287742', N'92015590', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:25:21.403', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:25:10.930', N'2020-05-09 16:25:21.403', N'2020-05-09 16:27:23.840')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'828', N'0', N'202005091642417167', N'4200000528202005096643904169', N'92015569', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:43:23.163', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:42:41.503', N'2020-05-09 16:43:23.163', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'829', N'0', N'202005091644334650', N'4200000544202005098065911909', N'92015227', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:44:53.230', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:44:33.183', N'2020-05-09 16:44:53.230', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'830', N'0', N'202005091645185498', N'4200000534202005094200807896', N'92015362', N'17', N'舒适体验', NULL, N'0', N'', N'0', N'.00', N'2', N'2020-05-09 16:45:34.263', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 16:45:18.733', N'2020-05-09 16:45:34.263', N'2020-05-09 16:47:37.450')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'831', N'0', N'202005092042426963', N'4200000533202005092940807737', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 20:42:55.327', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 20:42:42.890', N'2020-05-09 20:42:55.327', N'2020-05-09 21:02:58.420')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'832', N'0', N'202005092103387940', N'4200000527202005092905001357', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-05-09 21:03:49.747', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-09 21:03:38.877', N'2020-05-09 21:03:49.747', N'2020-05-09 21:23:53.073')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'833', N'0', N'202005101924489354', N'4200000549202005108830865870', N'92015204', N'4', N'样机', N'2', N'0', N'', N'0', N'.00', N'2', N'2020-05-10 19:25:04.420', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-10 19:24:48.257', N'2020-05-10 19:25:04.420', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'834', N'0', N'202005131219481905', N'', N'92015349', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'9.90', N'.00', N'9.90', N'1', N'2020-05-13 12:19:48.763', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'835', N'0', N'202005132022472927', N'4200000546202005131298291411', N'92015666', N'19', N'疲劳恢复', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-13 20:22:55.240', N'', N'', N'', N'20.00', N'20.00', N'20.00', N'1', N'2020-05-13 20:22:47.960', N'2020-05-13 20:22:55.240', N'2020-05-13 21:12:58.080')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'836', N'0', N'202005140307045538', N'4200000543202005142371511702', N'92015568', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 03:07:13.993', N'', N'', N'', N'9.90', N'9.90', N'9.90', N'1', N'2020-05-14 03:07:04.190', N'2020-05-14 03:07:13.993', N'2020-05-14 03:22:16.713')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'837', N'0', N'202005141438124588', N'4200000525202005142280766376', N'92015661', N'18', N'气血调理', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 14:38:21.003', N'', N'', N'', N'15.00', N'15.00', N'15.00', N'1', N'2020-05-14 14:38:12.053', N'2020-05-14 14:38:21.003', N'2020-05-14 15:03:23.440')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'838', N'0', N'202005141444295070', N'4200000544202005148157173325', N'92015641', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'3', N'2020-05-14 14:44:42.937', N'', N'', N'', N'9.90', N'9.90', N'9.90', N'4', N'2020-05-14 14:44:29.643', N'2020-05-14 14:44:42.937', N'2020-05-14 14:59:45.543')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'839', N'0', N'202005141546367270', N'4200000531202005144265739343', N'92015242', N'4', N'样机', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 15:47:00.343', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-14 15:46:36.903', N'2020-05-14 15:47:00.343', N'2020-05-14 16:07:02.153')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'840', N'0', N'202005141845182386', N'4200000536202005144085684873', N'92015688', N'19', N'疲劳恢复', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 18:45:28.640', N'', N'', N'', N'20.00', N'20.00', N'20.00', N'1', N'2020-05-14 18:45:18.903', N'2020-05-14 18:45:28.640', N'2020-05-14 19:35:30.913')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'841', N'0', N'202005142032257409', N'4200000539202005147075258482', N'92015267', N'18', N'气血调理', N'7', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 20:32:37.877', N'', N'', N'', N'15.00', N'15.00', N'15.00', N'1', N'2020-05-14 20:32:25.043', N'2020-05-14 20:32:37.877', N'2020-05-14 20:57:39.747')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'842', N'0', N'202005142220495532', N'4200000527202005148139069256', N'92015641', N'17', N'舒适体验', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 22:21:00.420', N'', N'', N'', N'9.90', N'9.90', N'9.90', N'1', N'2020-05-14 22:20:49.867', N'2020-05-14 22:21:00.420', N'2020-05-14 22:36:03.270')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'843', N'0', N'202005142238095477', N'4200000548202005142205525228', N'92015641', N'18', N'气血调理', N'6', N'0', N'', N'0', N'.00', N'2', N'2020-05-14 22:38:14.620', N'', N'', N'', N'15.00', N'15.00', N'15.00', N'1', N'2020-05-14 22:38:09.353', N'2020-05-14 22:38:14.620', N'2020-05-14 23:03:17.033')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'844', N'0', N'202005142244206067', N'', N'92015338', N'17', N'舒适体验', N'7', N'0', N'', N'0', N'.00', N'0', NULL, N'', N'', N'', N'9.90', N'.00', N'9.90', N'1', N'2020-05-14 22:44:20.217', NULL, NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'845', N'0', N'202005151254448354', N'4200000524202005153694661117', N'92015242', N'4', N'样机', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-15 12:54:57.950', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-15 12:54:44.760', N'2020-05-15 12:54:57.950', NULL)
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'846', N'0', N'202005151329365867', N'4200000522202005158424059729', N'92015242', N'4', N'样机', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-15 13:29:43.880', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-15 13:29:36.050', N'2020-05-15 13:29:43.880', N'2020-05-15 13:49:46.617')
GO

INSERT INTO [dbo].[st_orders] ([id], [agent_id], [order_no], [trade_no], [imeid], [goods_id], [goods_name], [placeId], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [telphone], [mobile], [remark], [payable_amount], [real_amount], [order_amount], [status], [add_time], [confirm_time], [complete_time]) VALUES (N'847', N'0', N'202005151436522982', N'4200000537202005151368494322', N'92015242', N'4', N'样机', N'10', N'0', N'', N'0', N'.00', N'2', N'2020-05-15 14:37:55.117', N'', N'', N'', N'.01', N'.01', N'.01', N'1', N'2020-05-15 14:36:52.160', N'2020-05-15 14:37:55.117', N'2020-05-15 14:57:49.653')
GO

SET IDENTITY_INSERT [dbo].[st_orders] OFF
GO


-- ----------------------------
-- Table structure for st_place_manager
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_place_manager]') AND type IN ('U'))
	DROP TABLE [dbo].[st_place_manager]
GO

CREATE TABLE [dbo].[st_place_manager] (
  [placeId] int  NOT NULL,
  [managerId] int  NOT NULL,
  [manager_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] int  NULL,
  [comm] decimal(18,2)  NULL,
  [add_time] datetime  NULL,
  [adderId] int  NULL,
  [remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_place_manager] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'场地Id',
'SCHEMA', N'dbo',
'TABLE', N'st_place_manager',
'COLUMN', N'placeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'人员Id',
'SCHEMA', N'dbo',
'TABLE', N'st_place_manager',
'COLUMN', N'managerId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型 0 补货人员. 1合作伙伴 2.销售 3.其他',
'SCHEMA', N'dbo',
'TABLE', N'st_place_manager',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'提成',
'SCHEMA', N'dbo',
'TABLE', N'st_place_manager',
'COLUMN', N'comm'
GO


-- ----------------------------
-- Records of [st_place_manager]
-- ----------------------------
INSERT INTO [dbo].[st_place_manager]  VALUES (N'14', N'0', N'扫扫科技', N'1', N'70.00', N'2020-06-24 09:20:27.843', N'1', NULL)
GO

INSERT INTO [dbo].[st_place_manager]  VALUES (N'14', N'24', N'维也纳天虹酒店（白云国际机场人和地铁站）', N'1', N'30.00', N'2020-06-24 09:20:27.853', N'1', NULL)
GO


-- ----------------------------
-- Table structure for st_places
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_places]') AND type IN ('U'))
	DROP TABLE [dbo].[st_places]
GO

CREATE TABLE [dbo].[st_places] (
  [id] int  IDENTITY(10,1) NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [agent_id] int  NULL,
  [add_time] datetime  NULL,
  [remark] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_places] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'场地编号',
'SCHEMA', N'dbo',
'TABLE', N'st_places',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'场地名称',
'SCHEMA', N'dbo',
'TABLE', N'st_places',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运营商',
'SCHEMA', N'dbo',
'TABLE', N'st_places',
'COLUMN', N'agent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'负责人',
'SCHEMA', N'dbo',
'TABLE', N'st_places',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'st_places',
'COLUMN', N'remark'
GO


-- ----------------------------
-- Records of [st_places]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[st_places] ON
GO

INSERT INTO [dbo].[st_places] ([id], [code], [name], [agent_id], [add_time], [remark]) VALUES (N'14', N'P522866453042064', N'&nbsp;', N'0', N'2020-06-24 09:20:27.830', N'&nbsp;')
GO

SET IDENTITY_INSERT [dbo].[st_places] OFF
GO


-- ----------------------------
-- Table structure for st_tyres
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[st_tyres]') AND type IN ('U'))
	DROP TABLE [dbo].[st_tyres]
GO

CREATE TABLE [dbo].[st_tyres] (
  [id] int  IDENTITY(31,1) NOT NULL,
  [user_id] int  NULL,
  [company_id] int  NULL,
  [pro_id] int  NULL,
  [tyre_no] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [trade_no] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [tyre_count] int  NULL,
  [tyre_price] decimal(18,2)  NULL,
  [pay_id] int  NULL,
  [pay_amount] decimal(18,2)  NULL,
  [status] int  NULL,
  [pay_status] int  NULL,
  [add_time] datetime  NULL,
  [done_time] datetime  NULL,
  [remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[st_tyres] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购者Id',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购公司Id',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'company_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购产品',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'pro_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购编码',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'tyre_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易编码',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购数量',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'tyre_count'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购价格',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'tyre_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付方式',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'pay_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付金额',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'pay_amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购状态',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付状态 0未支付 1支付完成',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'pay_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'认购时间',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'add_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'成交时间',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'done_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'st_tyres',
'COLUMN', N'remark'
GO


-- ----------------------------
-- Records of [st_tyres]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[st_tyres] ON
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'1', N'1', N'0', N'1', N'T202002141710444123', NULL, N'101', N'200.00', N'1', N'.02', N'0', N'0', N'2020-02-14 17:10:44.300', NULL, N'test')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'2', N'1', N'0', N'1', N'T202002141712527689', NULL, N'102', N'200.00', N'2', N'.03', N'0', N'0', N'2020-02-14 17:12:52.290', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'3', N'1', N'0', N'2', N'T202002141716016801', NULL, N'100', N'200.00', N'1', N'.00', N'0', N'0', N'2020-02-14 17:16:01.643', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'4', N'1', N'0', N'1', N'T202002150850272482', NULL, N'105', N'200.00', N'1', N'.01', N'0', N'0', N'2020-02-15 08:50:27.850', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'5', N'1', N'0', N'1', N'T202002150907393635', NULL, N'140', N'200.00', N'1', N'28000.00', N'0', N'0', N'2020-02-15 09:07:39.730', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'6', N'1', N'0', N'1', N'T202002191625331017', N'15693749812020021916254221', N'101', N'.01', N'1', N'101.00', N'0', N'1', N'2020-02-19 16:25:33.393', N'2020-02-19 17:29:59.130', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'7', N'1', N'0', N'1', N'T202002191626348199', N'156937498120200219173945983', N'101', N'.01', N'1', N'101.00', N'0', N'1', N'2020-02-19 16:26:34.877', N'2020-02-19 17:39:59.227', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'8', N'1', N'0', N'1', N'T202002191646578661', N'156937498120200219164704329', N'102', N'.01', N'1', N'102.00', N'0', N'1', N'2020-02-19 16:46:57.883', N'2020-02-19 17:21:23.240', N'999')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'9', N'1', N'0', N'1', N'T202002191652188124', N'156937498120200219165225357', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 16:52:18.823', N'2020-02-19 17:26:38.780', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'10', N'1', N'0', N'1', N'T202002191657057895', N'156937498120200219165726874', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 16:57:05.020', N'2020-02-19 17:11:35.807', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'11', N'1', N'0', N'1', N'T202002191700363025', N'156937498120200219170043950', N'11', N'.01', N'1', N'11.00', N'0', N'1', N'2020-02-19 17:00:36.063', N'2020-02-19 17:14:55.830', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'12', N'1', N'0', N'1', N'T202002191705197713', N'15693749812020021917070386', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 17:05:19.703', N'2020-02-19 17:07:13.503', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'13', N'1', N'0', N'1', N'T202002191714573970', N'156937498120200219171505178', N'11', N'.01', N'1', N'11.00', N'0', N'1', N'2020-02-19 17:14:57.513', N'2020-02-19 17:15:12.580', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'14', N'1', N'0', N'1', N'T202002191737006800', N'156937498120200219173716556', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 17:37:00.150', N'2020-02-19 17:37:23.193', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'15', N'1', N'0', N'1', N'T202002191748122529', N'156937498120200219174818470', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 17:48:12.537', N'2020-02-19 17:48:30.473', N'10')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'16', N'1', N'0', N'1', N'T202002191750417190', N'156937498120200219175050209', N'10', N'.01', N'1', N'10.00', N'0', N'1', N'2020-02-19 17:50:41.073', N'2020-02-19 17:51:07.220', N'测试')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'17', N'1', N'0', N'1', N'T202002191755162485', NULL, N'11', N'.01', N'1', N'.11', N'0', N'0', N'2020-02-19 17:55:16.727', NULL, N'手机')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'18', N'14', N'2', N'1', N'T202003021141002783', NULL, N'100', N'.01', NULL, N'1.00', N'0', N'0', N'2020-03-02 11:41:00.353', NULL, N'12232')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'19', N'14', N'2', N'1', N'T202003021143377210', NULL, N'1000', N'.01', NULL, N'10.00', N'0', N'0', N'2020-03-02 11:43:37.400', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'20', N'14', N'2', N'1', N'T202003021144208805', N'156937498120200302114425101', N'1', N'.01', N'1', N'1.00', N'0', N'1', N'2020-03-02 11:44:20.623', N'2020-03-02 11:44:45.617', NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'21', N'16', N'4', N'1', N'T202003021927225746', NULL, N'100', N'.01', N'1', N'1.00', N'0', N'0', N'2020-03-02 19:27:22.167', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'22', N'16', N'4', N'1', N'T202003021929169333', NULL, N'100', N'.01', N'1', N'1.00', N'0', N'0', N'2020-03-02 19:29:16.240', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'23', N'1', N'0', N'1', N'T202003041059187825', NULL, N'5000000', N'.01', NULL, N'50000.00', N'0', N'0', N'2020-03-04 10:59:18.897', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'24', N'1', N'0', N'1', N'T202003041100059519', NULL, N'500', N'.01', NULL, N'5.00', N'0', N'0', N'2020-03-04 11:00:05.633', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'25', N'1', N'0', N'1', N'T202003041100474244', NULL, N'100', N'.01', NULL, N'1.00', N'0', N'0', N'2020-03-04 11:00:47.983', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'26', N'1', N'0', N'1', N'T202003041103294638', NULL, N'100', N'.01', N'1', N'1.00', N'0', N'0', N'2020-03-04 11:03:29.833', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'27', N'1', N'0', N'1', N'T202003131422074087', NULL, N'20', N'.01', NULL, N'.20', N'0', N'0', N'2020-03-13 14:22:07.613', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'28', N'1', N'0', N'1', N'T202003131422177736', NULL, N'100', N'.01', NULL, N'1.00', N'0', N'0', N'2020-03-13 14:22:17.160', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'29', N'1', N'0', N'1', N'T202003131424035230', NULL, N'100', N'.01', NULL, N'1.00', N'0', N'0', N'2020-03-13 14:24:03.213', NULL, N'123')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'30', N'1', N'0', N'1', N'T202003131426035862', NULL, N'100', N'.01', NULL, N'1.00', N'0', N'0', N'2020-03-13 14:26:03.117', NULL, N'123')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'31', N'1', N'0', N'1', N'T202005150923556890', NULL, N'100', N'.01', NULL, N'1.00', N'1', N'0', N'2020-05-15 09:23:55.263', NULL, NULL)
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'32', N'1', N'0', N'1', N'T202006241422395784', NULL, NULL, N'.01', NULL, NULL, N'0', N'0', N'2020-06-24 14:22:39.190', NULL, N'&nbsp;')
GO

INSERT INTO [dbo].[st_tyres] ([id], [user_id], [company_id], [pro_id], [tyre_no], [trade_no], [tyre_count], [tyre_price], [pay_id], [pay_amount], [status], [pay_status], [add_time], [done_time], [remark]) VALUES (N'33', N'1', N'0', N'1', N'T202006241422394939', NULL, NULL, N'.01', NULL, NULL, N'0', N'0', N'2020-06-24 14:22:39.877', NULL, N'&nbsp;')
GO

SET IDENTITY_INSERT [dbo].[st_tyres] OFF
GO


-- ----------------------------
-- Primary Key structure for table dt_manager
-- ----------------------------
ALTER TABLE [dbo].[dt_manager] ADD CONSTRAINT [PK_dt_manager] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_manager_log
-- ----------------------------
ALTER TABLE [dbo].[dt_manager_log] ADD CONSTRAINT [PK_dt_manager_log] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_manager_role_list
-- ----------------------------
ALTER TABLE [dbo].[dt_manager_role_list] ADD CONSTRAINT [PK_dt_manager_role_copy1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_navigation
-- ----------------------------
ALTER TABLE [dbo].[dt_navigation] ADD CONSTRAINT [PK_dt_navigation] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_weixin_access_token
-- ----------------------------
ALTER TABLE [dbo].[dt_weixin_access_token] ADD CONSTRAINT [PK_dt_weixin_access_token] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_weixin_account
-- ----------------------------
ALTER TABLE [dbo].[dt_weixin_account] ADD CONSTRAINT [PK_dt_weixin_account] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_weixin_request_content
-- ----------------------------
ALTER TABLE [dbo].[dt_weixin_request_content] ADD CONSTRAINT [PK_dt_weixin_request_content] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_weixin_request_rule
-- ----------------------------
ALTER TABLE [dbo].[dt_weixin_request_rule] ADD CONSTRAINT [PK_dt_weixin_request_rule] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dt_weixin_response_content
-- ----------------------------
ALTER TABLE [dbo].[dt_weixin_response_content] ADD CONSTRAINT [PK_dt_weixin_response_content] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_agent
-- ----------------------------
ALTER TABLE [dbo].[st_agent] ADD CONSTRAINT [PK_st_agent] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_base_devices
-- ----------------------------
ALTER TABLE [dbo].[st_base_devices] ADD CONSTRAINT [PK_st_base_devices] PRIMARY KEY CLUSTERED ([imeid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_device_goods
-- ----------------------------
ALTER TABLE [dbo].[st_device_goods] ADD CONSTRAINT [PK_st_device_goods] PRIMARY KEY CLUSTERED ([deviceId], [goodsId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_device_log
-- ----------------------------
ALTER TABLE [dbo].[st_device_log] ADD CONSTRAINT [PK_st_device_log] PRIMARY KEY CLUSTERED ([imeid], [add_time])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_devices
-- ----------------------------
ALTER TABLE [dbo].[st_devices] ADD CONSTRAINT [PK_st_devices] PRIMARY KEY CLUSTERED ([imeid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_goods
-- ----------------------------
ALTER TABLE [dbo].[st_goods] ADD CONSTRAINT [PK_st_goods] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_orders
-- ----------------------------
ALTER TABLE [dbo].[st_orders] ADD CONSTRAINT [PK_st_orders] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_place_manager
-- ----------------------------
ALTER TABLE [dbo].[st_place_manager] ADD CONSTRAINT [PK_st_place_manager] PRIMARY KEY CLUSTERED ([placeId], [managerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_places
-- ----------------------------
ALTER TABLE [dbo].[st_places] ADD CONSTRAINT [PK_st_places] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table st_tyres
-- ----------------------------
ALTER TABLE [dbo].[st_tyres] ADD CONSTRAINT [PK_st_tyres] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

