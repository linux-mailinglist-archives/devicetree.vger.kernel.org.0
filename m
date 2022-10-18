Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E5B2602794
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 10:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiJRIxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 04:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbiJRIxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 04:53:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC32B3F1FE
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 01:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666083220; x=1697619220;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=B1hZbfcowIGSkAmfyHuDx/f2mgU2YVi6+6fFNT1KU40=;
  b=ZyAu9qHSXJf0YRVwEn2dbun6D5RRkw+uZ1jVpT5k5CYyqL2MTk/RF0w0
   qS1P14DYvnxy4y3PDiWtCyEvXkH+nLD5DzC3PYGsqcjCo9lXgD3SOdI/G
   eUlLU9N5s7LiPwXZTluUDPWw0IIhhl6uRSawIOqJ1YdoA+z73gdFG2W6U
   Hx3tJVP/N2tNLzaudkfr8l5va2q/Oj7orSy7/+goxGwun7hg2bfBbU3Os
   2sIxjaNQ5FGRCxkuItPM1cbVKfj4aUbXENPidh+s3ogkRxv5Lv/LUJCWe
   p8VoqUd2trgdkd4k5IftHYpu4UHiyYBp1mEYFFlJA54P1554wIluz8d63
   A==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26812031"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 18 Oct 2022 10:53:37 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 18 Oct 2022 10:53:37 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 18 Oct 2022 10:53:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666083217; x=1697619217;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=B1hZbfcowIGSkAmfyHuDx/f2mgU2YVi6+6fFNT1KU40=;
  b=NDK/MFh4K7Ci9nLqJ6grH5TMkKT/425bxkcrnae5OQvTQtw4AcADExzd
   c5NfPnDGLxLFJRVpoJxfpb5hbsPszEqoPq5zI2tgccV8YQwv74n6aoVNm
   0g718vYchmY9aL1iRROs9k/JO6LXdEbZf4dsVtS3X+r82dFRQitNgWs34
   gp4fplWr6cEwnxkIek7ub/TPTZTFVAD+oFk5jDziK9Bdkxt7Mfomohs+E
   MsM2ATe6DzzNAdzBTR5c23C/Ch5Ye8scJGJ3GTH2VZCxWG/pX6pqRi1O0
   lA0TpKPPJlW/FaK2SzE+uzCXYm9BPJArTzZqDZu8JAUdGLUjR89sjG7HZ
   w==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26812030"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Oct 2022 10:53:37 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7998E280056;
        Tue, 18 Oct 2022 10:53:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: tqma8mpql: add PCIe support
Date:   Tue, 18 Oct 2022 10:53:29 +0200
Message-Id: <20221018085330.2540222-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PCIe support on TQMa8MPxL module on MBa8MPxL mainboard.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This is based on next-20221018 where imp8mp PCIe support has been
merged.

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 7bf6f81e87b4..7a32379cd006 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -8,6 +8,7 @@
 
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "imx8mp-tqma8mpql.dtsi"
 
@@ -48,6 +49,12 @@ backlight_lvds: backlight {
 		status = "disabled";
 	};
 
+	clk_xtal25: clk-xtal25 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -340,9 +347,16 @@ &gpio4 {
 			  "", "", "", "",
 			  "", "", "", "",
 			  "", "", "DP_IRQ", "DSI_EN",
-			  "HDMI_OC#", "TEMP_EVENT#", "PCIE_CLK_OE#", "",
+			  "HDMI_OC#", "TEMP_EVENT#", "PCIE_REFCLK_OE#", "",
 			  "", "", "", "FAN_PWR",
 			  "RTC_EVENT#", "CODEC_RST#", "", "";
+
+	pcie_refclkreq-hog {
+		gpio-hog;
+		gpios = <22 0>;
+		output-high;
+		line-name = "PCIE_REFCLK_OE#";
+	};
 };
 
 &gpio5 {
@@ -377,6 +391,13 @@ at24c02_54: eeprom@54 {
 		pagesize = <16>;
 		vcc-supply = <&reg_vcc_3v3>;
 	};
+
+	pcieclk: clk@6a {
+		compatible = "renesas,9fgv0241";
+		reg = <0x6a>;
+		clocks = <&clk_xtal25>;
+		#clock-cells = <1>;
+	};
 };
 
 &i2c4 {
@@ -407,6 +428,25 @@ &pcf85063 {
 	interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
 };
 
+&pcie_phy {
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	clocks = <&pcieclk 0>;
+	clock-names = "ref";
+	status = "okay";
+};
+
+&pcie {
+	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+		 <&clk IMX8MP_CLK_HSIO_AXI>,
+		 <&clk IMX8MP_CLK_PCIE_ROOT>;
+	clock-names = "pcie", "pcie_bus", "pcie_aux";
+	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
+	assigned-clock-rates = <10000000>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
+	status = "okay";
+};
+
 &pwm2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm2>;
-- 
2.25.1

