Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D827A614686
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 10:21:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbiKAJVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 05:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229905AbiKAJVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 05:21:39 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4982C10E2
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 02:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667294498; x=1698830498;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=tYpQuI9D9faace9AG9RYcoAOMMqzhp/l1Y+KvPKTtn0=;
  b=ODxdBtcNcpfaaWDoMyqEva+1KWe/QLae7RAURHcTUpx6K1abNSxO/ucn
   643Ww9dt8Xj+pgWw9IkO/HmUM0Q99srlZ3P8DGkh2rPL26aqEWuO5cYC0
   OQmatUFdJGnrd6ANTqIb4paam5k0kKbWOAo52aaJPXHPeY9uxgGE9MKK4
   yoKlPxJXyvly0Q6Poo32vq20RVv1+yKFHE9hWPVmpIFyflqbi+n1XLcns
   cIljWSkw/KLxNEXgM2g+C8Xzl7dstjeVV+K4RrqlUwNvvQC/DrepL+0IH
   43jGtnWKCwmaH85GSmbKOfyTwTLtyJHPL1jXFDxzZRh7tZTHdS4RSKvLP
   g==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083697"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Nov 2022 10:21:36 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 01 Nov 2022 10:21:36 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 01 Nov 2022 10:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667294496; x=1698830496;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=tYpQuI9D9faace9AG9RYcoAOMMqzhp/l1Y+KvPKTtn0=;
  b=kUS4yB/TTlCnARFur5h1XuZb208pgFzASgmOgCB/QkDBLs/dc+wbU6La
   KbmQJuu49A76XafVJAvW/b2Te79w7E6aSarKlnGvI2SwfDRsf6CFJrgVc
   unkjHST1j7AHWrag0TgJfKn1sWJUWHXxpygZ1MIHSEVi34Voo8PjTByyT
   d7GA6+zJ8OjSpMmZ/6P21BVHepXTftXCAG7LyzC0ctiBkTRQc3TVYGFR9
   E8hIyQL53xhJrQKSxporgZzUSL335PRcJY/YKxXZKlZy0OeDI8O2wqtak
   apOknPix+9DHGUgyeXUjFWS7YiJU2ggDJtfG14G27bbl8DEl3cyboAcvm
   g==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083695"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Nov 2022 10:21:36 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id ED26B280056;
        Tue,  1 Nov 2022 10:21:35 +0100 (CET)
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
Subject: [PATCH v2 1/2] arm64: dts: tqma8mpql: add PCIe support
Date:   Tue,  1 Nov 2022 10:21:29 +0100
Message-Id: <20221101092130.273651-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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
Changes in v2:
* Fix node name for PCIe refclkreq GPIO hog
* Fix node name for 9fgv0241

This is based on next-20221018 where imp8mp PCIe support has been
merged.

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 1c440909f580..3165044e87f4 100644
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
+	pcie-refclkreq-hog {
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
+	pcieclk: clock-generator@6a {
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
2.34.1

