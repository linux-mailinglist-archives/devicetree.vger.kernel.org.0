Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3A47064E8
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 12:11:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbjEQKLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 06:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229810AbjEQKLS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 06:11:18 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC157449B
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 03:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684318273; x=1715854273;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vYpGVoqBurwiZdFF/2jilQZP7TtRncKvMxwvO6GnSiQ=;
  b=q9ZwFsKwJm6Y7he77Zbn3ulofS++DsRyct49lHleQ/xzZP4O+Oz74MuO
   uM6WBOZJblh18KhcTEEQuhZoKvMZfjfKuJrPeICx7+0q9V5p+LBAuSyCt
   BFgqrgJydwNG7G+A3WqnxlHiHzM2dbzLz0h8eKpfWnLEHVtac0jxiBbPp
   /xxOmkA8PmtByCAiF5frqUsb7/LUsLM5nwAD+OIKTyfGhHd9BxmzGl79l
   eDYnauFrGlHYtQyFtazTWm12lpNEJMBr6fYDxoWatziuLpG2AW1rX8h1q
   cIdLZNYzutut+JUos4UIvO8PcQr6ppiJA0lsnXIggPJ3BwO1cp+4wmjI6
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,281,1677538800"; 
   d="scan'208";a="30957962"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 17 May 2023 12:11:11 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 17 May 2023 12:11:11 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 17 May 2023 12:11:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684318271; x=1715854271;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vYpGVoqBurwiZdFF/2jilQZP7TtRncKvMxwvO6GnSiQ=;
  b=KDqSmJPQUTApj8MOS8dAxPkYekKpYG4ZEH9Veu49hi6S4MiDRhs1nOJ5
   +v9ww23W0OejZ83up/bywWR/ZsGNbrP8Qujf6iciFu4RksYGTJk5fdVgn
   j23aX5oAGGmGI1eosNiS/L3OLzgqr6y6lnXKHso08epcQsES6irNmLNZ/
   o08mafCErCMrO+A52IjV6FenFUWVSGf0uh0+jYzdbUBeGxhJ/BLZvesOl
   pSnQM7G4nBPIDxR0Htefsq1Tuhy5JRkRsZd3Gub9BtxFsVzW2x0i/oLjJ
   JKPopAHdnkSC7xaSFzIwTJkArhd5Qyy852Ni7RjGAiefedubmSSjNVHSs
   A==;
X-IronPort-AV: E=Sophos;i="5.99,281,1677538800"; 
   d="scan'208";a="30957961"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 May 2023 12:11:10 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 97871280087;
        Wed, 17 May 2023 12:11:10 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] ARM: dts: imx6qdl: Add HDMI to TQMa6x/MBa6
Date:   Wed, 17 May 2023 12:11:07 +0200
Message-Id: <20230517101107.1682625-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for a COTS monitor connected to X17.
4k monitors can be used, but are limited to 1080p.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Fix typo for pinctrl-* property

 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 41 +++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 7b7e6c2ad190..3be003c72de9 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -192,6 +192,13 @@ ethphy: ethernet-phy@3 {
 	};
 };
 
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	ddc-i2c-bus = <&i2c2>;
+	status = "okay";
+};
+
 &i2c1 {
 	tlv320aic32x4: audio-codec@18 {
 		compatible = "ti,tlv320aic32x4";
@@ -205,6 +212,17 @@ tlv320aic32x4: audio-codec@18 {
 	};
 };
 
+/* DDC */
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_recovery>;
+	scl-gpios = <&gpio4 12 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
@@ -396,6 +414,15 @@ MX6QDL_PAD_EIM_BCLK__GPIO6_IO31 0xb099 /* LED V16 */
 		>;
 	};
 
+	pinctrl_hdmi: hdmigrp {
+		/* NOTE: DDC is done via I2C2, so DON'T
+		 * configure DDC pins for HDMI!
+		 */
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE 0x1f8b0
+		>;
+	};
+
 	pinctrl_hog: hoggrp {
 		fsl,pins = <
 			MX6QDL_PAD_DI0_PIN4__GPIO4_IO20 0x0001b099
@@ -432,6 +459,20 @@ MX6QDL_PAD_NANDF_CS1__GPIO6_IO14 0x0001b099
 		>;
 	};
 
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b899
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA 0x4001b899
+		>;
+	};
+
+	pinctrl_i2c2_recovery: i2c2recoverygrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__GPIO4_IO12 0x4001b899
+			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13 0x4001b899
+		>;
+	};
+
 	pinctrl_pcie: pciegrp {
 		fsl,pins = <
 			/* HYS = 1, DSE = 110, 100k up, SPEED = HIGH (11)*/
-- 
2.34.1

