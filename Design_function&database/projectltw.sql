/*
 Navicat Premium Data Transfer

 Source Server         : LTWEB
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : projectltw

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 27/11/2022 17:08:10
*/ 
SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;-- ----------------------------
-- Table structure for ct_pr
-- ----------------------------
DROP TABLE
IF
	EXISTS `ct_pr`;
CREATE TABLE `ct_pr` (
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`NSX` DATE NOT NULL,
	`HSD` DATE NOT NULL,
	`BRAND` VARCHAR ( 50 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`DESCRIBE` VARCHAR ( 2000 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`WEIGHT` DOUBLE NOT NULL,
	`ORIGIN` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	INDEX `PK_ID_PR` ( `ID_PR` ASC ) USING BTREE,
	CONSTRAINT `PK_ID_PR` FOREIGN KEY ( `ID_PR` ) REFERENCES `product` ( `ID_PR` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of ct_pr
-- ----------------------------
-- ----------------------------
-- Table structure for discount_code
-- ----------------------------
DROP TABLE
IF
	EXISTS `discount_code`;
CREATE TABLE `discount_code` (
	`ID_CODE` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ID_USER` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`CODE` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`NUMBER` INT NULL DEFAULT NULL,
	`TYPE_DISC` BIT ( 1 ) NULL DEFAULT NULL,
	PRIMARY KEY ( `ID_CODE` ) USING BTREE,
	INDEX `PR_ID_USER` ( `ID_USER` ASC ) USING BTREE,
	CONSTRAINT `PR_ID_USER` FOREIGN KEY ( `ID_USER` ) REFERENCES `user` ( `ID_USER` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of discount_code
-- ----------------------------
-- ----------------------------
-- Table structure for feed_back
-- ----------------------------
DROP TABLE
IF
	EXISTS `feed_back`;
CREATE TABLE `feed_back` (
	`ID_USER` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`SRORESTART` INT NULL DEFAULT NULL,
	`TEXT` VARCHAR ( 500 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`DATE` DATE NULL DEFAULT NULL,
	INDEX `ID_USER` ( `ID_USER` ASC ) USING BTREE,
	INDEX `ID_PR` ( `ID_PR` ASC ) USING BTREE,
	CONSTRAINT `ID_PR` FOREIGN KEY ( `ID_PR` ) REFERENCES `product` ( `ID_PR` ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `ID_USER` FOREIGN KEY ( `ID_USER` ) REFERENCES `user` ( `ID_USER` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of feed_back
-- ----------------------------
-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE
IF
	EXISTS `image`;
CREATE TABLE `image` (
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`ID_IMG` VARCHAR ( 25 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`URL` VARCHAR ( 255 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `ID_IMG` ) USING BTREE,
	INDEX `id_product` ( `ID_PR` ASC ) USING BTREE,
	CONSTRAINT `id_product` FOREIGN KEY ( `ID_PR` ) REFERENCES `product` ( `ID_PR` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image`
VALUES
	( 'prod1', 'm1Coop01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\banh-hoi-gao-lut-coop-select-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod2', 'm1Coop02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-dai-thom-8-coop-select-5kg-1-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod3', 'm1Coop03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-giong-nhat-coop-select-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod4', 'm1Coop04', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-nang-hoa-coop-select-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod5', 'm1Coop05', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-om-18-coop-select-5-kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod6', 'm1Coop06', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-thom-jasmine-coop-select-5kg1-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod7', 'm1Coop07', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\coop-select\\gao-thom-st21-coop-select-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod8', 'm1Ecoba01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Ecoba\\gao-huu-co-kim-me-gao-lut-ecoba-organic-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod9', 'm1Ecoba02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Ecoba\\gao-huu-co-ngoc-me-ecoba-organic-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod10', 'm1Ecoba03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Ecoba\\gao-huu-co-sakura-ecoba-organic-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod11', 'm1Finest01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-lut-do-coop-finest-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod12', 'm1Finest02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-lut-tim-than-coop-finest-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod13', 'm1Finest03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-thai-hommali-coop-finest-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod14', 'm1Finest04', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-thom-st24-coop-finest-2kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod15', 'm1Finest05', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-thom-st25-coop-finest-7-kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod16', 'm1Finest06', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Finest\\gao-thom-st25-thuong-hang-coop-finest-2kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod17', 'm1Gaolut01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-huyet-rong-lotus-rice-nutrichoice-hop-0-5kg-202103040832315314_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod18', 'm1Gaolut02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-do-ong-cu-tui-1kg-202103040826290886_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod19', 'm1Gaolut03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-do-simply-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod20', 'm1Gaolut04', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-home-rice-tui-2kg-202103040827108785_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod21', 'm1Gaolut05', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-huu-co-hoa-nang-hop-2kg-202103050141386641_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod22', 'm1Gaolut06', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-ita-rice-2kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod23', 'm1Gaolut07', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-lut-jasmine-huong-lai-hat-chia-lotus-rice-nutrichoice-hop-0-5kg-202206080908113446_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod24', 'm1Gaolut08', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Gao-lut\\gao-tim-than-ong-tho-tui-1kg-202105201437552781_300x300.jpeg' );
INSERT INTO `image`
VALUES
	( 'prod25', 'm1HNT01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Hat-ngoc-troi\\gao-hat-ngoc-troi-bach-duong-bich-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod26', 'm1HNT02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Hat-ngoc-troi\\gao-hat-ngoc-troi-thien-long-bich-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod27', 'm1HNT03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Hat-ngoc-troi\\gao-thom-hat-ngoc-troi-thien-vuong-bich-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod28', 'm1LacViet01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Lac-Viet\\gao-lac-viet-de-nhat-st25-tui-5kg-202210110941589891_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod29', 'm1LacViet02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Lac-Viet\\gao-lac-viet-deo-thom-st5-tui-5kg-202210110942352192_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod30', 'm1LacViet03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Lac-Viet\\gao-lac-viet-hao-hang-st24-tui-5kg-202210110942572190_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod31', 'm1LacViet04', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Lac-Viet\\gao-lac-viet-huong-lua-tui-5kg-202205211715591470_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod32', 'm1LacViet05', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Lac-Viet\\gao-lac-viet-xk51-tui-5kg-202205211713507395_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod33', 'm1Meizan01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Meizan\\gao-meizan-nang-thom-tui-5kg-202103040818518051_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod34', 'm1Meizan02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Meizan\\gao-tam-thom-meizan-tui-5kg-202103040825529781_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod35', 'm1Natita01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\natita\\gao-dinh-duong-naita-family-2kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod36', 'm1Natita02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\natita\\gao-dinh-duong-naita-gold-2kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod37', 'm1VuaGao01', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-tam-song-hong-vua-gao-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod38', 'm1VuaGao02', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-thom-dam-da-vua-gao-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod39', 'm1VuaGao03', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-thom-huong-viet-vua-gao-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod40', 'm1VuaGao04', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-thom-lang-ta-vua-gao-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod41', 'm1VuaGao05', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-thom-vua-gao-huong-viet-tui-5kg-202105041532553509_300x300.jpeg' );
INSERT INTO `image`
VALUES
	( 'prod42', 'm1VuaGao06', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-thom-vua-gao-lang-ta-tui-5kg-202105050824360176_300x300.jpeg' );
INSERT INTO `image`
VALUES
	( 'prod43', 'm1VuaGao07', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Gao\\Vua-gao\\gao-trang-tu-tam-vua-gao-5kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod44', 'm21', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\gao-nep-cai-hoa-vang-coop-select-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod53', 'm210', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-sap-thom-ong-cu-tui-1kg-202103131613052927_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod54', 'm211', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-sap-vinh-hien-tui-1kg-202103040826093614_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod55', 'm212', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-thom-giong-thai-coop-select-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod56', 'm213', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-thom-meizan-tui-1kg-202103040801442668_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod45', 'm22', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\gao-nep-cai-hoa-vang-ngoc-hoan-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod46', 'm23', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-bac-viet-san-tui-1kg-202103040810147166_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod47', 'm24', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-cai-hoa-vang-ong-cu-tui-1kg-202103131631574575_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod48', 'm25', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-cai-hoa-vang-pmt-tui-1kg-202103040814148193_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod49', 'm26', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-cai-hoa-vang-vinh-hien-tui-1kg-202103040830355507_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod50', 'm27', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-chum-vinh-hien-tui-1kg-202103201002091467_300x300.jpeg' );
INSERT INTO `image`
VALUES
	( 'prod51', 'm28', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-sap-meizan-long-an-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod52', 'm29', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Nep\\nep-sap-meizan-long-an-tui-1kg-202103040831023482_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod67', 'm31', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\bap-hat-dong-lanh-mama-food-goi-250g-202205171021267119_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod76', 'm310', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-ha-lan-xanh-vang-huu-co-markal-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod77', 'm311', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-lang-do-cam-san-ho-huu-co-markal-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod78', 'm312', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-nanh-xuan-hong-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod79', 'm313', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-trang-bi-pmt-250g-202205241033102293_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod80', 'm314', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-xanh-ca-xuan-hong-goi-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod81', 'm315', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-xanh-hot-xuan-hong-goi-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod68', 'm32', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\bap-hat-dong-lanh-tran-gia-goi-500g-202205171036015761_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod69', 'm33', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-den-xanh-long-xuan-hong-goi-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod70', 'm34', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-den-xanh-long-xuan-hong-goi-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod71', 'm35', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-den-xuan-hong-goi-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod72', 'm36', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-do-xuan-hong-goi-300g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod73', 'm37', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-do-xuan-hong-goi-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod74', 'm38', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-ga-huu-co-markal-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod75', 'm39', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau-ha-lan-dong-lanh-mama-food-goi-200g-202205171021061114_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod57', 'm3BapSG01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\bap hat sg food\\bap-ngot-dong-lanh-sg-food-goi-500g-202205171020571740_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod57', 'm3BapSG01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\bap hat sg food\\sellingpoint (6).jpg' );
INSERT INTO `image`
VALUES
	( 'prod57', 'm3BapSG01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\bap hat sg food\\bap-ngot-dong-lanh-sg-food-goi-500g-202107282355270510.jpg' );
INSERT INTO `image`
VALUES
	( 'prod58', 'm3DauDenVietSan01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau den viet san\\dau-den-viet-san-150g-202205231452334172_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod58', 'm3DauDenVietSan01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau den viet san\\sellingpoint (4).jpg' );
INSERT INTO `image`
VALUES
	( 'prod58', 'm3DauDenVietSan01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau den viet san\\dau-den-viet-san-300g-201812041650361262.jpg' );
INSERT INTO `image`
VALUES
	( 'prod59', 'm3DauDoPMT01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do tay pmt\\dau-do-tay-pmt-250g-202205241030573406_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod59', 'm3DauDoPMT01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do tay pmt\\sellingpoint (1).jpg' );
INSERT INTO `image`
VALUES
	( 'prod59', 'm3DauDoPMT01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do tay pmt\\dau-do-tay-pmt-goi-250g-201912121542045611.jpg' );
INSERT INTO `image`
VALUES
	( 'prod59', 'm3DauDoPMT01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do tay pmt\\dau-do-tay-pmt-goi-250g-201912121542052295.jpg' );
INSERT INTO `image`
VALUES
	( 'prod60', 'm3DauDoVietSan01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do viet san\\dau-do-viet-san-500g-201812041406447073.jpg' );
INSERT INTO `image`
VALUES
	( 'prod60', 'm3DauDoVietSan01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do viet san\\sellingpoint.jpg' );
INSERT INTO `image`
VALUES
	( 'prod60', 'm3DauDoVietSan01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau do viet san\\dau-do-viet-san-500g-201812041406472077.jpg' );
INSERT INTO `image`
VALUES
	( 'prod61', 'm3DauHaLanSG01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan sg food\\dau-ha-lan-sg-food-goi-500g-202208090905319049_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod61', 'm3DauHaLanSG01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan sg food\\sellingpoint (5).jpg' );
INSERT INTO `image`
VALUES
	( 'prod61', 'm3DauHaLanSG01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan sg food\\dau-ha-lan-sg-food-goi-500g-202108161108273144.jpg' );
INSERT INTO `image`
VALUES
	( 'prod62', 'm3DauHaLanTranGia01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan tran gia\\dau-ha-lan-tran-gia-goi-400g-202205171021316328_300x300.png' );
INSERT INTO `image`
VALUES
	( 'prod62', 'm3DauHaLanTranGia01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan tran gia\\dau-ha-lan-tran-gia-goi-400g-202202170857265098.jpg' );
INSERT INTO `image`
VALUES
	( 'prod62', 'm3DauHaLanTranGia01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau ha lan tran gia\\dau-ha-lan-tran-gia-goi-500g-202108161056363034.jpg' );
INSERT INTO `image`
VALUES
	( 'prod63', 'm3DauPhong01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau phong\\dau-phong-xuan-hong-goi-500g-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod63', 'm3DauPhong01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau phong\\dau-phong-viet-san-150g-201812041440239877.jpg' );
INSERT INTO `image`
VALUES
	( 'prod64', 'm3DauTrangVietSan01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau trang viet san\\dau-trang-viet-san-500g-202205231521509286_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod64', 'm3DauTrangVietSan01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau trang viet san\\sellingpoint (1).jpg' );
INSERT INTO `image`
VALUES
	( 'prod64', 'm3DauTrangVietSan01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau trang viet san\\dau-trang-viet-san-500g-201812041508342837.jpg' );
INSERT INTO `image`
VALUES
	( 'prod66', 'm3DauXanh01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh viet san\\dau-xanh-hat-viet-san-300g-202205231506157365_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod66', 'm3DauXanh01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh viet san\\sellingpoint (2).jpg' );
INSERT INTO `image`
VALUES
	( 'prod66', 'm3DauXanh01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh viet san\\dau-xanh-hat-viet-san-300g-201812041531452886.jpg' );
INSERT INTO `image`
VALUES
	( 'prod65', 'm3DauXanhKhongVo01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh ko vo viet san\\dau-xanh-khong-vo-viet-san-150g-201812041433533926.jpg' );
INSERT INTO `image`
VALUES
	( 'prod65', 'm3DauXanhKhongVo01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh ko vo viet san\\sellingpoint (3).jpg' );
INSERT INTO `image`
VALUES
	( 'prod65', 'm3DauXanhKhongVo01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Dau\\dau xanh ko vo viet san\\dau-xanh-khong-vo-viet-san-300g-201812041528035871.jpg' );
INSERT INTO `image`
VALUES
	( 'prod82', 'm4BotBapM01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-meizan\\bot-bap-meizan1.jpg' );
INSERT INTO `image`
VALUES
	( 'prod82', 'm4BotBapM01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-meizan\\bot-bap-meizan2.jpg' );
INSERT INTO `image`
VALUES
	( 'prod82', 'm4BotBapM01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-meizan\\bot-bap-meizan3.jpg' );
INSERT INTO `image`
VALUES
	( 'prod82', 'm4BotBapM01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-meizan\\bot-bap-meizan4.jpg' );
INSERT INTO `image`
VALUES
	( 'prod83', 'm4BotBapT01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-tan-san\\bot-bap-tan-sang-goi-150g-202102060024474779.jpg' );
INSERT INTO `image`
VALUES
	( 'prod83', 'm4BotBapT01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-tan-san\\bot-bap-tan-sang-goi-150g-202102060024480613.jpg' );
INSERT INTO `image`
VALUES
	( 'prod83', 'm4BotBapT01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-bap-tan-san\\bot-bap-tan-sang-goi-150g-202203211105049926.jpg' );
INSERT INTO `image`
VALUES
	( 'prod84', 'm4BotMi01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-mi-dd-meizan\\bot-mi-da-dung-meizan-1kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod84', 'm4BotMi01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-mi-dd-meizan\\bot-mi-da-dung-meizan-cao-cap-goi-500g-202202121120164880.jpg' );
INSERT INTO `image`
VALUES
	( 'prod84', 'm4BotMi01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-mi-dd-meizan\\bot-mi-da-dung-meizan-goi-500g-201903221357212164.jpg' );
INSERT INTO `image`
VALUES
	( 'prod84', 'm4BotMi01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-mi-dd-meizan\\bot-mi-da-dung-meizan-goi-500g-201903221357213355.jpg' );
INSERT INTO `image`
VALUES
	( 'prod85', 'm4BotNang01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-nang-tan-san\\bot-nang-tan-sang-goi-400g-202102060020004073.jpg' );
INSERT INTO `image`
VALUES
	( 'prod85', 'm4BotNang01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-nang-tan-san\\bot-nang-tan-sang-goi-400g-202102060020008816.jpg' );
INSERT INTO `image`
VALUES
	( 'prod85', 'm4BotNang01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Bot-nang-tan-san\\bot-nang-tan-sang-goi-400g-202203211534161306.jpg' );
INSERT INTO `image`
VALUES
	( 'prod86', 'm4NguCocVD01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-viet-dai\\bot-ngu-coc-an-kieng-viet-dai-bich-400g-202210201449349516.jpg' );
INSERT INTO `image`
VALUES
	( 'prod86', 'm4NguCocVD01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-viet-dai\\bot-ngu-coc-an-kieng-viet-dai-bich-400g-202210201449347237.jpg' );
INSERT INTO `image`
VALUES
	( 'prod86', 'm4NguCocVD01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-viet-dai\\bot-ngu-coc-an-kieng-viet-dai-bich-400g-202210201449355467.jpg' );
INSERT INTO `image`
VALUES
	( 'prod86', 'm4NguCocVD01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-viet-dai\\bot-ngu-coc-an-kieng-viet-dai-bich-400g-202210201449357388.jpg' );
INSERT INTO `image`
VALUES
	( 'prod87', 'm4NguCocVina01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-vinacafe\\ngu-coc-dinh-duong-vinacafe-bfast-bich-500g-202205210942462207_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod87', 'm4NguCocVina01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-vinacafe\\ngu-coc-dinh-duong-vinacafe-bfast-bich-500g-202004241129534802.jpg' );
INSERT INTO `image`
VALUES
	( 'prod87', 'm4NguCocVina01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-vinacafe\\sellingpoint.jpg' );
INSERT INTO `image`
VALUES
	( 'prod88', 'm4NguCocYum01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-yumfood\\thuc-pham-bo-sung-ngu-coc-dinh-duong-yumfood-goi-500g-202010122202206323.jpg' );
INSERT INTO `image`
VALUES
	( 'prod88', 'm4NguCocYum01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-yumfood\\bot-bap-meizan-goi-1kg-202203241615294791.jpg' );
INSERT INTO `image`
VALUES
	( 'prod88', 'm4NguCocYum01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Bot\\Ngu-coc-yumfood\\thuc-pham-bo-sung-ngu-coc-dinh-duong-yumfood-goi-500g-202010122202245743.jpg' );
INSERT INTO `image`
VALUES
	( 'prod89', 'm5BapMy01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-my\\bap-my-sieu-ngot-coop-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod89', 'm5BapMy01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-my\\bap-my-2-trai-202012282219112903.jpg' );
INSERT INTO `image`
VALUES
	( 'prod89', 'm5BapMy01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-my\\bap-my-tui-2-trai-tu-600g-tro-len-202205201551409025.jpg' );
INSERT INTO `image`
VALUES
	( 'prod89', 'm5BapMy01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-my\\bap-my-tui-2-trai-tu-600g-tro-len-202205201552148121.jpg' );
INSERT INTO `image`
VALUES
	( 'prod90', 'm5BapNep01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-nep\\bap-nep-cap-coop-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod90', 'm5BapNep01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-nep\\bap-nep-cap-202207161545587500.jpg' );
INSERT INTO `image`
VALUES
	( 'prod90', 'm5BapNep01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-nep\\bap-nep-cap-202207161543300656.jpg' );
INSERT INTO `image`
VALUES
	( 'prod90', 'm5BapNep01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\bap-nep\\bap-nep-cap-202207161543292519.jpg' );
INSERT INTO `image`
VALUES
	( 'prod91', 'm5KhoaiLangMat01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-mat\\khoai-lang-mat-tui-1kg-3-10-cu-202209180802068974_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod91', 'm5KhoaiLangMat01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-mat\\khoai-lang-mat-tui-1kg-3-10-cu-202209180802403359.jpg' );
INSERT INTO `image`
VALUES
	( 'prod91', 'm5KhoaiLangMat01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-mat\\khoai-lang-nhat-tui-1kg-4-10-cu-202205201544144843.jpg' );
INSERT INTO `image`
VALUES
	( 'prod91', 'm5KhoaiLangMat01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-mat\\khoai-lang-nhat-tui-1kg-4-10-cu-202209060830277612.jpg' );
INSERT INTO `image`
VALUES
	( 'prod92', 'm5KhoaiLangNhat01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-nhat\\khoai-lang-nhat-tui-1kg-4-10-cu-202209060831213650_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod92', 'm5KhoaiLangNhat01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-nhat\\khoai-lang-nhat-tui-1kg-4-10-cu-202205201543286468.jpg' );
INSERT INTO `image`
VALUES
	( 'prod92', 'm5KhoaiLangNhat01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-nhat\\khoai-lang-nhat-tui-1kg-4-10-cu-202205201544144843.jpg' );
INSERT INTO `image`
VALUES
	( 'prod92', 'm5KhoaiLangNhat01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-nhat\\khoai-lang-nhat-tui-1kg-4-10-cu-202209060830277612.jpg' );
INSERT INTO `image`
VALUES
	( 'prod93', 'm5KhoaiLangTim01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-tim\\khoai-lang-tim-giong-nhat-kg-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod93', 'm5KhoaiLangTim01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-tim\\khoai-lang-tim-tui-1kg-4-10-cu-202209060830277612.jpg' );
INSERT INTO `image`
VALUES
	( 'prod93', 'm5KhoaiLangTim01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-tim\\khoai-lang-tim-tui-500g-202105051946310826.jpg' );
INSERT INTO `image`
VALUES
	( 'prod94', 'm5KhoaiLangTrang01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-lang-trang\\khoai-lang-trang-tui-500g-202105061423227274.jpg' );
INSERT INTO `image`
VALUES
	( 'prod95', 'm5KhoaiMi01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-mi\\khoai-mi.png' );
INSERT INTO `image`
VALUES
	( 'prod96', 'm5KhoaiMo01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-mo\\khoai-mo-tui-1kg-1-2-cu-202209141012253686_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod97', 'm5KhoaiMon01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-mon\\khoai-mon-tui-500g-1-cu-202210211654522303_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod97', 'm5KhoaiMon01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-mon\\khoai-mon-tui-500g-1-cu-202205201542114062.jpg' );
INSERT INTO `image`
VALUES
	( 'prod97', 'm5KhoaiMon01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-mon\\khoai-mon-tui-500g-1-cu-202205201538208669.jpg' );
INSERT INTO `image`
VALUES
	( 'prod98', 'm5KhoaiTayBi01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-bi\\khoai-tay-bi-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod98', 'm5KhoaiTayBi01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-bi\\khoai-tay-bi-tui-500g-202101071039274313.jpg' );
INSERT INTO `image`
VALUES
	( 'prod98', 'm5KhoaiTayBi01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-bi\\khoai-tay-bi-tui-500g-202101071039277764.jpg' );
INSERT INTO `image`
VALUES
	( 'prod98', 'm5KhoaiTayBi01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-bi\\khoai-tay-bi-tui-500g-202101071039283648.jpg' );
INSERT INTO `image`
VALUES
	( 'prod99', 'm5KhoaiTayDaLat01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-dalat\\khoai-tay-da-lat-300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod99', 'm5KhoaiTayDaLat01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-dalat\\khoai-tay-bi-tui-500g-202101071039283648.jpg' );
INSERT INTO `image`
VALUES
	( 'prod99', 'm5KhoaiTayDaLat01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\khoai-tay-dalat\\khoai-tay-bi-tui-500g-202101071039277764.jpg' );
INSERT INTO `image`
VALUES
	( 'prod100', 'm5San01a', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\san\\cu-san-tui-1kg-3-5-cu-202209060829526388_300x300.jpg' );
INSERT INTO `image`
VALUES
	( 'prod100', 'm5San01b', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\san\\cu-san-tui-1kg-3-5-cu-202205201546346566.jpg' );
INSERT INTO `image`
VALUES
	( 'prod100', 'm5San01c', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\san\\cu-san-tui-1kg-3-5-cu-202205201547355369.jpg' );
INSERT INTO `image`
VALUES
	( 'prod100', 'm5San01d', 'main_project\\BHNFoods\\src\\main\\webapp\\ImageproductNew\\Khoai\\san\\cu-san-tui-1kg-3-5-cu-202209060829022287.jpg' );-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE
IF
	EXISTS `like`;
CREATE TABLE `like` (
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ID_USER` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	INDEX `FK_ID_PR` ( `ID_PR` ASC ) USING BTREE,
	INDEX `FK_ID_USER` ( `ID_USER` ASC ) USING BTREE,
	CONSTRAINT `FK_ID_PR` FOREIGN KEY ( `ID_PR` ) REFERENCES `product` ( `ID_PR` ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `FK_ID_USER` FOREIGN KEY ( `ID_USER` ) REFERENCES `user` ( `ID_USER` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like`
VALUES
	( 'prod1', 'user1' );
INSERT INTO `like`
VALUES
	( 'prod34', 'user1' );
INSERT INTO `like`
VALUES
	( 'prod83', 'user1' );
INSERT INTO `like`
VALUES
	( 'prod2', 'user1' );
INSERT INTO `like`
VALUES
	( 'prod14', 'user2' );
INSERT INTO `like`
VALUES
	( 'prod63', 'user2' );
INSERT INTO `like`
VALUES
	( 'prod23', 'user4' );
INSERT INTO `like`
VALUES
	( 'prod72', 'user4' );
INSERT INTO `like`
VALUES
	( 'prod88', 'user4' );-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE
IF
	EXISTS `menu`;
CREATE TABLE `menu` (
	`ID_MENU` VARCHAR ( 6 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`NAME_MENU` VARCHAR ( 30 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `ID_MENU` ) USING BTREE 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu`
VALUES
	( 'm1', 'G???o' );
INSERT INTO `menu`
VALUES
	( 'm2', 'N???p' );
INSERT INTO `menu`
VALUES
	( 'm3', 'C??c lo???i h???t' );
INSERT INTO `menu`
VALUES
	( 'm4', 'C??c lo???i b???t' );
INSERT INTO `menu`
VALUES
	( 'm5', 'C??c lo???i c???, tr??i' );-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE
IF
	EXISTS `orders`;
CREATE TABLE `orders` (
	`ID_ORDERS` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`PHONE_ORDERS` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ADDRESS_ORDERS` VARCHAR ( 100 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`TIME_DELIVERY` DATETIME NOT NULL,
	`CONDITION` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `ID_ORDERS` ) USING BTREE 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of orders
-- ----------------------------
-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE
IF
	EXISTS `product`;
CREATE TABLE `product` (
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ID_MENU` VARCHAR ( 6 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`ID_IMG` VARCHAR ( 25 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`DISCOUNT` SMALLINT NULL DEFAULT NULL,
	`PRICE` FLOAT NOT NULL,
	`NAME_PR` VARCHAR ( 50 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `ID_PR` ) USING BTREE,
	INDEX `ID_IMG` ( `ID_IMG` ASC ) USING BTREE,
	INDEX `ID_MENU` ( `ID_MENU` ASC ) USING BTREE,
	CONSTRAINT `ID_MENU` FOREIGN KEY ( `ID_MENU` ) REFERENCES `menu` ( `ID_MENU` ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `PK_ID_IMG` FOREIGN KEY ( `ID_IMG` ) REFERENCES `image` ( `ID_IMG` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product`
VALUES
	( 'prod1', 'm1', 'm1Coop01', 20, 30000, 'B??nh h???i g???o l???t Coop Select 300g' );
INSERT INTO `product`
VALUES
	( 'prod10', 'm1', 'm1Ecoba03', 20, 25000, 'G???o h???u c?? Sakura Ecoba 1kg' );
INSERT INTO `product`
VALUES
	( 'prod100', 'm5', 'm5San01a', 0, 20000, 'C??? s???n 1kg (3-5 c???)' );
INSERT INTO `product`
VALUES
	( 'prod11', 'm1', 'm1Finest01', 0, 25000, 'G???o l???t ????? Finest 1kg' );
INSERT INTO `product`
VALUES
	( 'prod12', 'm1', 'm1Finest02', 0, 38000, 'G???o l???t t??m than Finest 1kg' );
INSERT INTO `product`
VALUES
	( 'prod13', 'm1', 'm1Finest03', 0, 120000, 'G???o Th??i Hommali Finest 5kg' );
INSERT INTO `product`
VALUES
	( 'prod14', 'm1', 'm1Finest04', 0, 45000, 'G???o th??m ST24 Finest 2kg' );
INSERT INTO `product`
VALUES
	( 'prod15', 'm1', 'm1Finest05', 0, 32000, 'G???o th??m ST25 Finest 7kg' );
INSERT INTO `product`
VALUES
	( 'prod16', 'm1', 'm1Finest06', 20, 21000, 'G???o th??m ST25 th?????ng h???ng Finest 2kg' );
INSERT INTO `product`
VALUES
	( 'prod17', 'm1', 'm1Gaolut01', 0, 25000, 'G???o l???t huy???t R???ng 5kg' );
INSERT INTO `product`
VALUES
	( 'prod18', 'm1', 'm1Gaolut02', 0, 20000, 'G???o l???t ????? ??ng C??? t??i 1kg' );
INSERT INTO `product`
VALUES
	( 'prod19', 'm1', 'm1Gaolut03', 0, 20000, 'G???o l???t ????? Simply 1kg' );
INSERT INTO `product`
VALUES
	( 'prod2', 'm1', 'm1Coop02', 20, 30000, 'G???o d??i th??m 8 Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod20', 'm1', 'm1Gaolut04', 0, 25000, 'G???o l???t ????? Home Rice 1kg' );
INSERT INTO `product`
VALUES
	( 'prod21', 'm1', 'm1Gaolut05', 0, 50000, 'G???o l???t h???u c?? Hoa N???ng 2kg' );
INSERT INTO `product`
VALUES
	( 'prod22', 'm1', 'm1Gaolut06', 0, 40000, 'G???o l???t Ita Rice 2kg' );
INSERT INTO `product`
VALUES
	( 'prod23', 'm1', 'm1Gaolut07', 0, 45000, 'G???o l???t Jasmine h????ng l??i h???t chia 2kg' );
INSERT INTO `product`
VALUES
	( 'prod24', 'm1', 'm1Gaolut08', 0, 20000, 'G???o t??m than ??ng th??? 1kg' );
INSERT INTO `product`
VALUES
	( 'prod25', 'm1', 'm1HNT01', 0, 100000, 'G???o h???t ng???c tr???i B???ch D????ng 5kg' );
INSERT INTO `product`
VALUES
	( 'prod26', 'm1', 'm1HNT02', 0, 120000, 'G???o h???t ng???c tr???i Thi??n Long 5kg' );
INSERT INTO `product`
VALUES
	( 'prod27', 'm1', 'm1HNT03', 0, 80000, 'G???o th??m h???t ng???c tr???i Thi??n V????ng 5kg' );
INSERT INTO `product`
VALUES
	( 'prod28', 'm1', 'm1LacViet01', 0, 100000, 'G???o L???c Vi???t ????? Nh???t ST25 5kg' );
INSERT INTO `product`
VALUES
	( 'prod29', 'm1', 'm1LacViet02', 0, 80000, 'G???o L???c Vi???t d???o th??m ST5 5kg' );
INSERT INTO `product`
VALUES
	( 'prod3', 'm1', 'm1Coop03', 0, 100000, 'G???o gi???ng Nh???t Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod30', 'm1', 'm1LacViet03', 0, 90000, 'G???o L???c Vi???t h???o h???ng ST24 5kg' );
INSERT INTO `product`
VALUES
	( 'prod31', 'm1', 'm1LacViet04', 0, 75000, 'G???o L???c Vi???t h????ng l??a 5kg' );
INSERT INTO `product`
VALUES
	( 'prod32', 'm1', 'm1LacViet05', 0, 80000, 'G???o L???c Vi???t XK51 5kg' );
INSERT INTO `product`
VALUES
	( 'prod33', 'm1', 'm1Meizan01', 0, 90000, 'G???o Meizan N??ng Th??m 5kg' );
INSERT INTO `product`
VALUES
	( 'prod34', 'm1', 'm1Meizan02', 0, 75000, 'G???o G???o T???m Th??m Meizan 5kg' );
INSERT INTO `product`
VALUES
	( 'prod35', 'm1', 'm1Natita01', 0, 35000, 'G???o dinh d?????ng Natita family 2kg' );
INSERT INTO `product`
VALUES
	( 'prod36', 'm1', 'm1Natita02', 0, 40000, 'G???o dinh d?????ng Natita gold 2kg' );
INSERT INTO `product`
VALUES
	( 'prod37', 'm1', 'm1VuaGao01', 0, 100000, 'G???o T??m s??ng H???ng Vua G???o 5kg' );
INSERT INTO `product`
VALUES
	( 'prod38', 'm1', 'm1VuaGao02', 0, 80000, 'G???o th??m ?????m ???? Vua G???o 5kg' );
INSERT INTO `product`
VALUES
	( 'prod39', 'm1', 'm1VuaGao03', 0, 70000, 'G???o th??m h????ng Vi???t Vua G???o 5kg' );
INSERT INTO `product`
VALUES
	( 'prod4', 'm1', 'm1Coop04', 0, 79000, 'G???o n??ng hoa Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod40', 'm1', 'm1VuaGao04', 0, 75000, 'G???o th??m l??ng ta Vua G???o 5kg' );
INSERT INTO `product`
VALUES
	( 'prod41', 'm1', 'm1VuaGao05', 0, 80000, 'G???o th??m Vua G???o H????ng Vi???t 5kg' );
INSERT INTO `product`
VALUES
	( 'prod42', 'm1', 'm1VuaGao06', 0, 95000, 'G???o th??m Vua G???o L??ng Ta 5kg' );
INSERT INTO `product`
VALUES
	( 'prod43', 'm1', 'm1VuaGao07', 0, 100000, 'G???o tr???ng T??? T??m Vua G???o 5kg' );
INSERT INTO `product`
VALUES
	( 'prod44', 'm2', 'm21', 0, 20000, 'G???o n???p C??i Hoa V??ng Coop Select 1kg' );
INSERT INTO `product`
VALUES
	( 'prod45', 'm2', 'm22', 0, 15000, 'G???o n???p c??i Hoa V??ng Ng???c Ho??ng 1kg' );
INSERT INTO `product`
VALUES
	( 'prod46', 'm2', 'm23', 0, 20000, 'G???o n???p B???c Vi???t Vi???t San 1kg' );
INSERT INTO `product`
VALUES
	( 'prod47', 'm2', 'm24', 0, 25000, 'G???o n???p C??i Hoa V??ng ??ng C??? 1kg' );
INSERT INTO `product`
VALUES
	( 'prod48', 'm2', 'm25', 0, 20000, 'G???o n???p C??i Hoa V??ng PMT 1kg' );
INSERT INTO `product`
VALUES
	( 'prod49', 'm2', 'm26', 0, 17000, 'G???o n???p C??i Hoa V??ng Vinh Hi???n 1kg' );
INSERT INTO `product`
VALUES
	( 'prod5', 'm1', 'm1Coop05', 0, 90000, 'G???o OM 18 Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod50', 'm2', 'm27', 0, 15000, 'G???o n???p Ch??m Vinh Hi???n 1kg' );
INSERT INTO `product`
VALUES
	( 'prod51', 'm2', 'm28', 0, 20000, 'G???o n???p S??p Meizan 1kg' );
INSERT INTO `product`
VALUES
	( 'prod52', 'm2', 'm29', 0, 18000, 'G???o n???p S??p Meizan Long An 1kg' );
INSERT INTO `product`
VALUES
	( 'prod53', 'm2', 'm210', 0, 16000, 'G???o n???p S??p th??m ??ng C??? 1kg' );
INSERT INTO `product`
VALUES
	( 'prod54', 'm2', 'm211', 10, 15000, 'G???o n???p S??p Vinh Hi???n 1kg' );
INSERT INTO `product`
VALUES
	( 'prod55', 'm2', 'm212', 0, 20000, 'G???o n???p th??m gi???ng Th??i Coop Select 1kg' );
INSERT INTO `product`
VALUES
	( 'prod56', 'm2', 'm213', 0, 19000, 'G???o n???p th??m Meizan 1kg' );
INSERT INTO `product`
VALUES
	( 'prod57', 'm3', 'm3BapSG01a', 0, 19000, 'B???p ng???t ????ng l???nh SGFood 500g' );
INSERT INTO `product`
VALUES
	( 'prod58', 'm3', 'm3DauDenVietSan01a', 0, 10000, '?????u ??en Vi???t San 150g' );
INSERT INTO `product`
VALUES
	( 'prod59', 'm3', 'm3DauDoPMT01a', 0, 17000, '?????u ????? T??y PMT 250g' );
INSERT INTO `product`
VALUES
	( 'prod6', 'm1', 'm1Coop06', 0, 83000, 'G???o th??m Jasmine Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod60', 'm3', 'm3DauDoVietSan01a', 0, 25000, '?????u ????? Vi???t San 500g' );
INSERT INTO `product`
VALUES
	( 'prod61', 'm3', 'm3DauHaLanSG01a', 0, 30000, '?????u H?? Lan SGFood 500g' );
INSERT INTO `product`
VALUES
	( 'prod62', 'm3', 'm3DauHaLanTranGia01a', 0, 35000, '?????u H?? Lan ????ng l???nh Tr???n Gia 400g' );
INSERT INTO `product`
VALUES
	( 'prod63', 'm3', 'm3DauPhong01a', 0, 20000, '?????u Ph???ng Xu??n H???ng 500g' );
INSERT INTO `product`
VALUES
	( 'prod64', 'm3', 'm3DauTrangVietSan01a', 0, 35000, '?????u Tr???ng Vi???t San 500g' );
INSERT INTO `product`
VALUES
	( 'prod65', 'm3', 'm3DauXanhKhongVo01a', 0, 20000, '?????u Xanh kh??ng v??? Vi???t San 150g' );
INSERT INTO `product`
VALUES
	( 'prod66', 'm3', 'm3DauXanh01a', 0, 30000, '?????u Xanh Vi???t San 300g' );
INSERT INTO `product`
VALUES
	( 'prod67', 'm3', 'm31', 0, 30000, 'B???p h???t ????ng l???nh MamaFood 250g' );
INSERT INTO `product`
VALUES
	( 'prod68', 'm3', 'm32', 0, 50000, 'B???p h???t ????ng l???nh Tr???n Gia 500g' );
INSERT INTO `product`
VALUES
	( 'prod69', 'm3', 'm33', 0, 30000, '?????u ??en xanh l??ng Xu??n H???ng 300g' );
INSERT INTO `product`
VALUES
	( 'prod7', 'm1', 'm1Coop07', 0, 79000, 'G???o th??m ST21 Coop Select 5kg' );
INSERT INTO `product`
VALUES
	( 'prod70', 'm3', 'm34', 0, 50000, '?????u ??en xanh l??ng Xu??n H???ng 500g' );
INSERT INTO `product`
VALUES
	( 'prod71', 'm3', 'm35', 0, 35000, '?????u ??en Xu??n H???ng 300g' );
INSERT INTO `product`
VALUES
	( 'prod72', 'm3', 'm36', 0, 30000, '?????u ????? Xu??n H???ng 300g' );
INSERT INTO `product`
VALUES
	( 'prod73', 'm3', 'm37', 0, 55000, '?????u ????? Xu??n H???ng 500g' );
INSERT INTO `product`
VALUES
	( 'prod74', 'm3', 'm38', 0, 150000, '?????u G?? h???u c?? Markal 500g' );
INSERT INTO `product`
VALUES
	( 'prod75', 'm3', 'm39', 0, 63000, '?????u H?? Lan ????ng l???nh MamaFood 200g' );
INSERT INTO `product`
VALUES
	( 'prod76', 'm3', 'm310', 0, 164000, '?????u H?? Lan Xanh V??ng h???u c?? Markal 500g' );
INSERT INTO `product`
VALUES
	( 'prod77', 'm3', 'm311', 0, 140000, '?????u l??ng ????? cam san h?? h???u c?? Markal 500g' );
INSERT INTO `product`
VALUES
	( 'prod78', 'm3', 'm312', 0, 40000, '?????u n??nh Xu??n H???ng 500g' );
INSERT INTO `product`
VALUES
	( 'prod79', 'm3', 'm313', 0, 23000, '?????u tr???ng bi PMT 250g' );
INSERT INTO `product`
VALUES
	( 'prod8', 'm1', 'm1Ecoba01', 0, 25000, 'G???o h???u c?? Kim M??? g???o l???t Ecoba 1kg' );
INSERT INTO `product`
VALUES
	( 'prod80', 'm3', 'm314', 0, 34000, '?????u xanh c?? Xu??n H???ng 300g' );
INSERT INTO `product`
VALUES
	( 'prod81', 'm3', 'm315', 0, 27000, '?????u xanh h???t Xu??n H???ng 300g' );
INSERT INTO `product`
VALUES
	( 'prod82', 'm4', 'm4BotBapM01a', 0, 16000, 'B???t b???p Meizan 150g' );
INSERT INTO `product`
VALUES
	( 'prod83', 'm4', 'm4BotBapT01a', 0, 18000, 'B???t b???p T???n Sang 150g' );
INSERT INTO `product`
VALUES
	( 'prod84', 'm4', 'm4BotMi01a', 0, 60000, 'B???t m?? ??a d???ng Meizan cao c???p 500g' );
INSERT INTO `product`
VALUES
	( 'prod85', 'm4', 'm4BotNang01a', 0, 45000, 'B???t n??ng T???n Sang 400g' );
INSERT INTO `product`
VALUES
	( 'prod86', 'm4', 'm4NguCocVD01a', 0, 35000, 'B???t ng?? c???c ??n ki??ng Vi???t ?????i 400g' );
INSERT INTO `product`
VALUES
	( 'prod87', 'm4', 'm4NguCocVina01a', 0, 65000, 'Ng?? c???c dinh d?????ng VinaCafe B\'Fast 500g' );
INSERT INTO `product`
VALUES
	( 'prod88', 'm4', 'm4NguCocYum01a', 0, 42000, 'Th???c ph???m b??? sung ng?? c???c dinh d?????ng YumFood 500g' );
INSERT INTO `product`
VALUES
	( 'prod89', 'm5', 'm5BapMy01a', 0, 27000, '2 tr??i b???p M??? (t??? 600g tr??? l??n)' );
INSERT INTO `product`
VALUES
	( 'prod9', 'm1', 'm1Ecoba02', 0, 30000, 'G???o h???u c?? Ng???c M??? Ecoba 1kg' );
INSERT INTO `product`
VALUES
	( 'prod90', 'm5', 'm5BapNep01a', 0, 27000, '2 tr??i b???p n???p (t??? 500g tr??? l??n)' );
INSERT INTO `product`
VALUES
	( 'prod91', 'm5', 'm5KhoaiLangMat01a', 0, 27000, 'Khoai lang m???t 1kg (3-5 c???)' );
INSERT INTO `product`
VALUES
	( 'prod92', 'm5', 'm5KhoaiLangNhat01a', 0, 35000, 'Khoai lang Nh???t 1kg (3-5 c???)' );
INSERT INTO `product`
VALUES
	( 'prod93', 'm5', 'm5KhoaiLangTim01a', 0, 25000, 'Khoai lang t??m 1kg (3-5 c???)' );
INSERT INTO `product`
VALUES
	( 'prod94', 'm5', 'm5KhoaiLangTrang01a', 0, 28000, 'Khoai lang tr???ng 1kg (3-5 c???)' );
INSERT INTO `product`
VALUES
	( 'prod95', 'm5', 'm5KhoaiMi01a', 0, 20000, 'Khoai m?? 1kg (2-3 c???)' );
INSERT INTO `product`
VALUES
	( 'prod96', 'm5', 'm5KhoaiMo01a', 0, 23000, 'Khoai m??? 1kg (1-2 c???)' );
INSERT INTO `product`
VALUES
	( 'prod97', 'm5', 'm5KhoaiMon01a', 0, 15000, 'Khoai m??n 500g (1 c???)' );
INSERT INTO `product`
VALUES
	( 'prod98', 'm5', 'm5KhoaiTayBi01a', 0, 16000, 'Khoai t??y bi 500g' );
INSERT INTO `product`
VALUES
	( 'prod99', 'm5', 'm5KhoaiTayDaLat01a', 0, 16000, 'Khoai t??y ???? L???t 500g' );-- ----------------------------
-- Table structure for sold_pr
-- ----------------------------
DROP TABLE
IF
	EXISTS `sold_pr`;
CREATE TABLE `sold_pr` (
	`ID_PR` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ID_USER` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`DATE_SOLD` DATETIME NOT NULL,
	`AMOUNT` INT NOT NULL,
	`ID_ORDERS` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	INDEX `SOLD_ID_PR` ( `ID_PR` ASC ) USING BTREE,
	INDEX `SOLD_ID_USER` ( `ID_USER` ASC ) USING BTREE,
	INDEX `SOLD_ID_ORDERS` ( `ID_ORDERS` ASC ) USING BTREE,
	CONSTRAINT `SOLD_ID_ORDERS` FOREIGN KEY ( `ID_ORDERS` ) REFERENCES `orders` ( `ID_ORDERS` ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `SOLD_ID_PR` FOREIGN KEY ( `ID_PR` ) REFERENCES `product` ( `ID_PR` ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `SOLD_ID_USER` FOREIGN KEY ( `ID_USER` ) REFERENCES `user` ( `ID_USER` ) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of sold_pr
-- ----------------------------
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE
IF
	EXISTS `user`;
CREATE TABLE `user` (
	`ID_USER` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`ADDRESS` VARCHAR ( 100 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
	`PASSW` VARCHAR ( 20 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`NAME_USER` VARCHAR ( 30 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`PHONE` VARCHAR ( 10 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`EMAIL` VARCHAR ( 30 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`BIRTHDAY` DATE NULL DEFAULT NULL,
	`DATE_SIGNUP` DATE NOT NULL,
	`SEX` BIT ( 1 ) NULL DEFAULT NULL,
	`Decentralization` TINYINT NOT NULL,
	PRIMARY KEY ( `ID_USER` ) USING BTREE 
) ENGINE = INNODB CHARACTER 
SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user`
VALUES
	( 'user1', '230 Man Thi???n, T??ng Nh??n Ph?? A, Th??? ?????c, H??? Ch?? M??nh', 'abc1232002', 'Nguy???n V??n Anh', '0378482600', 'vananh@gmail.com', '2002-04-23', '0000-00-00', b '0', 0 );
INSERT INTO `user`
VALUES
	( 'user2', '1 Paster, B???ch ?????ng,Qu???n 1, H??? Ch?? M??nh', 'le0020ab', 'L?? Th??? Quy???n', '0378271264', 'lethiquyen@gmail.com', '0000-00-00', '0000-00-00', b '1', 0 );
INSERT INTO `user`
VALUES
	( 'user3', '210 Ng?? Quy???n, Hi???p Ph??, Th??? ?????c, H??? Ch?? M??nh', 'Huong232002', 'H?? Anh Tu???n', '0384782952', 'anhTuan@gmail.com', '0000-00-00', '0000-00-00', b '0', 0 );
INSERT INTO `user`
VALUES
	( 'user4', '1/23 V?? V??n Ng??n,Th??nh Gi??ng,Qu???n 5, H??? Ch?? M??nh', 'duong220hee', 'H??? Th??nh D????ng', '0777271244', 'ThanhDuong04@gmail.com', '0000-00-00', '0000-00-00', b '1', 0 );
INSERT INTO `user`
VALUES
	( 'user5', '20/234 S??? 3,Linh Trung, Th??? ?????c, H??? Ch?? M??nh', 'baotaokao', 'Ph???m Gia B???o', '0794824102', 'GiaBao@gmail.com', '0000-00-00', '0000-00-00', b '0', 0 );
INSERT INTO `user`
VALUES
	( 'user6', '23 Hi???p B??nh, V?? Th??? S??u,Qu???n 5, H??? Ch?? M??nh', 'admin23@@', 'Nguy???n H??? Admin', '0779340238', 'AdminBHNFood04@gmail.com', '0000-00-00', '0000-00-00', b '0', 1 );

SET FOREIGN_KEY_CHECKS = 1;