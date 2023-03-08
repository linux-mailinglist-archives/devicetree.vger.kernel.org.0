Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD966B07D7
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:02:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbjCHNCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:02:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbjCHNCP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:02:15 -0500
X-Greylist: delayed 430 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Mar 2023 05:00:25 PST
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [84.16.66.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 111E0867FF
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:00:24 -0800 (PST)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWsgM3BnJzMrQkn;
        Wed,  8 Mar 2023 13:53:19 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWsgL5r3MzMsl1Z;
        Wed,  8 Mar 2023 13:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678279999;
        bh=ws9lUnpRTqnTj/i1ccaVLSwptFwo0tpcYo9l93lctbo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=SqMMTMWsfwGiKCeZTDBiw2lYF+xKu6SyiqqUsnmRCOB0JCrmh1hNGOShARuMoVO5y
         oItqtvyWMhwf3dIg9S68mvbXziH7YMad7MMlcbn8HSQZVz+ILWfkSOpp3pW/55iUub
         rqORvCdLWZA7Q24Yjy9dAUSM2hPhUz3goM1k31Gg=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 21/25] arm64: dts: colibri-imx8x: Add todo comments
Date:   Wed,  8 Mar 2023 13:52:55 +0100
Message-Id: <20230308125300.58244-22-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308125300.58244-1-dev@pschenker.ch>
References: <20230308125300.58244-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Highlight what is still missing.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 .../boot/dts/freescale/imx8x-colibri.dtsi     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index e93e22c4053b..f70ab4db92ed 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -31,6 +31,10 @@ reg_module_3v3: regulator-module-3v3 {
 	};
 };
 
+/* TODO Analogue Inputs */
+
+/* TODO Cooling maps for DX */
+
 &cpu_alert0 {
 	hysteresis = <2000>;
 	temperature = <90000>;
@@ -64,6 +68,10 @@ ethphy0: ethernet-phy@2 {
 	};
 };
 
+/* TODO flexcan1 - 3 */
+
+/* TODO GPU */
+
 /* On-module I2C */
 &i2c0 {
 	#address-cells = <1>;
@@ -92,6 +100,10 @@ touchscreen@2c {
 	};
 };
 
+/* TODO i2c lvds0 accessible on FFC (X2) */
+
+/* TODO i2c lvds1 accessible on FFC (X3) */
+
 /* Colibri I2C */
 &i2c1 {
 	#address-cells = <1>;
@@ -109,6 +121,8 @@ &jpegenc {
 	status = "okay";
 };
 
+/* TODO Parallel RRB */
+
 /* Colibri UART_B */
 &lpuart0 {
 	pinctrl-names = "default";
@@ -307,6 +321,14 @@ &lsio_pwm2 {
 	pinctrl-names = "default";
 };
 
+/* TODO MIPI CSI */
+
+/* TODO MIPI DSI with DSI-to-HDMI bridge lt8912 */
+
+/* TODO on-module PCIe for Wi-Fi */
+
+/* TODO On-module i2s / Audio */
+
 /* On-module eMMC */
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -334,6 +356,12 @@ &usdhc2 {
 	vmmc-supply = <&reg_module_3v3>;
 };
 
+/* TODO USB Client/Host */
+
+/* TODO USB Host */
+
+/* TODO VPU Encoder/Decoder */
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ext_io0>, <&pinctrl_hog0>, <&pinctrl_hog1>,
-- 
2.39.2

