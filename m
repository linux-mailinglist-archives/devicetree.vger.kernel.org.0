Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 089232DBBDC
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 08:12:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725995AbgLPHLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 02:11:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbgLPHLr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 02:11:47 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7261AC0613D6
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 23:11:06 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4CwmWB6gr8zQlM8;
        Wed, 16 Dec 2020 08:11:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=loebl.cz; s=MBO0001;
        t=1608102657;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=q8z1hLt77kkT8nIwj099syx0sb74uc/2xIK6JWHN8KE=;
        b=WtQnrizVwtDTS7lYdciAKOo6Ssy2ZDGL71BRPMV+Hoib3NCekuj4yGsReeMlcMNjeqYvL6
        bt7uSs72mX7M0iP7j6cp2zhe8/MLU5e3DCGB6mgGsTmaOvym4EVhiGlqMNBtBSvkbuQPGB
        3nYTSzQv4zbMFDzadOs++jt77fkRSAzsZzx194JDsRoUpaDsAXqohDke/2UlDmp+aUwi9U
        EjyjaGxLrg9XMcpdBtUKtnSbfDhDLBtPpMHjpvfz/qt6UIBbyBwFo5SZGBaclfnxsAEffB
        YDRqriQbj0PMUwJBVm7VglrHXvVwXhiiIW+DRJqaaplK6k02OPx1EGN2A22oRA==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
        with ESMTP id h2QAsyMaF0y4; Wed, 16 Dec 2020 08:10:55 +0100 (CET)
From:   =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org,
        =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero board
Date:   Wed, 16 Dec 2020 08:09:36 +0100
Message-Id: <20201216070936.499973-1-pavel@loebl.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -2.44 / 15.00 / 15.00
X-Rspamd-Queue-Id: 0A3DC189D
X-Rspamd-UID: 295795
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
 .../dts/sun8i-h2-plus-bananapi-p2-zero.dts    | 195 ++++++++++++++++++
 1 file changed, 195 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts

diff --git a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts
new file mode 100644
index 000000000000..431108bff68e
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-p2-zero.dts
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2020 Pavel Löbl <pavel@loebl.cz>
+ *
+ * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
+ *   Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+/dts-v1/;
+#include "sun8i-h3.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Banana Pi BPI-P2-Zero";
+	compatible = "sinovoip,bpi-p2-zero", "allwinner,sun8i-h2-plus";
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
+		pwr_led {
+			label = "power-led";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_LOW>; /* PL10 */
+			default-state = "on";
+		};
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		pwr_key {
+			label = "power-key";
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
+	wifi_pwrseq: wifi_pwrseq {
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
2.29.2

