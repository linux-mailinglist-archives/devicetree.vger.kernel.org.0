Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DEBA737581
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 22:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229832AbjFTUBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 16:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbjFTUBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 16:01:01 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD34719AD
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:41 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-57026f4bccaso55681157b3.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687291241; x=1689883241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7voCz2iYOrMknDK2wZ+2dYEFWpHgSlR/WyZVUuuoYm4=;
        b=oRtReLS4iTpD0CZMWg2ypk5Pe4rl9AR2p7Cp6aZ3kzCOqftrcGy08DP9w6kr2wnNht
         UFv23z/qWMEIhyx5pAUHJBFwat7L3NjpMH36Nr09W83lK1anFoOqTw1RyvSDLWh1uUSV
         xX7V4dq8T5K8cFbThyir0bO/pvRz9KQNYYWQT/YFSqXmWXv2aNGrO3IXzUlGHde39P3/
         FvtpKGUJUm4hCVZ0dShVskUp+ecWT7oanx2PtCKIFnWxoYDXARHtt1CJufCteOv0vq8u
         uFj3NO6GI4wCO79pE4t2jio3KckXZeXYtE7bPLtPOCAvoz38lSeKGAghWyXN8gftkWOU
         k96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687291241; x=1689883241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7voCz2iYOrMknDK2wZ+2dYEFWpHgSlR/WyZVUuuoYm4=;
        b=fJG+U8W9opbDNOuMuJKOdaLaumXmqfRJvf14XnCRTEkcIMw6Wl1zoK8Az8tKmECoVU
         SFEK2aCfYQdDCJJ5fgtLwS67as4trKz5a8qvLlK4Hl6oSZchIXExi1eyhApQEw1V6lq8
         jX8EmJZGQDPd/4wsUZO1BnCUMQ9M1f5gCHGZVTSNYcOz98rK0gSREFP9h974lfMO+ZDc
         u+WF446P8hBGwgvAbLbpLabcOeqTa/0lBkFmvOOQDg4F6yYH7PRFCayuO4/onyhcbW+U
         IU/BOoS7EaxHiwNyuQpb4yU1makQtfer+lY5axD1qJxLWTdEYuImNIuf3tF8YSog7a69
         EqCQ==
X-Gm-Message-State: AC+VfDyuTQyG60NVGX7eBUe1O6cidQU9VpinZ2W8kAy67pQeovT9IgJi
        +qtLK1o+kXEuTxpAzsbPq1c=
X-Google-Smtp-Source: ACHHUZ7YC5A+SJ+gP9JiJSJTWmTIsXiHTZ/rnKpEVykuTKQn+xFE2Tyfo+EirWmvOHLbHC2uVhlkDA==
X-Received: by 2002:a0d:c6c3:0:b0:568:fb28:1e24 with SMTP id i186-20020a0dc6c3000000b00568fb281e24mr12145507ywd.28.1687291240683;
        Tue, 20 Jun 2023 13:00:40 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y201-20020a81a1d2000000b00569eb609458sm664197ywg.81.2023.06.20.13.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 13:00:40 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
        andre.przywara@arm.com, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] ARM: dts: sunxi: add support for Anbernic RG-Nano
Date:   Tue, 20 Jun 2023 15:00:22 -0500
Message-Id: <20230620200022.295674-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230620200022.295674-1-macroalpha82@gmail.com>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a small portable game device based on the
Allwinner V3s SoC. It has GPIO buttons on the face and side for
input, a single mono speaker, a 240x240 SPI controlled display,
and a USB-C OTG port for power. The SoC includes 64MB of RAM and
an SD card slot for booting.

The SPI display is currently unsupported, as it will either require
a new tinydrm driver or changes to the staging fbtft driver to support.
I plan on working on a tinydrm driver to properly support it. There
also may be a missing mux in the audio path that must be discovered and
defined before audio will be fully working (internal speaker does not
work yet, external headphones untested).

Working:
- SDMMC
- Buttons
- Charging/battery/PMIC

Not working:
- Display
- Audio

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/sun8i-v3s-anbernic-rg-nano.dts   | 209 ++++++++++++++++++
 2 files changed, 210 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-v3s-anbernic-rg-nano.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 59829fc90315..31418b594222 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1414,6 +1414,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-t113s-mangopi-mq-r-t113.dtb \
 	sun8i-t3-cqa3t-bv3.dtb \
 	sun8i-v3-sl631-imx179.dtb \
+	sun8i-v3s-anbernic-rg-nano.dtb \
 	sun8i-v3s-licheepi-zero.dtb \
 	sun8i-v3s-licheepi-zero-dock.dtb \
 	sun8i-v40-bananapi-m2-berry.dtb
diff --git a/arch/arm/boot/dts/sun8i-v3s-anbernic-rg-nano.dts b/arch/arm/boot/dts/sun8i-v3s-anbernic-rg-nano.dts
new file mode 100644
index 000000000000..ead315e8fc38
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-v3s-anbernic-rg-nano.dts
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/input/linux-event-codes.h>
+#include "sun8i-v3s.dtsi"
+#include "sunxi-common-regulators.dtsi"
+
+/ {
+	model = "Anbernic RG Nano";
+	compatible = "anbernic,rg-nano", "allwinner,sun8i-v3s";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 40000 1>;
+		brightness-levels = <0 1 2 3 8 14 21 32 46 60 80 100>;
+		default-brightness-level = <11>;
+		power-supply = <&reg_vcc5v0>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+
+		button-a {
+			gpios = <&gpio_expander 12 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-A";
+			linux,code = <BTN_EAST>;
+		};
+
+		button-b {
+			gpios = <&gpio_expander 14 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-B";
+			linux,code = <BTN_SOUTH>;
+		};
+
+		button-down {
+			gpios = <&gpio_expander 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-left {
+			gpios = <&gpio_expander 4 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-LEFT";
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+
+		button-right {
+			gpios = <&gpio_expander 0 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-RIGHT";
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+
+		button-se {
+			gpios = <&gpio_expander 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-SELECT";
+			linux,code = <BTN_SELECT>;
+		};
+
+		button-st {
+			gpios = <&gpio_expander 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-START";
+			linux,code = <BTN_START>;
+		};
+
+		button-tl {
+			gpios = <&gpio_expander 2 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-L";
+			linux,code = <BTN_TL>;
+		};
+
+		button-tr {
+			gpios = <&gpio_expander 15 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-R";
+			linux,code = <BTN_TR>;
+		};
+
+		button-up {
+			gpios = <&gpio_expander 3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-x {
+			gpios = <&gpio_expander 11 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-X";
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-y {
+			gpios = <&gpio_expander 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-Y";
+			linux,code = <BTN_WEST>;
+		};
+	};
+};
+
+&codec {
+	allwinner,audio-routing = "Headphone", "HP",
+				  "Headphone", "HPCOM",
+				  "MIC1", "Mic",
+				  "Mic", "HBIAS";
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	gpio_expander: gpio@20 {
+		compatible = "nxp,pcal6416";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupt-parent = <&pio>;
+		interrupts = <1 3 IRQ_TYPE_EDGE_BOTH>;
+	};
+
+	axp209: pmic@34 {
+		reg = <0x34>;
+		interrupt-parent = <&pio>;
+		interrupts = <1 5 IRQ_TYPE_EDGE_FALLING>;
+	};
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+#include "axp209.dtsi"
+
+&ac_power_supply {
+	status = "okay";
+};
+
+&battery_power_supply {
+	status = "okay";
+};
+
+&mmc0 {
+	broken-cd;
+	bus-width = <4>;
+	disable-wp;
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc3v3>;
+	status = "okay";
+};
+
+&pwm {
+	status = "okay";
+};
+
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-max-microvolt = <1400000>;
+	regulator-min-microvolt = <1000000>;
+	regulator-name = "vdd-cpu-sys-ephy";
+};
+
+&reg_dcdc3 {
+	regulator-always-on;
+	regulator-max-microvolt = <3450000>;
+	regulator-min-microvolt = <3000000>;
+	regulator-name = "vcc-io-ephy-mcsi-usb";
+};
+
+&reg_ldo1 {
+	regulator-name = "vcc-rtc";
+};
+
+&reg_ldo2 {
+	regulator-always-on;
+	regulator-max-microvolt = <3300000>;
+	regulator-min-microvolt = <2800000>;
+	regulator-name = "avcc-pll";
+};
+
+&spi0 {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pb_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usb_power_supply {
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
-- 
2.34.1

