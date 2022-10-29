Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE7961255B
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 22:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbiJ2U6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 16:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiJ2U6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 16:58:09 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10AA833E2A
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 13:58:04 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id k19so12050437lji.2
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 13:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TmXYhaOluZLzQOH9f/pZ5fj7/XV19UdsyHLu3LCS9nA=;
        b=HMvqhdrlYGxg3uqAk3OjX21kLKd2iDB5s5/UzrIJA51z/4J7nJ7WpZcrkW+6iYv5xm
         aXl6u7YPe5z2YF4YcoJuaZiaKrfA3zjsizFHTDoNiSGsOh/9ZV1L7jhSSxrGfPBKYXTz
         ziXMIDZnuljPYZUIul0eYy7TGBgRvRFcH7qSrKoj2fw0dTrlYivcE3uWbkF/L9uearwg
         KMmiWB/lY6aAey8fGFke+y1PJGhRxTey0PeQxGzKtkwK4iSm3L7QOznrnHx04NKzfWUL
         WfpKqMhk5SmBBRKJ8VZrFw9rPRcDdB3+y+G1sLDe7baC5+mSQGhn5+bS2tRCLtJPw3Pm
         /aWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TmXYhaOluZLzQOH9f/pZ5fj7/XV19UdsyHLu3LCS9nA=;
        b=NvoO5EnDLGmJ/CxBVVwfrFU9Bao2K5U1+xVkWs7Mv7IPNXI+TJW4Xx+FW3ejDATMhp
         Sgxt9z1Nc9OhaWKtLIcH5/dAouavDGSShBeizEPwt8zvoj/XKpZg+LT5m7ih3KnbD2F1
         f9i0m/Z9Tp/mpZqJBYLkGOsz4W7pRoeCc3//KmxCCMogO4GM9gkfdIlZPfUQgrxiCoU9
         d5ug6ws1r+FbcfA4w2MHJG/w6GJWbIOhypnS3vSIaEvGTdpmiBFvmbjGPt5KBLNs+pUS
         g7BJ6xLqsz91WnirRlNiTz0R3eM08Tdzhe5DuPZ43UYq+0U5HdM2LiGz9TeTqfNKfPJr
         FOGA==
X-Gm-Message-State: ACrzQf17r/JbRdVXJDBhlxBBbLNhqJeN4da/5HtztD+6mnvEwsV8rrgD
        pp5M9ZX1WSc94lVwTk/ci+/3WQAs0DjLyg==
X-Google-Smtp-Source: AMsMyM65k0kqAmsV/VNWtQLmZP3BGeV2rNI/SdTWqQGjKPP5iHV3e2uPi5i36pJo5s2LFJ0Ek0NkPA==
X-Received: by 2002:a2e:a591:0:b0:26f:c3c7:be64 with SMTP id m17-20020a2ea591000000b0026fc3c7be64mr2153259ljp.97.1667077081878;
        Sat, 29 Oct 2022 13:58:01 -0700 (PDT)
Received: from WBEC325.dom.lan ([2001:470:64f7:0:8ecc:c731:ca18:6cf7])
        by smtp.gmail.com with ESMTPSA id c3-20020ac24143000000b00494a603953dsm436867lfi.89.2022.10.29.13.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 13:58:01 -0700 (PDT)
From:   Pawel Dembicki <paweldembicki@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Adam Baker <linux@baker-net.org.uk>,
        Tony Dinh <mibodhi@gmail.com>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>
Subject: [PATCH v2] ARM: dts: kirkwood: Add Zyxel NSA310S  board
Date:   Sat, 29 Oct 2022 22:57:38 +0200
Message-Id: <20221029205738.4187010-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Zyxel NSA310S is a NAS based on Marvell kirkwood SoC.

Specification:
 - Processor Marvell 88F6702 1 GHz
 - 256MB RAM
 - 128MB NAND
 - 1x GBE LAN port (PHY: Marvell 88E1318)
 - 2x USB 2.0
 - 1x SATA
 - 3x button
 - 7x leds
 - serial on J1 connector (115200 8N1) (GND-NOPIN-RX-TX-VCC)

Tested-by: Tony Dinh <mibodhi@gmail.com>
Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
Changes in v2:
- added MIT licence option (With Adam and Tony approval)
- regulators are written in 'new' way

 arch/arm/boot/dts/Makefile             |   1 +
 arch/arm/boot/dts/kirkwood-nsa310s.dts | 259 +++++++++++++++++++++++++
 2 files changed, 260 insertions(+)
 create mode 100644 arch/arm/boot/dts/kirkwood-nsa310s.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 05d8aef6e5d2..eae7d1139fbc 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -354,6 +354,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
 	kirkwood-ns2mini.dtb \
 	kirkwood-nsa310.dtb \
 	kirkwood-nsa310a.dtb \
+	kirkwood-nsa310s.dtb \
 	kirkwood-nsa320.dtb \
 	kirkwood-nsa325.dtb \
 	kirkwood-openblocks_a6.dtb \
diff --git a/arch/arm/boot/dts/kirkwood-nsa310s.dts b/arch/arm/boot/dts/kirkwood-nsa310s.dts
new file mode 100644
index 000000000000..888c82ebd5d8
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-nsa310s.dts
@@ -0,0 +1,259 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * ZyXEL NSA310S Board Description
+ * Copyright 2020-2022 Pawel Dembicki <paweldembicki@gmail.com>
+ * Copyright (c) 2015-2021, Tony Dinh <mibodhi@gmail.com>
+ * Copyright (c) 2014, Adam Baker <linux@baker-net.org.uk>
+ * Based upon the board setup file created by Peter Schildmann
+ */
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "ZyXEL NSA310S";
+	compatible = "zyxel,nsa310s", "marvell,kirkwood-88f6702", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x10000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+		stdout-path = &uart0;
+	};
+
+	gpio_poweroff {
+		compatible = "gpio-poweroff";
+		pinctrl-0 = <&pmx_pwr_off>;
+		pinctrl-names = "default";
+		gpios = <&gpio0 27 GPIO_ACTIVE_HIGH>;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_buttons>;
+		pinctrl-names = "default";
+
+		power {
+			label = "Power Button";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio0 26 GPIO_ACTIVE_HIGH>;
+		};
+
+		copy {
+			label = "Copy Button";
+			linux,code = <KEY_COPY>;
+			gpios = <&gpio0 25 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "Reset Button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 24 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pmx_leds>;
+		pinctrl-names = "default";
+
+		led-1 {
+			function = LED_FUNCTION_DISK_ERR;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			function = LED_FUNCTION_USB;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "usb-host";
+		};
+
+		led-3 {
+			function = LED_FUNCTION_DISK;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "ata1";
+		};
+
+		led-4 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-5 {
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio0 23 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-6 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+
+		led-7 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	usb0_power: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "USB Power";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&gpio0 21 GPIO_ACTIVE_HIGH>;
+	};
+
+	sata1_power: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "SATA1 Power";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+	};
+
+	thermal-zones {
+		disk-thermal {
+			polling-delay = <20000>;
+			polling-delay-passive = <2000>;
+
+			thermal-sensors = <&hdd_temp>;
+
+			trips {
+				disk_alert: disk-alert {
+					temperature = <40000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+				disk_crit: disk-crit {
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};
+
+
+&eth0 {
+	status = "okay";
+
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	rtc@68 {
+		compatible = "htk,ht1382";
+		reg = <0x68>;
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@1 {
+		reg = <1>;
+		phy-mode = "rgmii-id";
+		marvell,reg-init = <0x1 0x16 0x0 0x3>,
+						   <0x1 0x10 0x0 0x1017>,
+						   <0x1 0x11 0x0 0x4408>,
+						   <0x1 0x16 0x0 0x0>;
+	};
+};
+
+&nand {
+	status = "okay";
+	chip-delay = <35>;
+
+	partition@0 {
+		label = "uboot";
+		reg = <0x0000000 0x00c0000>;
+		read-only;
+	};
+	partition@c0000 {
+		label = "uboot_env";
+		reg = <0x00c0000 0x0080000>;
+	};
+	partition@140000 {
+		label = "ubi";
+		reg = <0x0140000 0x7ec0000>;
+	};
+};
+
+&pciec {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+
+	pmx_buttons: pmx-buttons {
+		marvell,pins = "mpp24", "mpp25", "mpp26";
+		marvell,function = "gpio";
+	};
+
+	pmx_leds: pmx-leds {
+		marvell,pins = "mpp13", "mpp15", "mpp16", "mpp22", "mpp23",
+						"mpp28", "mpp29";
+		marvell,function = "gpio";
+	};
+
+	pmx_power: pmx-power {
+		marvell,pins = "mpp21", "mpp33";
+		marvell,function = "gpio";
+	};
+
+	pmx_pwr_off: pmx-pwr-off {
+		marvell,pins = "mpp27";
+		marvell,function = "gpio";
+	};
+};
+
+&rtc {
+	status = "disabled";
+};
+
+&sata {
+	status = "okay";
+	nr-ports = <1>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hdd_temp: sata-port@0 {
+		reg = <0>;
+		#thermal-sensor-cells = <0>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.34.1

