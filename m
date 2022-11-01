Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8D3614643
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 10:06:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiKAJGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 05:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiKAJGu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 05:06:50 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4913918347
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667293609; x=1698829609;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=I1N7Fn3gvloQCtiyFn486Ds9HqbaKQkKY1VksbiRK1A=;
  b=aYXNtyUSVb2HUCvQQ2Q8879INhZ7JmnXyUNeu7lUoWY6NMCtQeHvw/CI
   anelV8PgB+HoeN9wzr/UQAqHZ1fNPhUmTGq2EkKkl+TzwvQuRcso0wFHY
   H8pTaxEO66VCDgFqmIlJvH2QoyaHweqg7XexmTdVHGwXkgdvQjYEEqf/6
   63mhxfc/0eSmqAk6EQ4m1ycKKXp0BD6x7Nw0YBR2DZ/NFhFKN5p3JjkvM
   igrnrEl+UlDdVg75brRENxg8zL+2F1ZVs5Gbpy9ntQbo8hBUYUuL6h75+
   qgE1UeWZ/qxZdYrVffvcalVbVM/tcLfKf+i6BF63vICa61njFy+VRltcw
   A==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083496"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Nov 2022 10:06:47 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 01 Nov 2022 10:06:47 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 01 Nov 2022 10:06:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667293607; x=1698829607;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=I1N7Fn3gvloQCtiyFn486Ds9HqbaKQkKY1VksbiRK1A=;
  b=IhjR7uWMqMSGlkGW0PJWdLHleJfaXbGmzRWk5T7j64H/pMjIb2fqdn1z
   feV48OoBY35rOr8efLKHhnWBmhw4R9ovf7Un7gLY1t26iVDbo2PGorlGM
   7mAiQOvYUao2un6mp9DP1akI+wb3KGi/4rqDIsXP6xNSaJUfCryKhPmvs
   4An4GvcmtiyRwaKr+unNegR44SxZvAGglcT0Vz14XznndGqeVpQVGWX9i
   WnCN09rDXNEPgQ2nvrdHQOoMQ6iAiWU/9IuM6Qk3N1uOdnY+hZ5QpEXoR
   t9XQPLvUYJlLqyskgmKo6f4r+ZBNsAqr/vQTkgPg0Yk+OcYfHNlq5qol1
   g==;
X-IronPort-AV: E=Sophos;i="5.95,230,1661810400"; 
   d="scan'208";a="27083495"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Nov 2022 10:06:47 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EDB09280056;
        Tue,  1 Nov 2022 10:06:46 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: mba8mpxl: Add PWM fan support
Date:   Tue,  1 Nov 2022 10:06:42 +0100
Message-Id: <20221101090642.269209-1-alexander.stein@ew.tq-group.com>
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

This adds the support for optional PWM fan 422J/2HP.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Adjust commit subject to match the board name

Now with inverted polarity support for pwm-fan in place, add PWM fan DT
nodes for TQMa8MPQL + MBa8MPxL. As this is optional, it's disabled by
default. This is based on next-20221018.

Note: This device needs 'pwm1_enable' set to 3. E.g. using udev rule:
SUBSYSTEM=="hwmon", DRIVERS=="pwm-fan", ATTR{pwm1_enable}="3"

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 76e92de05b3d..2cc41ce5c1a3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -55,6 +55,21 @@ clk_xtal25: clk-xtal25 {
 		clock-frequency = <25000000>;
 	};
 
+	fan0: pwm-fan {
+		compatible = "pwm-fan";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwmfan>;
+		fan-supply = <&reg_pwm_fan>;
+		#cooling-cells = <2>;
+		/* typical 25 kHz -> 40.000 nsec */
+		pwms = <&pwm3 0 40000 PWM_POLARITY_INVERTED>;
+		cooling-levels = <0 32 64 128 196 240>;
+		pulses-per-revolution = <2>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
+		status = "disabled";
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -115,6 +130,18 @@ display: display {
 		status = "disabled";
 	};
 
+	reg_pwm_fan: regulator-pwm-fan {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_regpwmfan>;
+		regulator-name = "FAN_PWR";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&gpio4 27 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vcc_12v0>;
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2 {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -172,6 +199,47 @@ linux,cma {
 			linux,cma-default;
 		};
 	};
+
+	thermal-zones {
+		soc-thermal {
+			trips {
+				soc_active0: trip-active0 {
+					temperature = <40000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				soc_active1: trip-active1 {
+					temperature = <48000>;
+					hysteresis = <3000>;
+					type = "active";
+				};
+
+				soc_active2: trip-active2 {
+					temperature = <60000>;
+					hysteresis = <10000>;
+					type = "active";
+				};
+			};
+
+			cooling-maps {
+				map1 {
+					trip = <&soc_active0>;
+					cooling-device = <&fan0 1 1>;
+				};
+
+				map2 {
+					trip = <&soc_active1>;
+					cooling-device = <&fan0 2 2>;
+				};
+
+				map3 {
+					trip = <&soc_active2>;
+					cooling-device = <&fan0 3 3>;
+				};
+			};
+		};
+	};
 };
 
 &ecspi1 {
@@ -762,10 +830,18 @@ pinctrl_pwm3: pwm3grp {
 		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__PWM3_OUT		0x14>;
 	};
 
+	pinctrl_pwmfan: pwmfangrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x80>; /* FAN RPM */
+	};
+
 	pinctrl_reg12v0: reg12v0grp {
 		fsl,pins = <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		0x140>; /* VCC12V enable */
 	};
 
+	pinctrl_regpwmfan: regpwmfangrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__GPIO4_IO27		0x80>;
+	};
+
 	/* X61 */
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__UART1_DCE_TX		0x140>,
-- 
2.34.1

