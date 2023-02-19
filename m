Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2067969BE5A
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 04:11:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjBSDLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Feb 2023 22:11:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjBSDLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Feb 2023 22:11:38 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BC2612BF4
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 19:11:36 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 07C641606;
        Sun, 19 Feb 2023 04:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1676776295;
        bh=yXgCvYpx+XQx36R8IzR0K5ySgAWKYrreMOcLPl7enBo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=OK4RScCBe7RBhLjs80q55XcHk8s80CGGCpWXnGxSwq1d99lOrzl3ew+DrZwisj2vY
         /3Y6s2bm3v6/jRimUm7v5uuuaz+rywp6FewTJitZVWJ05tsoVnGF7F6/mC61sVOsul
         HkPxR+JhJR8xqAJ4yuGhRnWqkaBmqb897TAhwbG0=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marco Contenti <marco.c@variscite.com>,
        Nate Drude <nate.d@variscite.com>,
        FrancescoFerraro <francesco.f@variscite.com>,
        Harshesh Valera <harshesh.v@variscite.com>
Subject: [PATCH v1 4/4] arm64: dts: freescale: Add panel overlay for Variscite DART
Date:   Sun, 19 Feb 2023 05:11:26 +0200
Message-Id: <20230219031126.19372-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
References: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT overlay for the Variscite i.MX8MP DT8MCustomBoard that models
the GKTW70SDAE4SE LVDS panel found in the evaluation kit.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  2 +
 .../imx8mp-var-dart-panel-gktw70sdae4se.dtso  | 99 +++++++++++++++++++
 2 files changed, 101 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 4e6cfcd22e86..23a0b631d0f6 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -128,6 +128,7 @@ imx8mm-venice-gw73xx-0x-imx219-dtbs	:= imx8mm-venice-gw73xx-0x.dtb imx8mm-venice
 imx8mm-venice-gw73xx-0x-rs232-rts-dtbs	:= imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
 imx8mm-venice-gw73xx-0x-rs422-dtbs	:= imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs422.dtbo
 imx8mm-venice-gw73xx-0x-rs485-dtbs	:= imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs485.dtbo
+imx8mp-var-dart-panel-gktw70sdae4se-dtbs := imx8mp-var-dart-dt8mcustomboard-v2.dtb imx8mp-var-dart-panel-gktw70sdae4se.dtbo
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x-imx219.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x-rs232-rts.dtb
@@ -137,6 +138,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-imx219.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-dart-panel-gktw70sdae4se.dtb
 
 dtb-$(CONFIG_ARCH_S32) += s32g274a-evb.dtb
 dtb-$(CONFIG_ARCH_S32) += s32g274a-rdb2.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso b/arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso
new file mode 100644
index 000000000000..d5f61e157bc2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2020-2021 Variscite Ltd.
+ * Copyright 2023 Ideas on Board Oy
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "imx8mp-pinfunc.h"
+
+&{/} {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 1000000 0>;
+	};
+
+	panel {
+		compatible = "sgd,gktw70sdae4se", "panel-lvds";
+		backlight = <&backlight>;
+		width-mm = <153>;
+		height-mm = <87>;
+		label = "gktw70sdae4se";
+		data-mapping = "jeida-24";
+
+		panel-timing {
+			clock-frequency = <29232000>;
+			hactive = <800>;
+			vactive = <480>;
+			hback-porch = <40>;
+			hfront-porch = <40>;
+			vback-porch = <29>;
+			vfront-porch = <13>;
+			hsync-len = <48>;
+			vsync-len = <3>;
+			hsync-active = <0>;
+			vsync-active = <0>;
+			de-active = <1>;
+		};
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&ldb_lvds_ch0>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	touch@38 {
+		compatible = "edt,edt-ft5206";
+		reg = <0x38>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_captouch>;
+
+		reset-gpios = <&gpio_exp_2 4 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
+		wakeup-source;
+
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+	};
+};
+
+&lcdif2 {
+	/*
+	 * The pixel clock should be configured by the lcdif driver, but the
+	 * clock frequency propagation in the clock framework stops at the PIX2
+	 * clock and doesn't reach the VIDEO_PLL1 clock. As a workaround, set
+	 * the VIDEO_PLL1 rate manually.
+	 *
+	 * For a 60Hz refresh rate, the panel requires a pixel clock of 29.232
+	 * MHz. The LVDS clock frequency is 7 times higher, or 204.624 MHz.
+	 */
+	assigned-clock-rates = <0>, <204624000>;
+	status = "okay";
+};
+
+&ldb_lvds_ch0 {
+	remote-endpoint = <&panel_in>;
+};
+
+&lvds_bridge {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_captouch: captouchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14				0x16
+		>;
+	};
+};
-- 
Regards,

Laurent Pinchart

