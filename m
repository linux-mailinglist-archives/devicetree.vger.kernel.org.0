Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C91654D64BE
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:37:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237659AbiCKPiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 10:38:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348244AbiCKPiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 10:38:03 -0500
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB7591C65CC
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:36:59 -0800 (PST)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 09B7B4000F;
        Fri, 11 Mar 2022 15:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1647013018;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Ww9gtHQDQoi1Bwq+5zzxv5OcN6XmcgxZBm2pay7A5CA=;
        b=HlivYVxrEqU3Xfh9DDtVHn8n2J1x9w2x7TV9At2nzEQe/2z/ReW/u1EONNqMul7DJb5JC7
        xA8YaSrk2cORDVBN+lwdlvg1h5cAe5jPRT16vEWm+9/F+hnqK7ELfaKc4iVUvP4r8pho6t
        zsc6yKsa5Hi3ibmLmvlXWT21nzbbctRZv9W18Y8909Wb8gyWVkYpUpSNPYiJfIPsySWq/p
        21DO8TsOuz83YWimfc7eZ7dKkpnPZpnZpKIp4WhQsqs2Eu+AvStJIlKARiofEol3gmS6qO
        k2Ff28pmeQOkrId5M+qOhVMjr7veDroY944oXGTbIeIyUsBueAcTtbOYNvnc7A==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 2/2] ARM: dts: imx6q: Add Variscite MX6 Custom board support
Date:   Fri, 11 Mar 2022 16:36:14 +0100
Message-Id: <20220311153614.2191584-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311153614.2191584-1-gregory.clement@bootlin.com>
References: <20220311153614.2191584-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for the Variscite MX6 SoM Carrier Board.

This Carrier-Board has the following :
- LVDS interface for the VLCD-CAP-GLD-LVDS 7" LCD 800 x 480 touch display
- HDMI Connector
- USB Host + USB OTG Connector
- 10/100/1000 Mbps Ethernet
- miniPCI-Express slot
- SD Card connector
- Audio Headphone/Line In jack connectors
- S-ATA
- On-board DMIC
- RS485 Header
- CAN bus header
- SPI header
- Camera Interfaces header
- OnBoard RTC with Coin Backup battery socket
- RS232 Debug Header (IDC10)
- RS232 DTE

Product Page : https://www.variscite.com/product/single-board-computers/var-mx6customboard

The dts file based on the ones provided by Variscite on their own
kernel, but adapted for mainline.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 .../arm/boot/dts/imx6q-var-mx6customboard.dts | 241 ++++++++++++++++++
 2 files changed, 242 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-var-mx6customboard.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 235ad559acb2..ef3c9d6a8322 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -631,6 +631,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-udoo.dtb \
 	imx6q-utilite-pro.dtb \
 	imx6q-var-dt6customboard.dtb \
+	imx6q-var-mx6customboard.dtb \
 	imx6q-vicut1.dtb \
 	imx6q-wandboard.dtb \
 	imx6q-wandboard-revb1.dtb \
diff --git a/arch/arm/boot/dts/imx6q-var-mx6customboard.dts b/arch/arm/boot/dts/imx6q-var-mx6customboard.dts
new file mode 100644
index 000000000000..8137a8cfc209
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-var-mx6customboard.dts
@@ -0,0 +1,241 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Copyright 2016 Variscite, Ltd. All Rights Reserved
+// Copyright 2022 Bootlin
+
+#include "imx6qdl-var-som.dtsi"
+#include <dt-bindings/pwm/pwm.h>
+/ {
+	model = "Variscite MX6 Custom Board";
+
+	regulators {
+
+		reg_usb_otg_vbus: regulator-usb-otg-vbus {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_otg_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+		};
+
+		reg_usb_h1_vbus: regulator-usb-h1-vbud {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_h1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+		};
+
+		reg_audio: regulator-audio {
+			compatible = "regulator-fixed";
+			regulator-name = "tlv320aic3x-supply";
+			enable-active-high;
+		};
+
+	};
+
+	panel {
+		compatible =  "panel-lvds";
+		backlight = <&backlight_lvds>;
+		width-mm = <152>;
+		height-mm = <91>;
+		label = "etm070001adh6";
+		data-mapping = "jeida-18";
+
+		panel-timing {
+				clock-frequency = <32000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <39>;
+				hfront-porch = <39>;
+				vback-porch = <29>;
+				vfront-porch = <13>;
+				hsync-len = <47>;
+				vsync-len = <2>;
+			};
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&lvds0_out>;
+			};
+		};
+	};
+
+	backlight_lvds: backlight-lvds {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 50000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		status = "okay";
+	};
+
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_3>;
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+		touchscreen-size-x = <1800>;
+		touchscreen-size-y = <1000>;
+	};
+};
+
+&iomuxc {
+	imx6qdl-var-som-mx6 {
+
+		pinctrl_ipu1: ipu1grp {
+			fsl,pins = <
+				MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK	0x10
+				MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15		0x10
+				MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02		0x10
+				MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03		0x10
+				MX6QDL_PAD_DI0_PIN4__IPU1_DI0_PIN04		0x80000000
+				MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00	0x10
+				MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01	0x10
+				MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02	0x10
+				MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03	0x10
+				MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04	0x10
+				MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05	0x10
+				MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06	0x10
+				MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07	0x10
+				MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08	0x10
+				MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09	0x10
+				MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10	0x10
+				MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11	0x10
+				MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12	0x10
+				MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13	0x10
+				MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14	0x10
+				MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15	0x10
+				MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16	0x10
+				MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17	0x10
+				MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18	0x10
+				MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19	0x10
+				MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20	0x10
+				MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21	0x10
+				MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22	0x10
+				MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23	0x10
+			>;
+		};
+
+		pinctrl_ipu1_2: ipu1grp-2 { /* parallel camera */
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12		0x80000000
+				MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13		0x80000000
+				MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14		0x80000000
+				MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15		0x80000000
+				MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16		0x80000000
+				MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17		0x80000000
+				MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18		0x80000000
+				MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19		0x80000000
+				MX6QDL_PAD_CSI0_DATA_EN__IPU1_CSI0_DATA_EN	0x80000000
+				MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK	0x80000000
+				MX6QDL_PAD_CSI0_MCLK__IPU1_CSI0_HSYNC		0x80000000
+				MX6QDL_PAD_CSI0_VSYNC__IPU1_CSI0_VSYNC		0x80000000
+			>;
+		};
+
+		pinctrl_usbotg_var: usbotggrp-3 {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04 		0x17059
+			>;
+		};
+
+		pinctrl_usdhc1_1: usdhc1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17071
+				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x10071
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17071
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17071
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17071
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17071
+			>;
+		};
+
+		pinctrl_usdhc2_2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+			>;
+		};
+		pinctrl_flexcan1_3: flexcan1grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_7__FLEXCAN1_TX		0x80000000
+				MX6QDL_PAD_GPIO_8__FLEXCAN1_RX		0x80000000
+			>;
+		};
+	};
+};
+
+&mipi_csi {
+	status = "okay";
+	ipu_id = <0>;
+	csi_id = <1>;
+	v_channel = <0>;
+	lanes = <2>;
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_var>;
+	disable-over-current;
+	/* dr_mode: One of "host", "peripheral" or "otg". Defaults to "otg" */
+	dr_mode = "host" ;
+	status = "okay";
+};
+
+&usbphy1 {
+	tx-d-cal = <0x5>;
+};
+
+&usbphy2 {
+	tx-d-cal = <0x5>;
+};
+
+&usdhc1 {	/* uSDHC1, eMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1_1>;
+	non-removable;
+	keep-power-in-suspend;
+	enable-sdio-wakeup;
+	status = "okay";
+};
+
+&usdhc2 {	/* uSDHC2, MMC/SD card */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_2>;
+	cd-gpios = <&gpio4 14 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <24>;
+		status = "okay";
+		primary;
+		port@4 {
+			reg = <4>;
+
+			lvds0_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
-- 
2.34.1

