/*
 Navicat Premium Data Transfer

 Source Server         : jingdong
 Source Server Type    : MySQL
 Source Server Version : 50166
 Source Host           : 192.168.157.61:3306
 Source Schema         : dubhe

 Target Server Type    : MySQL
 Target Server Version : 50166
 File Encoding         : 65001

 Date: 28/02/2018 11:10:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `t_advertisement`;
CREATE TABLE `t_advertisement`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_title` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布内容标题',
  `message_text` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `message_image` longblob COMMENT '发布图片',
  `image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片链接',
  `message_author` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  `align_type` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL COMMENT '优先权限，是否置顶',
  `operator_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人',
  `operator_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '状态（1：发布，2：取消发布）',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发布内容表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_area_city
-- ----------------------------
DROP TABLE IF EXISTS `t_area_city`;
CREATE TABLE `t_area_city`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `city_id` int(11) NOT NULL COMMENT '市id',
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市名称',
  `parent_id` int(11) NOT NULL COMMENT '父级id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `city_id`(`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域-市级' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_area_county
-- ----------------------------
DROP TABLE IF EXISTS `t_area_county`;
CREATE TABLE `t_area_county`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `county_id` int(11) NOT NULL COMMENT '区县id',
  `county_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县名称',
  `parent_id` int(11) NOT NULL COMMENT '父级id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `county_id`(`county_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域-区县级' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_area_province
-- ----------------------------
DROP TABLE IF EXISTS `t_area_province`;
CREATE TABLE `t_area_province`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `province_id` int(11) NOT NULL COMMENT '省id',
  `province_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `province_id`(`province_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域-省级' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_business
-- ----------------------------
DROP TABLE IF EXISTS `t_company_business`;
CREATE TABLE `t_company_business`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '数据id',
  `company_business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司业务范围名称',
  `company_business_scope` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经营范围',
  `company_business_id` bigint(20) DEFAULT NULL,
  `operator_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人id',
  `operator_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '计划事务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_company_employee`;
CREATE TABLE `t_company_employee`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司ID',
  `company_type` int(11) NOT NULL COMMENT '公司类型',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `identity_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证号码',
  `identity_type` int(11) NOT NULL COMMENT '证件类型',
  `role_id` int(11) NOT NULL COMMENT '一级角色',
  `id_card_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证地址',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮件',
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话号码',
  `is_shareholder` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是出资股东',
  `total_real_payment` decimal(11, 2) DEFAULT 0.00 COMMENT '实际出资金额',
  `total_confirm_payment` decimal(11, 2) DEFAULT 0.00 COMMENT '确认出资金额',
  `confirm_payment_percentage` double(6, 4) DEFAULT NULL COMMENT '认缴出资额占比',
  `sex` int(11) DEFAULT NULL COMMENT '性别（个体工商户）（1，男  2，女）',
  `politics_status` int(11) DEFAULT NULL COMMENT '政治面貌（个体工商户）',
  `employment_status` int(11) DEFAULT NULL COMMENT '职业状况（个体工商户）',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id_card_post_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证地区邮政编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 594 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '注册公司法人表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_employee_pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_company_employee_pay_detail`;
CREATE TABLE `t_company_employee_pay_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `employee_id` bigint(11) NOT NULL COMMENT '员工id',
  `pay_type` int(1) NOT NULL COMMENT '出资方式',
  `real_payment` decimal(11, 4) NOT NULL COMMENT '实缴金额（万元）',
  `real_pay_time` datetime NOT NULL COMMENT '出资时间',
  `confirm_payment` decimal(11, 4) NOT NULL COMMENT '认缴金额(万元)',
  `confirm_pay_time` datetime NOT NULL COMMENT '认缴时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_employee_sign_task
-- ----------------------------
DROP TABLE IF EXISTS `t_company_employee_sign_task`;
CREATE TABLE `t_company_employee_sign_task`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司id',
  `employee_id` bigint(11) NOT NULL COMMENT '订单id',
  `status` int(1) NOT NULL COMMENT '签名状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_employee_id`(`employee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_name_check
-- ----------------------------
DROP TABLE IF EXISTS `t_company_name_check`;
CREATE TABLE `t_company_name_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单Id',
  `check_company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '已经核准的公司名称',
  `business_id` bigint(20) NOT NULL COMMENT '对应计划从事业务Id',
  `check_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '核准号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司名称核对表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_post_record
-- ----------------------------
DROP TABLE IF EXISTS `t_company_post_record`;
CREATE TABLE `t_company_post_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `last_post_date` datetime NOT NULL COMMENT '提交时间',
  `post_times` int(1) NOT NULL DEFAULT 1 COMMENT '提交次数',
  `status` int(1) NOT NULL COMMENT '提交状态',
  `post_back_date` datetime DEFAULT NULL COMMENT '提交回调时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_company_id`(`company_id`) USING BTREE,
  UNIQUE INDEX `uni_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 772 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_company_post_record_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_company_post_record_detail`;
CREATE TABLE `t_company_post_record_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `record_id` bigint(11) NOT NULL COMMENT '主提交记录id',
  `post_content` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提交内容',
  `status` int(1) NOT NULL COMMENT '提交状态',
  `post_back_date` datetime DEFAULT NULL COMMENT '提交回调时间',
  `post_back_content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_identity_post_record
-- ----------------------------
DROP TABLE IF EXISTS `t_identity_post_record`;
CREATE TABLE `t_identity_post_record`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司ID',
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单ID',
  `status` int(1) DEFAULT NULL COMMENT '发送状态',
  `post_times` int(11) DEFAULT 0 COMMENT '请求发送次数',
  `last_post_date` datetime DEFAULT NULL COMMENT '最后发送时间',
  `last_back_date` datetime DEFAULT NULL COMMENT '最后返回时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送身份证记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_identity_post_record_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_identity_post_record_detail`;
CREATE TABLE `t_identity_post_record_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) DEFAULT NULL COMMENT '记录ID',
  `post_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '推送内容',
  `post_date` datetime DEFAULT NULL COMMENT '推送时间',
  `back_content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '返回内容',
  `back_date` datetime DEFAULT NULL COMMENT '返回时间',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1016 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送身份证信息记录详细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `level` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志级别',
  `sms_notice` tinyint(1) NOT NULL DEFAULT 0 COMMENT '短信是否通知',
  `email_notice` tinyint(1) NOT NULL DEFAULT 0 COMMENT '邮件是否通知',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_opreator_user
-- ----------------------------
DROP TABLE IF EXISTS `t_opreator_user`;
CREATE TABLE `t_opreator_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operator_account` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运维Id',
  `operator_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运维名称',
  `operator_password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运维密码',
  `role_id` int(11) NOT NULL DEFAULT 2 COMMENT '角色（1：管理员；2：运维）',
  `phone_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮件',
  `valid` int(11) DEFAULT 1 COMMENT '有效性',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE,
  UNIQUE INDEX `operatorId_UNIQUE`(`operator_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户操作表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单唯一id',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务公司id',
  `address_id` int(1) DEFAULT NULL COMMENT '收货人信息id',
  `register_province_id` int(1) NOT NULL COMMENT '注册省份',
  `register_city_id` int(1) NOT NULL COMMENT '注册城市id',
  `register_county_id` int(1) NOT NULL COMMENT '注册区县id',
  `company_register_type` int(1) NOT NULL COMMENT '公司注册类型',
  `total_price` decimal(11, 4) NOT NULL DEFAULT 0.0000 COMMENT '总金额',
  `status` int(1) NOT NULL COMMENT '状态',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式',
  `pay_no` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付单号',
  `register_status` int(1) NOT NULL COMMENT '工商注册状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `payment_date` datetime DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uuid_UNIQUE`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单uuid',
  `sku` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品uuid',
  `sku_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `price` decimal(11, 4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 649 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单详情表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order_file
-- ----------------------------
DROP TABLE IF EXISTS `t_order_file`;
CREATE TABLE `t_order_file`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司id',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `count` int(1) NOT NULL COMMENT '文件数量',
  `send_type` int(1) NOT NULL COMMENT '交付方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order_pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_pay_detail`;
CREATE TABLE `t_order_pay_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `pay_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付id',
  `response_detail_id` bigint(11) DEFAULT NULL COMMENT '当前关联的响应结果id',
  `base_request_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '未加密的请求参数',
  `request_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密后的请求参数',
  `encrypt_key` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密key',
  `status` int(1) NOT NULL COMMENT '状态',
  `over_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order_pay_response_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_pay_response_detail`;
CREATE TABLE `t_order_pay_response_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增id',
  `pay_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付id',
  `base_response_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原始响应内容',
  `reponse_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '解密后的响应内容',
  `response_type` int(1) NOT NULL COMMENT '响应方式',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_register_company
-- ----------------------------
DROP TABLE IF EXISTS `t_register_company`;
CREATE TABLE `t_register_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户Id',
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司Id',
  `company_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘书公司id',
  `company_type` int(11) NOT NULL COMMENT '公司注册类型',
  `vendor_service_area_id` int(11) NOT NULL COMMENT '注册区域',
  `company_address_id` bigint(11) DEFAULT NULL,
  `register_amount` decimal(11, 2) DEFAULT NULL COMMENT '注册金额',
  `company_business_id` int(11) DEFAULT NULL COMMENT '计划从事业务',
  `partner_years` int(11) DEFAULT NULL COMMENT '合伙年限',
  `partner_count` int(11) DEFAULT NULL COMMENT '合伙人数',
  `max_partner_count` int(11) DEFAULT NULL COMMENT '有限合伙人',
  `hasDirectorate` int(11) DEFAULT 0 COMMENT '是否有董事会（0:没有；1：有）',
  `invest_condition` int(11) DEFAULT 1 COMMENT '投资情况（0:一人独资；1：多人投资）',
  `secretary_approve_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司审核',
  `secretary_approve_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司审核人名',
  `secretary_approve_time` datetime DEFAULT NULL COMMENT '秘书公司审核时间',
  `operator_approve_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批人Id',
  `operator_approve_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审批人姓名',
  `operator_approve_time` datetime DEFAULT NULL COMMENT '审批时间',
  `approve_status` int(10) DEFAULT 1 COMMENT '审核状态（1：待审核；2：审核通过；3：驳回）',
  `pay_status` int(11) DEFAULT NULL COMMENT '支付状态',
  `register_finish_time` datetime DEFAULT NULL COMMENT '注册完成时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `business_year` int(11) DEFAULT NULL COMMENT '营业年限（有限公司）',
  `employed_people` int(11) DEFAULT 0 COMMENT '从业总人数（个体工商户）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 750 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sku
-- ----------------------------
DROP TABLE IF EXISTS `t_sku`;
CREATE TABLE `t_sku`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `type_code` int(1) NOT NULL COMMENT '商品类型',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  `business_register_type` int(11) DEFAULT NULL COMMENT '工商注册类型（非工商注册商品为空）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sku_bind_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_sku_bind_tag`;
CREATE TABLE `t_sku_bind_tag`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sku` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku\n',
  `tag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `value` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值',
  `key` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku-tag-value组成的key，方便查询',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` timestamp DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sku_tag_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sku_tag_type`;
CREATE TABLE `t_sku_tag_type`  (
  `id` bigint(11) NOT NULL COMMENT '主键id',
  `tag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识类型',
  `status` int(1) NOT NULL COMMENT '状态',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `last_update_time` timestamp DEFAULT NULL COMMENT '最后一次修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tag_UNIQUE`(`tag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sku_tag_value
-- ----------------------------
DROP TABLE IF EXISTS `t_sku_tag_value`;
CREATE TABLE `t_sku_tag_value`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `value` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `key` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'tag-value',
  `create_time` datetime NOT NULL,
  `last_update_time` timestamp DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sku_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sku_type`;
CREATE TABLE `t_sku_type`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `code` int(1) NOT NULL COMMENT '商品类别',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  `status` int(1) NOT NULL COMMENT '类别状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code_UNIQUE`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_sms_check_code
-- ----------------------------
DROP TABLE IF EXISTS `t_sms_check_code`;
CREATE TABLE `t_sms_check_code`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增id',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `type` int(1) NOT NULL COMMENT '短信类型',
  `sms_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信内容',
  `check_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码',
  `status` int(1) NOT NULL COMMENT '状态',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `valid_time` datetime NOT NULL COMMENT '有效时间',
  `valid_interval` int(1) NOT NULL COMMENT '有效时间间隔',
  `next_send_time` datetime NOT NULL COMMENT '下次允许发送时间',
  `send_interval` int(1) NOT NULL COMMENT '下次允许发送的时间间隔',
  `check_count` int(1) NOT NULL DEFAULT 0 COMMENT '总验证次数',
  `check_error_count` int(1) NOT NULL DEFAULT 0 COMMENT '错误验证次数',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 584 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户唯一id',
  `person_id` bigint(20) DEFAULT NULL COMMENT '实名认证人id',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `identity_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '认证号码',
  `identity_type` int(11) DEFAULT NULL COMMENT '证件类型',
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `status` int(1) NOT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系地址',
  `identity_check` int(1) DEFAULT NULL COMMENT '实名认证',
  `id_card_positive_img` longblob COMMENT '身份证正面照片',
  `id_card_opposite_img` longblob COMMENT '身份证反面照片',
  `receive_ca_certificate` int(1) NOT NULL DEFAULT 0 COMMENT '是否领取了CA证书',
  `identity_time` datetime DEFAULT NULL COMMENT '实名认证时间',
  `register_company_count` int(11) NOT NULL DEFAULT 0 COMMENT '注册公司数量',
  `secretary_company_count` int(1) NOT NULL DEFAULT 0 COMMENT '秘书公司数量',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identity_card_img_pdf` longblob COMMENT '身份证图片pdf存储',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE,
  UNIQUE INDEX `phone_number_UNIQUE`(`phone_number`) USING BTREE,
  UNIQUE INDEX `uuid_UNIQUE`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 420 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_auth_task
-- ----------------------------
DROP TABLE IF EXISTS `t_user_auth_task`;
CREATE TABLE `t_user_auth_task`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增id',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `company_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司id',
  `employee_id` bigint(11) NOT NULL COMMENT '公司员工id',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '认证状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_bank_card
-- ----------------------------
DROP TABLE IF EXISTS `t_user_bank_card`;
CREATE TABLE `t_user_bank_card`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `bank_type` int(1) DEFAULT NULL COMMENT '银行类型',
  `bank_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行名称',
  `card_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '银行卡号',
  `card_type` int(1) DEFAULT NULL COMMENT '银行卡类型',
  `status` int(1) NOT NULL COMMENT '状态',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `card_number_UNIQUE`(`card_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_mail_address
-- ----------------------------
DROP TABLE IF EXISTS `t_user_mail_address`;
CREATE TABLE `t_user_mail_address`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户UUID',
  `status` int(1) NOT NULL,
  `province_id` bigint(11) NOT NULL COMMENT '省id',
  `city_id` bigint(11) NOT NULL COMMENT '市id',
  `county_id` bigint(11) NOT NULL COMMENT '区县id',
  `detail_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `consignee_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人名称',
  `consignee_phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人手机号码',
  `create_time` datetime NOT NULL,
  `update_time` timestamp DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor`;
CREATE TABLE `t_vendor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `apply_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '入住平台申请单号',
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户Id',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司id',
  `vendor_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘书公司名称',
  `legal_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `legal_identity_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证号码',
  `legal_identity_type` int(11) NOT NULL COMMENT '证件类型',
  `business_license` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '营业执照号码',
  `business_license_image` longblob COMMENT '营业执照图片',
  `register_amount` decimal(11, 2) DEFAULT NULL COMMENT '注册金额',
  `business_scope` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经营范围',
  `company_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经营地址',
  `approve_status` int(11) DEFAULT NULL COMMENT '审核状态（1:新申请；2：审核通过；3：审核驳回）',
  `cooperate_status` int(11) DEFAULT 1 COMMENT '合作状态（1：恢复合作；2：终止合作）',
  `phone_number` bigint(20) DEFAULT NULL COMMENT '手机号码',
  `approve_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人Id',
  `approve_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人名',
  `approve_time` datetime DEFAULT NULL COMMENT '审核通过时间',
  `remark` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注字段',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `license_UNIQUE`(`business_license`) USING BTREE,
  UNIQUE INDEX `vendor_id`(`vendor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秘书公司表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_company_business
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_company_business`;
CREATE TABLE `t_vendor_company_business`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司id',
  `company_business_id` bigint(11) DEFAULT NULL COMMENT '公司经营范围id',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid` int(11) DEFAULT 1 COMMENT '状态（0：无效，1：有效）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendor_id`(`vendor_id`, `company_business_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_contract`;
CREATE TABLE `t_vendor_contract`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘书公司ID',
  `contract_no` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '合同编号',
  `contract_start_time` datetime NOT NULL COMMENT '合同开始时间',
  `contract_end_time` datetime NOT NULL COMMENT '合同结束时间',
  `courier` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递公司',
  `courier_no` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递单号',
  `status` int(11) DEFAULT NULL COMMENT '状态：0: 无效，1：有效',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `contractNo_UNIQUE`(`contract_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秘书公司合同表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_mail_address
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_mail_address`;
CREATE TABLE `t_vendor_mail_address`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘书公司UUID',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '有效性（0：无效，1：有效）',
  `post_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮政编码',
  `detail_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `consignee_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人名称',
  `consignee_phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人手机号码',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秘书公司合同地址表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_service_area
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_service_area`;
CREATE TABLE `t_vendor_service_area`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘书公司id',
  `service_province_id` int(11) NOT NULL COMMENT '注册区域_省',
  `service_province_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注册区域_省_名称',
  `service_city_id` int(11) NOT NULL COMMENT '注册区域市',
  `service_city_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注册区域市名称',
  `service_county_id` int(11) NOT NULL COMMENT '服务区域的市县id',
  `service_county_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注册区域县名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `valid` int(11) DEFAULT 1 COMMENT '状态（0：无效；1：有效）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendor_id`(`vendor_id`, `service_province_id`, `service_city_id`, `service_county_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秘书公司服务区域表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_service_register_address
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_service_register_address`;
CREATE TABLE `t_vendor_service_register_address`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司id',
  `vendor_service_area_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司注册区域id',
  `service_register_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注册地址',
  `status` int(11) DEFAULT 1 COMMENT '地址状态（0：无效；1：有效）',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_sku
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_sku`;
CREATE TABLE `t_vendor_sku`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `vendor_sku_uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vendor_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sku_id` bigint(45) NOT NULL,
  `vendor_service_area_id` bigint(11) DEFAULT NULL COMMENT '注册区域-省',
  `price` decimal(11, 4) NOT NULL COMMENT '价格',
  `valid` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '商品是否上架（0：下架 1：上架）',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sku_uuid`(`vendor_sku_uuid`) USING BTREE,
  UNIQUE INDEX `vendorSkuArea`(`vendor_id`, `sku_id`, `vendor_service_area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vendor_sku_operate_his
-- ----------------------------
DROP TABLE IF EXISTS `t_vendor_sku_operate_his`;
CREATE TABLE `t_vendor_sku_operate_his`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_sku_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秘书公司商品id',
  `operator_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人ID',
  `operator_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人名称',
  `operator_remark` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `列 1` int(11) DEFAULT NULL,
  `check_company_name` bigint(20) NOT NULL COMMENT '公司核名',
  `post_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '推送内容',
  `business_id` bigint(20) NOT NULL COMMENT '对应计划从事业务Id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
