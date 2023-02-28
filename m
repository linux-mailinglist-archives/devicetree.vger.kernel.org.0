Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDA6C6A5DDF
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 18:02:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229470AbjB1RC5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 12:02:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjB1RC4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 12:02:56 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B72271A
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 09:02:54 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1pX3NI-00089o-DU; Tue, 28 Feb 2023 18:02:48 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH] arm64: dts: imx8mp-debix: add USB host support
Date:   Tue, 28 Feb 2023 18:02:47 +0100
Message-Id: <20230228170247.910655-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for the 4 USB3 host ports on the board, which are
connected to the i.MX8MP SoC via a Realtek RTS5411 hub.

As the schematic for the board is not available, I could not validate
that this really reflects the reality, but I modeled things after the
hacked in usage of the GPIOs in the downstream kernel.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../dts/freescale/imx8mp-debix-model-a.dts    | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
index 2876d18f2a38..94dc089e4550 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
@@ -43,6 +43,17 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	reg_usb_hub: regulator-usb-hub {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usb_hub>;
+		regulator-name = "USB_HUB";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio4 26 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &A53_0 {
@@ -254,6 +265,39 @@ &uart4 {
 	status = "okay";
 };
 
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb1>;
+	dr_mode = "host";
+	status = "okay";
+
+	/* 2.x hub on port 1 */
+	usb_hub_2_x: hub@1 {
+		compatible = "usbbda,5411";
+		reg = <1>;
+		reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_usb_hub>;
+		peer-hub = <&usb_hub_3_x>;
+	};
+
+	/* 3.x hub on port 2 */
+	usb_hub_3_x: hub@2 {
+		compatible = "usbbda,411";
+		reg = <2>;
+		reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_usb_hub>;
+		peer-hub = <&usb_hub_2_x>;
+	};
+};
+
 /* SD Card */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -384,6 +428,12 @@ MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x41
 		>;
 	};
 
+	pinctrl_reg_usb_hub: regusbhubgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26				0x19
+		>;
+	};
+
 	pinctrl_rtc_int: rtcintgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x140
@@ -411,6 +461,13 @@ MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX				0x49
 		>;
 	};
 
+	pinctrl_usb1: usb1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR				0x10
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25				0x19
+		>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
-- 
2.30.2

