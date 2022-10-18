Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A97E460286A
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 11:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbiJRJdx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 05:33:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbiJRJdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 05:33:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C9CAE85B
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 02:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666085629; x=1697621629;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zzVmzdf9gGe6KCjUmJRnPyJwgjw7AVvnmW0eSNXMoC8=;
  b=fvPrn9GCl+zOzJHlLLE+SMNprLEk0lp5lMd1xdlTfZw4E5yJo8dVCdDW
   /ZQSNJRT7anfjEK2yG8uo2IDgUjHbp9aTwQOd4fi8ayzZKyXVvmcgza36
   A0jmX4kjseh1S0l70cXabo72lEiMoujk9L2tN+JXH+CcKEiQ/3KCEyF4m
   pd0h9TsyX5uTn4vvYYoRma2orfOY1w1NPnrVlnbyiCfog+7D6Lm2PdI8Z
   ub/Xj7/65cZnN/p5fw1yBg1Dx+RK/KNqRSGrW9ZsHh2av/+bE9w+Wlg13
   2PZoH3uB/wCrvKFmqJzpx1y+7KXh4qiJG6UBOc1sR1LU0TnqpzMvQ8LPq
   Q==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26813589"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 18 Oct 2022 11:33:46 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 18 Oct 2022 11:33:47 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 18 Oct 2022 11:33:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1666085626; x=1697621626;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=zzVmzdf9gGe6KCjUmJRnPyJwgjw7AVvnmW0eSNXMoC8=;
  b=EHyiul8KPBSffkSpvkHU8oyl95MpO7vpuoOGyncqo/X53d/V3zJjO/FQ
   EPABVpEwi51cZh7207zrMowQV+TqkwN0O5Xzaox4VSBZ6LPdTkahMzLfx
   FqQVoMpkKWNBEBscheH5vy78UNcbnX/1g4CG9ksLSo1G2twXq100xlaQ8
   wCGWKrjt2w/bqeppo3wr930PnRr0pWYOo6fqdeixYtIydA/bL8WYAWFLZ
   YH+NR3Vh2IQcaJHDJebDthZyvrPzOIwJXbwt1Is0V/Lgams7fhkpP3hIK
   zqv0niGJQwqW1c+Sp25SXbA92ZIFIsccw+oacFRNDLt5LWa78G+gcJUL6
   w==;
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="26813587"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Oct 2022 11:33:46 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 940E0280056;
        Tue, 18 Oct 2022 11:33:46 +0200 (CEST)
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
Subject: [PATCH 1/1] arm64: dts: freescale: Add PWM fan support
Date:   Tue, 18 Oct 2022 11:33:41 +0200
Message-Id: <20221018093341.2581862-1-alexander.stein@ew.tq-group.com>
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

This adds the support for optional PWM fan 422J/2HP.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Now with inverted polarity support for pwm-fan in place, add PWM fan DT
nodes for TQMa8MPQL + MBa8MPxL. As this is optional, it's disabled by
default. This is based on next-20221018.

Note: This device needs 'pwm1_enable' set to 3. E.g. using udev rule:
SUBSYSTEM=="hwmon", DRIVERS=="pwm-fan", ATTR{pwm1_enable}="3"

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 7a32379cd006..ffd117f17bbe 100644
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
@@ -725,10 +793,18 @@ pinctrl_pwm3: pwm3grp {
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
2.25.1

