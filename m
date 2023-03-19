Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70B7A6C0598
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbjCSVbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230319AbjCSVb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:31:26 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AE3FF268A
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:30:47 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5260D15A1;
        Sun, 19 Mar 2023 14:30:41 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE98C3F67D;
        Sun, 19 Mar 2023 14:29:55 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v6 5/6] ARM: dts: suniv: add device tree for PopStick v1.1
Date:   Sun, 19 Mar 2023 21:29:35 +0000
Message-Id: <20230319212936.26649-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.7
In-Reply-To: <20230319212936.26649-1-andre.przywara@arm.com>
References: <20230319212936.26649-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Icenowy Zheng <uwu@icenowy.me>

PopStick is a minimal Allwinner F1C200s dongle, with its USB controller
wired to a USB Type-A plug, a SD slot and a SPI NAND flash on board, and
an on-board CH340 USB-UART converted connected to F1C200s's UART0.

Add a device tree for it. As F1C200s is just F1C100s with a different
DRAM chip co-packaged, directly use F1C100s DTSI here.

This commit covers the v1.1 version of this board, which is now shipped.
v1.0 is some internal sample that have not been shipped at all.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/Makefile                    |  3 +-
 .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 81 +++++++++++++++++++
 2 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index efe4152e5846d..3b97d7c1e3c28 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1406,7 +1406,8 @@ dtb-$(CONFIG_MACH_SUN9I) += \
 	sun9i-a80-optimus.dtb \
 	sun9i-a80-cubieboard4.dtb
 dtb-$(CONFIG_MACH_SUNIV) += \
-	suniv-f1c100s-licheepi-nano.dtb
+	suniv-f1c100s-licheepi-nano.dtb \
+	suniv-f1c200s-popstick-v1.1.dtb
 dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) += \
 	tegra20-acer-a500-picasso.dtb \
 	tegra20-asus-tf101.dtb \
diff --git a/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
new file mode 100644
index 0000000000000..184c245041a6e
--- /dev/null
+++ b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2022 Icenowy Zheng <uwu@icenowy.me>
+ */
+
+/dts-v1/;
+#include "suniv-f1c100s.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Popcorn Computer PopStick v1.1";
+	compatible = "sourceparts,popstick-v1.1", "sourceparts,popstick",
+		     "allwinner,suniv-f1c200s", "allwinner,suniv-f1c100s";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&pio 4 6 GPIO_ACTIVE_HIGH>; /* PE6 */
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	reg_vcc3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&mmc0 {
+	cd-gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
+	bus-width = <4>;
+	disable-wp;
+	vmmc-supply = <&reg_vcc3v3>;
+	status = "okay";
+};
+
+&otg_sram {
+	status = "okay";
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi0_pc_pins>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pe_pins>;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	status = "okay";
+};
-- 
2.35.7

