Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 747DC5EEFE0
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 10:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235322AbiI2IBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 04:01:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235506AbiI2IBV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 04:01:21 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C75965655
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:00:42 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id 13so1135930ejn.3
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=gFhqx6IrLVXAECcsR3Ci5MRa5k8rIAUZ6GGjzLZ8vZU=;
        b=inzWPEv8MpIDFg1oWGAHaTASZy0Z//5ZalQZM27h7rSSO3/56ei/ghVpaym2naJ/5M
         QIITYTwDM2V4+f3eiN8cTU2g6DrqnnrOOP2As9bJxbin5Y45ubILo0v8XgtJyqSfd4dl
         M+nNdCOaZmq1eORwv1gzDyKUst0B7lqJ+0d3SpB/TDCBixA7c698amKPHqVL5EJVo2to
         5tkRJ741jLmJKwTlxw2XxKW0YIcsBpQO7boW4f3C+VkHMUyJSCtvd/TvTh3Qz2GNMtW/
         VK68BiOZKv7+4vNhvdS1fuZUEpbYuZrIMACTP0/u/M4oPFMG3R+Zb5sf5TGz3c5t/+QF
         58Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=gFhqx6IrLVXAECcsR3Ci5MRa5k8rIAUZ6GGjzLZ8vZU=;
        b=qlm3loey7pn4Lo4XK6BFev6T1pjVuBsUCJ3e57kCJyvPNaWKbuZ9LUEqmPKTe9NPJd
         DKvfouU3wPVz9CmnfERMXf3QxyXIwjLFsLSfX6tvbrH81NiLhmkavehlLeiTu+pFnkuG
         8/PrO9usnFXW4PNB3NzN1BqKzUFeb+L6KA+bA8hdA9iR+ZWEavhm4J+5jrbGes/pnv9R
         UJOk45TS89sPNHEF+XPPGyzkcPTzW7FqbesPZnX4NvTOb7d179E23Ot03KVsExlh5yu6
         Y5Nf8vKY8K25eFcG6EjlAc0EthpkvAI87zVnAqxqjLV071d5Cu3HL+FPjpJ8VWrgfMlA
         IryA==
X-Gm-Message-State: ACrzQf170+hrurzg3H8sA0oqnaj1TVS+WSiEsrmXrs1FNomNTDGNBxzo
        pbaKKzjn1qajGJrHFEACCNSIeNl/yoE=
X-Google-Smtp-Source: AMsMyM5iDAeZPbXuBOYY4I8MdgnshV55qbu0Asm4g7teQwKiwJ8xjGaEKR64ct+XXJhFpWXwhmUQ6Q==
X-Received: by 2002:a17:907:a407:b0:783:5465:902 with SMTP id sg7-20020a170907a40700b0078354650902mr1691966ejc.35.1664438439932;
        Thu, 29 Sep 2022 01:00:39 -0700 (PDT)
Received: from WBEC325.dom.lan ([2001:470:64f7:0:a03b:951f:e3a0:4dd4])
        by smtp.gmail.com with ESMTPSA id g18-20020a17090604d200b007806c1474e1sm3518876eja.127.2022.09.29.01.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 01:00:39 -0700 (PDT)
From:   Pawel Dembicki <paweldembicki@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>
Subject: [PATCH] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
Date:   Thu, 29 Sep 2022 10:00:36 +0200
Message-Id: <20220929080036.3179552-1-paweldembicki@gmail.com>
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

Add Endian 4i Edge 200 is 5-port firewall.
It have also clone: Endian UTM Mini (The same hardware, with added WLAN
card).

Hardware:
  - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
  - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
  - NAND Flash: 512MB (Micron 29F4G08AAC)
  - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
  - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
  - Storage: MicroSD Slot
  - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
          (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
  - USB: 1x USB 2.0 port
  - Console: RJ-45 port
  - LEDs: 3x GPIO controlled

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 arch/arm/boot/dts/Makefile                 |   1 +
 arch/arm/boot/dts/kirkwood-4i-edge-200.dts | 206 +++++++++++++++++++++
 2 files changed, 207 insertions(+)
 create mode 100644 arch/arm/boot/dts/kirkwood-4i-edge-200.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index eae7d1139fbc..81a24fe623a8 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -299,6 +299,7 @@ dtb-$(CONFIG_ARCH_KEYSTONE) += \
 	keystone-k2g-evm.dtb \
 	keystone-k2g-ice.dtb
 dtb-$(CONFIG_MACH_KIRKWOOD) += \
+	kirkwood-4i-edge-200.dtb \
 	kirkwood-b3.dtb \
 	kirkwood-blackarmor-nas220.dtb \
 	kirkwood-c200-v1.dtb \
diff --git a/arch/arm/boot/dts/kirkwood-4i-edge-200.dts b/arch/arm/boot/dts/kirkwood-4i-edge-200.dts
new file mode 100644
index 000000000000..45406be15533
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-4i-edge-200.dts
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Endian 4i Edge 200 Board Description
+ * Note: Endian UTM Mini is hardware clone of Endian Edge 200
+ * Copyright 2021-2022 Pawel Dembicki <paweldembicki@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Endian 4i Edge 200";
+	compatible = "endian,4i-edge-200", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+		stdout-path = &uart0;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pmx_led>;
+		pinctrl-names = "default";
+
+		led-1 {
+			function = LED_FUNCTION_SD;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+		};
+
+		led-2 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-3 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+};
+
+&eth0port {
+	speed = <1000>;
+	duplex = <1>;
+};
+
+&eth1 {
+	status = "okay";
+};
+
+&eth1port {
+	phy-handle = <&ethphyb>;
+};
+
+&mdio {
+	status = "okay";
+
+	ethphyb: ethernet-phy@b {
+		reg = <0x0b>;
+
+		marvell,reg-init =
+			/* link-activity, bi-color mode 4 */
+			<3 0x10 0xfff0 0xf>; /* Reg 3,16 <- 0xzzzf */
+	};
+
+	switch0: switch@11 {
+		compatible = "marvell,mv88e6085";
+		reg = <0x11>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "port1";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "port2";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "port3";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "port4";
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+				phy-mode = "rgmii-id";
+				ethernet = <&eth0port>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&nand {
+	status = "okay";
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x00000000 0x000a0000>;
+		read-only;
+	};
+
+	partition@a0000 {
+		label = "u-boot-env";
+		reg = <0x000a0000 0x00060000>;
+		read-only;
+	};
+
+	partition@100000 {
+		label = "kernel";
+		reg = <0x00100000 0x00400000>;
+	};
+
+	partition@500000 {
+		label = "ubi";
+		reg = <0x00500000 0x1fb00000>;
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
+	pinctrl-0 = <&pmx_sysrst>;
+	pinctrl-names = "default";
+
+	pmx_sysrst: pmx-sysrst {
+		marvell,pins = "mpp6";
+		marvell,function = "sysrst";
+	};
+
+	pmx_sdio_cd: pmx-sdio-cd {
+		marvell,pins = "mpp28";
+		marvell,function = "gpio";
+	};
+
+	pmx_led: pmx-led {
+		marvell,pins = "mpp34", "mpp35", "mpp49";
+		marvell,function = "gpio";
+	};
+};
+
+&rtc {
+	status = "okay";
+};
+
+&sata_phy0 {
+	status = "disabled";
+};
+
+&sata_phy1 {
+	status = "disabled";
+};
+
+&sdio {
+	pinctrl-0 = <&pmx_sdio_cd>;
+	pinctrl-names = "default";
+	status = "okay";
+	cd-gpios = <&gpio0 28 9>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
-- 
2.34.1

