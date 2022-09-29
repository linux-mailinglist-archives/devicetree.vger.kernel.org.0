Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 026F95EEFE3
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 10:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234708AbiI2ICa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 04:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235195AbiI2IBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 04:01:49 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA41F25FB
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:01:14 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id u24so850886edb.11
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=3LQgfLOwPhOAZ7WuseKDct1FsBcO7vtM7NEUT86ON/Q=;
        b=JaXQRADeBE0Yn86LH2QTKKXmpC5seyoQh+nZ/Ctk4utbgfCO1cYX+qgVcZQ5v1GzH+
         es0RMprc2mCmuGN7t36IvnDpirPMsSF+1zQUpCIm4kdwONgk0eQUrg9HgxtVADud94dL
         1KW9OLcf20NheJ2hxBMTvew3Hsq6CMOreMuJVP08gUdp9EMWrZ1+nEuM2T3RWLDDKdBh
         ltG1G1ehL9ELb1USIY8HDzqJI47k42mAebOgAhgiTJueBhTDV6z6/SGP/1NCSyadvBAM
         Y0pi+FnqqLW7PIKb4Pc5uSmaBEWHDbRYbZgkclLebi3lEG9bGZXNjTtV+F4sbe2cEcrd
         mhKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=3LQgfLOwPhOAZ7WuseKDct1FsBcO7vtM7NEUT86ON/Q=;
        b=F3Ijbc95taLic3PggHkcSHnjoqKjdfqetYI9kORbNirNR6EUG8jNp9qtg2b8/18iv1
         bV8+nAwESXS8MVLBAMF/B0VlmU1RmQdT/DtwZGqE0OTmoqbKTWHTJ5l4XjorYAzzfXu5
         /IGPSlCNHmMCvGk5DmBRWfGqb30NiUqHXtVRxEtXks1srfI2lJQa+codP3qa4vud6/Zm
         L4/KKb2AcSlkPcPkS6Hr0iQd+CIgyfQf/oRPUY+nI9VFr4sRG25Botq+xdYkIHFZHe9B
         JVSbW/SyFE/X6MJ6XG1t9FT/4sSjdBduUCtvE+WUQKGjcl/LAI+OF7SNlT16FPOZ1pMv
         HxFg==
X-Gm-Message-State: ACrzQf0G8cHZGYTXwFKsbsiHt2Sv/ZNhPjFbzUb+bcolBwPm1Pc33/uw
        yzu90fIDpr4F1UZ5ihMHMDyDqxuy7Ohdgg==
X-Google-Smtp-Source: AMsMyM4wGGf/OhImDuauejKTakY5GeSHC9ZyD3dm59L/FVxuUNx1C/PzMssHwSzRCmEfc+LBcIZkoA==
X-Received: by 2002:a05:6402:51d1:b0:451:ea13:1583 with SMTP id r17-20020a05640251d100b00451ea131583mr2021502edd.322.1664438472962;
        Thu, 29 Sep 2022 01:01:12 -0700 (PDT)
Received: from WBEC325.dom.lan ([2001:470:64f7:0:a03b:951f:e3a0:4dd4])
        by smtp.gmail.com with ESMTPSA id gn36-20020a1709070d2400b007707fc31b8dsm3601710ejc.26.2022.09.29.01.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 01:01:12 -0700 (PDT)
From:   Pawel Dembicki <paweldembicki@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>, Tony Dinh <mibodhi@gmail.com>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>
Subject: [PATCH] ARM: dts: kirkwood: Add Zyxel NSA310S  board
Date:   Thu, 29 Sep 2022 10:01:10 +0200
Message-Id: <20220929080110.3182561-1-paweldembicki@gmail.com>
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
 arch/arm/boot/dts/Makefile             |   1 +
 arch/arm/boot/dts/kirkwood-nsa310s.dts | 267 +++++++++++++++++++++++++
 2 files changed, 268 insertions(+)
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
index 000000000000..210dfdb577bb
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-nsa310s.dts
@@ -0,0 +1,267 @@
+// SPDX-License-Identifier: GPL-2.0-only
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
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_power>;
+		pinctrl-names = "default";
+
+		usb0_power: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "USB Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio0 21 GPIO_ACTIVE_HIGH>;
+		};
+
+		sata1_power: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "SATA1 Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+		};
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

