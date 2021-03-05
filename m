Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 678A132E3D8
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 09:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbhCEIl1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 03:41:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbhCEIl0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 03:41:26 -0500
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [IPv6:2001:67c:2050::465:103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD63C061574
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 00:41:25 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4DsLmy1k1xzQlWv;
        Fri,  5 Mar 2021 09:41:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=loebl.cz; s=MBO0001;
        t=1614933680;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9NGe2v8m7hT4U9JyTNesd080kA9zRHphsbi53pfG0WU=;
        b=KuBYxoQMTvOn5YwQGzufpTnCblEytEt0k2ThazKnK8Uw3WdwEpbjE7K5/mVYLE6kFxw7c2
        Dl8HtKO5q3T/pA2pV7MYE93J3nwVcQn0AgffYLessFI0iJDjNpYARCEP1Q+NiLNaTTjgX/
        LmcrOXSNWAWFixVjGKr9y3tnLaUnDxoerqXlsLrG7Af0GyYVc/5QDMEVXAmPtOoF9PO4RQ
        Vd9PvPOTY89eykAKE98dbR8ttW+p/+qtcWmTdGnih0CG5N82Zok8rqwluxmlNWq0OrNlrm
        l0aaO4RpSMzFqPxQDCtJCXfgDWdrB13JD3YBrl6TNhRcBJnAFPm+Yv0yd5iboA==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
        with ESMTP id SrozabomE4b9; Fri,  5 Mar 2021 09:41:19 +0100 (CET)
From:   =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     devicetree@vger.kernel.org,
        =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH v2] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero board
Date:   Fri,  5 Mar 2021 09:40:53 +0100
Message-Id: <20210305084053.3514231-1-pavel@loebl.cz>
In-Reply-To: <20210106153915.er5fpqwquksdaaql@gilmour>
References: <20210106153915.er5fpqwquksdaaql@gilmour>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -1.29 / 15.00 / 15.00
X-Rspamd-Queue-Id: 2D81517DD
X-Rspamd-UID: 357a74
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Banana Pi P2 Zero is H2+-based board by Sinovoip internally
similar to Banana Pi M2 Zero.

It features:
- Allwinner H2+, Quad-core Cortex-A7
- 512MB DDR3 SDRAM
- 8G eMMC flash
- MicroSD card slot
- 100M LAN
- WiFi (AP6212) & Bluetooth onboard (SDIO + UART)
- Micro USB OTG port
- Micro USB connector (power only)
- Mini HDMI
- 40 PIN GPIO includes UART, SPI, I2C, IO etc.
- GPIO-connected key and LED
- CSI connector
- IEEE 802.3af PoE standard PoE module support (optional)

This adds support for v1.1 revision. There was also v1.0 available
which has different SDcard CD polarity and Ethernet port LEDs
disconnected in layout.

Signed-off-by: Pavel Löbl <pavel@loebl.cz>
---
 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../sun8i-h2-plus-bananapi-p2-zero-v1.1.dts   | 197 ++++++++++++++++++
 3 files changed, 203 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 6db32fbf813f..3accfa23cbad 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -136,6 +136,11 @@ properties:
           - const: sinovoip,bananapi-m64
           - const: allwinner,sun50i-a64
 
+      - description: Banana Pi P2 Zero
+        items:
+          - const: sinovoip,bpi-p2-zero-v1.1
+          - const: allwinner,sun8i-h2-plus
+
       - description: BananaPro
         items:
           - const: lemaker,bananapro
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 3d1ea0b25168..26c1fd13375a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1190,6 +1190,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-a83t-cubietruck-plus.dtb \
 	sun8i-a83t-tbs-a711.dtb \
 	sun8i-h2-plus-bananapi-m2-zero.dtb \
+	sun8i-h2-plus-bananapi-p2-zero-v1.1.dtb \
 	sun8i-h2-plus-libretech-all-h3-cc.dtb \
 	sun8i-h2-plus-orangepi-r1.dtb \
 	sun8i-h2-plus-orangepi-zero.dtb \
diff --git a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
new file mode 100644
index 000000000000..7297183af3af
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2021 Pavel Löbl <pavel@xxxxxxxx>
+ *
+ * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
+ *   Copyright (C) 2017 Icenowy Zheng <icenowy@xxxxxxx>
+ */
+
+/dts-v1/;
+#include "sun8i-h3.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Banana Pi BPI-P2-Zero v1.1";
+	compatible = "sinovoip,bpi-p2-zero-v1.1", "allwinner,sun8i-h2-plus";
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
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
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_LOW>; /* PL10 */
+			default-state = "on";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "power";
+			linux,code = <KEY_POWER>;
+			gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>;  /* PL3 */
+			wakeup-source;
+		};
+	};
+
+	reg_vcc_5v: reg-vcc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+	};
+
+	reg_vcc_1v2: reg-vcc-1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-1v2";
+		regulator-type = "voltage";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc_5v>;
+	};
+
+	reg_vcc_3v3: reg-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-3v3";
+		regulator-type = "voltage";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc_5v>;
+	};
+
+	reg_vdd_cpux: vdd-cpux-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "vdd-cpux";
+		regulator-type = "voltage";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-ramp-delay = <50>; /* 4ms */
+
+		gpios = <&r_pio 0 1 GPIO_ACTIVE_HIGH>; /* PL1 */
+		enable-active-high;
+		gpios-states = <0x1>;
+		states = <1100000 0>, <1300000 1>;
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_vcc_3v3>;
+	bus-width = <4>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	cd-inverted;
+	status = "okay";
+};
+
+&mmc1 {
+	vmmc-supply = <&reg_vcc_3v3>;
+	vqmmc-supply = <&reg_vcc_3v3>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&pio>;
+		interrupts = <6 10 IRQ_TYPE_LEVEL_LOW>; /* PG10 / EINT10 */
+		interrupt-names = "host-wake";
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
+	};
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_8bit_pins>;
+	vmmc-supply = <&reg_vcc_3v3>;
+	vqmmc-supply = <&reg_vcc_3v3>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pa_pins>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		vbat-supply = <&reg_vcc_3v3>;
+		vddio-supply = <&reg_vcc_3v3>;
+		device-wakeup-gpios = <&pio 6 13 GPIO_ACTIVE_HIGH>; /* PG13 */
+		host-wakeup-gpios = <&pio 6 11 GPIO_ACTIVE_HIGH>; /* PG11 */
+		shutdown-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
+	};
+};
+
+&emac {
+	phy-handle = <&int_mii_phy>;
+	phy-mode = "mii";
+	phy-supply = <&reg_vcc_1v2>;
+	allwinner,leds-active-low;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+	/*
+	 * There're two micro-USB connectors, one is power-only and another is
+	 * OTG. The Vbus of these two connectors are connected together, so
+	 * the external USB device will be powered just by the power input
+	 * from the power-only USB port or optional POE module.
+	 */
+	status = "okay";
+};
-- 
2.30.1

